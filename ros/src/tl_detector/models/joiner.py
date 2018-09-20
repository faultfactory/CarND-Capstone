import os
import argparse

# define the function to join the chunks of files into a single file


def joinFiles(origFileName, newFileName, noOfChunks):
    dataList = []

    j = 0
    for i in range(0, noOfChunks, 1):
        j += 1
        chunkName = "%s-chunk-%s-Of-%s" % (origFileName, j, noOfChunks)
        f = open(chunkName, 'rb')
        dataList.append(f.read())
        f.close()

    j = 0
    for i in range(0, noOfChunks, 1):
        j += 1
        chunkName = "%s-chunk-%s-Of-%s" % (origFileName, j, noOfChunks)
        # Deleting the chunck file.
        os.remove(chunkName)

    f2 = open(newFileName, 'wb')
    for data in dataList:
        f2.write(data)
    f2.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('orig_filename', action="store",
                        help='provide original filename as first argument')
    parser.add_argument('new_filename', action="store",
                        help='provide new filename as second argument')
    parser.add_argument('chunks', action="store",
                        help='provide number of chunks as third argument', type=int)
    args = parser.parse_args()
    if args.orig_filename and args.new_filename and args.chunks:
        #joinFiles('one.mp4', 'myNewFile.mp4', 11)
        joinFiles(args.orig_filename, args.new_filename, args.chunks)
