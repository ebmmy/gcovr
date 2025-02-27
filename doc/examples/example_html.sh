#!/bin/bash

${CXX:-g++} -fprofile-arcs -ftest-coverage -fPIC -O0 example.cpp -o program

./program

#BEGIN gcovr html
gcovr -r . --html
#END gcovr html

#BEGIN gcovr html details
gcovr -r . --html --html-details -o example_html.details.html
#END gcovr html details

rm -f program *.gc*
