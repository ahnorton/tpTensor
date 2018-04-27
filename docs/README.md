# tpTensor

*tpTensor* is a Mathematica package for doing index-free tensor calculations.
Its development has been driven by the author's interest in electromagnetic radiation reaction for charged multipole particles.
As such it is rather good at some things, but still not so good at others.



The current version of *tpTensor* uses a large set of ad hoc rules for simplifying tensor expressions. This is 
adequate for many purposes, but of little use for problems like simplifying polynomials of the Riemann tensor. A
future version of tpTensor might make use of Mathematica's built-in canonical tensor simplification. 

## Getting tpTensor

   *tpTensor* is currently released and maintained as one package within a bundle of related packages. The .zip and .tar
   [releases](https://github.com/ahnorton/tpTensor/releases)
   contain the entire bundle of about a dozen packages. Notable amongst these packages are:

      ./tpTensor   --  the actual tpTensor package; 

      ./RequiredPackages/Backup  -- a scheduled backup for Mathematica notebooks;

      ./RequiredPackages/TeXit   --  allows a Mathematica notebook to be used as LaTeX editor that has a PDF preview window.

   For brief descriptions of all packages in the bundle, see the [package manifest.](https://ahnorton.github.io/tpTensor/PackageManifest.md)

   At some later date, these other packages may be separated out into their own git repositories. Until then, releases of the
   tpTensor bundle are identified by a date of the form yyyy-mm-dd, whereas the packages within the bundle have their
   own individual version numbers
   of the form x.x.x (see the [release notes](https://ahnorton.github.io/tpTensor/ReleaseNotes.md) for these).

## Requirements

   *tpTensor* is well tested with Mathematica 10.3 and 11.0.1. Development is done using the latest Mathematica version (at the time of
   writing, 11.3.0).
  
## Installation

  (1) Download the latest tpTensor bundle via the download button (under the title of this page). Previous releases of the 
      bundle can be downloaded from the [release page](https://github.com/ahnorton/tpTensor/releases).

  (2) The download extracts to a directory named by the release date of the bundle: tpTensor-yyyy-mm-dd. 
      Move this directory to somewhere listed in your Mathematica $Path variable. Standard locations are returned by the
      Mathematica expressions, 

          FileNameJoin[{$UserBaseDirectory, "Applications"}]      (for single user installation)

          FileNameJoin[{$BaseDirectory, "Applications"}]          (for system wide installation) 
           
      On Linux, these directories are typically  "/home/username/.Mathematica/Applications" and  "/usr/share/Mathematica/Applications".

      Example. Extract using uzip or tar xf. Then,

         mv  tpTensor-2018-04-27  /home/username/.Mathematica/Applications

      where "2018-04-27" and "username" will need to be edited appropriately. 

  (3) Edit the file:  ~/.Mathematica/Kernel/init.m

      Add the following lines to the end of your init.m

        $tpTensorBundle = FileNameJoin[{$UserBaseDirectory,"Applications","tpTensor-2018-04-27"}];
        $PathOriginal = $Path;
        $Path = Join[ $PathOriginal,
                  {
                    $tpTensorBundle,
                    FileNameJoin[{$tpTensorBundle,"PackagesRequired"}],
                    FileNameJoin[{$tpTensorBundle,"PackagesExtra"}]
                  }];
        $TeXitBaseurl = FileNameJoin[{$tpTensorBundle,"PackagesRequired"}];
        $TeXitAuthor = "Andrew~H.~Norton";

      Edit the first line to correct for the release date. Here, the variable $tpTensorBundle is has been defined for a single user
      installation. For a system wide or non-standard installation location this variable will have to be adjusted accordingly.

      Edit the last line to contain *your* name. This is the default author name for any documents you generate with TeXit.

   (4) Install the Notebook style file that is required for using TeXit (it provides TeX versions of various cell types). Installation
       instructions are given in the file StyesheetInstall.txt, which is to be found in the directory containing the TeXit source. 

## Getting started

   See the notebooks in the Examples directories for the individual packages.

## Documentation

   At this point, the *tpTensor* documentation has not yet been integrated into
   Mathematica's help center.

   Help for most tpTensor functions is available via `? <function-name>`.

   Most of the smaller packages are only documented within their source (.nb file). 

   (The directory ./docs contains only web pages for this GitHub-Pages site.)   

## Licence

 *tpTensor* is a Mathematica package.
 <br>
 Copywrite &copy; 2016-2018  Andrew H. Norton.
 
 Statement of copying permission:

    tpTensor is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    tpTensor is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with tpTensor. If not, see <http://www.gnu.org/licenses/>.

norton.ah@gmail.com <br>
[https://ahnorton.github.io/tpTensor/](https://ahnorton.github.io/tpTensor/)



