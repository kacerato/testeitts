package com.eclipsesource.v8;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;

public abstract class V8Value implements Releasable {
    public static final int NULL = 0;
    public static final int UNKNOWN = 0;
    public static final int INTEGER = 1;
    public static final int INT_32_ARRAY = 1;
    public static final int DOUBLE = 2;
    public static final int FLOAT_64_ARRAY = 2;
    public static final int BOOLEAN = 3;
    public static final int STRING = 4;
    public static final int V8_ARRAY = 5;
    public static final int V8_OBJECT = 6;
    public static final int V8_FUNCTION = 7;
    public static final int V8_TYPED_ARRAY = 8;
    public static final int BYTE = 9;
    public static final int INT_8_ARRAY = 9;
    public static final int V8_ARRAY_BUFFER = 10;
    public static final int UNSIGNED_INT_8_ARRAY = 11;
    public static final int UNSIGNED_INT_8_CLAMPED_ARRAY = 12;
    public static final int INT_16_ARRAY = 13;
    public static final int UNSIGNED_INT_16_ARRAY = 14;
    public static final int UNSIGNED_INT_32_ARRAY = 15;
    public static final int FLOAT_32_ARRAY = 16;
    public static final int UNDEFINED = 99;

    protected V8 f59464v8;
    protected long objectHandle;
    protected boolean released = true;

    protected abstract V8Value createTwin();

    public V8Value() {
    }

    public V8Value(V8 v82) {
        if (v82 == null) {
            this.f59464v8 = (V8) this;
        } else {
            this.f59464v8 = v82;
        }
    }

    public void initialize(long runtimePtr, Object data) {
        long objectHandle = this.f59464v8.initNewV8Object(runtimePtr);
        this.released = false;
        addObjectReference(objectHandle);
    }

    public void addObjectReference(long objectHandle) throws Error {
        this.objectHandle = objectHandle;
        try {
            this.f59464v8.addObjRef(this);
        } catch (Error e10) {
            release();
            throw e10;
        } catch (RuntimeException e11) {
            release();
            throw e11;
        }
    }

    @Deprecated
    public static String getStringRepresentaion(int type) {
        return getStringRepresentation(type);
    }

    public static String getStringRepresentation(int type) {
        switch (type) {
            case 0:
                return "Null";
            case 1:
                return "Integer";
            case 2:
                return "Double";
            case 3:
                return "Boolean";
            case 4:
                return SerializableShaderEntry.f81157k;
            case 5:
                return "V8Array";
            case 6:
                return "V8Object";
            case 7:
                return "V8Function";
            case 8:
                return "V8TypedArray";
            case 9:
                return "Byte";
            case 10:
                return "V8ArrayBuffer";
            case 11:
                return "UInt8Array";
            case 12:
                return "UInt8ClampedArray";
            case 13:
                return "Int16Array";
            case 14:
                return "UInt16Array";
            case 15:
                return "UInt32Array";
            case 16:
                return "Float32Array";
            case 99:
                return "Undefined";
            default:
                throw new IllegalArgumentException("Invalid V8 type: " + type);
        }
    }

    public boolean isUndefined() {
        return false;
    }

    public V8 getRuntime() {
        return this.f59464v8;
    }

    public int getV8Type() {
        if (isUndefined()) {
            return 99;
        }
        this.f59464v8.checkThread();
        this.f59464v8.checkReleased();
        return this.f59464v8.getType(this.f59464v8.getV8RuntimePtr(), this.objectHandle);
    }

    public V8Value twin() {
        if (isUndefined()) {
            return this;
        }
        this.f59464v8.checkThread();
        this.f59464v8.checkReleased();
        V8Value twin = createTwin();
        this.f59464v8.createTwin(this, twin);
        return twin;
    }

    public V8Value setWeak() {
        this.f59464v8.checkThread();
        this.f59464v8.checkReleased();
        this.f59464v8.v8WeakReferences.put(Long.valueOf(getHandle()), this);
        this.f59464v8.setWeak(this.f59464v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    public boolean isWeak() {
        this.f59464v8.checkThread();
        this.f59464v8.checkReleased();
        return this.f59464v8.isWeak(this.f59464v8.getV8RuntimePtr(), getHandle());
    }

    @Override
    public void release() {
        this.f59464v8.checkThread();
        if (!this.released) {
            try {
                this.f59464v8.releaseObjRef(this);
            } finally {
                this.released = true;
                this.f59464v8.release(this.f59464v8.getV8RuntimePtr(), this.objectHandle);
            }
        }
    }

    public boolean isReleased() {
        return this.released;
    }

    public boolean strictEquals(Object that) {
        this.f59464v8.checkThread();
        checkReleased();
        if (that == this) {
            return true;
        }
        if (that == null || !(that instanceof V8Value)) {
            return false;
        }
        if (isUndefined() && ((V8Value) that).isUndefined()) {
            return true;
        }
        if (((V8Value) that).isUndefined()) {
            return false;
        }
        return this.f59464v8.strictEquals(this.f59464v8.getV8RuntimePtr(), getHandle(), ((V8Value) that).getHandle());
    }

    public long getHandle() {
        checkReleased();
        return this.objectHandle;
    }

    public boolean equals(Object that) {
        return strictEquals(that);
    }

    public boolean jsEquals(Object that) {
        this.f59464v8.checkThread();
        checkReleased();
        if (that == this) {
            return true;
        }
        if (that == null || !(that instanceof V8Value)) {
            return false;
        }
        if (isUndefined() && ((V8Value) that).isUndefined()) {
            return true;
        }
        if (((V8Value) that).isUndefined()) {
            return false;
        }
        return this.f59464v8.equals(this.f59464v8.getV8RuntimePtr(), getHandle(), ((V8Value) that).getHandle());
    }

    public int hashCode() {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.identityHash(this.f59464v8.getV8RuntimePtr(), getHandle());
    }

    public void checkReleased() {
        if (this.released) {
            throw new IllegalStateException("Object released");
        }
    }
}
