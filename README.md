# tpTensor

*tpTensor* is a Mathematica package for doing index-free tensor calculations. It is very easy to get started with,
so could even be used by students learning 3-vector calculus. Nevertheless, it was initially developed as a
research tool for studying electromagnetic radiation reaction for charged multipole particles. As such it is very
good at some things, but no so good at others.

The current version of *tpTensor* uses a large set of ad hoc rules for simplifying tensor expressions. This is 
adaquate for many purposes, but of little use for problems like simplifying polynomials of the Riemann tensor. A
future version of tpTensor might make use of Mathematica's built-in canonical tensor simplification. 

## Prerequisites

  *tpTensor* started development in Mathematica 8. In its current version, tpTensor has been well used/tested only with
  Mathematica 10.3 and 11.0. 
  
## Installation

  (1) Download the tpTensorBundle:  [zip](https://github.com/ahnorton/tpTensor/releases).
      The download will extract (using `unzip` or `tar xf`) to a directory "tpTensorBundle". 

  (3) Move all of the sub-directories of tpTensor-plus-extras into one of the following
      directories (evaluate these expressions in Mathematica),

          FileNameJoin[{$UserBaseDirectory, "Applications"}]      (for single user installation)

          FileNameJoin[{$BaseDirectory, "Applications"}]          (for system wide installation) 
           
      On Linux, these are typically  "/home/*username*/.Mathematica/Applications" and  "/usr/share/Mathematica/Applications".

## Getting started

   To load *tpTensor* for use in your Mathematica notebook, 

          Needs["tpTensor`"]

   To view the existing documentation for tpTensor functions,

          ? tpTensor

   ...but many functions have yet to be documented.
 
   Some non-trivial uses of tpTensor can be found in the Examples directory.

## Documentation

   A listing of all tpTensor functions is available via `? fnlist`.
   Help for all tpTensor functions is available via `? <function-name>`.

   At this point, the *tpTensor* documentation has not yet been integrated into
   Mathematica's help center.

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
https://github.com/ahnorton/tpTensor


