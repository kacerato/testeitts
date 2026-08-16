package com.ardor3d.scenegraph;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class ShortBufferData extends IndexBufferData<ShortBuffer> implements Savable {
    public ShortBufferData() {
    }

    @Override
    public IntBuffer asIntBuffer() {
        ShortBuffer duplicate = getBuffer().duplicate();
        duplicate.rewind();
        IntBuffer createIntBufferOnHeap = BufferUtils.createIntBufferOnHeap(duplicate.limit());
        int limit = duplicate.limit();
        for (int i10 = 0; i10 < limit; i10++) {
            createIntBufferOnHeap.put(duplicate.get() & 65535);
        }
        createIntBufferOnHeap.flip();
        return createIntBufferOnHeap;
    }

    @Override
    public int get() {
        return ((ShortBuffer) this._buffer).get() & 65535;
    }

    @Override
    public int getByteCount() {
        return 2;
    }

    @Override
    public Class<? extends ShortBufferData> getClassTag() {
        return getClass();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._buffer = inputCapsule.readShortBuffer("buffer", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write((ShortBuffer) this._buffer, "buffer", (ShortBuffer) null);
    }

    public ShortBufferData(int i10) {
        this(BufferUtils.createShortBuffer(i10));
    }

    @Override
    public int get(int i10) {
        return ((ShortBuffer) this._buffer).get(i10) & 65535;
    }

    @Override
    public ShortBuffer getBuffer() {
        return (ShortBuffer) this._buffer;
    }

    public ShortBufferData(ShortBuffer shortBuffer) {
        if (shortBuffer != null) {
            this._buffer = shortBuffer;
            return;
        }
        throw new IllegalArgumentException("Buffer can not be null!");
    }

    @Override
    public ShortBufferData makeCopy() {
        ShortBufferData shortBufferData = new ShortBufferData();
        shortBufferData._buffer = BufferUtils.clone((ShortBuffer) this._buffer);
        shortBufferData._vboAccessMode = this._vboAccessMode;
        return shortBufferData;
    }

    @Override
    public IndexBufferData<ShortBuffer> put2(int i10) {
        if (i10 >= 0 && i10 < 65536) {
            ((ShortBuffer) this._buffer).put((short) i10);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to short buffer: " + i10);
    }

    @Override
    public IndexBufferData<ShortBuffer> put2(int i10, int i11) {
        if (i11 >= 0 && i11 < 65536) {
            ((ShortBuffer) this._buffer).put(i10, (short) i11);
            return this;
        }
        throw new IllegalArgumentException("Invalid value passed to short buffer: " + i11);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    @Override
    public void put(IndexBufferData<?> indexBufferData) {
        if (indexBufferData instanceof ShortBufferData) {
            ((ShortBuffer) this._buffer).put((ShortBuffer) indexBufferData.getBuffer());
        } else {
            while (indexBufferData.getBuffer().hasRemaining()) {
                put2(indexBufferData.get());
            }
        }
    }
}
