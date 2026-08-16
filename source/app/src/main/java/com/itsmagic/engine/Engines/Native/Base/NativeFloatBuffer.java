package com.itsmagic.engine.Engines.Native.Base;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Native.OutOfNativeMemoryError;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import uc.C15593a;
import wc.C15987a;
import wc.b;
import wc.c;
import xc.InterfaceC16080a;

@Keep
public class NativeFloatBuffer extends com.itsmagic.engine.Engines.Native.Base.a implements InterfaceC16080a {
    private static final wc.b bufferCleaner = new C15987a(new a());
    private int capacity;

    @Keep
    private long pointer;

    @Keep
    private int position;
    private b precision;
    JAVARuntime.NativeFloatBuffer run;

    @Keep
    private boolean vboEnabled;

    public class a implements b.a {
        @Override
        public void a(long pointer) {
            NativeFloatBuffer.deleteBuffer(pointer);
        }
    }

    public enum b {
        SIGNED_BYTE_NORMALIZED(0),
        NORMAL_VECTOR(0),
        UNSIGNED_BYTE_NORMALIZED(3),
        COLOR(3),
        UNSIGNED_BYTE(4),
        FLOAT16(1),
        FLOAT32(2);

        private int nativeType;

        b(int nativeType) {
            this.nativeType = nativeType;
        }

        public int b() {
            return this.nativeType;
        }
    }

    static {
        System.loadLibrary("native-float-buffer");
    }

    @Keep
    private NativeFloatBuffer(long pointer, int capacity, int position, int precisionNativeType, boolean vboEnabled) {
        this.capacity = 0;
        this.pointer = -1L;
        this.position = 0;
        this.vboEnabled = true;
        this.precision = b.FLOAT32;
        this.pointer = pointer;
        this.capacity = capacity;
        this.position = position;
        this.precision = precisionFromNativeType(precisionNativeType);
        this.vboEnabled = vboEnabled;
        bufferCleaner.a(new c(this, pointer));
    }

    private long callAllocBuffer(long pointer, long capacity) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, capacity) : nativeAllocBuffer(pointer, capacity);
    }

    private void callDeleteBuffer(long pointer) {
        deleteBuffer(pointer);
    }

    private boolean callEquals(long pointer, long otherPointer) {
        return nativeEquals(pointer, otherPointer);
    }

    private void callFillFloats(long pointer, int baseIndex, float value, int count) {
        nativeFillFloats(pointer, baseIndex, value, count);
    }

    private long callGetAllocationPointer(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetAllocationPointer(pointer) : nativeGetAllocationPointer(pointer);
    }

    private float callGetFloat(long pointer, int index) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetFloat(pointer, index) : nativeGetFloat(pointer, index);
    }

    private void callGetFloats(long pointer, int baseIndex, float[] values, int start, int count) {
        nativeGetFloats(pointer, baseIndex, values, start, count);
    }

    private void callGetVector3(long pointer, int baseIndex, Vector3 vector3) {
        nativeGetVector3(pointer, baseIndex, vector3);
    }

    private void callLostOGLContext(long pointer) {
        nativeLostOGLContext(pointer);
    }

    private void callScaleVertices(long sourcePointer, long destinationPointer, float scaleX, float scaleY, float scaleZ) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalScaleVertices(sourcePointer, destinationPointer, scaleX, scaleY, scaleZ);
        } else {
            nativeScaleVertices(sourcePointer, destinationPointer, scaleX, scaleY, scaleZ);
        }
    }

    private void callSetFloat(long pointer, int index, float value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetFloat(pointer, index, value);
        } else {
            nativeSetFloat(pointer, index, value);
        }
    }

    private void callSetFloats(long pointer, int baseIndex, float[] values, int start, int count) {
        if (start == 0 && count == values.length) {
            nativeSetFloatsMemCp(pointer, baseIndex, values, start, count);
        } else {
            nativeSetFloats(pointer, baseIndex, values, start, count);
        }
    }

    private void callSetFloatsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count) {
        nativeSetFloatsBuffer(pointer, baseIndex, otherPointer, start, count);
    }

    private void callSetVector2(long pointer, int baseIndex, float x10, float y10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector2(pointer, baseIndex, x10, y10);
        } else {
            nativeSetVector2(pointer, baseIndex, x10, y10);
        }
    }

    private void callSetVector3(long pointer, int baseIndex, float x10, float y10, float z10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector3(pointer, baseIndex, x10, y10, z10);
        } else {
            nativeSetVector3(pointer, baseIndex, x10, y10, z10);
        }
    }

    private void callSetVector4(long pointer, int baseIndex, float x10, float y10, float z10, float w10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector4(pointer, baseIndex, x10, y10, z10, w10);
        } else {
            nativeSetVector4(pointer, baseIndex, x10, y10, z10, w10);
        }
    }

    private long callTryCreate(int type) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalTryCreate(type) : nativeTryCreate(type);
    }

    public static void deleteBuffer(long pointer) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalDeleteBuffer(pointer);
        } else {
            nativeDeleteBuffer(pointer);
        }
    }

    public static native long nativeAllocBuffer(long pointer, long capacity);

    @CriticalNative
    public static native long nativeCriticalAllocBuffer(long pointer, long capacity);

    @CriticalNative
    public static native void nativeCriticalDeleteBuffer(long pointer);

    @CriticalNative
    public static native long nativeCriticalGetAllocationPointer(long pointer);

    @CriticalNative
    public static native float nativeCriticalGetFloat(long pointer, int index);

    @CriticalNative
    public static native void nativeCriticalScaleVertices(long sourcePointer, long destinationPointer, float scaleX, float scaleY, float scaleZ);

    @CriticalNative
    public static native void nativeCriticalSetFloat(long pointer, int index, float value);

    @CriticalNative
    public static native void nativeCriticalSetVector2(long pointer, int baseIndex, float x10, float y10);

    @CriticalNative
    public static native void nativeCriticalSetVector3(long pointer, int baseIndex, float x10, float y10, float z10);

    @CriticalNative
    public static native void nativeCriticalSetVector4(long pointer, int baseIndex, float x10, float y10, float z10, float w10);

    @CriticalNative
    public static native long nativeCriticalTryCreate(int type);

    public static native void nativeDeleteBuffer(long pointer);

    public static native boolean nativeEquals(long pointer, long otherPointer);

    private static native void nativeFillFloatByteBuffer(long pointer, ByteBuffer outBuffer);

    public static native void nativeFillFloats(long pointer, int baseIndex, float value, int count);

    public static native long nativeGetAllocationPointer(long pointer);

    public static native float nativeGetFloat(long pointer, int index);

    public static native float nativeGetFloats(long pointer, int baseIndex, float[] values, int start, int count);

    public static native float nativeGetVector3(long pointer, int baseIndex, Vector3 vector3);

    public static native float nativeLostOGLContext(long pointer);

    private static native float[] nativeMinMax(long pointer, int count, boolean validateFinite);

    private static native NativeFloatBuffer nativeReadFile(String path);

    private native boolean nativeSaveToFile(String path);

    public static native void nativeScaleVertices(long sourcePointer, long destinationPointer, float scaleX, float scaleY, float scaleZ);

    public static native void nativeSetFloat(long pointer, int index, float value);

    public static native void nativeSetFloats(long pointer, int baseIndex, float[] values, int start, int count);

    public static native void nativeSetFloatsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count);

    public static native void nativeSetFloatsMemCp(long pointer, int baseIndex, float[] values, int start, int count);

    public static native void nativeSetVector2(long pointer, int baseIndex, float x10, float y10);

    public static native void nativeSetVector3(long pointer, int baseIndex, float x10, float y10, float z10);

    public static native void nativeSetVector4(long pointer, int baseIndex, float x10, float y10, float z10, float w10);

    public static native long nativeTryCreate(int type);

    private static b precisionFromNativeType(int nativeType) {
        for (b bVar : b.values()) {
            if (bVar.b() == nativeType) {
                return bVar;
            }
        }
        return b.FLOAT32;
    }

    public static NativeFloatBuffer readFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeFloatBuffer nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != null) {
            return nativeReadFile;
        }
        throw new RuntimeException("Failed to read NativeFloatBuffer from file: " + file.getAbsolutePath());
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    @Override
    public int bytesPerItem() {
        return 4;
    }

    @Override
    public boolean canAsyncCleaner() {
        return true;
    }

    @Override
    public int capacity() {
        return this.capacity;
    }

    public NativeFloatBuffer concat(NativeFloatBuffer buffer) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(capacity() + buffer.capacity());
        nativeFloatBuffer.position(0);
        nativeFloatBuffer.put(this);
        nativeFloatBuffer.put(buffer);
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    public NativeFloatBuffer concatAndDestroyItselfImmediate(NativeFloatBuffer buffer) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(capacity() + buffer.capacity());
        nativeFloatBuffer.position(0);
        nativeFloatBuffer.put(this);
        nativeFloatBuffer.put(buffer);
        nativeFloatBuffer.position(0);
        destroyImmediate();
        return nativeFloatBuffer;
    }

    public void destroy() {
        setGarbage();
    }

    @Override
    public void destroyImmediate() {
        validateAndThrow();
        setGarbage();
        bufferCleaner.b(this);
    }

    public boolean equalsNative(NativeFloatBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        return callEquals(this.pointer, buffer.pointer);
    }

    public void fill(float value) {
        fill(0, value, this.capacity);
    }

    public void fillArray(float[] array) {
        if (array.length != this.capacity) {
            throw new IllegalArgumentException("Array size must be == buffer capacity");
        }
        get(array);
    }

    public float get(int index) {
        if (!validateAndThrow()) {
            return 0.0f;
        }
        if (index < this.capacity) {
            if (index >= 0) {
                try {
                    return callGetFloat(this.pointer, index);
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return 0.0f;
                }
            }
            throw new IndexOutOfBoundsException("index cant be < 0");
        }
        throw new IndexOutOfBoundsException("index cant be >= capacity (" + index + ") vs (" + this.capacity + ")");
    }

    @Override
    public byte getAsByte(int index) {
        return (byte) get(index);
    }

    @Override
    public double getAsDouble(int index) {
        return get(index);
    }

    @Override
    public float getAsFloat(int index) {
        return get(index);
    }

    @Override
    public int getAsInt(int index) {
        return (int) get(index);
    }

    @Override
    public short getAsShort(int index) {
        return (short) get(index);
    }

    public int getCapacity() {
        return this.capacity;
    }

    public long getCriticalDirectCppPointer() {
        return this.pointer;
    }

    public float[] getMinMax() {
        return getMinMax(this.capacity, false);
    }

    public long getNativeAllocationPointer() {
        validateAndThrow();
        return callGetAllocationPointer(this.pointer);
    }

    public int getNativeAllocationSizeInBytes() {
        int ordinal = this.precision.ordinal();
        return (ordinal == 0 || ordinal == 2 || ordinal == 4) ? this.capacity : ordinal != 5 ? this.capacity * 4 : this.capacity * 2;
    }

    @Override
    public long getPointerCritical() {
        return this.pointer;
    }

    public int getPosition() {
        return this.position;
    }

    public b getPrecision() {
        return this.precision;
    }

    public boolean hasNext() {
        return this.position < this.capacity;
    }

    @Override
    public boolean isNative() {
        return true;
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.pointer);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public long nativeUsedBytes() {
        return (capacity() * bytesPerItem()) + 40;
    }

    public void position(int position) {
        this.position = position;
    }

    public void put(NativeFloatBuffer buffer) {
        set(this.position, buffer);
        this.position += buffer.capacity;
    }

    public void putFill(float value, int count) {
        fill(this.position, value, count);
        this.position += count;
    }

    public void saveToFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (nativeSaveToFile(file.getAbsolutePath())) {
            return;
        }
        throw new RuntimeException("Failed to save NativeFloatBuffer to file: " + file.getAbsolutePath());
    }

    public NativeFloatBuffer scaleVertices(float scaleX, float scaleY, float scaleZ) {
        return scaleVertices(scaleX, scaleY, scaleZ, null);
    }

    public void set(int index, float value) {
        if (validateAndThrow()) {
            if (index < this.capacity) {
                if (index >= 0) {
                    try {
                        callSetFloat(this.pointer, index, value);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("index cant be < 0");
            }
            throw new IndexOutOfBoundsException("index cant be >= capacity (" + index + " vs " + this.capacity + ")");
        }
    }

    @Override
    public void setAsByte(int index, byte value) {
        set(index, value);
    }

    @Override
    public void setAsDouble(int index, double value) {
        set(index, (float) value);
    }

    @Override
    public void setAsFloat(int index, float value) {
        set(index, value);
    }

    @Override
    public void setAsInt(int index, int value) {
        set(index, value);
    }

    @Override
    public void setAsShort(int index, short value) {
        set(index, value);
    }

    @Override
    public void setDeleted() {
        this.pointer = 0L;
        super.setDeleted();
    }

    @Override
    public void setNormalizeOGL(boolean value) {
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRuntime(JAVARuntime.NativeFloatBuffer run) {
        this.run = run;
    }

    public float[] toArray() {
        float[] fArr = new float[this.capacity];
        get(fArr);
        return fArr;
    }

    public FloatBuffer toFloatBuffer() {
        ByteBuffer a10 = C15593a.a(this.capacity * 4);
        nativeFillFloatByteBuffer(this.pointer, a10);
        a10.position(0);
        return a10.order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public JAVARuntime.NativeFloatBuffer toJAVARuntime() {
        JAVARuntime.NativeFloatBuffer nativeFloatBuffer = this.run;
        if (nativeFloatBuffer != null) {
            return nativeFloatBuffer;
        }
        JAVARuntime.NativeFloatBuffer nativeFloatBuffer2 = new JAVARuntime.NativeFloatBuffer(this);
        this.run = nativeFloatBuffer2;
        return nativeFloatBuffer2;
    }

    public boolean validate() {
        return !isGarbage();
    }

    public static long getCriticalDirectCppPointer(NativeFloatBuffer buffer, long failCase) {
        return buffer == null ? failCase : buffer.getCriticalDirectCppPointer();
    }

    public NativeFloatBuffer m1250clone() {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(this.capacity);
        nativeFloatBuffer.position(0);
        nativeFloatBuffer.put(this);
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    public void fill(int baseIndex, float value, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callFillFloats(this.pointer, baseIndex, value, count);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("baseIndex cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
        }
    }

    public float[] getMinMax(boolean validateFinite) {
        return getMinMax(this.capacity, validateFinite);
    }

    public NativeFloatBuffer scaleVertices(float scaleX, float scaleY, float scaleZ, NativeFloatBuffer output) {
        validateAndThrow();
        if (output == null) {
            output = new NativeFloatBuffer(this.capacity, this.precision);
        } else {
            output.validateAndThrow();
            if (output.capacity != this.capacity) {
                throw new IllegalArgumentException("Output buffer capacity must match input buffer capacity");
            }
        }
        callScaleVertices(this.pointer, output.pointer, scaleX, scaleY, scaleZ);
        output.position(0);
        return output;
    }

    public float[] getMinMax(int count, boolean validateFinite) {
        validateAndThrow();
        if (count > 0) {
            if (count <= this.capacity) {
                float[] nativeMinMax = nativeMinMax(this.pointer, count, validateFinite);
                if (nativeMinMax != null && nativeMinMax.length == 2) {
                    return nativeMinMax;
                }
                throw new RuntimeException("Invalid native min/max result: " + Arrays.toString(nativeMinMax));
            }
            throw new IllegalArgumentException("count can't be > capacity");
        }
        throw new IllegalArgumentException("count must be > 0");
    }

    public void put(NativeFloatBuffer buffer, int count) {
        set(this.position, buffer, 0, count);
        this.position += count;
    }

    public void put(float value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 < this.capacity) {
                if (i10 >= 0) {
                    try {
                        callSetFloat(this.pointer, i10, value);
                        this.position++;
                        return;
                    } catch (RuntimeException e10) {
                        throw new RuntimeException(e10);
                    }
                }
                throw new IndexOutOfBoundsException("position cant be < 0");
            }
            throw new IndexOutOfBoundsException("position cant be >= capacity (" + this.position + ") vs (" + this.capacity + ")");
        }
    }

    public void get(float[] values) {
        get(0, values, 0, values.length);
    }

    public void set(int baseIndex, Vector4 vector4) {
        set(baseIndex, vector4.f79845x, vector4.f79846y, vector4.f79847z, vector4.f79844w);
    }

    public void get(float[] values, int count) {
        get(0, values, 0, count);
    }

    public void set(int baseIndex, Vector3 vector3) {
        set(baseIndex, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void get(int baseIndex, float[] values) {
        get(baseIndex, values, 0, values.length);
    }

    public void set(int baseIndex, Vector3f vector3) {
        set(baseIndex, vector3.f81611x, vector3.f81612y, vector3.f81613z);
    }

    public void get(int baseIndex, float[] values, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (values.length >= start + count) {
                    try {
                        callGetFloats(this.pointer, baseIndex, values, start, count);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("start+count cant be > values.length");
            }
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
    }

    public void set(int baseIndex, float x10, float y10, float z10) {
        if (validateAndThrow()) {
            int i10 = baseIndex + 2;
            if (i10 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callSetVector3(this.pointer, baseIndex, x10, y10, z10);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("baseIndex cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex + 2 cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
        }
    }

    public void put(float[] value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    set(i10, value, 0, value.length);
                    this.position += value.length;
                    return;
                } catch (RuntimeException e10) {
                    throw new RuntimeException(e10);
                }
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public NativeFloatBuffer(int capacity) {
        this(capacity, b.FLOAT32);
    }

    public NativeFloatBuffer(int capacity, b precision) {
        this.capacity = 0;
        this.pointer = -1L;
        this.position = 0;
        this.vboEnabled = true;
        this.precision = b.FLOAT32;
        if (capacity > 0) {
            this.capacity = capacity;
            this.precision = precision;
            long callTryCreate = callTryCreate(precision.b());
            this.pointer = callTryCreate;
            if (callAllocBuffer(callTryCreate, capacity) >= 0) {
                fill(0.0f);
                position(0);
                bufferCleaner.a(new c(this, this.pointer));
                return;
            }
            throw new OutOfNativeMemoryError("Can't allocate buffer");
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public void set(int baseIndex, float x10, float y10, float z10, float w10) {
        if (validateAndThrow()) {
            if (baseIndex + 3 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callSetVector4(this.pointer, baseIndex, x10, y10, z10, w10);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("baseIndex cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex + 2 cant be >= capacity (" + (baseIndex + 2) + ") >= (" + this.capacity + ")");
        }
    }

    public void get(int baseIndex, Vector3 vector3) {
        if (validateAndThrow()) {
            int i10 = baseIndex + 2;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + 2 cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex < 0) {
                throw new IndexOutOfBoundsException("baseIndex cant be < 0");
            }
            if (vector3 != null) {
                try {
                    callGetVector3(this.pointer, baseIndex, vector3);
                    return;
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            throw new NullPointerException("vector3 can't be null");
        }
    }

    public void put(short[] value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                for (short s10 : value) {
                    try {
                        set(this.position, s10);
                        this.position++;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                return;
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public void set(int baseIndex, float x10, float y10) {
        if (validateAndThrow()) {
            int i10 = baseIndex + 1;
            if (i10 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callSetVector2(this.pointer, baseIndex, x10, y10);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("baseIndex cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex + 1 cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
        }
    }

    public void put(Vector3 value) {
        put(value.getX(), value.getY(), value.getZ());
    }

    public void put(Vector3f value) {
        put(value.f81611x, value.f81612y, value.f81613z);
    }

    public void set(int baseIndex, NativeFloatBuffer other) {
        set(baseIndex, other, 0, other.capacity);
    }

    public NativeFloatBuffer(float[] array) {
        this(array, b.FLOAT32);
    }

    public void put(float x10, float y10, float z10) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 + 2 < this.capacity) {
                if (i10 >= 0) {
                    try {
                        callSetVector3(this.pointer, i10, x10, y10, z10);
                        this.position += 3;
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("position cant be < 0");
            }
            throw new IndexOutOfBoundsException("position + 2 cant be >= capacity (" + this.position + "2) vs (" + this.capacity + ")");
        }
    }

    public void set(int baseIndex, NativeFloatBuffer other, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (other.capacity >= start + count) {
                    try {
                        callSetFloatsBuffer(this.pointer, baseIndex, other.pointer, start, count);
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("start+count cant be > values.length");
            }
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
    }

    public NativeFloatBuffer(float[] array, b precision) {
        this.capacity = 0;
        this.pointer = -1L;
        this.position = 0;
        this.vboEnabled = true;
        this.precision = b.FLOAT32;
        if (array != null) {
            if (array.length > 0) {
                this.capacity = array.length;
                this.precision = precision;
                long callTryCreate = callTryCreate(precision.b());
                this.pointer = callTryCreate;
                if (callAllocBuffer(callTryCreate, this.capacity) >= 0) {
                    bufferCleaner.a(new c(this, this.pointer));
                    this.position = 0;
                    put(array);
                    this.position = 0;
                    return;
                }
                throw new OutOfNativeMemoryError("Can't allocate buffer");
            }
            throw new RuntimeException("Array is empty");
        }
        throw new RuntimeException("Invalid array");
    }

    public void put(Vector2 value) {
        put(value.f79838x, value.f79839y);
    }

    public void put(Vector2f value) {
        put(value.f81609x, value.f81610y);
    }

    public void set(float[] values) {
        set(0, values, 0, values.length);
    }

    public void put(float x10, float y10) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 + 1 < this.capacity) {
                if (i10 >= 0) {
                    try {
                        callSetVector2(this.pointer, i10, x10, y10);
                        this.position += 2;
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("position cant be < 0");
            }
            throw new IndexOutOfBoundsException("position + 1 cant be >= capacity (" + this.position + "1) vs (" + this.capacity + ")");
        }
    }

    public void set(float[] values, int count) {
        set(0, values, 0, count);
    }

    public void set(int baseIndex, float[] values) {
        set(baseIndex, values, 0, values.length);
    }

    public void set(int baseIndex, float[] values, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (values.length >= start + count) {
                    try {
                        callSetFloats(this.pointer, baseIndex, values, start, count);
                        return;
                    } catch (RuntimeException e10) {
                        throw new RuntimeException(e10);
                    }
                }
                throw new IndexOutOfBoundsException("start+count cant be > values.length");
            }
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
    }
}
