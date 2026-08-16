package com.jme3.anim.tween;

public interface Tween extends Cloneable {
    double getLength();

    boolean interpolate(double d10);
}
