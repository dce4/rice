#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap tr || setxkbmap us
