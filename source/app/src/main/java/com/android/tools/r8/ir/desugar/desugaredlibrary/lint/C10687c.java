package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;

public final class C10687c implements StringConsumer {
    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        System.out.println(str);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
