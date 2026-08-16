package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import java.nio.file.Path;

public final class C10686b extends StringConsumer.FileConsumer {
    public C10686b(Path path) {
        super(path);
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        super.accept(str, diagnosticsHandler);
        super.accept(System.lineSeparator(), diagnosticsHandler);
    }
}
