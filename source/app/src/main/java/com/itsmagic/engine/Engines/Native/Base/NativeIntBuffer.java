package com.itsmagic.engine.Engines.Native.Base;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Native.OutOfNativeMemoryError;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import uc.C15593a;
import wc.C15987a;
import wc.b;
import wc.c;
import xc.InterfaceC16080a;

@Keep
public class NativeIntBuffer extends com.itsmagic.engine.Engines.Native.Base.a implements InterfaceC16080a {
    private static final b bufferCleaner = new C15987a(new a());
    private int capacity;

    @Keep
    private long pointer;

    @Keep
    private int position;
    JAVARuntime.NativeIntBuffer run;

    public class a implements b.a {
        @Override
        public void a(long pointer) {
            NativeIntBuffer.deleteBuffer(pointer);
        }
    }

    static {
        System.loadLibrary("native-int-buffer");
    }

    @Keep
    private NativeIntBuffer(long pointer, int capacity, int position) {
        this.pointer = pointer;
        this.capacity = capacity;
        this.position = position;
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

    private void callFillInts(long pointer, int baseIndex, int value, int count) {
        nativeFillInts(pointer, baseIndex, value, count);
    }

    private int callFindMaxValue(long pointer) {
        return nativeFindMaxValue(pointer);
    }

    private long callGetAllocationPointer(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetAllocationPointer(pointer) : nativeGetAllocationPointer(pointer);
    }

    private int callGetInt(long pointer, int index) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetInt(pointer, index) : nativeGetInt(pointer, index);
    }

    private void callLostOGLContext(long pointer) {
        nativeLostOGLContext(pointer);
    }

    private void callSetInt(long pointer, int index, int value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetInt(pointer, index, value);
        } else {
            nativeSetInt(pointer, index, value);
        }
    }

    private void callSetIntsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count) {
        nativeSetIntsBuffer(pointer, baseIndex, otherPointer, start, count);
    }

    private void callSetIntsBufferIncremented(long pointer, int baseIndex, long otherPointer, int start, int count, int increment) {
        nativeSetIntsBufferIncremented(pointer, baseIndex, otherPointer, start, count, increment);
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
    public static native int nativeCriticalGetInt(long pointer, int index);

    @CriticalNative
    public static native void nativeCriticalSetInt(long pointer, int index, int value);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    public static native void nativeDeleteBuffer(long pointer);

    public static native boolean nativeEquals(long pointer, long otherPointer);

    private static native void nativeFillIndexData(long pointer, ByteBuffer outBuffer, boolean useUshort);

    private static native void nativeFillIntByteBuffer(long pointer, ByteBuffer outBuffer);

    public static native void nativeFillInts(long pointer, int baseIndex, int value, int count);

    private static native void nativeFillRawByteBuffer(long pointer, ByteBuffer outBuffer);

    public static native int nativeFindMaxValue(long pointer);

    public static native long nativeGetAllocationPointer(long pointer);

    public static native int nativeGetInt(long pointer, int index);

    public static native float nativeLostOGLContext(long pointer);

    private static native NativeIntBuffer nativeReadFile(String path);

    private native boolean nativeSaveToFile(String path);

    public static native void nativeSetInt(long pointer, int index, int value);

    public static native void nativeSetIntsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count);

    public static native void nativeSetIntsBufferIncremented(long pointer, int baseIndex, long otherPointer, int start, int count, int increment);

    public static native long nativeTryCreate();

    public static NativeIntBuffer readFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeIntBuffer nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != null) {
            return nativeReadFile;
        }
        throw new RuntimeException("Failed to read NativeIntBuffer from file: " + file.getAbsolutePath());
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    public ByteBuffer buildIndexData() {
        boolean z10 = findMaxValue() <= 65535;
        int capacity = capacity();
        if (z10) {
            ByteBuffer a10 = C15593a.a(capacity * 2);
            nativeFillIndexData(this.pointer, a10, true);
            a10.position(0);
            return a10;
        }
        ByteBuffer a11 = C15593a.a(capacity * 4);
        nativeFillIndexData(this.pointer, a11, false);
        a11.position(0);
        return a11;
    }

    @Override
    public int bytesPerItem() {
        return 4;
    }

    @Override
    public int capacity() {
        return this.capacity;
    }

    public NativeIntBuffer concat(NativeIntBuffer buffer) {
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(capacity() + buffer.capacity());
        nativeIntBuffer.position(0);
        nativeIntBuffer.put(this);
        nativeIntBuffer.put(buffer);
        nativeIntBuffer.position(0);
        return nativeIntBuffer;
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

    public void dump() {
        System.out.println("Dumping NativeIntBuffer with capacity " + this.capacity);
        for (int i10 = 0; i10 < this.capacity; i10++) {
            System.out.println(i10 + ": " + get(i10));
        }
    }

    public boolean equalsNative(NativeIntBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        return callEquals(this.pointer, buffer.pointer);
    }

    public void fill(int value) {
        fill(0, value, this.capacity);
    }

    public void fillArray(int[] array) {
        if (array.length != this.capacity) {
            throw new IllegalArgumentException("Array size must be == buffer capacity");
        }
        for (int i10 = 0; i10 < this.capacity; i10++) {
            array[i10] = get(i10);
        }
    }

    public int findMaxValue() {
        if (validateAndThrow()) {
            return callFindMaxValue(this.pointer);
        }
        return 0;
    }

    public int get(int index) {
        if (!validateAndThrow()) {
            return 0;
        }
        if (index >= this.capacity) {
            throw new IndexOutOfBoundsException("index cant be >= capacity");
        }
        if (index < 0) {
            throw new IndexOutOfBoundsException("index cant be < 0");
        }
        try {
            return callGetInt(this.pointer, index);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
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
        return (short) get(index);
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

    public boolean isDirect() {
        return true;
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
        return (capacity() * bytesPerItem()) + 20;
    }

    public ByteOrder order() {
        return ByteOrder.nativeOrder();
    }

    public void position(int position) {
        this.position = position;
    }

    public void put(NativeIntBuffer buffer) {
        set(this.position, buffer);
        this.position += buffer.capacity;
    }

    public void putFill(int value, int count) {
        fill(this.position, value, count);
        this.position += count;
    }

    public void putIncremented(NativeIntBuffer buffer, int increment) {
        set(this.position, buffer, 0, buffer.capacity, increment);
        this.position += buffer.capacity;
    }

    public void saveToFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (nativeSaveToFile(file.getAbsolutePath())) {
            return;
        }
        throw new RuntimeException("Failed to save NativeIntBuffer to file: " + file.getAbsolutePath());
    }

    public void set(int index, int value) {
        if (validateAndThrow()) {
            if (index >= this.capacity) {
                throw new IndexOutOfBoundsException("index cant be >= capacity");
            }
            if (index >= 0) {
                try {
                    callSetInt(this.pointer, index, value);
                    return;
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            throw new IndexOutOfBoundsException("index cant be < 0");
        }
    }

    @Override
    public void setAsByte(int index, byte value) {
        set(index, value);
    }

    @Override
    public void setAsDouble(int index, double value) {
        set(index, (int) value);
    }

    @Override
    public void setAsFloat(int index, float value) {
        set(index, (int) value);
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

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRuntime(JAVARuntime.NativeIntBuffer run) {
        this.run = run;
    }

    public int[] toArray() {
        if (!validateAndThrow()) {
            return null;
        }
        int[] iArr = new int[this.capacity];
        for (int i10 = 0; i10 < this.capacity; i10++) {
            iArr[i10] = get(i10);
        }
        return iArr;
    }

    public ByteBuffer toByteBuffer() {
        ByteBuffer a10 = C15593a.a(this.capacity * 4);
        nativeFillRawByteBuffer(this.pointer, a10);
        a10.position(0);
        return a10;
    }

    public IntBuffer toIntBuffer() {
        ByteBuffer a10 = C15593a.a(this.capacity * 4);
        nativeFillIntByteBuffer(this.pointer, a10);
        a10.position(0);
        return a10.asIntBuffer();
    }

    public JAVARuntime.NativeIntBuffer toJAVARuntime() {
        JAVARuntime.NativeIntBuffer nativeIntBuffer = this.run;
        if (nativeIntBuffer != null) {
            return nativeIntBuffer;
        }
        JAVARuntime.NativeIntBuffer nativeIntBuffer2 = new JAVARuntime.NativeIntBuffer(this);
        this.run = nativeIntBuffer2;
        return nativeIntBuffer2;
    }

    public boolean validate() {
        return !isGarbage();
    }

    public static long getCriticalDirectCppPointer(NativeIntBuffer buffer, long failCase) {
        return buffer == null ? failCase : buffer.getCriticalDirectCppPointer();
    }

    public NativeIntBuffer m1251clone() {
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(this.capacity);
        nativeIntBuffer.position(0);
        nativeIntBuffer.put(this);
        nativeIntBuffer.position(0);
        return nativeIntBuffer;
    }

    public void fill(int baseIndex, int value, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 < this.capacity) {
                if (baseIndex >= 0) {
                    try {
                        callFillInts(this.pointer, baseIndex, value, count);
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

    public void put(NativeIntBuffer buffer, int count) {
        set(this.position, buffer, 0, count);
        this.position += count;
    }

    public void put(int value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    callSetInt(this.pointer, i10, value);
                    this.position++;
                    return;
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public NativeIntBuffer(int capacity) {
        this.capacity = 0;
        this.pointer = -1L;
        if (capacity > 0) {
            this.capacity = capacity;
            long callTryCreate = callTryCreate();
            this.pointer = callTryCreate;
            if (callAllocBuffer(callTryCreate, capacity) >= 0) {
                bufferCleaner.a(new c(this, this.pointer));
                this.position = 0;
                return;
            }
            throw new OutOfNativeMemoryError("Can't allocate buffer");
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public void set(int baseIndex, NativeIntBuffer other, int start, int count) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (other.capacity >= start + count) {
                    try {
                        callSetIntsBuffer(this.pointer, baseIndex, other.pointer, start, count);
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

    public void put(int[] value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    for (int i11 : value) {
                        callSetInt(this.pointer, this.position, i11);
                        this.position++;
                    }
                    return;
                } catch (RuntimeException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            throw new IndexOutOfBoundsException("position cant be < 0");
        }
    }

    public void set(int baseIndex, NativeIntBuffer other) {
        set(baseIndex, other, 0, other.capacity);
    }

    public NativeIntBuffer(int[] array) {
        this.capacity = 0;
        this.pointer = -1L;
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

    public void set(int baseIndex, NativeIntBuffer other, int start, int count, int increment) {
        if (validateAndThrow()) {
            int i10 = (count - 1) + baseIndex;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
            }
            if (baseIndex >= 0) {
                if (other.capacity >= start + count) {
                    try {
                        callSetIntsBufferIncremented(this.pointer, baseIndex, other.pointer, start, count, increment);
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
}
