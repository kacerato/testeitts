package com.ardor3d.util;

public interface ReadOnlyTimer {
    double getFrameRate();

    long getResolution();

    long getTime();

    double getTimeInSeconds();

    double getTimePerFrame();
}
