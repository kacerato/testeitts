package com.jme3.animation;

import com.jme3.export.Savable;
import com.jme3.util.TempVars;

@Deprecated
public interface Track extends Savable, Cloneable {
    Track clone();

    float[] getKeyFrameTimes();

    float getLength();

    void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars);
}
