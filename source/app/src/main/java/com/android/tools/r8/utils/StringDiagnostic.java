package com.android.tools.r8.utils;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class StringDiagnostic implements Diagnostic {

    static final boolean f58561e = true;

    private final Origin f58562b;

    private final Position f58563c;

    private final String f58564d;

    public StringDiagnostic(String str) {
        this(str, Origin.unknown());
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f58564d;
    }

    @Override
    public Origin getOrigin() {
        return this.f58562b;
    }

    @Override
    public Position getPosition() {
        return this.f58563c;
    }

    public StringDiagnostic(String str, Origin origin) {
        this(str, origin, Position.UNKNOWN);
    }

    public StringDiagnostic(String str, Origin origin, Position position) {
        boolean z10 = f58561e;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && position == null) {
            throw new AssertionError();
        }
        this.f58562b = origin;
        this.f58563c = position;
        this.f58564d = str;
    }
}
