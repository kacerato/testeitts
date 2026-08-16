package com.android.tools.r8.retrace;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.Version;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class RetraceUnknownMapVersionDiagnostic implements Diagnostic {

    private final String f56310b;

    private RetraceUnknownMapVersionDiagnostic(String str) {
        this.f56310b = str;
    }

    public static RetraceUnknownMapVersionDiagnostic create(String str) {
        return new RetraceUnknownMapVersionDiagnostic(str);
    }

    @Override
    public String getDiagnosticMessage() {
        return "Map version '" + this.f56310b + "' is unknown or introduced later than retrace version '" + Version.getVersionString() + "'.";
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
