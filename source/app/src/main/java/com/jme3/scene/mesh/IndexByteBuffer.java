package com.jme3.scene.mesh;

import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class IndexByteBuffer extends IndexBuffer {
    static final boolean $assertionsDisabled = false;
    private final ByteBuffer buf;
    private int maxValue;

    public IndexByteBuffer(ByteBuffer byteBuffer) {
        this.maxValue = 255;
        this.buf = byteBuffer;
        byteBuffer.rewind();
    }

    @Override
    public int get() {
        return this.buf.get() & 255;
    }

    @Override
    public Buffer getBuffer() {
        return this.buf;
    }

    @Override
    public VertexBuffer.Format getFormat() {
        return VertexBuffer.Format.UnsignedByte;
    }

    @Override
    public int size() {
        return this.buf.limit();
    }

    @Override
    public int get(int i10) {
        return this.buf.get(i10) & 255;
    }

    @Override
    public IndexByteBuffer put(int i10, int i11) {
        this.buf.put(i10, (byte) i11);
        return this;
    }

    @Override
    public IndexByteBuffer put(int i10) {
        this.buf.put((byte) i10);
        return this;
    }

    public IndexByteBuffer(ByteBuffer byteBuffer, int i10) {
        this.maxValue = i10;
        this.buf = byteBuffer;
        byteBuffer.rewind();
    }
}
