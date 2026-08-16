package com.android.tools.r8.retrace;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class RetraceInvalidRewriteFrameDiagnostics implements Diagnostic {

    private final int f56296b;

    private final String f56297c;

    private RetraceInvalidRewriteFrameDiagnostics(int i10, String str) {
        this.f56296b = i10;
        this.f56297c = str;
    }

    public static RetraceInvalidRewriteFrameDiagnostics create(int i10, String str) {
        return new RetraceInvalidRewriteFrameDiagnostics(i10, str);
    }

    @Override
    public String getDiagnosticMessage() {
        return "Cannot remove " + this.f56296b + " frames from the retraced output of " + this.f56297c + " because it exceeds the number of retraced frames";
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
