package com.itsmagic.engine.Engines.Native.Base;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Native.OutOfNativeMemoryError;
import com.jme3.math.Vector3f;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import wc.C15987a;
import wc.b;
import wc.c;
import xc.InterfaceC16080a;

@Keep
public class NativeShortBuffer extends com.itsmagic.engine.Engines.Native.Base.a implements InterfaceC16080a {
    private static final b bufferCleaner = new C15987a(new a());
    private int capacity;

    @Keep
    private boolean normalizeOGL;

    @Keep
    private long pointer;

    @Keep
    private int position;
    JAVARuntime.NativeShortBuffer run;

    @Keep
    private boolean vboEnabled;

    public class a implements b.a {
        @Override
        public void a(long pointer) {
            NativeShortBuffer.deleteBuffer(pointer);
        }
    }

    static {
        System.loadLibrary("native-short-buffer");
    }

    @Keep
    private NativeShortBuffer(long pointer, int capacity, int position, boolean normalizeOGL, boolean vboEnabled) {
        this.pointer = pointer;
        this.capacity = capacity;
        this.position = position;
        this.normalizeOGL = normalizeOGL;
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

    private void callFillShorts(long pointer, int baseIndex, short value, int count) {
        nativeFillShorts(pointer, baseIndex, value, count);
    }

    private long callGetAllocationPointer(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetAllocationPointer(pointer) : nativeGetAllocationPointer(pointer);
    }

    private short callGetShort(long pointer, int index) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetShort(pointer, index) : nativeGetShort(pointer, index);
    }

    private void callGetShorts(long pointer, int baseIndex, short[] values, int start, int count) {
        nativeGetShorts(pointer, baseIndex, values, start, count);
    }

    private void callGetVector3(long pointer, int baseIndex, Vector3 vector3) {
        nativeGetVector3(pointer, baseIndex, vector3);
    }

    private boolean callOGLAttributePointer(long pointer, int attributeLocation, int size, int stride) {
        setCanAsyncCleaner(false);
        return true;
    }

    private void callSetShort(long pointer, int index, short value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetShort(pointer, index, value);
        } else {
            nativeSetShort(pointer, index, value);
        }
    }

    private void callSetShorts(long pointer, int baseIndex, short[] values, int start, int count) {
        if (start == 0 && count == values.length) {
            nativeSetShortsMemCp(pointer, baseIndex, values, start, count);
        } else {
            nativeSetShorts(pointer, baseIndex, values, start, count);
        }
    }

    private void callSetShortsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count) {
        nativeSetShortsBuffer(pointer, baseIndex, otherPointer, start, count);
    }

    private void callSetVector2(long pointer, int baseIndex, short x10, short y10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector2(pointer, baseIndex, x10, y10);
        } else {
            nativeSetVector2(pointer, baseIndex, x10, y10);
        }
    }

    private void callSetVector3(long pointer, int baseIndex, short x10, short y10, short z10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector3(pointer, baseIndex, x10, y10, z10);
        } else {
            nativeSetVector3(pointer, baseIndex, x10, y10, z10);
        }
    }

    private void callSetVector4(long pointer, int baseIndex, short x10, short y10, short z10, short w10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVector4(pointer, baseIndex, x10, y10, z10, w10);
        } else {
            nativeSetVector4(pointer, baseIndex, x10, y10, z10, w10);
        }
    }

    private long callTryCreate() {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalTryCreate() : nativeTryCreate();
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
    public static native short nativeCriticalGetShort(long pointer, int index);

    @CriticalNative
    public static native void nativeCriticalSetShort(long pointer, int index, short value);

    @CriticalNative
    public static native void nativeCriticalSetVector2(long pointer, int baseIndex, short x10, short y10);

    @CriticalNative
    public static native void nativeCriticalSetVector3(long pointer, int baseIndex, short x10, short y10, short z10);

    @CriticalNative
    public static native void nativeCriticalSetVector4(long pointer, int baseIndex, short x10, short y10, short z10, short w10);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    public static native void nativeDeleteBuffer(long pointer);

    public static native boolean nativeEquals(long pointer, long otherPointer);

    public static native void nativeFillShorts(long pointer, int baseIndex, short value, int count);

    public static native long nativeGetAllocationPointer(long pointer);

    public static native short nativeGetShort(long pointer, int index);

    public static native short nativeGetShorts(long pointer, int baseIndex, short[] values, int start, int count);

    public static native short nativeGetVector3(long pointer, int baseIndex, Vector3 vector3);

    private static native NativeShortBuffer nativeReadFile(String path);

    private native boolean nativeSaveToFile(String path);

    public static native void nativeSetShort(long pointer, int index, short value);

    public static native void nativeSetShorts(long pointer, int baseIndex, short[] values, int start, int count);

    public static native void nativeSetShortsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count);

    public static native void nativeSetShortsMemCp(long pointer, int baseIndex, short[] values, int start, int count);

    public static native void nativeSetVector2(long pointer, int baseIndex, short x10, short y10);

    public static native void nativeSetVector3(long pointer, int baseIndex, short x10, short y10, short z10);

    public static native void nativeSetVector4(long pointer, int baseIndex, short x10, short y10, short z10, short w10);

    public static native long nativeTryCreate();

    public static NativeShortBuffer readFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeShortBuffer nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != null) {
            return nativeReadFile;
        }
        throw new RuntimeException("Failed to read NativeShortBuffer from file: " + file.getAbsolutePath());
    }

    public static void surfaceDestroyed() {
        bufferCleaner.f();
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    @Override
    public int bytesPerItem() {
        return 2;
    }

    @Override
    public boolean canAsyncCleaner() {
        return true;
    }

    @Override
    public int capacity() {
        return this.capacity;
    }

    public NativeShortBuffer concat(NativeShortBuffer buffer) {
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(capacity() + buffer.capacity());
        nativeShortBuffer.position(0);
        nativeShortBuffer.put(this);
        nativeShortBuffer.put(buffer);
        nativeShortBuffer.position(0);
        return nativeShortBuffer;
    }

    public NativeShortBuffer concatAndDestroyItselfImmediate(NativeShortBuffer buffer) {
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(capacity() + buffer.capacity());
        nativeShortBuffer.position(0);
        nativeShortBuffer.put(this);
        nativeShortBuffer.put(buffer);
        nativeShortBuffer.position(0);
        destroyImmediate();
        return nativeShortBuffer;
    }

    public void destroy() {
        setGarbage();
    }

    @Override
    public void destroyImmediate() {
        bufferCleaner.b(this);
    }

    public boolean equalsNative(NativeShortBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        return callEquals(this.pointer, buffer.pointer);
    }

    public void fill(short value) {
        fill(0, value, this.capacity);
    }

    public void fillArray(short[] array) {
        if (array.length != this.capacity) {
            throw new IllegalArgumentException("Array size must be == buffer capacity");
        }
        get(array);
    }

    public short get(int index) {
        if (!validateAndThrow()) {
            return (short) 0;
        }
        if (index < this.capacity) {
            if (index >= 0) {
                try {
                    return callGetShort(this.pointer, index);
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return (short) 0;
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
        return get(index);
    }

    @Override
    public short getAsShort(int index) {
        return get(index);
    }

    public int getCapacity() {
        return this.capacity;
    }

    public long getCriticalDirectCppPointer() {
        return this.pointer;
    }

    public long getNativeAllocationPointer() {
        validateAndThrow();
        return callGetAllocationPointer(this.pointer);
    }

    @Override
    public long getPointerCritical() {
        return this.pointer;
    }

    public int getPosition() {
        return this.position;
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
    }

    public void position(int position) {
        this.position = position;
    }

    public void pull(short[] values) {
        pull(values, 0, values.length);
    }

    public void push(short[] values) {
        put(values);
    }

    public void put(NativeShortBuffer buffer) {
        set(this.position, buffer);
        this.position += buffer.capacity;
    }

    public void putFill(short value, int count) {
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
        throw new RuntimeException("Failed to save NativeShortBuffer to file: " + file.getAbsolutePath());
    }

    public void set(int index, short value) {
        if (validateAndThrow()) {
            if (index < this.capacity) {
                if (index >= 0) {
                    try {
                        callSetShort(this.pointer, index, value);
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
        set(index, (short) value);
    }

    @Override
    public void setAsFloat(int index, float value) {
        set(index, (short) value);
    }

    @Override
    public void setAsInt(int index, int value) {
        set(index, (short) value);
    }

    @Override
    public void setAsShort(int index, short value) {
        set(index, value);
    }

    public boolean setAttribute(int location, int size, int stride) {
        try {
            return callOGLAttributePointer(this.pointer, location, size, stride);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public void setDeleted() {
        this.pointer = 0L;
        super.setDeleted();
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRuntime(JAVARuntime.NativeShortBuffer run) {
        this.run = run;
    }

    public short[] toArray() {
        short[] sArr = new short[this.capacity];
        get(sArr);
        return sArr;
    }

    public JAVARuntime.NativeShortBuffer toJAVARuntime() {
        JAVARuntime.NativeShortBuffer nativeShortBuffer = this.run;
        if (nativeShortBuffer != null) {
            return nativeShortBuffer;
        }
        JAVARuntime.NativeShortBuffer nativeShortBuffer2 = new JAVARuntime.NativeShortBuffer(this);
        this.run = nativeShortBuffer2;
        return nativeShortBuffer2;
    }

    public boolean validate() {
        return !isGarbage();
    }

    public static long getCriticalDirectCppPointer(NativeShortBuffer buffer, long failCase) {
        return buffer == null ? failCase : buffer.getCriticalDirectCppPointer();
    }

    public NativeShortBuffer m1252clone() {
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(this.capacity);
        nativeShortBuffer.position(0);
        nativeShortBuffer.put(this);
        nativeShortBuffer.position(0);
        return nativeShortBuffer;
    }

    public void fill(int baseIndex, short value, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callFillShorts(this.pointer, baseIndex, value, count);
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

    public void pull(short[] values, int count) {
        pull(values, 0, count);
    }

    public void push(short[] values, int count) {
        put(values, 0, count);
    }

    public void pull(short[] values, int start, int count) {
        if (validateAndThrow()) {
            if (count < 0) {
                throw new IndexOutOfBoundsException("count cant be < 0");
            }
            if (count == 0) {
                return;
            }
            int i10 = this.position;
            int i11 = count - 1;
            if (i10 + i11 >= this.capacity) {
                throw new IndexOutOfBoundsException("position + (count-1) cant be >= capacity (" + (this.position + i11) + ") >= (" + this.capacity + ")");
            }
            if (i10 >= 0) {
                if (values.length >= start + count) {
                    try {
                        callGetShorts(this.pointer, i10, values, start, count);
                        this.position += count;
                        return;
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                throw new IndexOutOfBoundsException("start+count cant be > values.length");
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public void push(short[] values, int start, int count) {
        put(values, start, count);
    }

    public void put(NativeShortBuffer buffer, int count) {
        set(this.position, buffer, 0, count);
        this.position += count;
    }

    public void put(short value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 < this.capacity) {
                if (i10 >= 0) {
                    try {
                        callSetShort(this.pointer, i10, value);
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

    public void get(short[] values) {
        get(0, values, 0, values.length);
    }

    public void set(int baseIndex, Vector4 vector4) {
        set(baseIndex, (short) vector4.f79845x, (short) vector4.f79846y, (short) vector4.f79847z, (short) vector4.f79844w);
    }

    public NativeShortBuffer(int capacity) {
        this.capacity = 0;
        this.pointer = -1L;
        this.position = 0;
        this.vboEnabled = true;
        if (capacity > 0) {
            this.capacity = capacity;
            long callTryCreate = callTryCreate();
            this.pointer = callTryCreate;
            if (callAllocBuffer(callTryCreate, capacity) >= 0) {
                fill((short) 0);
                position(0);
                bufferCleaner.a(new c(this, this.pointer));
                return;
            }
            throw new OutOfNativeMemoryError("Can't allocate buffer");
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public void get(int baseIndex, short[] values) {
        get(baseIndex, values, 0, values.length);
    }

    public void set(int baseIndex, Vector3 vector3) {
        set(baseIndex, (short) vector3.getX(), (short) vector3.getY(), (short) vector3.getZ());
    }

    public void get(int baseIndex, short[] values, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (values.length >= start + count) {
                    try {
                        callGetShorts(this.pointer, baseIndex, values, start, count);
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

    public void set(int baseIndex, Vector3f vector3) {
        set((short) baseIndex, (short) vector3.f81611x, (short) vector3.f81612y, (short) vector3.f81613z);
    }

    public void set(int baseIndex, short x10, short y10, short z10) {
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

    public void put(short[] value) {
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

    public void set(int baseIndex, short x10, short y10, short z10, short w10) {
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

    public void put(short[] value, int start, int count) {
        if (validateAndThrow()) {
            if (count < 0) {
                throw new IndexOutOfBoundsException("count cant be < 0");
            }
            if (count == 0) {
                return;
            }
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                if (value.length >= start + count) {
                    try {
                        set(i10, value, start, count);
                        this.position += count;
                        return;
                    } catch (RuntimeException e10) {
                        throw new RuntimeException(e10);
                    }
                }
                throw new IndexOutOfBoundsException("start+count cant be > values.length");
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public NativeShortBuffer(short[] array) {
        this.capacity = 0;
        this.pointer = -1L;
        this.position = 0;
        this.vboEnabled = true;
        if (array != null) {
            if (array.length > 0) {
                this.capacity = array.length;
                long callTryCreate = callTryCreate();
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

    public void set(int baseIndex, short x10, short y10) {
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

    public void set(int baseIndex, NativeShortBuffer other) {
        set(baseIndex, other, 0, other.capacity);
    }

    public void put(Vector3 value) {
        put((short) value.getX(), (short) value.getY(), (short) value.getZ());
    }

    public void set(int baseIndex, NativeShortBuffer other, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (other.capacity >= start + count) {
                    try {
                        callSetShortsBuffer(this.pointer, baseIndex, other.pointer, start, count);
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

    public void put(Vector3f value) {
        put((short) value.f81611x, (short) value.f81612y, (short) value.f81613z);
    }

    public void put(short x10, short y10, short z10) {
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

    public void set(short[] values) {
        set(0, values, 0, values.length);
    }

    public void put(Vector2 value) {
        put((short) value.f79838x, (short) value.f79839y);
    }

    public void set(short[] values, int count) {
        set(0, values, 0, count);
    }

    public void put(short x10, short y10) {
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

    public void set(int baseIndex, short[] values) {
        set(baseIndex, values, 0, values.length);
    }

    public void set(int baseIndex, short[] values, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (values.length >= start + count) {
                    try {
                        callSetShorts(this.pointer, baseIndex, values, start, count);
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
