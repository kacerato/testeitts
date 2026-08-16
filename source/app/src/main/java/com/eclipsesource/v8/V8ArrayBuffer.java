package com.eclipsesource.v8;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class V8ArrayBuffer extends V8Value {
    private ByteBuffer byteBuffer;

    public V8ArrayBuffer(V8 v82, int capacity) {
        super(v82);
        initialize(v82.getV8RuntimePtr(), Integer.valueOf(capacity));
        this.byteBuffer = v82.createV8ArrayBufferBackingStore(v82.getV8RuntimePtr(), this.objectHandle, capacity);
        this.byteBuffer.order(ByteOrder.nativeOrder());
    }

    public V8ArrayBuffer(V8 v82, ByteBuffer byteBuffer) {
        super(v82);
        byteBuffer = byteBuffer == null ? ByteBuffer.allocateDirect(0) : byteBuffer;
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("ByteBuffer must be a allocated as a direct ByteBuffer");
        }
        initialize(v82.getV8RuntimePtr(), byteBuffer);
        this.byteBuffer = byteBuffer;
        byteBuffer.order(ByteOrder.nativeOrder());
    }

    @Override
    public void initialize(long runtimePtr, Object data) {
        this.f59464v8.checkThread();
        if (data instanceof ByteBuffer) {
            ByteBuffer buffer = (ByteBuffer) data;
            int capacity = buffer.limit();
            this.objectHandle = this.f59464v8.initNewV8ArrayBuffer(this.f59464v8.getV8RuntimePtr(), buffer, capacity);
        } else {
            int capacity2 = ((Integer) data).intValue();
            this.objectHandle = this.f59464v8.initNewV8ArrayBuffer(this.f59464v8.getV8RuntimePtr(), capacity2);
        }
        this.released = false;
        addObjectReference(this.objectHandle);
    }

    @Override
    protected V8Value createTwin() {
        return new V8ArrayBuffer(this.f59464v8, this.byteBuffer);
    }

    @Override
    public V8ArrayBuffer twin() {
        return (V8ArrayBuffer) super.twin();
    }

    public ByteBuffer getBackingStore() {
        this.f59464v8.checkThread();
        checkReleased();
        return this.byteBuffer;
    }
}
