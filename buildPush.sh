#!/bin/bash
hugo --minify --gc -d docs
git add -A
git commit -m "Update"
git push origin master