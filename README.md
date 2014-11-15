=
PCGEN
=

######Updated: 2014-11-15
==========================
#####PCGen Data Sets & Homebrew

Hi mates!


This is for my growing collection of PCGen compatible books (Mostly Closed Content).


To get the most from these sets, you will need to utilize the latest version (unstable if necessary) of pcgen. I try to use the best methods to get results, which will rely on new bug fixes or new features. You will need to download PCGen. PCGen's main development line is here: 
* http://www.pcgen.org/autobuilds/download.html (Latest Updates, fixes and features)
* http://pcgen.org (The main website)


My goal has been to make sets that are compatible with the existing PCGen book data sets. To achieve that, I attempt to re-use a lot of common pcgen standards to avoid any non-compatibility. To get the best results, you should use the books in this repository. Any non-compatibility issues should be reported.


The collection of books includes popular D&D 3.5 books, with the complete core rules and a good assortment of popular supplements. I also support other d20 systems and even a few non-d20 systems, a complete listing of systems and the status of the books are kept on the wiki: https://github.com/BahamutDragon/pcgen/wiki/Book-Statuses


I will attempt to code up what is requested within reason and whatever my own group needs. I am looking to other like-minded individuals who are willing to collaborate to grow this collection of books. I would certainly appreciate any help from fellow homebrewers. Any experience level is welcome. I can always use help testing the books, or if you have a little knowledge, going in and coding in the minor and major things. I ask that you attempt to follow the pcgen standards for a uniform appearance.


I have a discussion group for homebrewers, please join to share ideas and of course make requests -- http://games.groups.yahoo.com/group/bd_games/


###DOWNLOADING THE CONTENT
Two methods exist to get the content onto your system.

   1) The easier method is to use the GITHUB download option (https://github.com/BahamutDragon/pcgen/archive/master.zip)
Save the zip folder to a valid pcgen recognized data folder of your choice. Unzip the contents. Load PCGen. See 'LOADING THESE SETS' Below:

   2) The better method is to install GIT and a GIT Client, and clone the repository to a location outside of the PCGen installation directory. Then open PCGen, go to Tools>Preferences and in the Location tab under the PCGen drop-down, change "PCGen Vendor Data Directory" or "PCGen Homebrew Data Directory" to the directory you cloned the repo into. This allows easy updates when they happen (via a git pull). It also saves bandwidth since you are only download changes, not the whole repo. I use this method to keep my data sync'd with the repo and allows for testable fixes and pushing those to the repo.  See 'LOADING THESE SETS' Below:

==
####Links for Git a client:
* SSH:   (git@github.com:BahamutDragon/pcgen.git)
* HTTPS: (https://github.com/BahamutDragon/pcgen.git)

####Link for SVN client 
* HTTPS: (https://github.com/BahamutDragon/pcgen)

==
###HOW TO USE THIS CONTENT:
These Book data sets are not meant to be "Installed" using the Install feature in PCGen. Instead, you can drop them as-is into a valid pcgen recognized 'data' folder of your choosing. I highly recommend using 'Vendor Data' (any version of pcgen) or Homebrew Data (new in 6.3) folders outside the main installation, this makes upgrading your pcgen version easier. 
NOTICE: In order to use ALL of the data sources and the extra game systems, you must copy the system\gameMode folder into your PCGen installation system\gamemode.

IMPORTANT - PLEASE READ: Included in the repository are additional folders that are not DATA content. These _will_ need to be copied to the correct correlating pcgen installation folders to get the full benefit of additional options. These options include such things as: gamemodes (Game Systems not already in PCGen), outputsheets (Exported Character Sheet options for those other game systems), preview sheets (Same as outputsheets), etc. Leaving that in the data folder will not cause any issues for pcgen, but, if you do not copy the content into your installed pcgen folder, those additional options WILL NOT be available. 
NOTE: Restarting PCGen is required when adding new content, otherwise it will not be displayed.

####LOADING THE SETS:
PCGen's default basic set loaders will not load these custom homebrew sets.

You must switch to the ''ADVANCED'' tab on the SELECT SOURCES window. Choose the appropriate ''GAME'' (this is short for game system, i.e. 35e) from the drop down list. Then select the books you desire to use.

Example is selecting 'Dungeons & Dragons - Core Books' for the 35e game, and then adding any additional supplements.

After you have made your selections, to save time, click the button 'Save Source Selection'. This will allow to make your own custom file, which will be available on the BASIC tab in the future.

==
###How do I contribute? "Pull Request"
Please consult GIT documentation to set up GIT.

If you wish to be a contributor by submitting patches and improvements, then set up your own github account, fork the repo, and set up links to your personal copy. GITHUB has detailed instructions if this interests you. Steps outlined below:

==
* Please fork this repository on Github.
* Clone your fork to your local computer.
* Create a descriptive branch and then 'checkout' that branch to work on.
* Then make your intended changes within the branch. Once satisfied, commit those changes to GITHUB.
* Then create a pull request, using the button on Github, from your fork to mine.
* After review, the changes will either be accepted or rejected. (Rejected means something needs to be adjusted)


Any issues regarding the actual content itself, i.e. character creation issues, class missing features, wrong progressions, etc., please open an issue or contact me directly. I do not maintain the actual PCGen program, any concerns about the program should be directed to the correct maintainers on their site.


To stay notified of any changes, you can 'WATCH' this repo (option at the top in GITHUB), or follow my personal rss feed <https://github.com/BahamutDragon.atom>

I welcome feedback to know the sets provided are handy. Please report any issues you find. I fix items quickly when possible.

Best,


BahamutDragon


~BD

bahamutdragon2013@gmail.com

http://games.groups.yahoo.com/group/bd_games/
