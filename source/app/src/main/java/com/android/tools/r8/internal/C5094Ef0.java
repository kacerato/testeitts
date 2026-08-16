package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;

public class C5094Ef0 implements DiagnosticsHandler {

    public final DiagnosticsHandler f39967a;

    public final ArrayList f39968b;

    public C7348g f39969c;

    public C5094Ef0() {
        this(new C4920Bf0());
    }

    public final void a(DiagnosticsLevel diagnosticsLevel, Diagnostic diagnostic) {
        if (diagnosticsLevel != null) {
            DiagnosticsLevel modifyDiagnosticsLevel = this.f39967a.modifyDiagnosticsLevel(diagnosticsLevel, diagnostic);
            if (modifyDiagnosticsLevel != null) {
                diagnosticsLevel = modifyDiagnosticsLevel;
            }
            ArrayList arrayList = this.f39968b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                diagnosticsLevel = ((C5036Df0) obj).a(diagnosticsLevel, diagnostic);
            }
        } else {
            diagnosticsLevel = DiagnosticsLevel.ERROR;
        }
        int i11 = AbstractC4978Cf0.f39306a[diagnosticsLevel.ordinal()];
        if (i11 == 1) {
            this.f39967a.info(diagnostic);
            return;
        }
        if (i11 == 2) {
            this.f39967a.warning(diagnostic);
        } else if (i11 != 3) {
            if (i11 != 4) {
                throw new C5417Jv0();
            }
        } else {
            this.f39969c = new C7348g(diagnostic);
            this.f39967a.error(diagnostic);
        }
    }

    public RuntimeException b(String str) {
        a(null, new StringDiagnostic(str));
        throw this.f39969c;
    }

    public void c(String str) {
        warning(new StringDiagnostic(str));
    }

    @Override
    public synchronized void error(Diagnostic diagnostic) {
        a(DiagnosticsLevel.ERROR, diagnostic);
    }

    @Override
    public final synchronized void info(Diagnostic diagnostic) {
        a(DiagnosticsLevel.INFO, diagnostic);
    }

    @Override
    public final DiagnosticsLevel modifyDiagnosticsLevel(DiagnosticsLevel diagnosticsLevel, Diagnostic diagnostic) {
        return this.f39967a.modifyDiagnosticsLevel(diagnosticsLevel, diagnostic);
    }

    @Override
    public synchronized void warning(Diagnostic diagnostic) {
        a(DiagnosticsLevel.WARNING, diagnostic);
    }

    public C5094Ef0(DiagnosticsHandler diagnosticsHandler) {
        this.f39968b = new ArrayList();
        this.f39969c = null;
        this.f39967a = diagnosticsHandler;
    }

    public void a(String str) {
        error(new StringDiagnostic(str));
    }

    public synchronized void a() {
        if (this.f39969c != null) {
            throw new RuntimeException(this.f39969c);
        }
    }
}
