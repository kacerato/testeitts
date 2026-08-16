package com.android.tools.r8;

import com.android.tools.r8.StringConsumer;
import java.nio.file.Path;

public final class C4329e extends StringConsumer.FileConsumer {
    public C4329e(Path path) {
        super(path);
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        super.accept(str, diagnosticsHandler);
        super.accept(System.lineSeparator(), diagnosticsHandler);
    }
}
