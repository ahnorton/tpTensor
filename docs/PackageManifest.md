---
---

The [*tpTensor bundle*](README.md) contains the following packages:

The main package
-----------------

  *  **tpTensor**   ---  for tensor algebra using an index-free notation. 

     `tpTensor.m` is the main package file that loads the various parts
     `Part0-*.m`, ... , `Part6-*.m` and finally `PartX-*.m`.

     If you wish to edit the code, follow the instructions in the Notebook `tpTensor.nb`.

Required packages
-----------------

These packages are automatically loaded when *tpTensor* is loaded.

  *   **Backup**

      --- automatic backups for Mathematica Notebooks (at 3min intervals), so you don't
          lose too much work when Mathematica inevitably crashes.

  *   **FileFunctions**

      --- read a file into a string.

  *   **LeviCivitaMTW**

      ---  some code that probably ought to be in *tpTensor*, but is not for historical reasons.

  *   **NotebookEvaluation**

      ---  provides an "evaluate this notebook up to here" function.

  *   **PartialDerivative**

      ---  a partial derivative function `pD[]` that formats with a nice subscript notation. It can be used
           instead of Mathematica's built-in function `D[]`. Because its code is open, the user has more control
           over how it will interact with other code, such as that in *tpTensor*.

  *   **RuleNumbers**

      ---  a trace/debugging facility that can be used to keep track of what user-defined
           transformation rules are being applied to evaluate an expression.

  *   **ShortWindowTitles**   *(only loaded for Linux systems)*

      ---  removes annoying useless information from Mathematica window titles, and also from the titles used
           in the desktop taskbar. 
                            
      This package has only been tested on the KDE desktop, but should also work on other desktops.
      **NB:** the Linux package `wmctrl` needs to be installed for this package to work.

  *   **TeXit**

      ---  turn your Mathematica Notebook into a LaTeX editor!

      Even if your document contains no mathematics, this is still pretty cool because the collapsing
      Sections, Subsections, etc., of your Notebook can be Sections, Subsections, etc., of your document.
      This makes it easy to navigate and re-arrange parts of your document.
                   
      ... now add to this the means to do Mathematica calculations, automatically label and refer to
      Mathematica equations, output to a PDF viewer, etc. 

Extra packages
--------------

These packages are not loaded when *tpTensor* is loaded, but some of them may be used in some of the example
Notebooks for *tpTensor*. 

  *  __DirectoryTree__

     ---  indented tree-like directory listing.                

  *  __FastIntegrate__

     ---  term by term integration for expressions that are too big for Mathematica's `Integrate[]`.

  *  __IntegrateOverSphere__

     ---  fast integration of certain trig expressions using lookup tables.   

  *  __PowersOfTrig__

     ---  default conversion from trigs of angle sums to products and powers of trig functions.
                 
  *  __SumsOfAngle__

     ---  default conversion from products and powers of trig functions to trigs of sums of angles.

  *  __SumsOfHyperAngle__

     ---  default conversion from products and powers of hyperbolic-trig functions to hyperbolic-trigs
          of sums of angles.

      
                             
