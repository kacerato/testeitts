package com.ardor3d.scenegraph.controller;

import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import n1.C14345a;

public abstract class ComplexSpatialController<T extends Spatial> implements SpatialController<T>, Serializable, Savable {
    private static final long serialVersionUID = 1;
    private double _maxTime;
    private double _minTime;
    private RepeatType _repeatType = RepeatType.CLAMP;
    private double _speed = 1.0d;
    private boolean _active = true;

    public enum RepeatType {
        CLAMP,
        WRAP,
        CYCLE
    }

    @Override
    public Class<? extends ComplexSpatialController> getClassTag() {
        return getClass();
    }

    public void getControllerValues(HashMap<String, Object> hashMap) {
    }

    public double getMaxTime() {
        return this._maxTime;
    }

    public double getMinTime() {
        return this._minTime;
    }

    public RepeatType getRepeatType() {
        return this._repeatType;
    }

    public double getSpeed() {
        return this._speed;
    }

    public boolean isActive() {
        return this._active;
    }

    public boolean isRepeatTypeClamp() {
        return RepeatType.CLAMP.equals(getRepeatType());
    }

    public boolean isRepeatTypeCycle() {
        return RepeatType.CYCLE.equals(getRepeatType());
    }

    public boolean isRepeatTypeWrap() {
        return RepeatType.WRAP.equals(getRepeatType());
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._repeatType = (RepeatType) inputCapsule.readEnum("repeatType", RepeatType.class, RepeatType.CLAMP);
        this._minTime = inputCapsule.readDouble("minTime", 0.0d);
        this._maxTime = inputCapsule.readDouble("maxTime", 0.0d);
        this._speed = inputCapsule.readDouble("speed", 1.0d);
        this._active = inputCapsule.readBoolean(C14345a.C1879a.f97714n, true);
    }

    public void setActive(boolean z10) {
        this._active = z10;
    }

    public void setControllerValues(HashMap<String, Object> hashMap) {
    }

    public void setMaxTime(double d10) {
        this._maxTime = d10;
    }

    public void setMinTime(double d10) {
        this._minTime = d10;
    }

    public void setRepeatType(RepeatType repeatType) {
        if (repeatType == null) {
            throw new IllegalArgumentException("repeatType can not be null!");
        }
        this._repeatType = repeatType;
    }

    public void setSpeed(double d10) {
        this._speed = d10;
    }

    @Override
    public abstract void update(double d10, T t10);

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._repeatType, "repeatType", RepeatType.CLAMP);
        outputCapsule.write(this._minTime, "minTime", 0.0d);
        outputCapsule.write(this._maxTime, "maxTime", 0.0d);
        outputCapsule.write(this._speed, "speed", 1.0d);
        outputCapsule.write(this._active, C14345a.C1879a.f97714n, true);
    }
}
