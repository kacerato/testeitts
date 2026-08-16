package com.ardor3d.scenegraph;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

public class FloatBufferData extends AbstractBufferData<FloatBuffer> implements Savable {
    private int _valuesPerTuple;

    public FloatBufferData() {
    }

    @Override
    public Class<? extends FloatBufferData> getClassTag() {
        return getClass();
    }

    public int getTupleCount() {
        return getBufferLimit() / this._valuesPerTuple;
    }

    public int getValuesPerTuple() {
        return this._valuesPerTuple;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._buffer = inputCapsule.readFloatBuffer("buffer", null);
        this._valuesPerTuple = inputCapsule.readInt("valuesPerTuple", 0);
    }

    public void scaleData(float... fArr) {
        ((FloatBuffer) this._buffer).rewind();
        for (int i10 = 0; i10 < ((FloatBuffer) this._buffer).limit(); i10++) {
            T t10 = this._buffer;
            ((FloatBuffer) t10).put(((FloatBuffer) t10).get(i10) * fArr[i10 % fArr.length]);
        }
        ((FloatBuffer) this._buffer).rewind();
    }

    public void setValuesPerTuple(int i10) {
        this._valuesPerTuple = i10;
    }

    public void translateData(float... fArr) {
        ((FloatBuffer) this._buffer).rewind();
        for (int i10 = 0; i10 < ((FloatBuffer) this._buffer).limit(); i10++) {
            T t10 = this._buffer;
            ((FloatBuffer) t10).put(((FloatBuffer) t10).get(i10) + fArr[i10 % fArr.length]);
        }
        ((FloatBuffer) this._buffer).rewind();
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write((FloatBuffer) this._buffer, "buffer", (FloatBuffer) null);
        outputCapsule.write(this._valuesPerTuple, "valuesPerTuple", 0);
    }

    public FloatBufferData(int i10, int i11) {
        this(BufferUtils.createFloatBuffer(i10), i11);
    }

    @Override
    public AbstractBufferData<FloatBuffer> makeCopy() {
        FloatBufferData floatBufferData = new FloatBufferData();
        floatBufferData._buffer = BufferUtils.clone((FloatBuffer) this._buffer);
        floatBufferData._valuesPerTuple = this._valuesPerTuple;
        floatBufferData._vboAccessMode = this._vboAccessMode;
        return floatBufferData;
    }

    public FloatBufferData(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer == null) {
            throw new IllegalArgumentException("Buffer can not be null!");
        }
        if (i10 >= 1) {
            this._buffer = floatBuffer;
            this._valuesPerTuple = i10;
            return;
        }
        throw new IllegalArgumentException("valuesPerTuple must be greater than 1.");
    }
}
