# Backup for Mathematica Notebooks

*Backup* is a Mathematica package that uses the built-in Mathematica function `RunScheduledTask[]` to automatically
save and backup your Mathematica notebooks while you are editing and working on them. This provides a degree of
protection from losing your notebook if Mathematica crashes. *Backup* provides the function

          StartBackup[]

  that schedules a set of tasks to save your notebook every 3 minutes, and to also make regular backup copies of it. 
  Backups are saved to the directory  **NotebookDirectory[ ]<>"***name***_bak"**, where *name***.nb**  is your
  Notebook file.  
  
  The backup files that are generated are:
  
          <name>_session-N.nb   where N = Mod[s, 10], and s is an edit-and-work session count. The current
                                session count is stored in the file <name>_bak/SessionNumber.dat.
  
                                When StartBackup[] is executed, the Notebook is saved and a backup copy 
                                of it is also made. The last 10 such backups of the initial state of
                                an edit-and-work session are kept. 
  
                                Note that all other backup files are saved at times that are random w.r.t.
                                the edited state of the file, so they might contain incomplete statements
                                that you have not finished typing...
  
          <name>_03min-N.nb     A backup each 3 min, but only written if it will differ from any of the
                                last backups written. There are two such files, N = 0, 1.
  
          <name>_15min-N.nb     where  N = 0,..3  is the quarter of the hour (4 files).
                                A backup for each new 1/4 hour, but only written if it will differ from the
                                last 1/4 hr backup written.
            
          <name>_hourly-N.nb    where N = 00,..,23  is the hour of the day (24 files).
                                A backup for each new hour, but only written if it will differ from the last
                                hourly backup written.
            
          <name>_daily-ddd.nb   where ddd = Mon, Tue,... is the day of the week (7 files).
                                A backup for each new day, but only written if it will differ from the last
                                daily backup written.
            
          <name>_monthly-N.nb   where N = 01,..,12  is the month of the year (12 files).
                                A backup for each new month, but only written if it will differ from the last
                                monthy backup written. 
      
  The backup set will grow slowly over time, as need be. A full backup set (collected over a year or more)
  will contain 10 + 2 + 4 + 24 + 7 + 12 = 59  files, none of which are the same.

## Prerequisites

  *Backup* will run on any system with a recent Mathematica (the built-in function
  `RunScheduledTask[]` that *Backup* uses was introduced in Mathematica 8.0 and updated in 10.0.2).
  
## Installation

  Download the source code (zip or tar.gz) from the [release page](https://github.com/ahnorton/Backup-mathematica/releases)
  and extract it (`unzip` or `tar xf`). The extracted  directory
  will have a name like "Backup-mathematica-x.x.x". Rename this directory as "Backup" and move it into one of the following
  directories (evaluate these expressions in Mathematica),

          FileNameJoin[{$UserBaseDirectory, "Applications"}]      (for single user installation)

          FileNameJoin[{$BaseDirectory, "Applications"}]          (for system wide installation) 
           
  On Linux, these are typically  "/home/*username*/.Mathematica/Applications" and  "/usr/share/Mathematica/Applications".

## Usage

   Add these lines somewhere near the beginning of any Mathematica Notebook that you are working on,

          Needs["Backup`"]
          StartBackup[]

   `StartBackup[]` should be run soon after opening your Notebook for a session of editing or working. 
   If you can remember to, `StopBackup[]` before closing your Notebook. Otherwise, you will be prompted to
   `DeleteLockFile[]` next time that `StartBackup[]` is run. *Backup* is easy to use -- it only has these 3 functions.  

   To recover after crashing your Notebook, list the contents of
   directory *name***_bak** by creation date in order to select a recent backup of your Notebook to copy and rename.  
 
## Documentation

   Help for *Backup*'s functions is available via `?StartBackup`, `?StopBackup`, and  `?DeleteLockFile`.

## Licence

 *Backup* is a Mathematica package that runs scheduled backups for Mathematica Notebooks.
 <br>
 Copywrite &copy; 2016  Andrew H. Norton.
 
 Statement of copying permission:

    Backup is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Backup is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Backup. If not, see <http://www.gnu.org/licenses/>.

norton.ah@gmail.com <br>
https://github.com/ahnorton/Backup-mathematica
