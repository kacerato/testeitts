package com.android.tools.r8.retrace;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;

public class RetraceInvalidStackTraceLineDiagnostics implements Diagnostic {

    private final int f56298b;

    private RetraceInvalidStackTraceLineDiagnostics(int i10) {
        this.f56298b = i10;
    }

    public static RetraceInvalidStackTraceLineDiagnostics createNull(int i10) {
        return new RetraceInvalidStackTraceLineDiagnostics(i10);
    }

    @Override
    public String getDiagnosticMessage() {
        return "The stack trace line is <null>";
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return new TextPosition(0L, this.f56298b, -1);
    }
}
