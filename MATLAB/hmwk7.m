% hmwk7.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630 Homework #7
% Due Date: 10/9/18
%
% Description:
% This program imports sound file, stores both the data and sampling rate,
% plays the audio, and reverses the data array, which reverses the audio.


[oldSoundData, sampleRate] = audioread('backwards.wav'); % imports audio file and saves data and sampling rate
sound(oldSoundData, sampleRate); % plays sound file
newSoundData = oldSoundData(30000:-1:1); % reverses the elements in data array
sound(newSoundData, sampleRate); % plays reversed sound file
disp("word or phrase is: MATLAB"); % displays the text in audio
