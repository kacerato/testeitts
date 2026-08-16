package com.ardor3d.util;

public class Timer implements ReadOnlyTimer {
    private static final double INVERSE_TIMER_RESOLUTION = 1.0E-9d;
    private static final long TIMER_RESOLUTION = 1000000000;
    private double _fps;
    private long _previousTime;
    private long _startTime = System.nanoTime();
    private double _tpf;

    @Override
    public double getFrameRate() {
        return this._fps;
    }

    @Override
    public long getResolution() {
        return 1000000000L;
    }

    @Override
    public long getTime() {
        return System.nanoTime() - this._startTime;
    }

    @Override
    public double getTimeInSeconds() {
        return getTime() * 1.0E-9d;
    }

    @Override
    public double getTimePerFrame() {
        return this._tpf;
    }

    public void reset() {
        this._startTime = System.nanoTime();
        this._previousTime = getTime();
    }

    public void update() {
        long time = getTime();
        double d10 = (time - this._previousTime) * 1.0E-9d;
        this._tpf = d10;
        this._fps = 1.0d / d10;
        this._previousTime = time;
    }
}
