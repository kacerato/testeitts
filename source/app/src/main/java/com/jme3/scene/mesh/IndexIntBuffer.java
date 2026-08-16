package com.jme3.scene.mesh;

import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;
import java.nio.IntBuffer;

public class IndexIntBuffer extends IndexBuffer {
    private final IntBuffer buf;

    public IndexIntBuffer(IntBuffer intBuffer) {
        this.buf = intBuffer;
        intBuffer.rewind();
    }

    @Override
    public int get() {
        return this.buf.get();
    }

    @Override
    public Buffer getBuffer() {
        return this.buf;
    }

    @Override
    public VertexBuffer.Format getFormat() {
        return VertexBuffer.Format.UnsignedInt;
    }

    @Override
    public int size() {
        return this.buf.limit();
    }

    @Override
    public int get(int i10) {
        return this.buf.get(i10);
    }

    @Override
    public IndexIntBuffer put(int i10, int i11) {
        this.buf.put(i10, i11);
        return this;
    }

    @Override
    public IndexIntBuffer put(int i10) {
        this.buf.put(i10);
        return this;
    }
}
