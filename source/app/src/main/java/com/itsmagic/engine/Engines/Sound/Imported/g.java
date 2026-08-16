package com.itsmagic.engine.Engines.Sound.Imported;

import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import java.io.File;
import java.io.IOException;

public final class g {

    public final d.b f81465a;

    public g(String logicalPath) throws IOException {
        this(d.d(logicalPath));
    }

    public d.b a() {
        return this.f81465a;
    }

    public int b(int startFrame, int requestedFrames, NativeShortBuffer outputBuffer) {
        if (outputBuffer == null) {
            throw new NullPointerException("outputBuffer can't be null");
        }
        int max = Math.max(0, startFrame);
        int max2 = Math.max(0, Math.min(requestedFrames, this.f81465a.f81448b.pcmFrames - max));
        if (max2 <= 0) {
            outputBuffer.position(0);
            return 0;
        }
        if (outputBuffer.capacity() >= max2) {
            return Math.max(0, ImportedAudioNative.b(this.f81465a.f81447a.b().getAbsolutePath(), this.f81465a.f81449c, max, max2, outputBuffer));
        }
        throw new IllegalArgumentException("outputBuffer capacity is smaller than requested frames");
    }

    public g(File ioFile) throws IOException {
        this(d.c(ioFile));
    }

    public g(d.b preparedAudio) {
        this.f81465a = preparedAudio;
    }
}
