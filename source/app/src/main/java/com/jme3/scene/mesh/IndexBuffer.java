package com.jme3.scene.mesh;

import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public abstract class IndexBuffer {
    public static IndexBuffer createIndexBuffer(int i10, int i11) {
        return i10 < 128 ? new IndexByteBuffer(BufferUtils.createByteBuffer(i11), Math.max(0, i10 - 1)) : i10 < 65536 ? new IndexShortBuffer(BufferUtils.createShortBuffer(i11), i10 - 1) : new IndexIntBuffer(BufferUtils.createIntBuffer(i11));
    }

    public static IndexBuffer wrapIndexBuffer(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            return new IndexByteBuffer((ByteBuffer) buffer);
        }
        if (buffer instanceof ShortBuffer) {
            return new IndexShortBuffer((ShortBuffer) buffer);
        }
        if (buffer instanceof IntBuffer) {
            return new IndexIntBuffer((IntBuffer) buffer);
        }
        throw new UnsupportedOperationException("Index buffer type unsupported: " + ((Object) buffer.getClass()));
    }

    public abstract int get();

    public abstract int get(int i10);

    public abstract Buffer getBuffer();

    public abstract VertexBuffer.Format getFormat();

    public abstract IndexBuffer put(int i10);

    public abstract IndexBuffer put(int i10, int i11);

    public int remaining() {
        return getBuffer().remaining();
    }

    public void rewind() {
        getBuffer().rewind();
    }

    public abstract int size();
}
