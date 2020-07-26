#!/bin/bash

# e.g. Project/Debug_PROJECT/project.hex

FILE_PATH=/Project/Debug_PROJECT
FILE=$FILE_PATH"/project"

# convert hex to bin file
arm-none-eabi-objcopy --input-target=ihex --output-target=binary $FILE".hex" $FILE".bin"

# load
st-flash --reset write $FILE".bin" 0x8000000
