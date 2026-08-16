package com.android.tools.r8;

import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.io.Writer;

public final class C11650u0 extends StringConsumer.ForwardingConsumer {

    public final PathOrigin f58523b;

    public final Writer f58524c;

    public C11650u0(PathOrigin pathOrigin, Writer writer) {
        super(null);
        this.f58523b = pathOrigin;
        this.f58524c = writer;
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        super.accept(str, diagnosticsHandler);
        try {
            this.f58524c.write(str);
        } catch (IOException e10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e10, this.f58523b));
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        try {
            this.f58524c.close();
        } catch (IOException e10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e10, this.f58523b));
        }
    }
}
