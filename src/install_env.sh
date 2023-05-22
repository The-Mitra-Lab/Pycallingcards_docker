#!/bin/bash


apt-get update -y
apt-get install -y zip


pip install -r requirements.txt

mkdir /homer/
mv /code/configureHomer.pl /homer/configureHomer.pl
cd /homer/
perl ./configureHomer.pl -install





