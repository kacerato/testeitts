package com.jme3.system;

public abstract class Timer {
    public abstract float getFrameRate();

    public abstract long getResolution();

    public abstract long getTime();

    public float getTimeInSeconds() {
        return ((float) getTime()) / ((float) getResolution());
    }

    public abstract float getTimePerFrame();

    public abstract void reset();

    public abstract void update();
}
