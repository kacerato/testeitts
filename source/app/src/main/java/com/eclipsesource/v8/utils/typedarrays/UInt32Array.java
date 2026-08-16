package com.eclipsesource.v8.utils.typedarrays;

import java.nio.ByteBuffer;

public class UInt32Array extends TypedArray {
    public UInt32Array(ByteBuffer buffer) {
        super(buffer);
    }

    public UInt32Array(ArrayBuffer arrayBuffer) {
        this(arrayBuffer.getByteBuffer());
    }

    public long get(int index) {
        return (-1) & this.buffer.asIntBuffer().get(index);
    }

    @Override
    public int length() {
        return this.buffer.asIntBuffer().limit();
    }

    public void put(int index, long value) {
        this.buffer.asIntBuffer().put(index, (int) ((-1) & value));
    }

    @Override
    public int getType() {
        return 15;
    }
}
