package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class NestDesugarDiagnostic implements DesugarDiagnostic {

    private final Origin f36072b;

    private final Position f36073c;

    private final String f36074d;

    public NestDesugarDiagnostic(Origin origin, Position position, String str) {
        this.f36072b = origin;
        this.f36073c = position;
        this.f36074d = str;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f36074d;
    }

    @Override
    public Origin getOrigin() {
        return this.f36072b;
    }

    @Override
    public Position getPosition() {
        return this.f36073c;
    }
}
