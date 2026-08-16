package com.android.tools.r8.diagnostic;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class R8VersionDiagnostic implements Diagnostic {
    @Override
    public String getDiagnosticMessage() {
        return "Running R8 version 8.10.21 with assertions enabled.";
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
