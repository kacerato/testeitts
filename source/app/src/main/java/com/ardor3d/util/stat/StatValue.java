package com.ardor3d.util.stat;

public class StatValue {
    private double _accumulatedValue;
    private boolean _averageDirty;
    private double _averageValue;
    private long _iterations;

    public StatValue() {
        this._accumulatedValue = 0.0d;
        this._averageValue = 0.0d;
        this._averageDirty = true;
    }

    public double getAccumulatedValue() {
        return this._accumulatedValue;
    }

    public double getAverageValue() {
        if (this._averageDirty) {
            long j10 = this._iterations;
            this._averageValue = j10 > 0 ? this._accumulatedValue / j10 : this._accumulatedValue;
            this._averageDirty = false;
        }
        return this._averageValue;
    }

    public long getIterations() {
        return this._iterations;
    }

    public void incrementIterations() {
        this._iterations++;
        this._averageDirty = true;
    }

    public void incrementValue(double d10) {
        this._accumulatedValue += d10;
        this._averageDirty = true;
    }

    public void reset() {
        this._accumulatedValue = 0.0d;
        this._iterations = 0L;
        this._averageValue = 0.0d;
        this._averageDirty = false;
    }

    public void setIterations(long j10) {
        this._iterations = j10;
        this._averageDirty = true;
    }

    public StatValue(StatValue statValue) {
        this._accumulatedValue = 0.0d;
        this._averageValue = 0.0d;
        this._averageDirty = true;
        this._accumulatedValue = statValue._accumulatedValue;
        this._averageValue = statValue._averageValue;
        this._averageDirty = statValue._averageDirty;
        this._iterations = statValue._iterations;
    }
}
