package com.ardor3d.scenegraph;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;

public class ByteBufferData extends IndexBufferData<ByteBuffer> implements Savable {
    public ByteBufferData() {
    }

    @Override
    public IntBuffer asIntBuffer() {
        ByteBuffer duplicate = getBuffer().duplicate();
        duplicate.rewind();
        IntBuffer createIntBufferOnHeap = BufferUtils.createIntBufferOnHeap(duplicate.limit());
        int limit = duplicate.limit();
        for (int i10 = 0; i10 < limit; i10++) {
            createIntBufferOnHeap.put(duplicate.get() & 255);
        }
        createIntBufferOnHeap.flip();
        return createIntBufferOnHeap;
    }

    @Override
    public int get() {
        return ((ByteBuffer) this._buffer).get() & 255;
    }

    @Override
    public int getByteCount() {
        return 1;
    }

    @Override
    public Class<? extends ByteBufferData> getClassTag() {
        return getClass();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._buffer = inputCapsule.readByteBuffer("buffer", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write((ByteBuffer) this._buffer, "buffer", (ByteBuffer) null);
    }

    public ByteBufferData(int i10) {
        this(BufferUtils.createByteBuffer(i10));
    }

    @Override
    public int get(int i10) {
        return ((ByteBuffer) this._buffer).get(i10) & 255;
    }

    @Override
    public ByteBuffer getBuffer() {
        return (ByteBuffer) this._buffer;
    }

    public ByteBufferData(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            this._buffer = byteBuffer;
            return;
        }
        throw new IllegalArgumentException("Buffer can not be null!");
    }

    @Override
    public ByteBufferData makeCopy() {
        ByteBufferData byteBufferData = new ByteBufferData();
        byteBufferData._buffer = BufferUtils.clone((ByteBuffer) this._buffer);
        byteBufferData._vboAccessMode = this._vboAccessMode;
        return byteBufferData;
    }

    @Override
    public IndexBufferData<ByteBuffer> put2(int i10) {
        if (i10 >= 0 && i10 < 256) {
            ((ByteBuffer) this._buffer).put((byte) i10);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to byte buffer: " + i10);
    }

    @Override
    public IndexBufferData<ByteBuffer> put2(int i10, int i11) {
        if (i11 >= 0 && i11 < 256) {
            ((ByteBuffer) this._buffer).put(i10, (byte) i11);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to byte buffer: " + i11);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    @Override
    public void put(IndexBufferData<?> indexBufferData) {
        if (indexBufferData instanceof ByteBufferData) {
            ((ByteBuffer) this._buffer).put((ByteBuffer) indexBufferData.getBuffer());
        } else {
            while (indexBufferData.getBuffer().hasRemaining()) {
                put2(indexBufferData.get());
            }
        }
    }
}
