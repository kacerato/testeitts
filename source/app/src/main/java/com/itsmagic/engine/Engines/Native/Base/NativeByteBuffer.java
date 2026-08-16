package com.itsmagic.engine.Engines.Native.Base;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Native.OutOfNativeMemoryError;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.nio.ByteBuffer;
import wc.C15987a;
import wc.b;
import wc.c;
import xc.InterfaceC16080a;

@Keep
public class NativeByteBuffer extends com.itsmagic.engine.Engines.Native.Base.a implements InterfaceC16080a {
    private static final b bufferCleaner = new C15987a(new a());
    private ByteBuffer buffer;
    private int capacity;
    private boolean isNative;

    @Keep
    private boolean normalizeOGL;

    @Keep
    private long pointer;

    @Keep
    private int position;
    JAVARuntime.NativeByteBuffer run;

    @Keep
    private boolean vboEnabled;

    public class a implements b.a {
        @Override
        public void a(long pointer) {
            NativeByteBuffer.deleteBuffer(pointer);
        }
    }

    static {
        System.loadLibrary("native-byte-buffer");
    }

    @Keep
    private NativeByteBuffer(long j10, int i10, int i11, boolean z10, boolean z11) {
        this.pointer = j10;
        this.capacity = i10;
        this.position = i11;
        this.normalizeOGL = z10;
        this.vboEnabled = z11;
        this.isNative = true;
        bufferCleaner.a(new c(this, j10));
        callSetNormalizeEnabled(j10, z10 ? 1 : 0);
        callSetVBOEnabled(j10, z11 ? 1 : 0);
    }

    private long callAllocBuffer(long pointer, long capacity) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, capacity) : nativeAllocBuffer(pointer, capacity);
    }

    private void callDeleteBuffer(long pointer) {
        if (this.isNative) {
            deleteBuffer(pointer);
        }
    }

    private boolean callEquals(long pointer, long otherPointer) {
        return nativeEquals(pointer, otherPointer);
    }

    private long callGetAllocationPointer(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetAllocationPointer(pointer) : nativeGetAllocationPointer(pointer);
    }

    private byte callGetInt(long pointer, int index) {
        return this.isNative ? com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetByte(pointer, index) : nativeGetByte(pointer, index) : this.buffer.get(index);
    }

    private void callLostOGLContext(long pointer) {
        nativeLostOGLContext(pointer);
    }

    private boolean callOGLAttributePointer(long pointer, int attributeLocation, int size, int stride) {
        setCanAsyncCleaner(false);
        nativeOGLAttributePointer(pointer, attributeLocation, size, stride);
        return true;
    }

    private void callSetByte(long pointer, int index, byte value) {
        if (!this.isNative) {
            this.buffer.put(index, value);
        } else if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetByte(pointer, index, value);
        } else {
            nativeSetByte(pointer, index, value);
        }
    }

    private void callSetNormalizeEnabled(long pointer, int enabled) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetNormalizeEnabled(pointer, enabled);
        } else {
            nativeSetNormalizeEnabled(pointer, enabled);
        }
    }

    private void callSetVBOEnabled(long pointer, int enabled) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetVBOEnabled(pointer, enabled);
        } else {
            nativeSetVBOEnabled(pointer, enabled);
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
    public static native byte nativeCriticalGetByte(long pointer, int index);

    @CriticalNative
    public static native void nativeCriticalSetByte(long pointer, int index, byte value);

    @CriticalNative
    public static native void nativeCriticalSetNormalizeEnabled(long pointer, int enabled);

    @CriticalNative
    public static native void nativeCriticalSetVBOEnabled(long pointer, int enabled);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    public static native void nativeDeleteBuffer(long pointer);

    public static native boolean nativeEquals(long pointer, long otherPointer);

    public static native long nativeGetAllocationPointer(long pointer);

    public static native byte nativeGetByte(long pointer, int index);

    public static native float nativeLostOGLContext(long pointer);

    public static native void nativeOGLAttributePointer(long pointer, int attributeLocation, int size, int stride);

    private static native NativeByteBuffer nativeReadFile(String path);

    private static native NativeByteBuffer nativeReadRawFile(String path);

    private native boolean nativeSaveRawToFile(String path);

    private native boolean nativeSaveToFile(String path);

    public static native void nativeSetByte(long pointer, int index, byte value);

    public static native void nativeSetNormalizeEnabled(long pointer, int enabled);

    public static native void nativeSetVBOEnabled(long pointer, int enabled);

    public static native long nativeTryCreate();

    public static NativeByteBuffer readFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeByteBuffer nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != null) {
            return nativeReadFile;
        }
        throw new RuntimeException("Failed to read NativeByteBuffer from file: " + file.getAbsolutePath());
    }

    public static NativeByteBuffer readRawFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        NativeByteBuffer nativeReadRawFile = nativeReadRawFile(file.getAbsolutePath());
        if (nativeReadRawFile != null) {
            return nativeReadRawFile;
        }
        throw new RuntimeException("Failed to read raw NativeByteBuffer from file: " + file.getAbsolutePath());
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    public byte[] array() {
        if (!validateAndThrow()) {
            return null;
        }
        byte[] bArr = new byte[this.capacity];
        for (int i10 = 0; i10 < this.capacity; i10++) {
            try {
                bArr[i10] = callGetInt(this.pointer, i10);
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
        return bArr;
    }

    @Override
    public int bytesPerItem() {
        return 1;
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
        validateAndThrow();
        setGarbage();
        bufferCleaner.b(this);
    }

    public boolean equalsNative(NativeByteBuffer buffer) {
        if (buffer == null) {
            return false;
        }
        if (this.isNative) {
            return callEquals(this.pointer, buffer.pointer);
        }
        if (this.capacity != buffer.capacity) {
            return false;
        }
        if (buffer.isNative) {
            for (int i10 = 0; i10 < this.capacity; i10++) {
                if (this.buffer.get(i10) != buffer.get(i10)) {
                    return false;
                }
            }
            return true;
        }
        for (int i11 = 0; i11 < this.capacity; i11++) {
            if (this.buffer.get(i11) != buffer.buffer.get(i11)) {
                return false;
            }
        }
        return true;
    }

    public byte get(int index) {
        if (!validateAndThrow()) {
            return (byte) 0;
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
            return (byte) 0;
        }
    }

    @Override
    public byte getAsByte(int index) {
        return get(index);
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

    public boolean isNormalizeOGL() {
        return this.normalizeOGL;
    }

    public boolean isVboEnabled() {
        return this.vboEnabled;
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.pointer);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public void position(int position) {
        this.position = position;
    }

    public void put(byte value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    callSetByte(this.pointer, i10, value);
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

    public void saveRawToFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (nativeSaveRawToFile(file.getAbsolutePath())) {
            return;
        }
        throw new RuntimeException("Failed to save raw NativeByteBuffer to file: " + file.getAbsolutePath());
    }

    public void saveToFile(File file) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (nativeSaveToFile(file.getAbsolutePath())) {
            return;
        }
        throw new RuntimeException("Failed to save NativeByteBuffer to file: " + file.getAbsolutePath());
    }

    public void set(int index, byte value) {
        if (validateAndThrow()) {
            if (index >= this.capacity) {
                throw new IndexOutOfBoundsException("index cant be >= capacity");
            }
            if (index < 0) {
                throw new IndexOutOfBoundsException("index cant be < 0");
            }
            try {
                callSetByte(this.pointer, index, value);
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void setAsByte(int index, byte value) {
        set(index, value);
    }

    @Override
    public void setAsDouble(int index, double value) {
        set(index, (byte) value);
    }

    @Override
    public void setAsFloat(int index, float value) {
        set(index, (byte) value);
    }

    @Override
    public void setAsInt(int index, int value) {
        set(index, (byte) value);
    }

    @Override
    public void setAsShort(int index, short value) {
        set(index, (byte) value);
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

    @Override
    public void setNormalizeOGL(boolean z10) {
        this.normalizeOGL = z10;
        callSetNormalizeEnabled(this.pointer, z10 ? 1 : 0);
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRuntime(JAVARuntime.NativeByteBuffer run) {
        this.run = run;
    }

    public void setVboEnabled(boolean z10) {
        if (this.vboEnabled != z10) {
            callSetVBOEnabled(this.pointer, z10 ? 1 : 0);
        }
        this.vboEnabled = z10;
    }

    public JAVARuntime.NativeByteBuffer toJAVARuntime() {
        JAVARuntime.NativeByteBuffer nativeByteBuffer = this.run;
        if (nativeByteBuffer != null) {
            return nativeByteBuffer;
        }
        JAVARuntime.NativeByteBuffer nativeByteBuffer2 = new JAVARuntime.NativeByteBuffer(this);
        this.run = nativeByteBuffer2;
        return nativeByteBuffer2;
    }

    public static long getCriticalDirectCppPointer(NativeByteBuffer buffer, long failCase) {
        return buffer == null ? failCase : buffer.getCriticalDirectCppPointer();
    }

    public void put(byte[] value) {
        if (validateAndThrow()) {
            int i10 = this.position;
            if (i10 >= this.capacity) {
                throw new IndexOutOfBoundsException("position cant be >= capacity");
            }
            if (i10 >= 0) {
                try {
                    for (byte b10 : value) {
                        callSetByte(this.pointer, this.position, b10);
                    }
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

    public NativeByteBuffer(int capacity) {
        this.capacity = 0;
        this.vboEnabled = true;
        if (capacity > 0) {
            this.capacity = capacity;
            long callTryCreate = callTryCreate();
            this.pointer = callTryCreate;
            if (callAllocBuffer(callTryCreate, capacity) >= 0) {
                this.isNative = true;
                bufferCleaner.a(new c(this, this.pointer));
                return;
            }
            throw new OutOfNativeMemoryError("Can't allocate buffer");
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public void put(ByteBuffer value) {
        if (value != null) {
            if (validateAndThrow()) {
                int i10 = this.position;
                if (i10 >= this.capacity) {
                    throw new IndexOutOfBoundsException("position cant be >= capacity");
                }
                if (i10 >= 0) {
                    ByteBuffer duplicate = value.duplicate();
                    if (this.position + duplicate.remaining() <= this.capacity) {
                        while (duplicate.hasRemaining()) {
                            try {
                                callSetByte(this.pointer, this.position, duplicate.get());
                                this.position++;
                            } catch (RuntimeException e10) {
                                e10.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    throw new IndexOutOfBoundsException("position + remaining cant be > capacity");
                }
                throw new IndexOutOfBoundsException("position cant be < 0");
            }
            return;
        }
        throw new NullPointerException("value can't be null");
    }
}
