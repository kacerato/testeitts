package com.jme3.terrain.noise;

import java.nio.FloatBuffer;

public interface Filter {
    Filter addPostFilter(Filter filter);

    Filter addPreFilter(Filter filter);

    FloatBuffer doFilter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10);

    int getMargin(int i10, int i11);

    boolean isEnabled();
}
