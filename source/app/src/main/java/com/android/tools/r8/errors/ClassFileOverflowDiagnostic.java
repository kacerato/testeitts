package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public abstract class ClassFileOverflowDiagnostic implements Diagnostic {

    private final Origin f36033b;

    public ClassFileOverflowDiagnostic(Origin origin) {
        this.f36033b = origin;
    }

    @Override
    public Origin getOrigin() {
        return this.f36033b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
