package com.jme3.terrain;

public interface ProgressMonitor {
    float getMonitorMax();

    void incrementProgress(float f10);

    void progressComplete();

    void setMonitorMax(float f10);
}
