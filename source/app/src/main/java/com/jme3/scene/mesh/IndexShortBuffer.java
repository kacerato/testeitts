package com.jme3.scene.mesh;

import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;
import java.nio.ShortBuffer;

public class IndexShortBuffer extends IndexBuffer {
    static final boolean $assertionsDisabled = false;
    private final ShortBuffer buf;
    private int maxValue;

    public IndexShortBuffer(ShortBuffer shortBuffer) {
        this.maxValue = 65535;
        this.buf = shortBuffer;
        shortBuffer.rewind();
    }

    @Override
    public int get() {
        return this.buf.get() & 65535;
    }

    @Override
    public Buffer getBuffer() {
        return this.buf;
    }

    @Override
    public VertexBuffer.Format getFormat() {
        return VertexBuffer.Format.UnsignedShort;
    }

    @Override
    public int size() {
        return this.buf.limit();
    }

    @Override
    public int get(int i10) {
        return this.buf.get(i10) & 65535;
    }

    @Override
    public IndexShortBuffer put(int i10, int i11) {
        this.buf.put(i10, (short) i11);
        return this;
    }

    @Override
    public IndexShortBuffer put(int i10) {
        this.buf.put((short) i10);
        return this;
    }

    public IndexShortBuffer(ShortBuffer shortBuffer, int i10) {
        this.maxValue = i10;
        this.buf = shortBuffer;
        shortBuffer.rewind();
    }
}
