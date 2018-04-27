
# ./PackagesRequired

The packages in this directory are loaded by default by tpTensor, so in this sense they are all
required.

In principle, the tpTensor package could run without any of them (with reduced functionality).

-------------------------------------------------------------------------------------------------

At a later date these packages should be released as separate git repositories since
they do not depend on tpTensor and are generally useful:


o Backup  --  automatic backups for Mathematica Notebooks (at 3min intervals), so you don't
              lose too much work when Mathematica inevitably crashes.

o RuleNumbers  --  a trace/debugging facility that keeps track of what user-defined transformation
                   rules are being used to evaluate an expression.  

o PartialDerivative  --  partial derivatives using a nice subscript notation for output.

o TeXit  --  turn your Mathematica Notebook into a LaTeX editor.

             [ At the moment, TeXit and tpTensor are not well separated since both contain
             code related to handling equations. That code should probably be a seperated
             out as a stand-alone "Equations" package. ]


-------------------------------------------------------------------------------------------------

This package only gets loaded on Linux systems:

o ShortWindowTitles   ---  cleans up annoying useless info in the titles of Mathematica windows,
                           and in the titles used in the desktop taskbar. 
                           
                           Only tested for KDE the desktop (but should work on other desktops).

      ***  NB ***    To work, this requires that the Linux package "wmctrl" be installed.

-------------------------------------------------------------------------------------------------
