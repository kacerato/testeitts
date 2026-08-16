package com.itsmagic.engine.Engines.Engine.Texture.Array;

import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import java.nio.ByteBuffer;

public final class NativeArrayTextureRGBA8 {

    public static final int f79584a = 0;

    public static final int f79585b = 1;

    static {
        System.loadLibrary("native-array-texture-rgba8");
    }

    public static void a(NativeByteBuffer outBuffer) {
        if (outBuffer == null) {
            throw new NullPointerException("outBuffer can't be null");
        }
        nativeClearBuffer(outBuffer.getNativeAllocationPointer(), outBuffer.capacity());
    }

    public static boolean b(String path, NativeByteBuffer outBuffer, int width, int height, int filter) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        if (outBuffer == null) {
            throw new NullPointerException("outBuffer can't be null");
        }
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException("Width and height must be greater than zero");
        }
        return nativeLoadExternalFileNative(path, outBuffer.getNativeAllocationPointer(), outBuffer.capacity(), width, height, filter);
    }

    public static boolean c(String path, ByteBuffer outBuffer, int width, int height, int filter) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        if (outBuffer == null) {
            throw new NullPointerException("outBuffer can't be null");
        }
        if (!outBuffer.isDirect()) {
            throw new IllegalArgumentException("outBuffer must be a direct ByteBuffer");
        }
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException("Width and height must be greater than zero");
        }
        return nativeLoadExternalFile(path, outBuffer, width, height, filter);
    }

    private static native void nativeClearBuffer(long outPointer, int outCapacity);

    private static native boolean nativeLoadExternalFile(String path, ByteBuffer outBuffer, int width, int height, int filter);

    private static native boolean nativeLoadExternalFileNative(String path, long outPointer, int outCapacity, int width, int height, int filter);
}
