package com.jme3.system;

public class NanoTimer extends Timer {
    private static final float INVERSE_TIMER_RESOLUTION = 1.0E-9f;
    private static final long TIMER_RESOLUTION = 1000000000;
    private float fps;
    private long previousTime;
    private long startTime = System.nanoTime();
    private float tpf;

    @Override
    public float getFrameRate() {
        return this.fps;
    }

    @Override
    public long getResolution() {
        return 1000000000L;
    }

    @Override
    public long getTime() {
        return System.nanoTime() - this.startTime;
    }

    @Override
    public float getTimeInSeconds() {
        return ((float) getTime()) * 1.0E-9f;
    }

    @Override
    public float getTimePerFrame() {
        return this.tpf;
    }

    @Override
    public void reset() {
        this.startTime = System.nanoTime();
        this.previousTime = getTime();
    }

    @Override
    public void update() {
        float time = ((float) (getTime() - this.previousTime)) * 1.0E-9f;
        this.tpf = time;
        this.fps = 1.0f / time;
        this.previousTime = getTime();
    }
}
