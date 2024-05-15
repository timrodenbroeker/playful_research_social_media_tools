#!/bin/bash

ffmpeg -i rendering.mp4 -i input.wav -c:v copy -c:a aac -strict experimental -shortest output.mp4

