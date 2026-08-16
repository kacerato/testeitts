package com.threed.jpct;

import com.badlogic.gdx.utils.BufferUtils;

class BufferUtilNative implements BufferUtil {
    @Override
    public void copy(float[] fArr, FloatBufferWrapper floatBufferWrapper) {
        BufferUtils.copy(fArr, floatBufferWrapper.floats, fArr.length, 0);
    }
}
