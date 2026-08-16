package com.itsmagic.engine.Engines.Sound.Imported;

import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import java.io.File;
import java.io.IOException;

public final class f {

    public static final class a {

        public final d.b f81463a;

        public final NativeShortBuffer f81464b;

        public a(d.b preparedAudio, NativeShortBuffer pcmData) {
            this.f81463a = preparedAudio;
            this.f81464b = pcmData;
        }
    }

    public static a a(d.b preparedAudio) {
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(preparedAudio.f81448b.pcmFrames);
        ImportedAudioNative.a(preparedAudio.f81447a.b().getAbsolutePath(), preparedAudio.f81449c, nativeShortBuffer, preparedAudio.f81448b.pcmFrames);
        return new a(preparedAudio, nativeShortBuffer);
    }

    public static a b(File ioFile) throws IOException {
        return a(d.c(ioFile));
    }

    public static a c(String logicalPath) throws IOException {
        return a(d.d(logicalPath));
    }
}
