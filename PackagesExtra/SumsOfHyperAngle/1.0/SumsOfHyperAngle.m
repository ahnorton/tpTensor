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



BeginPackage["SumsOfHyperAngle`"]


SumsOfHyperAngle::usage="The package  SumsOfHyperAngle  will transform products of Sinh[\[Theta]] and Cosh[\[Theta]] into sums of Sinh[m\[Theta]] and Cosh[m\[Theta]], 
thus automatically calculating Hyperbolic Fourier series. The functions provided are :

UseSumsOfHyperAngle[\[Theta]]
ClearSumsOfHyperAngle[\[Theta]]

where \[Theta] is a specified angular variable.
See also package:  SumsOfAngle" 


UseSumsOfHyperAngle::usage=SumsOfHyperAngle::usage


ClearSumsOfHyperAngle::usage=SumsOfHyperAngle::usage


Begin["`Private`"]


Clear[UseSumsOfHyperAngle]
UseSumsOfHyperAngle[x_] := (
Unprotect[Sinh,Cosh,Power];
Sinh[x] Cosh[x] ^:= 1/2 Sinh[2x] ;
Sinh/:Sinh[x]^2:=-1/2(1-Cosh[2 x]) ; 
Cosh/:Cosh[x]^2:=1/2(1+Cosh[2 x]) ; 
Sinh[x]^n_ /;n>2^:=- Expand[1/2(1-Cosh[2 x]) Sinh[x]^(n-2)] ; 
Cosh[x]^n_ /;n>2^:= Expand[1/2(1+Cosh[2 x]) Cosh[x]^(n-2)] ; 
Sinh[x] Sinh[n_ x] ^:= -1/2 Cosh[(1-n)x]+1/2 Cosh[(1+n) x] ; 
Cosh[x] Cosh[n_ x]^:= 1/2 Cosh[(1-n) x]+1/2 Cosh[(1+n) x] ; 
Cosh[x] Sinh[n_ x]^:= 1/2 Sinh[(1+n) x]-1/2 Sinh[(1-n) x] ; 
Sinh[x] Cosh[n_ x]^:= 1/2 Sinh[(1+n) x]-1/2 Sinh[(n-1) x] ; 
Sinh[m_ x] Sinh[n_ x]^:= -1/2 Cosh[(m-n) x]+1/2 Cosh[(m+n) x] ; 
Cosh[m_ x] Cosh[n_ x]^:= 1/2 Cosh[(m-n) x]+1/2 Cosh[(m+n) x] ; 
Cosh[m_ x] Sinh[n_ x]^:= 1/2 Sinh[(m+n) x]-1/2 Sinh[(m-n) x] ; 
Sinh/:Sinh[m_ x]^2:=-1/2(1-Cosh[2 m x]) ; 
Cosh/:Cosh[m_ x]^2:=1/2(1+Cosh[2 m x]) ; 
Sinh[m_ x]^n_ /; n>2 ^:= - Expand[1/2(1-Cosh[2m x]) Sinh[m x]^(n-2)] ; 
Cosh[m_ x]^n_ /; n>2 ^:=  Expand[1/2(1+Cosh[2 m x]) Cosh[m x]^(n-2)] ;
Protect[Sinh,Cosh,Power];)


ClearSumsOfHyperAngle[x_] := (
Unprotect[Sinh,Cosh,Power];
Sinh /: Sinh[x] Cosh[x] =.;
Cosh /: Sinh[x] Cosh[x] =.;
Sinh /: Sinh[x]^2=.;
Cosh /: Cosh[x]^2=.;
Sinh /: Sinh[x]^n_ /; n>2 =.;
Cosh /: Cosh[x]^n_ /; n>2 =.;
Sinh /: Sinh[x] Sinh[n_ x]=.;
Cosh /: Cosh[x] Cosh[n_ x]=.;
Sinh /: Cosh[x] Sinh[n_ x]=.;
Sinh /: Sinh[x] Cosh[n_ x]=.;
Cosh /: Cosh[x] Sinh[n_ x]=.;
Cosh /: Sinh[x] Cosh[n_ x]=.;
Sinh /: Sinh[m_ x] Sinh[n_ x]=.;
Cosh /: Cosh[m_ x] Cosh[n_ x]=.;
Sinh /: Cosh[m_ x] Sinh[n_ x]=.;
Cosh /: Cosh[m_ x] Sinh[n_ x]=.;
Sinh /: Sinh[m_ x]^2=.;
Cosh /: Cosh[m_ x]^2=.;
Sinh /:Sinh[m_ x]^n_ /; n>2 =.;
Cosh /:Cosh[m_ x]^n_ /; n>2 =.;
Protect[Sinh,Cosh,Power];)


End[]


EndPackage[]
