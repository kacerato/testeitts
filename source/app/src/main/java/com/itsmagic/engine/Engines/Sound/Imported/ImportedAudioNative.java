package com.itsmagic.engine.Engines.Sound.Imported;

import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public final class ImportedAudioNative {
    static {
        System.loadLibrary("imported-audio-format");
    }

    public static void a(String filePath, int pcmOffsetBytes, NativeShortBuffer output, int shortCount) {
        nativeReadAll(filePath, pcmOffsetBytes, output.getCriticalDirectCppPointer(), shortCount);
        output.position(0);
    }

    public static int b(String filePath, int pcmOffsetBytes, int frameOffset, int frameCount, NativeShortBuffer output) {
        int nativeReadRange = nativeReadRange(filePath, pcmOffsetBytes, frameOffset, frameCount, output.getCriticalDirectCppPointer());
        output.position(0);
        return nativeReadRange;
    }

    private static native void nativeReadAll(String filePath, int pcmOffsetBytes, long outputPointer, int shortCount);

    private static native int nativeReadRange(String filePath, int pcmOffsetBytes, int frameOffset, int frameCount, long outputPointer);
}
