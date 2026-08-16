package com.itsmagic.engine.Engines.Sound.Native;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public final class AudioUtils {
    static {
        System.loadLibrary("audio-utils");
    }

    public static int a(int inputSize, int inputSampleRate, int outputSampleRate) {
        if (inputSize <= 0) {
            return 0;
        }
        return (inputSampleRate <= 0 || outputSampleRate <= 0 || inputSampleRate == outputSampleRate) ? inputSize : Math.max(1, (int) (inputSize * (outputSampleRate / inputSampleRate)));
    }

    public static NativeFloatBuffer b(NativeFloatBuffer input, int inputSampleRate, int outputSampleRate) {
        if (input == null) {
            throw new NullPointerException("input can't be null");
        }
        if (inputSampleRate <= 0 || outputSampleRate <= 0 || inputSampleRate == outputSampleRate) {
            return input;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(a(input.capacity(), inputSampleRate, outputSampleRate));
        d(input, nativeFloatBuffer, inputSampleRate, outputSampleRate);
        return nativeFloatBuffer;
    }

    public static NativeShortBuffer c(NativeShortBuffer input, int inputSampleRate, int outputSampleRate) {
        if (input == null) {
            throw new NullPointerException("input can't be null");
        }
        if (inputSampleRate <= 0 || outputSampleRate <= 0 || inputSampleRate == outputSampleRate) {
            return input;
        }
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(a(input.capacity(), inputSampleRate, outputSampleRate));
        e(input, nativeShortBuffer, inputSampleRate, outputSampleRate);
        return nativeShortBuffer;
    }

    public static void d(NativeFloatBuffer input, NativeFloatBuffer output, int inputSampleRate, int outputSampleRate) {
        if (input == null) {
            throw new NullPointerException("input can't be null");
        }
        if (output == null) {
            throw new NullPointerException("output can't be null");
        }
        nativeResample(NativeFloatBuffer.getCriticalDirectCppPointer(input, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(output, 0L), inputSampleRate, outputSampleRate);
        output.position(0);
    }

    public static void e(NativeShortBuffer input, NativeShortBuffer output, int inputSampleRate, int outputSampleRate) {
        if (input == null) {
            throw new NullPointerException("input can't be null");
        }
        if (output == null) {
            throw new NullPointerException("output can't be null");
        }
        nativeResampleShort(NativeShortBuffer.getCriticalDirectCppPointer(input, 0L), NativeShortBuffer.getCriticalDirectCppPointer(output, 0L), inputSampleRate, outputSampleRate);
        output.position(0);
    }

    private static native void nativeResample(long inputPointer, long outputPointer, int inputSampleRate, int outputSampleRate);

    private static native void nativeResampleShort(long inputPointer, long outputPointer, int inputSampleRate, int outputSampleRate);
}
