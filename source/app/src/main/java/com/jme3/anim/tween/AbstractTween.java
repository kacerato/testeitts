package com.jme3.anim.tween;

import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;

public abstract class AbstractTween implements JmeCloneable, Tween {
    private double length;

    public AbstractTween(double d10) {
        this.length = d10;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
    }

    public abstract void doInterpolate(double d10);

    @Override
    public double getLength() {
        return this.length;
    }

    @Override
    public boolean interpolate(double d10) {
        boolean z10;
        if (d10 < 0.0d) {
            return true;
        }
        double d11 = this.length;
        double d12 = 1.0d;
        double d13 = d11 == 0.0d ? 1.0d : d10 / d11;
        if (d13 >= 1.0d) {
            z10 = true;
        } else {
            z10 = false;
            d12 = d13;
        }
        doInterpolate(d12);
        return !z10;
    }

    public void setLength(double d10) {
        if (d10 < 0.0d) {
            throw new IllegalArgumentException("length must be greater than or equal to 0");
        }
        this.length = d10;
    }

    @Override
    public AbstractTween jmeClone() {
        try {
            return (AbstractTween) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
