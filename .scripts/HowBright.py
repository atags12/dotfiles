#!/usr/bin/python

import subprocess
brightness = (subprocess.check_output(["xbacklight", "-get"])).decode('ascii')
print(" " + str(round(float(brightness))) + "%")
