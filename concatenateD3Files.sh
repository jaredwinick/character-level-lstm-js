#!/bin/bash

find node_modules | grep "d3" | grep ".js$" | grep -v ".min." | xargs  cat | gzip >  d3SourceFiles.txt.gz

