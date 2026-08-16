package com.ardor3d.scenegraph;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.IntBuffer;

public class IntBufferData extends IndexBufferData<IntBuffer> implements Savable {
    public IntBufferData() {
    }

    @Override
    public IntBuffer asIntBuffer() {
        IntBuffer duplicate = getBuffer().duplicate();
        duplicate.rewind();
        IntBuffer createIntBufferOnHeap = BufferUtils.createIntBufferOnHeap(duplicate.limit());
        createIntBufferOnHeap.put(duplicate);
        createIntBufferOnHeap.flip();
        return createIntBufferOnHeap;
    }

    @Override
    public int get() {
        return ((IntBuffer) this._buffer).get();
    }

    @Override
    public int getByteCount() {
        return 4;
    }

    @Override
    public Class<? extends IntBufferData> getClassTag() {
        return getClass();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._buffer = inputCapsule.readIntBuffer("buffer", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write((IntBuffer) this._buffer, "buffer", (IntBuffer) null);
    }

    public IntBufferData(int i10) {
        this(BufferUtils.createIntBuffer(i10));
    }

    @Override
    public int get(int i10) {
        return ((IntBuffer) this._buffer).get(i10);
    }

    @Override
    public IntBuffer getBuffer() {
        return (IntBuffer) this._buffer;
    }

    public IntBufferData(IntBuffer intBuffer) {
        if (intBuffer != null) {
            this._buffer = intBuffer;
            return;
        }
        throw new IllegalArgumentException("Buffer can not be null!");
    }

    @Override
    public IntBufferData makeCopy() {
        IntBufferData intBufferData = new IntBufferData();
        intBufferData._buffer = BufferUtils.clone((IntBuffer) this._buffer);
        intBufferData._vboAccessMode = this._vboAccessMode;
        return intBufferData;
    }

    @Override
    public IndexBufferData<IntBuffer> put2(int i10) {
        if (i10 >= 0) {
            ((IntBuffer) this._buffer).put(i10);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to int buffer: " + i10);
    }

    @Override
    public IndexBufferData<IntBuffer> put2(int i10, int i11) {
        if (i11 >= 0) {
            ((IntBuffer) this._buffer).put(i10, i11);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to int buffer: " + i11);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    @Override
    public void put(IndexBufferData<?> indexBufferData) {
        if (indexBufferData instanceof IntBufferData) {
            ((IntBuffer) this._buffer).put((IntBuffer) indexBufferData.getBuffer());
        } else {
            while (indexBufferData.getBuffer().hasRemaining()) {
                put2(indexBufferData.get());
            }
        }
    }
}
