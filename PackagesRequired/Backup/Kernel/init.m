
(*  This is a generic init.m that allows easily selection of which version to load.          *)
(*  It does so by reading file ../version.m                                                  *)
(*                                                                                           *)
(*  $PackageName and $PackageVersion are temporary, as they will refer to the last package   *)   
(*  loaded using any init.m like this one.                                                   *)
(*                                                                                           *)
(*  Lines 14-17 assign a package version variable like $<package-name>Version = "x.x.x"      *)
(*  B.T.W.  ValueQ works with ToExpression but not with Symbol.                              *)

$PackageName = First[Take[FileNameSplit[$InputFileName], -3]]
$PackageVersion = Get[FileNameJoin[{$PackageName, "VersionToLoad.m"}]]

If[ValueQ[ToExpression["$" <> $PackageName <> "Version"]],
          ToExpression["$" <> $PackageName <> "Version = ."]]

Evaluate[ToExpression["$" <> $PackageName <> "Version"]] = $PackageVersion

Get[FileNameJoin[{$PackageName, $PackageVersion , $PackageName<>".m"}]]

(*  Let the result of the Get[ ] or Needs[ ] that ran this init.m. be a version string for   *)
(*  the package. This string output can be suppressed by using ";". E.g., Needs["name`"];    *)

$PackageName<>" version " <> $PackageVersion <> "."


