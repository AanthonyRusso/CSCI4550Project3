# Using Pantheon by StanfordSNR to Experiment with Different Congestion Control Schemes

## Setup

### All of this must be done on a PC that has Linux or a Linux VM (WSL will not work)

http://mahimahi.mit.edu/
First, download and install mahimahi. This will most likely have to be done through building it from the source code

Next, install pyenv, and download Python 2.7, and set it as the global python version to be used 

Next, download PyYaml, numpy, and matplotlib for Python 2.7 (the last two are used for analysis with Pantheon's analysis tool)
https://github.com/StanfordSNR/pantheon

Next, clone the Pantheon repository, and go into the directory. Then, take the 3 shell scripts from this repository, and put them in the pantheon folder.

After this, run the shell script "pantheonSetup.sh". This will setup and create the necessary files for for emulating both good and bad networks.

## Running the tests
Then, run the shell script "schemesTesting.sh". This will run 3 schemes, cubic, vegas, and bbr, in both good and bad network conditions, and put the results in a folder (<scheme>Results for a good environment, <scheme>ResultsBad for a bad environment.

Then, optionally, run the shell script "analyze.sh" to analyze the results and create a pdf report along with graphs
