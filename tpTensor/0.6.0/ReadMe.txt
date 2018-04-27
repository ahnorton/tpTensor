
Manifest:
---------


    ./tpTensor*x*.m     --   this is the package file. To use tpTensor, open a Mathematica
                             notebook and load the package using Needs[]. Eg.,
                             Needs["tpTensor0x5`"]

    ./tpTensor*x*.nb    --   the notebook (source code) associated with package tpTensor*x*.m. 
                             This notebook is probably only of interest to developers.
                             New users should start with the docs/tutorials/examples.

    ./ReleaseNotes.txt   --  These could be important if you are upgrading from a previous version 
                             of tpTensor. Please read them. 

    ./RequiredPackages   --  Required packages are automatically loaded when tpTensor is loaded.
    
                             These packages are required by tpTensor but can be used either
                             with or without tpTensor. As such, they are not released as part
                             of tpTensor, but as seperate packages with their own GPL. 
                             
    ./OptionalPackages   --  Optional packages are available for loading by the user if wanted.
    
                             These packages can be used either with or without tpTensor. As such,
                             they are not released as part of tpTensor, but as seperate packages
                             with their own GPL.
                             
                             OptionalPackages are used by some of the tpTensor Example Notebooks. 

    ./AddOnPackages      --  These packages require that tpTensor.m be loaded. They extend
                             or modify the functionality of tpTensor. As such, they are distributed
                             as a part of tpTensor.

                             Eg., it is planned that one such add-on package will be for using
                             tpTensor to do Clifford algebra. One of the Example Notebooks is
                             a first step towards this idea.
                             
    ./Documentation      --  all info pertaining directly to tpTensor. 

    ./ExampleNotebooks   --  Potential contributers should read ./ExampleNotebooks/ReadMe.txt.

    ./copying.txt        --  the GPLv3 licence for tpTensor.

Any documentation for the included packages is to be found in their respective sub-directories,
or within the .nb source file for the package. 


Installation:
-------------

    Standard location:

    After download and extraction, move the directory  /tptensor-*.*  to the location
    $UserBaseDirectory<>"/Applications/".  Eg., for Linux, 

    mv  tptensor-*.*  ~/.Mathematica/Applications 
     
    The package naming conventions for tpTensor are such that multiple versions can be retained
    on your system, so that cross-checks of results between versions can be made if desired. 
    To use a newer version of tpTensor, simply change the Needs[] that is used to load a specific
    version of tpTensor.

    Please read the ReleaseNotes. Since tpTensor is still in the early stages of development,
    it is quite possible (but unlikely) that syntax changes will be introduced that may break
    your existing tpTensor Notebooks if used with the new release. The release notes will make
    it clear if upgrading a Notebook to use the new version will require any changes other than
    simply updating the tpTensor version number to be used in the Needs[ ] statement.

    Alternative location:

    To install tpTensor in some directory "my_dir" of your choosing, edit your init.m,
    to be found at  FindFile["init.m"].  Add the following two lines at the end of file init.m,

        $tpTensorBaseDirectory = "my_dir"  
        PrependTo[$Path, $tpTensorBase]

    The directory "my_dir" should not have a trailing $PathnameSeparator (eg, "/" for Linux).
    When tpTensor is loaded, it will add the other required directories to your Mathematica $Path.

Help:
-----

    The tptensor home page is at  http://tptensor.org

    For help (or offers of help), please contact me (Andrew) at norton.ah@gmail.com.

    I plan to set up a Google Group for tpTensor users. If you are interested in subscribing
    to such a group, please send me an email and I shall let you know when it's up.



    
