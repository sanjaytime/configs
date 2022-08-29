import argparse
import logging
import os

logger = logging.getLogger(name=os.path.basename(__file__))
logging.basicConfig(level=logging.INFO)


parser = argparse.ArgumentParser(description='Process a path')
parser.add_argument('mp3_folder_path', metavar='mp3_folder_path', type=str,
                    help='desired output path for the youtube files')

args = parser.parse_args()

args.mp3_folder_path

logger.info(f'argument provided: {args.mp3_folder_path}')

text = """
-x
--restrict-filenames
# Put your desired output path below!  Keep the "%(title)s.%(ext)s" at the end.
-o ~/Music/My\ files\ in\ Dropbox/sample\ files/full\ songs\ to\ sample/%(title)s.%(ext)s
/Users/sanjay/Music/sample files/full songs to sample
--audio-quality 0
--audio-format mp3
""".format(args.mp3_folder_path)

logger.info(text)