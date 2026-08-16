package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class ConstantDynamicDesugarDiagnostic implements DesugarDiagnostic {

    private final Origin f36037b;

    private final Position f36038c;

    private final String f36039d;

    public ConstantDynamicDesugarDiagnostic(Origin origin, Position position, String str) {
        this.f36037b = origin;
        this.f36038c = position;
        this.f36039d = str;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f36039d;
    }

    @Override
    public Origin getOrigin() {
        return this.f36037b;
    }

    @Override
    public Position getPosition() {
        return this.f36038c;
    }
}
