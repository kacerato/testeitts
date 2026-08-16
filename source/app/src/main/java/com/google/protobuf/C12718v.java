package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public final class C12718v {

    public static final int f69583a = 1024;

    public static final int f69584b = 16384;

    public static final float f69585c = 0.5f;

    public static final ThreadLocal<SoftReference<byte[]>> f69586d = new ThreadLocal<>();

    public static final Class<?> f69587e;

    public static final long f69588f;

    static {
        Class<?> f10 = f("java.io.FileOutputStream");
        f69587e = f10;
        f69588f = c(f10);
    }

    public static void a() {
        f69586d.set(null);
    }

    public static byte[] b() {
        SoftReference<byte[]> softReference = f69586d.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public static long c(Class<?> clazz) {
        if (clazz == null) {
            return -1L;
        }
        try {
            if (x2.U()) {
                return x2.Z(clazz.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static byte[] d(int requestedSize) {
        int max = Math.max(requestedSize, 1024);
        byte[] b10 = b();
        if (b10 == null || e(max, b10.length)) {
            b10 = new byte[max];
            if (max <= 16384) {
                g(b10);
            }
        }
        return b10;
    }

    public static boolean e(int requestedSize, int bufferLength) {
        return bufferLength < requestedSize && ((float) bufferLength) < ((float) requestedSize) * 0.5f;
    }

    public static Class<?> f(String className) {
        try {
            return Class.forName(className);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static void g(byte[] value) {
        f69586d.set(new SoftReference<>(value));
    }

    public static void h(ByteBuffer buffer, OutputStream output) throws IOException {
        int position = buffer.position();
        try {
            if (buffer.hasArray()) {
                output.write(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.remaining());
            } else if (!i(buffer, output)) {
                byte[] d10 = d(buffer.remaining());
                while (buffer.hasRemaining()) {
                    int min = Math.min(buffer.remaining(), d10.length);
                    buffer.get(d10, 0, min);
                    output.write(d10, 0, min);
                }
            }
            F0.e(buffer, position);
        } catch (Throwable th2) {
            F0.e(buffer, position);
            throw th2;
        }
    }

    public static boolean i(ByteBuffer buffer, OutputStream output) throws IOException {
        WritableByteChannel writableByteChannel;
        long j10 = f69588f;
        if (j10 < 0 || !f69587e.isInstance(output)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) x2.Q(output, j10);
        } catch (ClassCastException unused) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(buffer);
        return true;
    }
}
