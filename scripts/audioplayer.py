#!/usr/bin/env python


"""
Adapted code from Olin College OccamLab
Github repo found here: https://github.com/occamLab/eye-helper-cv
"""
import cv2
import numpy as np
import subprocess
import time

class AudioPlayer():

    def __init__(self, om):
        self.angle = 85
        self.height = 4
        self.path = "../GeneratedSoundFiles/" # TODO: fix this so it doesn't use '..'
        self.filename = "{}height{}angle{}.wav".format(self.path, self.height, self.angle)
        self.player = 'aplay'
        self.om = om

    def audio_loop(self):
        while True:
            time.sleep(0.5)
            center = self.om.center
            if center != None:
                self.filename = self.play_audio()
                print self.filename

    def play_wave(self):
        """
        plays an inputted wav file
        """
        
        print self.filename
        cmd = '{} {}'.format(self.player, self.filename)
        popen = subprocess.Popen(cmd, shell=True)
        popen.communicate()

    def myround(self,x, base=5):
        return int(base * round(float(x)/base))

    def play_audio(self):
        """
        plays a generated audio file based on the inputted center
        inputs: center - the center of the keypoints for a tracked image (x,y)
        """

        w = 512 # TODO: put in width of image
        max_height = 512 # TODO: height of the image
        
        max_angle = np.pi / 2
        min_angle = -max_angle
        self.angle = int(self.myround((self.om.center[0]/640.0) * 170.0 - 85.0))
        # self.height = 4  # hard-coded at 4 for current testing
        self.height = 7 - int(self.om.center[1]/512.0 * 7.0)
        print self.om.center[1], "om.center"

        if self.angle > 0:
            self.filename = "{}height{}angle{}.wav".format(self.path, self.height, self.angle)
        else:
            self.filename = "{}height{}angle_{}.wav".format(self.path, self.height, abs(self.angle))
        # print self.angle
        # print self.height
        self.play_wave()

if __name__ == '__main__':
    ap = AudioPlayer()
    ap.play_audio((10, 10))