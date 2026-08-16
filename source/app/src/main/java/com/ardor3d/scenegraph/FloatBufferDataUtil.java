package com.ardor3d.scenegraph;

import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.geom.BufferUtils;

public class FloatBufferDataUtil {
    public static FloatBufferData ensureSize(FloatBufferData floatBufferData, int i10, int i11) {
        if (floatBufferData == null) {
            return new FloatBufferData(BufferUtils.createFloatBuffer(i10 * i11), i11);
        }
        int i12 = i10 * i11;
        if (floatBufferData.getBuffer().limit() == i12 && floatBufferData.getValuesPerTuple() == i11) {
            floatBufferData.getBuffer().rewind();
            return floatBufferData;
        }
        if (floatBufferData.getBuffer().limit() != i12) {
            return new FloatBufferData(BufferUtils.createFloatBuffer(i12), i11);
        }
        floatBufferData.setValuesPerTuple(i11);
        return floatBufferData;
    }

    public static FloatBufferData makeNew(ReadOnlyVector2[] readOnlyVector2Arr) {
        if (readOnlyVector2Arr == null) {
            return null;
        }
        return new FloatBufferData(BufferUtils.createFloatBuffer(readOnlyVector2Arr), 2);
    }

    public static FloatBufferData makeNew(ReadOnlyVector3[] readOnlyVector3Arr) {
        if (readOnlyVector3Arr == null) {
            return null;
        }
        return new FloatBufferData(BufferUtils.createFloatBuffer(readOnlyVector3Arr), 3);
    }

    public static FloatBufferData makeNew(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return new FloatBufferData(BufferUtils.createFloatBuffer(fArr), 1);
    }
}
