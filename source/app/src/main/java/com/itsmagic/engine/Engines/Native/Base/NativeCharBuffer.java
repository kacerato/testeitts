package com.itsmagic.engine.Engines.Native.Base;

import M9.c;
import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Native.OutOfNativeMemoryError;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.nio.IntBuffer;
import uc.C15593a;

@Keep
public class NativeCharBuffer extends com.itsmagic.engine.Engines.Native.Base.a {
    public static final c DESTROYER = new a();
    private int capacity;

    @Keep
    private long pointer;

    @Keep
    private int position;
    JAVARuntime.NativeCharBuffer run;

    public class a implements c {
        @Override
        public void a(long pointer) {
            NativeCharBuffer.deleteBuffer(pointer);
        }
    }

    static {
        System.loadLibrary("native-char-buffer");
    }

    @Keep
    private NativeCharBuffer(long pointer, int capacity, int position) {
        this.pointer = pointer;
        this.capacity = capacity;
        this.position = position;
        SGC.put(this, pointer, DESTROYER, true);
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

    private boolean callEqualsIgnoreCase(long pointer, long otherPointer) {
        return nativeEqualsIgnoreCase(pointer, otherPointer);
    }

    private char callGetInt(long pointer, int index) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetChar(pointer, index) : nativeGetChar(pointer, index);
    }

    private int callIndexOf(long pointer, long other) {
        return nativeIndexOf(pointer, other);
    }

    private void callSetChar(long pointer, int index, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetChar(pointer, index, value);
        } else {
            nativeSetChar(pointer, index, value);
        }
    }

    private void callSetChars(long pointer, int baseIndex, char[] values, int start, int count) {
        nativeSetChars(pointer, baseIndex, values, start, count);
    }

    private void callSetCharsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count) {
        nativeSetCharsBuffer(pointer, baseIndex, otherPointer, start, count);
    }

    private boolean callStartsWith(long pointer, long otherPointer) {
        return nativeStartsWith(pointer, otherPointer);
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
    public static native char nativeCriticalGetChar(long pointer, int index);

    @CriticalNative
    public static native void nativeCriticalSetChar(long pointer, int index, char value);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    public static native void nativeDeleteBuffer(long pointer);

    public static native boolean nativeEquals(long pointer, long otherPointer);

    public static native boolean nativeEqualsIgnoreCase(long pointer, long otherPointer);

    public static native char nativeGetChar(long pointer, int index);

    public static native int nativeIndexOf(long pointer, long other);

    private static native NativeCharBuffer nativeReadFile(String path);

    private native boolean nativeSaveToFile(String path);

    public static native void nativeSetChar(long pointer, int index, char value);

    public static native void nativeSetChars(long pointer, int baseIndex, char[] values, int start, int count);

    public static native void nativeSetCharsBuffer(long pointer, int baseIndex, long otherPointer, int start, int count);

    public static native boolean nativeStartsWith(long pointer, long otherPointer);

    public static native long nativeTryCreate();

    public static NativeCharBuffer readFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeCharBuffer nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != null) {
            return nativeReadFile;
        }
        throw new RuntimeException("Failed to read NativeCharBuffer from file: " + file.getAbsolutePath());
    }

    private boolean validate() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    public char[] array() {
        if (!validate()) {
            return null;
        }
        char[] cArr = new char[this.capacity];
        long j10 = this.pointer;
        for (int i10 = 0; i10 < this.capacity; i10++) {
            try {
                cArr[i10] = callGetInt(j10, i10);
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
        return cArr;
    }

    @Override
    public int bytesPerItem() {
        return 2;
    }

    @Override
    public int capacity() {
        return this.capacity;
    }

    public void destroy() {
        setGarbage();
    }

    @Override
    public void destroyImmediate() {
        validate();
        setGarbage();
        SGC.destroyImmediate(this);
    }

    public boolean equalsNative(NativeCharBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        long j10 = this.pointer;
        long j11 = buffer.pointer;
        if (j10 == j11) {
            return true;
        }
        return callEquals(j10, j11);
    }

    public boolean equalsNativeIgnoreCase(NativeCharBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        long j10 = this.pointer;
        long j11 = buffer.pointer;
        if (j10 == j11) {
            return true;
        }
        return callEqualsIgnoreCase(j10, j11);
    }

    public char get(int index) {
        if (!validate()) {
            return (char) 0;
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
            return (char) 0;
        }
    }

    public int getCapacity() {
        return this.capacity;
    }

    @Override
    public long getPointerCritical() {
        return this.pointer;
    }

    public int getPosition() {
        return this.position;
    }

    public int indexOf(NativeCharBuffer str) {
        if (!validate()) {
            return -1;
        }
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (str.capacity == 0) {
            return -1;
        }
        return callIndexOf(this.pointer, str.pointer);
    }

    @Override
    public boolean isNative() {
        return true;
    }

    public void position(int position) {
        this.position = position;
    }

    public void put(char value) {
        if (validate()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    callSetChar(this.pointer, i10, value);
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

    public void saveToFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (nativeSaveToFile(file.getAbsolutePath())) {
            return;
        }
        throw new RuntimeException("Failed to save NativeCharBuffer to file: " + file.getAbsolutePath());
    }

    public void set(int index, char value) {
        if (validate()) {
            if (index >= this.capacity) {
                throw new IndexOutOfBoundsException("index cant be >= capacity");
            }
            if (index >= 0) {
                try {
                    callSetChar(this.pointer, index, value);
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
    public void setDeleted() {
        this.pointer = 0L;
        super.setDeleted();
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRuntime(JAVARuntime.NativeCharBuffer run) {
        this.run = run;
    }

    public boolean startsWith(NativeCharBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        return callStartsWith(this.pointer, buffer.pointer);
    }

    public IntBuffer toIntBuffer() {
        IntBuffer e10 = C15593a.e(this.capacity);
        long j10 = this.pointer;
        for (int i10 = 0; i10 < this.capacity; i10++) {
            e10.put(callGetInt(j10, i10));
        }
        e10.position(0);
        return e10;
    }

    public JAVARuntime.NativeCharBuffer toJAVARuntime() {
        JAVARuntime.NativeCharBuffer nativeCharBuffer = this.run;
        if (nativeCharBuffer != null) {
            return nativeCharBuffer;
        }
        JAVARuntime.NativeCharBuffer nativeCharBuffer2 = new JAVARuntime.NativeCharBuffer(this);
        this.run = nativeCharBuffer2;
        return nativeCharBuffer2;
    }

    public NativeCharBuffer(int capacity) {
        this.capacity = 0;
        if (capacity > 0) {
            this.capacity = capacity;
            long callTryCreate = callTryCreate();
            this.pointer = callTryCreate;
            if (callAllocBuffer(callTryCreate, capacity) >= 0) {
                SGC.put(this, this.pointer, DESTROYER, true);
                return;
            }
            throw new OutOfNativeMemoryError("Can't allocate buffer");
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public void set(int baseIndex, char[] values) {
        if (values != null) {
            set(baseIndex, values, 0, values.length);
            return;
        }
        throw new NullPointerException("values can't be null");
    }

    public void put(char[] values) {
        if (values != null) {
            if (values.length != 0 && validate()) {
                set(this.position, values);
                this.position += values.length;
                return;
            }
            return;
        }
        throw new NullPointerException("values can't be null");
    }

    public void set(int baseIndex, char[] values, int start, int count) {
        if (validate()) {
            if (values == null) {
                throw new NullPointerException("values can't be null");
            }
            if (count < 0) {
                throw new IndexOutOfBoundsException("count cant be < 0");
            }
            if (count == 0) {
                return;
            }
            if (baseIndex >= 0) {
                int i10 = baseIndex + count;
                if (i10 > this.capacity) {
                    throw new IndexOutOfBoundsException("baseIndex + count cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
                }
                if (start >= 0) {
                    if (values.length >= start + count) {
                        try {
                            callSetChars(this.pointer, baseIndex, values, start, count);
                            return;
                        } catch (RuntimeException e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    throw new IndexOutOfBoundsException("start+count cant be > values.length");
                }
                throw new IndexOutOfBoundsException("start cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
    }

    public void put(NativeCharBuffer values) {
        if (values != null) {
            if (values.capacity != 0 && validate()) {
                set(this.position, values);
                this.position += values.capacity;
                return;
            }
            return;
        }
        throw new NullPointerException("values can't be null");
    }

    public void set(int baseIndex, NativeCharBuffer other) {
        if (other != null) {
            set(baseIndex, other, 0, other.capacity);
            return;
        }
        throw new NullPointerException("other can't be null");
    }

    public void set(int baseIndex, NativeCharBuffer other, int start, int count) {
        if (validate()) {
            if (other == null) {
                throw new NullPointerException("other can't be null");
            }
            if (count < 0) {
                throw new IndexOutOfBoundsException("count cant be < 0");
            }
            if (count == 0) {
                return;
            }
            if (baseIndex >= 0) {
                int i10 = baseIndex + count;
                if (i10 > this.capacity) {
                    throw new IndexOutOfBoundsException("baseIndex + count cant be >= capacity (" + i10 + ") >= (" + this.capacity + ")");
                }
                if (start >= 0) {
                    if (other.capacity >= start + count) {
                        try {
                            callSetCharsBuffer(this.pointer, baseIndex, other.pointer, start, count);
                            return;
                        } catch (RuntimeException e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    throw new IndexOutOfBoundsException("start+count cant be > values.length");
                }
                throw new IndexOutOfBoundsException("start cant be < 0");
            }
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
    }
}
