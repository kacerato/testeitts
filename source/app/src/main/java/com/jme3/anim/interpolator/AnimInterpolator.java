package com.jme3.anim.interpolator;

import com.jme3.anim.interpolator.FrameInterpolator;

public abstract class AnimInterpolator<T> {
    public abstract T interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<T> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, T t10);
}
