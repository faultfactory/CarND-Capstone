# file_splitter_joiner

This is a broken down version of the Original version (for which I take no credit).
http://bdurblg.blogspot.com/2011/06/python-split-any-file-binary-to.html

I browsed the script from the above location, then went to the https://gist.github.com/mattiasostmar/7883550
Got the code and modified it and split it into two different files.

###### USAGE for splitter.py:
```
python3 ./splitter.py -h
python3 ./splitter.py orig.mp4 10000000

Where:
orig.mp4 - is your original file that you want the splitter to split!
10000000 - is equal to 10MB.  Change this value based on your need.
```

###### USAGE for joiner.py:
```
python3 ./joiner.py -h
python3 ./joiner.py orig.mp4 newfile.mp4 11

Where:
orig.mp4 - is your original file that you have split with splitter!
newfile.mp4 - would be the name of your new file that you want to the joiner to create
11 - is the number of files the splitter has split the original file into.  
    This number changes based on the number of chunk size you choose with the splitter.
```
