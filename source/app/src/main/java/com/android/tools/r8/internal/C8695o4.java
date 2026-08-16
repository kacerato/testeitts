package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.TextOutputStream;
import com.android.tools.r8.profile.art.ArtProfileConsumer;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Path;

public final class C8695o4 implements ArtProfileConsumer {

    public final Path f51161a;

    public C8695o4(Path path) {
        this.f51161a = path;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }

    @Override
    public final TextOutputStream getHumanReadableArtProfileConsumer() {
        try {
            return new C5936Su0(this.f51161a);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }
}
