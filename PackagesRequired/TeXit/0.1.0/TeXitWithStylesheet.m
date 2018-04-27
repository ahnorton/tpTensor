(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
BeginPackage["TeXit`"];
EndPackage[]


(* ::Input::Initialization:: *)
Needs["Backup`"]


(* ::Input::Initialization:: *)
Needs["FileFunctions`"]


(* ::Input::Initialization:: *)
$TeXitDir=NotebookDirectory[]<>FileBaseName[NotebookFileName[]]<>"_TeXit";


(* ::Input::Initialization:: *)
If[!DirectoryQ[$TeXitDir],CreateDirectory[$TeXitDir]];


(* ::Input::Initialization:: *)
$TeXReplacements = {};


(* ::Input::Initialization:: *)
Clear[CustomTeX];
CustomTeX[x_,s_String]:=Module[{s1},
s1=ToString[TeXForm[x]];
$TeXReplacements=DeleteCases[$TeXReplacements,Rule[s1,_]];
AppendTo[$TeXReplacements,s1->s];
s]


(* ::Input::Initialization:: *)
Clear[RemoveCustomTeX];
RemoveCustomTeX[x_]:=Module[{s1},
s1=ToString[TeXForm[x]];
$TeXReplacements=DeleteCases[$TeXReplacements,Rule[s1,_]];
]


(* ::Input::Initialization:: *)
Get[FileNameJoin[{"TeXit",$TeXitVersion,"CustomTeX.m"}]];


(* ::Input::Initialization:: *)
f = FileNameJoin[{NotebookDirectory[],"CustomTeX.m"}];
If[FileExistsQ[f], Get[f];]


(* ::Input::Initialization:: *)
$TeXCommand="pdflatex -halt-on-error ";
$TeXitBody  = FileNameJoin[{$TeXitDir,"body.tex"}];
$TeXStdOut  = FileNameJoin[{$TeXitDir,"StdOut.txt"}];
$TeXitFragment  = FileNameJoin[{$TeXitDir,"fragment.tex"}];


(* ::Input::Initialization:: *)
Clear[TeXit];
TeXit[x_]:=TeXit[x,""]


(* ::Input::Initialization:: *)
TeXitLabel[label_String]:=TeXit[#,label]&


(* ::Input::Initialization:: *)
TeXit[x_,label_String]:=Module[{s1,s2,s3,s4,s5,f,r,n},
If[!Head[x]=== String,
s1=ToString[TeXForm[x]];
If[label==="",
s2="$$\n"<>
s1<>
"\n$$\n",
s2="\\begin{equation}\n"<>
s1<>
"\n\\label{"<>ToString[label]<>"}"<>
"\n\\end{equation}\n"];
s3=StringReplace[s2,"+"->"\n + "];
s4=StringReplace[s3,"-"->"\n - "];
s5=StringReplace[s4,$TeXReplacements]
,
s5=x<>"\n\n"];
WriteString[$TeXitFragment,s5];
Close[$TeXitFragment];
Run["cd "<>$TeXitDir<>"; " <>$TeXCommand<>" main-fragment.tex > "<>$TeXStdOut];
r=ReadFile[$TeXStdOut];
n=StringPosition[r,"!"];
If[!n==={},$TeXErrors=StringDrop[r,First[First[n]]-1], $TeXErrors=""];
If[$TeXErrors==="",
OpenAppend[$TeXitBody];
WriteString[$TeXitBody,s5];
Close[$TeXitBody];
Run["cd "<>$TeXitDir<>"; " <>$TeXCommand<>" main.tex > "<>$TeXStdOut];
r=ReadFile[$TeXStdOut];
n=StringPosition[r,"!"];
If[!n==={},$TeXErrors=StringDrop[r,First[First[n]]-1], $TeXErrors=""];
If[!$TeXErrors==="",
  Print["TeXit: How here? Fragment was OK. Better do \"pdflatex main.tex\" by hand to see"];
  Print["what happened and then fix up body.tex to get it going again."];
  Print["Alternatively, use CleanTeX[ ] to delete all tex files and start again."];
  Abort[]];
x,
Print[Style[$TeXErrors,RGBColor[{220,0,0}/255.]]];
x
] 
]


(* ::Input::Initialization:: *)

$TeXitMainString ="
%
%  Any changes to this file will be lost.
%  This file is recreated when the TeXit package is loaded.
%
\\input preamble
\\input body.tex
\\input postamble
";


(* ::Input::Initialization:: *)
$TeXitMain = FileNameJoin[{$TeXitDir,"main.tex"}];


(* ::Input::Initialization:: *)
If[FileExistsQ[$TeXitMain],DeleteFile[$TeXitMain]];
WriteString[$TeXitMain,$TeXitMainString];
Close[$TeXitMain];


(* ::Input::Initialization:: *)
$TeXitFrag ="
%  This file is recreated when the TeXit package is loaded.
\\input preamble
\\input fragment.tex
\\input postamble
";


(* ::Input::Initialization:: *)
$TeXitMainFragment = FileNameJoin[{$TeXitDir,"main-fragment.tex"}];


(* ::Input::Initialization:: *)
If[FileExistsQ[$TeXitMainFragment],DeleteFile[$TeXitMainFragment]];
WriteString[$TeXitMainFragment,$TeXitFrag];
Close[$TeXitMainFragment];


(* ::Input::Initialization:: *)
PDFViewer[cmd_String]:=Module[{r,viewer},
viewer=First[StringSplit[cmd]];
r=RunProcess[{"which", viewer}];
If[!r["ExitCode"]===0,
Print["PDFViewer[\""<>viewer<>"\"] :"<>"   Command \""<>viewer<>"\" not found."],
$PDFViewer=cmd]
]


(* ::Input::Initialization:: *)
PDFViewer[]:=Module[{cmd,r},
If[!ValueQ[$PDFViewer],Print["ValueQ[$PDFViewer] is False. Use ?\[VeryThinSpace]PDFViewer to see the relevent documentation.\n"],
cmd=StringJoin[$PDFViewer," ",FileNameJoin[{$TeXitDir,"/main.pdf"}]," &"];
r=Run[cmd];
If[!r===0,
Print["PDFViewer[\""<>viewer<>"\"] :"<>"   Command \""<>viewer<>"\" not found."],
cmd]]]


(* ::Input::Initialization:: *)
If[!ValueQ[$PDFViewer],PDFViewer["okular --caption \""<>FileBaseName[NotebookFileName[]]<>"\""];]
If[!ValueQ[$PDFViewer],PDFViewer["evince"];]
If[!ValueQ[$PDFViewer],PDFViewer["acroread"];]


(* ::Input::Initialization:: *)
Unprotect[$SimplePreamble];
$SimplePreamble ="
%
%  Any changes to this file will be lost.
%  This file is recreated when the TeXit package is loaded.
%
%  See:  ? PreambleFile
%
\\documentclass[a4paper,11pt]{article}

\\usepackage[top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm]{geometry}

\\usepackage{amsmath, amssymb, graphics, setspace}

\\usepackage{tensor}
\\usepackage[pdfnewwindow=true]{hyperref}
\\hypersetup{pdfnewwindow=true}

\\newcommand{\\mathsym}[1]{{}}
\\newcommand{\\unicode}[1]{{}}
\\newcounter{mathematicapage}
\\begin{document}

\\noindent
{\\small\\url{"<>NotebookFileName[]<>"}}

\\medskip
\\noindent
"<>DateString[]<>"

\\medskip
";
Protect[$SimplePreamble];


(* ::Input::Initialization:: *)
$SimplePreambleFile= FileNameJoin[{$TeXitDir,"simple_preamble.tex"}];


(* ::Input::Initialization:: *)
If[FileExistsQ[$SimplePreambleFile],DeleteFile[$SimplePreambleFile]];
WriteString[$SimplePreambleFile,$SimplePreamble];
Close[$SimplePreambleFile];


(* ::Input::Initialization:: *)
Clear[PreambleFile]
PreambleFile[name_String]:=Module[{f},
f = FileNameJoin[{$TeXitDir,name}];
If[!FileExistsQ[f], Return["File not found: "<>ToString[f]]];
$PreambleFile =f;
Run["ln -sf "<>name<>" "<>$TeXitDir<>"/preamble"];
$Preamble=ReadFile[f];
]


(* ::Input::Initialization:: *)
PreambleFile[]:=$PreambleFile


(* ::Input::Initialization:: *)
Preamble[]:=$Preamble=ReadFile[PreambleFile[]]


(* ::Input::Initialization:: *)
PreambleFile["simple_preamble.tex"]


(* ::Input::Initialization:: *)
Unprotect[$SimplePostamble];
$SimplePostamble ="
%
%  Any changes to this file will be lost.
%  This file is recreated when the TeXit package is loaded.
%
%  See:  ? PostambleFile
%
\\end{document}\n";
Protect[$SimplePostamble];


(* ::Input::Initialization:: *)
$SimplePostambleFile= FileNameJoin[{$TeXitDir,"simple_postamble.tex"}];


(* ::Input::Initialization:: *)
If[FileExistsQ[$SimplePostambleFile],DeleteFile[$SimplePostambleFile]];
WriteString[$SimplePostambleFile,$SimplePostamble];
Close[$SimplePostambleFile];


(* ::Input::Initialization:: *)
Clear[PostambleFile]
PostambleFile[name_String]:=Module[{f},
f = FileNameJoin[{$TeXitDir,name}];
If[!FileExistsQ[f], Return["File not found: "<>ToString[f]]];
$PostambleFile =f;
Run["ln -sf "<>name<>" "<>$TeXitDir<>"/postamble"];
$Postamble=ReadFile[f];
]


(* ::Input::Initialization:: *)
PostambleFile[]:=$PostambleFile


(* ::Input::Initialization:: *)
Postamble[]:=$Postamble=ReadFile[PostambleFile[]]


(* ::Input::Initialization:: *)
PostambleFile["simple_postamble.tex"]


(* ::Input::Initialization:: *)
TeXit[""];


(* ::Input::Initialization::Plain:: *)
Options[InputText]={
InputBackground->{242,242,242},
InputFontSize->13,
InputFontFamily->"Latin Modern Roman",
InputCellFrame->False,
InputShowGroupOpener->True, 
InputCellMargins->{{66,2},{2,1}},
InputCellLabelMargins->{{0,0},{0,0}}
};


(* ::Input::Initialization:: *)
Clear[InputText]
InputText[OptionsPattern[]]:=InputText["",Print,False]
InputText[prompt_String,OptionsPattern[]]:=InputText[prompt,Print,False]
InputText[prompt_String,f_,OptionsPattern[]]:=InputText[prompt,f,False]
InputText[prompt_String,f_, keepprompt_,OptionsPattern[]]:=Module[{len,str,ans},
len = StringLength[prompt];
If[keepprompt,len=0];
$InputTextFunction =.;
$InputTextFunction = f;
$InputTextCellEval=ToExpression[
                                             RowBox[
                                                {"$InputTextFunction[StringDrop[Setting[",#,"], 
                             "<>ToString[len]<>"]];"}
                                          ]
                                       ]&;
CellPrint[
     Cell[
         BoxData[
                        TagBox[
                            DynamicModuleBox[
                {s = " \[VeryThinSpace]"}, 
                                 InputFieldBox[Dynamic[s], String,FieldSize-> 120,Appearance->"Frameless"],
                                 DynamicModuleValues:>{}],
                                 InputField[Setting[#], String
         ]& 
         ]
      ], 
        "Input",
        CellEventActions->{
          "ReturnKeyDown":>(Paste["\n"];FrontEndExecute[FrontEndToken["MoveNext"]];),
          "LeftArrowKeyDown":> (Paste["Left"];)
    },
        CellEvaluationFunction->$InputTextCellEval,
        CellFrame->OptionValue[InputCellFrame],
        Background->RGBColor[OptionValue[InputBackground]/255.],
        FontSize->OptionValue[InputFontSize],
        FontFamily->OptionValue[InputFontFamily],
        ShowGroupOpener->OptionValue[InputShowGroupOpener],
        CellLabel->"",
        CellMargins->OptionValue[InputCellMargins],
        ShowCellLabel->False,
        CellLabelMargins->OptionValue[InputCellLabelMargins]
   ]
];
NotebookFind[EvaluationNotebook[]," ",Previous];
Paste[prompt];
]


(* ::Input::Initialization:: *)
ClearTeX[]:=(
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"body.tex"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main.pdf"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main.log"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main.aux"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main.out"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"fragment.tex"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main-fragment.pdf"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main-fragment.log"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main-fragment.aux"}]]];
Quiet[DeleteFile[FileNameJoin[{$TeXitDir,"main-fragment.out"}]]];
TeXit[""];)


(* ::Input::Initialization:: *)
Options[InputTeXit]=Options[InputText];


(* ::Input::Initialization:: *)
Clear[InputTeXit]
InputTeXit[p:OptionsPattern[]]:=InputText["",TeXit,True,p]


(* ::Input::Initialization:: *)
InputTeXit[text_String,p:OptionsPattern[]]:=InputText[text,TeXit,True,p]


(* ::Input::Initialization:: *)
InputTeXitFromFile[f_String,p:OptionsPattern[]]:= InputTeXit[ReadFile[f],p]


(* ::Input::Initialization:: *)
Clear[o]
o:=(InputTeXit[];NotebookDelete[EvaluationCell[]];)


(* ::Input::Initialization:: *)
Clear[\[Iota]]
\[Iota]:=(InputTeXit[];NotebookDelete[EvaluationCell[]];)


(* ::Input::Initialization:: *)
InputTextFromFile[f_String,g_]:= InputText[ReadFile[f],g,True]


(* ::Input::Initialization:: *)
EditFile[f_String]:= InputTextFromFile[f,(WriteString[f,#];Close[f];)&]


(* ::Input::Initialization:: *)
TeXitSection[p:OptionsPattern[]]:=TeXitSection["","",p]
TeXitSection[s_String,p:OptionsPattern[]]:=TeXitSection[s,"",p]
TeXitSection[s_String,label_String,p:OptionsPattern[]]:=
If[label==="",
InputText[s,TeXit["\\section{"<>#<>"}"]&,True,p,Apply[Sequence,Options[TeXitSection]]],
InputText[s,TeXit["\\section{"<>#<>"}\n\\label{"<>label<>"}"]&,True,p,Apply[Sequence,Options[TeXitSection]]]];


(* ::Input::Initialization:: *)
Options[TeXitSection]={
InputBackground->{242,242,242},
InputFontSize->19,
InputFontFamily->"Latin Modern Roman",
InputCellFrame->False,
InputShowGroupOpener->True, 
InputCellMargins->{{200,10},{2,1}}
};


(* ::Input::Initialization:: *)
\[Iota]s[]:=(TeXitSection[];NotebookDelete[EvaluationCell[]];)


