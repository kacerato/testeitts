package com.google.android.filament;

import androidx.annotation.NonNull;
import com.google.android.filament.proguard.UsedByNative;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

@UsedByNative("NioUtils.cpp")
final class NioUtils {

    public enum a {
        BYTE,
        CHAR,
        SHORT,
        INT,
        LONG,
        FLOAT,
        DOUBLE
    }

    private NioUtils() {
    }

    @UsedByNative("NioUtils.cpp")
    public static Object getBaseArray(@NonNull Buffer buffer) {
        if (buffer.hasArray()) {
            return buffer.array();
        }
        return null;
    }

    @UsedByNative("NioUtils.cpp")
    public static int getBaseArrayOffset(@NonNull Buffer buffer, int i10) {
        if (buffer.hasArray()) {
            return (buffer.arrayOffset() + buffer.position()) << i10;
        }
        return 0;
    }

    @UsedByNative("NioUtils.cpp")
    public static long getBasePointer(@NonNull Buffer buffer, long j10, int i10) {
        if (j10 != 0) {
            return (buffer.position() << i10) + j10;
        }
        return 0L;
    }

    @UsedByNative("NioUtils.cpp")
    public static int getBufferType(@NonNull Buffer buffer) {
        return buffer instanceof ByteBuffer ? a.BYTE.ordinal() : buffer instanceof CharBuffer ? a.CHAR.ordinal() : buffer instanceof ShortBuffer ? a.SHORT.ordinal() : buffer instanceof IntBuffer ? a.INT.ordinal() : buffer instanceof LongBuffer ? a.LONG.ordinal() : buffer instanceof FloatBuffer ? a.FLOAT.ordinal() : a.DOUBLE.ordinal();
    }
}
