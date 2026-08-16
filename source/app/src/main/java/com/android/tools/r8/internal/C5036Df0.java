package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsLevel;

public final class C5036Df0 {

    public final DiagnosticsLevel f39583a;

    public final DiagnosticsLevel f39584b;

    public final String f39585c;

    public C5036Df0(DiagnosticsLevel diagnosticsLevel, DiagnosticsLevel diagnosticsLevel2, String str) {
        this.f39583a = diagnosticsLevel;
        this.f39584b = diagnosticsLevel2;
        this.f39585c = str;
    }

    public final DiagnosticsLevel a(DiagnosticsLevel diagnosticsLevel, Diagnostic diagnostic) {
        if (diagnosticsLevel != this.f39583a) {
            return diagnosticsLevel;
        }
        if (this.f39585c.length() == 0 || this.f39585c.equals(diagnostic.getClass().getSimpleName()) || this.f39585c.equals(diagnostic.getClass().getTypeName())) {
            return this.f39584b;
        }
        for (Class<?> cls : diagnostic.getClass().getInterfaces()) {
            if (this.f39585c.equals(cls.getSimpleName()) || this.f39585c.equals(cls.getTypeName())) {
                return this.f39584b;
            }
        }
        return diagnosticsLevel;
    }
}
