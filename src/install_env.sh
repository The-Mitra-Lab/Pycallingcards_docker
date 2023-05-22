#!/bin/bash


apt-get update -y
apt-get install -y zip


pip install -r requirements.txt

mkdir /homer/
mv /code/configureHomer.pl /homer/configureHomer.pl
cd /homer/

perl ./configureHomer.pl -install
# perl ./configureHomer.pl -install hg38
# perl ./configureHomer.pl -install mm10
perl ./configureHomer.pl -install sacCer3

rm build.sh Dockerfile requirements.txt install_env.sh



