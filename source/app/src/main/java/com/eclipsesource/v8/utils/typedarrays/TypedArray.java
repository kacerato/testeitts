package com.eclipsesource.v8.utils.typedarrays;

import com.eclipsesource.v8.V8TypedArray;
import java.nio.ByteBuffer;

public abstract class TypedArray {
    protected ByteBuffer buffer;

    public abstract int length();

    public abstract int getType();

    public TypedArray(ByteBuffer buffer) {
        if (!buffer.isDirect()) {
            throw new IllegalArgumentException("ByteBuffer must be a allocated as a direct ByteBuffer");
        }
        if (buffer.limit() % V8TypedArray.getStructureSize(getType()) != 0) {
            throw new IllegalArgumentException("ByteBuffer must be a allocated as a direct ByteBuffer");
        }
        this.buffer = buffer;
    }

    public ByteBuffer getByteBuffer() {
        return this.buffer;
    }
}
