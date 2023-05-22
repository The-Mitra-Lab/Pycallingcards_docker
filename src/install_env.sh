#!/bin/bash


apt-get update -y
apt-get install -y zip


pip install -r requirements.txt

mkdir /homer/
mv /code/configureHomer.pl /homer/configureHomer.pl
cd /homer/

mkdir /mytools/
mv /code/bedtools /mytools/bedtools

perl ./configureHomer.pl -install
# perl ./configureHomer.pl -install hg38
# perl ./configureHomer.pl -install mm10
perl ./configureHomer.pl -install sacCer3

cd /code
rm build.sh Dockerfile requirements.txt install_env.sh



