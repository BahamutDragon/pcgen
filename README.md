=
PCGEN HOMEBREW
=

###### Updated: 2019-06-04
==========================
##### PCGen Data Sets & Homebrew

Hi mates!


This is for my growing collection of PCGen compatible books and game systems.


To get the most from these sets, you will need the following:
* PCGen, the program. Links below. 

You have the option of a production release, such as 6.08.x or grabbing the current development release and/or autobuilds such as 6.09.x. 

It is always recommended that you use the latest available release of PCGen when using these sets from the master branch or the versioned branch for the production, i.e. 6.08 with 6.08.x.

Many of the latest features will require you to utilize the latest version (unstable if necessary) of pcgen. 
I try to use the latest fixes and improvements found in the development line, if you grab the master branch be sure to use the latest developmental version of PCGen. 
* http://pcgen.org (The main website)


To get the optimal results and least amount of conflicts, you should use the core sets and books available in this repository. 


Status of the books are here: https://github.com/BahamutDragon/pcgen/wiki/Book-Statuses


I have a discussion group for homebrewers, please join to share ideas and of course make requests. I post about once a month on current projects or ideas. -- http://games.groups.yahoo.com/group/bd_games/


### DOWNLOADING THE CONTENT
Two methods exist to get the content onto your system.

   1) The easier method is to use the GITHUB download option - please note that the download will change based upon branch currently selected, allowing a choice of versions. (Master is for the latest version whether alpha, beta, rc or production, Branches that are using the versioning system of pcgen is meant to work with the same version of pcgen, example 6.04.01 branch is designed to be compatible with PCGen version 6.04.01)
Save the zip folder to a valid pcgen recognized data folder of your choice. Unzip the contents. Load PCGen. See 'LOADING THESE SETS' Below.

   2) The better method is to install GIT and a GIT Client, and clone the repository to a location outside of the PCGen installation directory. Then open PCGen, go to Tools>Preferences and in the Location tab under the PCGen drop-down, change the folder path of "PCGen Vendor Data Directory" or "PCGen Homebrew Data Directory" to the directory you cloned the repo into. This allows easy updates when they happen (via a git pull). It also saves bandwidth since you are only downloading changes, not the whole repository. I found this is the method to keep my data sync'd with the repo and allows for testable fixes and pushing those to the repo.  See 'LOADING THESE SETS' Below.

==
#### Links for Git a client:
* SSH:   (git@github.com:BahamutDragon/pcgen.git)
* HTTPS: (https://github.com/BahamutDragon/pcgen.git)

#### Link for SVN client 
* HTTPS: (https://github.com/BahamutDragon/pcgen)

==
### HOW TO USE THIS CONTENT:
These Book data sets are not meant to be "Installed" using the Install feature in PCGen. Instead, you can place them as-is into a valid pcgen recognized 'data' folder of your choosing. I highly recommend using 'Vendor Data' (any version of pcgen) or Homebrew Data (new in 6.3) folders outside the main installation, this makes upgrading your pcgen version easier. 
NOTICE: In order to use ALL of the data sources and the extra game systems, you must copy the 'system\gameMode' folder into your PCGen installation 'system\gamemode'.

IMPORTANT - PLEASE READ: Included in the repository are additional folders that are not DATA content. These _will_ need to be copied to the correct correlating pcgen installation folders to get the full benefit of additional options. These options include such things as: gamemodes (Game Systems not already included in your PCGen installation), outputsheets (Exported Character Sheet options for those other game systems), preview sheets (Same as outputsheets), etc. Leaving that in the data folder will not cause any issues for pcgen, but, if you do not copy the content into your installed pcgen folder, those additional options ''will not'' be available. Also note, if those items are updated, you will need to re-copy and paste them to the correct location to apply the new changes.
NOTE: Content is only discovered and processed when the PCGen program starts up. In order to make use of new content, you will have restart PCGen if already started.

#### LOADING THE SETS:
PCGen's default basic set loaders will not load these custom homebrew sets.

You must switch to the ''ADVANCED'' tab on the SELECT SOURCES window. Choose the appropriate ''GAME'' (this is short for game system, i.e. 35e) from the drop down list. Then select the books you desire to use.

Example is selecting 'Dungeons & Dragons - Core Books' for the 35e game, and then adding any additional supplements.

After you have made your selections, to save time, click the button 'Save Source Selection'. This will allow to make your own custom file, which will be available on the BASIC tab in the future.

==
### How do I contribute? "Pull Request"
Please consult GIT documentation to set up GIT.

If you wish to be a contributor by submitting patches and improvements, then set up your own github account, fork the repo, and set up links to your personal copy. GITHUB has detailed instructions if this interests you. Steps outlined below:

==
* Please fork this repository on Github.
* Clone your fork to your local computer.
* Create a descriptive branch and then 'checkout' that branch to work on.
* Then make your intended changes within the branch. Once satisfied, commit those changes to GITHUB.
* Then create a pull request, using the button on Github, from your fork to mine. GITHUB will detect recent branch uploads and changes with a prompt to do a pull request.
* Pull Requests will be included after a review, unless there is a problem.


Any issues regarding the actual content itself, i.e. character creation issues, class missing features, wrong progressions, etc., please open an issue or contact me directly. However, I do not maintain the actual PCGen program, any concerns about the program should be directed to the correct maintainers on their site.


To stay notified of any changes, you can 'WATCH' this repo (option at the top in GITHUB) or choose to follow me. 

I welcome feedback to know the sets provided are handy. Please report any issues you find, if it does not work, it is likely a bug.

Best,


BahamutDragon


~BD

bahamutdragon2013@gmail.com

