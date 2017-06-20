# Dockerfile for Building YNAB Toolkit

This is a small Dockerfile which builds the YNAB toolkit extension in an isolated environment,
then copies the build to your current working directory. Currently builds tag v1.0.0.

This was initially started to test a fix for https://github.com/toolkit-for-ynab/toolkit-for-ynab/issues/776
but I've decided to make a repository in case people wish to continue building this for themselves in future.

For Google Chrome, simply "load unpacked extension" from the output/build directory, and you'll be good to go!
