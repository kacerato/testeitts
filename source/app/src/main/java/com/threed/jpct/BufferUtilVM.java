package com.threed.jpct;

class BufferUtilVM implements BufferUtil {
    @Override
    public void copy(float[] fArr, FloatBufferWrapper floatBufferWrapper) {
        floatBufferWrapper.put(fArr);
    }
}
