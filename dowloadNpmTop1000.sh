#!/bin/bash

wget -qO- https://gist.githubusercontent.com/anvaka/8e8fa57c7ee1350e3491/raw/2bbcd7c83c8623b19f2de85dc6b498a7e12e7d46/01.most-dependent-upon.md | grep -o "\[.*\]" | cut -d "[" -f2 | cut -d "]" -f1 > NpmTop1000.txt

while read package; 
do   
    echo $package;
    npm update $package 
done < NpmTop1000.txt
