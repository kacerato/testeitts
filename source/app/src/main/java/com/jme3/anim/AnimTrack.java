package com.jme3.anim;

import com.jme3.export.Savable;
import com.jme3.util.clone.JmeCloneable;

public interface AnimTrack<T> extends Savable, JmeCloneable {
    void getDataAtTime(double d10, T t10);

    double getLength();
}
