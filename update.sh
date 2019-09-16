#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH

rm ./Packages
rm ./Packages.bz2

dpkg-scanpackages debs / > Packages
bzip2 -fks Packages

# rm -rf /Users/ouo/Documents/GitHub/OuOp.GitHub.io/debs
# rm -rf /Users/ouo/Documents/GitHub/OuOp.GitHub.io/Packages
# rm -rf /Users/ouo/Documents/GitHub/OuOp.GitHub.io/Packages.bz2
# cp -r ./Packages /Users/ouo/Documents/GitHub/OuOp.GitHub.io/Packages
# cp -r ./Packages.bz2 /Users/ouo/Documents/GitHub/OuOp.GitHub.io/Packages.bz2
# cp -r ./debs /Users/ouo/Documents/GitHub/OuOp.GitHub.io/debs
#
# rm -rf /Users/ouo/Documents/Gitee/LakrOwO/repo/debs
# rm -rf /Users/ouo/Documents/Gitee/LakrOwO/repo/Packages
# rm -rf /Users/ouo/Documents/Gitee/LakrOwO/repo/Packages.bz2
# cp -r ./Packages /Users/ouo/Documents/Gitee/LakrOwO/repo/Packages
# cp -r ./Packages.bz2 /Users/ouo/Documents/Gitee/LakrOwO/repo/Packages.bz2
# cp -r ./debs /Users/ouo/Documents/Gitee/LakrOwO/repo/debs

