package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.naming.C10912b;

public final class KU implements com.android.tools.r8.naming.Q {

    public final com.android.tools.r8.naming.Q f41685a;

    public final com.android.tools.r8.naming.Q f41686b;

    public KU(com.android.tools.r8.naming.Q q10, com.android.tools.r8.naming.Q q11) {
        this.f41685a = q10;
        this.f41686b = q11;
    }

    @Override
    public final void a(DiagnosticsHandler diagnosticsHandler, C10912b c10912b) {
        this.f41685a.a(diagnosticsHandler, c10912b);
        this.f41686b.a(diagnosticsHandler, c10912b);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f41685a.finished(diagnosticsHandler);
        this.f41686b.finished(diagnosticsHandler);
    }
}
