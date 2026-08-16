package com.ardor3d.scenegraph;

import java.nio.Buffer;
import java.nio.IntBuffer;

public abstract class IndexBufferData<T extends Buffer> extends AbstractBufferData<T> {
    public abstract IntBuffer asIntBuffer();

    public int capacity() {
        return getBuffer().capacity();
    }

    public abstract int get();

    public abstract int get(int i10);

    @Override
    public abstract T getBuffer();

    public abstract int getByteCount();

    public int limit() {
        return getBuffer().limit();
    }

    @Override
    public abstract IndexBufferData<T> makeCopy();

    public int position() {
        return getBuffer().position();
    }

    public abstract IndexBufferData<T> put(int i10);

    public abstract IndexBufferData<T> put(int i10, int i11);

    public abstract void put(IndexBufferData<?> indexBufferData);

    public int remaining() {
        return getBuffer().remaining();
    }

    public void reset() {
        getBuffer().reset();
    }

    public void rewind() {
        getBuffer().rewind();
    }

    public void limit(int i10) {
        getBuffer().limit(i10);
    }

    public void position(int i10) {
        getBuffer().position(i10);
    }
}
