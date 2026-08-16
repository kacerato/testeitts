package com.threed.jpct;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

class FloatBufferWrapper {
    private static int[] intArray = new int[0];
    ByteBuffer bytes;
    FloatBuffer floats;
    private IntBuffer ints;

    public FloatBufferWrapper(ByteBuffer byteBuffer) {
        this.bytes = byteBuffer;
        this.floats = byteBuffer.asFloatBuffer();
        this.ints = this.bytes.asIntBuffer();
    }

    public int capacity() {
        return this.floats.capacity();
    }

    public void clear() {
        this.bytes.clear();
        this.floats.clear();
        this.ints.clear();
    }

    public void flip() {
        this.bytes.flip();
        this.floats.flip();
        this.ints.flip();
    }

    public ByteBuffer getByteBuffer() {
        return this.bytes;
    }

    public int limit() {
        return this.floats.limit();
    }

    public int position() {
        return this.floats.position();
    }

    public void put(float f10) {
        ByteBuffer byteBuffer = this.bytes;
        byteBuffer.position(byteBuffer.position() + 4);
        this.floats.put(f10);
        IntBuffer intBuffer = this.ints;
        intBuffer.position(intBuffer.position() + 1);
    }

    public int remaining() {
        return this.floats.remaining();
    }

    public void rewind() {
        this.bytes.rewind();
        this.floats.rewind();
        this.ints.rewind();
    }

    public FloatBuffer slice() {
        return this.floats.slice();
    }

    public void position(int i10) {
        this.bytes.position(i10 * 4);
        this.floats.position(i10);
        this.ints.position(i10);
    }

    public void put(float[] fArr, int i10, int i11) {
        if (intArray.length < i11) {
            intArray = new int[i11];
        }
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            intArray[i13 - i10] = Float.floatToRawIntBits(fArr[i13]);
        }
        ByteBuffer byteBuffer = this.bytes;
        byteBuffer.position(byteBuffer.position() + (i11 * 4));
        FloatBuffer floatBuffer = this.floats;
        floatBuffer.position(floatBuffer.position() + i11);
        this.ints.put(intArray, 0, i11);
    }

    public FloatBufferWrapper(int i10) {
        ByteBuffer order = ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder());
        this.bytes = order;
        this.floats = order.asFloatBuffer();
        this.ints = this.bytes.asIntBuffer();
    }

    public void put(float[] fArr) {
        if (intArray.length < fArr.length) {
            intArray = new int[fArr.length];
        }
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            intArray[i10] = Float.floatToRawIntBits(fArr[i10]);
        }
        ByteBuffer byteBuffer = this.bytes;
        byteBuffer.position(byteBuffer.position() + (length * 4));
        FloatBuffer floatBuffer = this.floats;
        floatBuffer.position(floatBuffer.position() + length);
        this.ints.put(intArray, 0, fArr.length);
    }

    public void put(int[] iArr) {
        ByteBuffer byteBuffer = this.bytes;
        byteBuffer.position(byteBuffer.position() + (iArr.length * 4));
        FloatBuffer floatBuffer = this.floats;
        floatBuffer.position(floatBuffer.position() + iArr.length);
        this.ints.put(iArr, 0, iArr.length);
    }

    public void put(FloatBufferWrapper floatBufferWrapper) {
        this.bytes.put(floatBufferWrapper.bytes);
        this.floats.position(this.bytes.position() >> 2);
        this.ints.position(this.bytes.position() >> 2);
    }
}
