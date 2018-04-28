---
---

The tpTensor bundle contains the following packages:

The main package:

     tpTensor   ---   Index-free tensor algebra.

                      The main package file is tpTensor.m, which loads the various parts
                      Part0-*.m, ... , Part6-*.m and finally PartX-*.m.

                      If you wish to edit the code, follow the instructions in the Notebook tpTensor.nb

*Required packages.*  These packages are automatically loaded when tpTensor is loaded:

     Backup         ---  automatic backups for Mathematica Notebooks (at 3 min intervals), so you don't
                         lose too much work when Mathematica inevitably crashes.

     FileFunctions  ---  Read a file into a string.

     LeviCivitaMTW  ---  some code that probably ought to be in tpTensor, but is not
                         for historical reasons.

     NotebookEvaluation  --- provides an "evaluate this notebook up to here" function.

     PartialDerivative  ---  a partial derivative function pD[] that can be used instead of the Mathematica
                             built-in D[].  It formats with a nice subscript notation. Because its code is open,
                             the user has more control over how it will interact with other code (such as tpTensor).

     RuleNumbers  ---  a trace/debugging facility that can be used to keep track of what user-defined
                       transformation rules are being applied to evaluate an expression.

     ShortWindowTitles  --- (only loaded for Linux systems) this removes annoying useless info from
                            Mathematica window titles, and from the titles used in the desktop taskbar.
                            It has only been tested for the KDE desktop, but should work on other desktops.

                            ***  NB ***   the Linux package "wmctrl" is required for this to work.

     TeXit  ---  turn your Mathematica Notebook into a LaTeX editor!

                 Even if your document contains no mathematics, this is still pretty cool because the collapsing
                 Sections, Subsections, etc., of your Notebook can be Sections, Subsections, etc., of your document.
                 This makes it easy to navigate and re-arrange parts of your document.
                   
                 ... now add to this the means to do mathematica calculations, automatically label and refer to
                 mathematica equations, output to a PDF viewer, etc. 

*Extra packages.*  These packages are not loaded when tpTensor is loaded, but some of them may be used in
                   some of the example Notebooks for tpTensor. 

     DirectoryTree  ---  indented tree-like directory listing.                

     FastIntegrate  ---  term by term integration for expressions that are too big for Mathematica's Integrate[].

     IntegrateOverSphere  ---  very fast integration of certain trig expressions using lookup tables.   

     PowersOfTrig  ---  default conversion from trigs of angle sums to products and powers of trig functions.
                 
     SumsOfAngle   ---  default conversion from products and powers of trig functions to trigs of sums of angles.

     SumsOfHyperAngle   ---  default conversion from products and powers of hyperbolic-trig functions to
                             hyperbolic-trigs of sums of angles.

      
                             
