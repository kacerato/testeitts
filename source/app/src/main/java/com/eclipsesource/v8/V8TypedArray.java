package com.eclipsesource.v8;

import java.nio.ByteBuffer;

public class V8TypedArray extends V8Array {
    public V8TypedArray(V8 v82, V8ArrayBuffer buffer, int type, int offset, int size) {
        super(v82, new V8ArrayData(buffer, offset, size, type));
    }

    private V8TypedArray(V8 v82) {
        super(v82);
    }

    public V8ArrayBuffer getBuffer() {
        return (V8ArrayBuffer) get("buffer");
    }

    public ByteBuffer getByteBuffer() {
        V8ArrayBuffer buffer = getBuffer();
        try {
            return buffer.getBackingStore();
        } finally {
            buffer.release();
        }
    }

    @Override
    public void initialize(long runtimePtr, Object data) {
        this.f59464v8.checkThread();
        if (data == null) {
            super.initialize(runtimePtr, data);
            return;
        }
        V8ArrayData arrayData = (V8ArrayData) data;
        checkArrayProperties(arrayData);
        long handle = createTypedArray(runtimePtr, arrayData);
        this.released = false;
        addObjectReference(handle);
    }

    private long createTypedArray(long runtimePtr, V8ArrayData arrayData) {
        switch (arrayData.type) {
            case 1:
                return this.f59464v8.initNewV8Int32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 2:
                return this.f59464v8.initNewV8Float64Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            default:
                throw new IllegalArgumentException("Cannot create a typed array of type " + V8Value.getStringRepresentation(arrayData.type));
            case 9:
                return this.f59464v8.initNewV8Int8Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 11:
                return this.f59464v8.initNewV8UInt8Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 12:
                return this.f59464v8.initNewV8UInt8ClampedArray(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 13:
                return this.f59464v8.initNewV8Int16Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 14:
                return this.f59464v8.initNewV8UInt16Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 15:
                return this.f59464v8.initNewV8UInt32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case 16:
                return this.f59464v8.initNewV8Float32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
        }
    }

    public static int getStructureSize(int type) {
        switch (type) {
            case 1:
            case 15:
            case 16:
                return 4;
            case 2:
                return 8;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            default:
                throw new IllegalArgumentException("Cannot create a typed array of type " + V8Value.getStringRepresentation(type));
            case 9:
            case 11:
            case 12:
                return 1;
            case 13:
            case 14:
                return 2;
        }
    }

    private void checkArrayProperties(V8ArrayData arrayData) {
        checkOffset(arrayData);
        checkSize(arrayData);
    }

    private void checkSize(V8ArrayData arrayData) {
        if (arrayData.size < 0) {
            throw new IllegalStateException("RangeError: Invalid typed array length");
        }
        int limit = (arrayData.size * getStructureSize(arrayData.type)) + arrayData.offset;
        if (limit > arrayData.buffer.getBackingStore().limit()) {
            throw new IllegalStateException("RangeError: Invalid typed array length");
        }
    }

    private void checkOffset(V8ArrayData arrayData) {
        if (arrayData.offset % getStructureSize(arrayData.type) != 0) {
            throw new IllegalStateException("RangeError: Start offset of Int32Array must be a multiple of " + getStructureSize(arrayData.type));
        }
    }

    @Override
    protected V8Value createTwin() {
        return new V8TypedArray(this.f59464v8);
    }

    public static class V8ArrayData {
        private V8ArrayBuffer buffer;
        private int offset;
        private int size;
        private int type;

        public V8ArrayData(V8ArrayBuffer buffer, int offset, int size, int type) {
            this.buffer = buffer;
            this.offset = offset;
            this.size = size;
            this.type = type;
        }
    }
}
