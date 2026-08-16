package com.eclipsesource.v8.utils.typedarrays;

import java.nio.ByteBuffer;

public class UInt16Array extends TypedArray {
    public UInt16Array(ByteBuffer buffer) {
        super(buffer);
    }

    public UInt16Array(ArrayBuffer arrayBuffer) {
        this(arrayBuffer.getByteBuffer());
    }

    public int get(int index) {
        return 65535 & this.buffer.asShortBuffer().get(index);
    }

    @Override
    public int length() {
        return this.buffer.asShortBuffer().limit();
    }

    public void put(int index, int value) {
        this.buffer.asShortBuffer().put(index, (short) (65535 & value));
    }

    @Override
    public int getType() {
        return 14;
    }
}
