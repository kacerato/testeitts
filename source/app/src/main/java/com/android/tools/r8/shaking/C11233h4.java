package com.android.tools.r8.shaking;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public final class C11233h4 extends Exception implements Diagnostic {

    public final String f57365b;

    public final String f57366c;

    public final Origin f57367d;

    public final Position f57368e;

    public C11233h4(String str, String str2, Origin origin, Position position) {
        this.f57365b = str;
        this.f57366c = str2;
        this.f57367d = origin;
        this.f57368e = position;
    }

    @Override
    public final String getDiagnosticMessage() {
        return this.f57365b + " at " + this.f57366c;
    }

    @Override
    public final String getMessage() {
        return this.f57365b + " at " + this.f57366c;
    }

    @Override
    public final Origin getOrigin() {
        return this.f57367d;
    }

    @Override
    public final Position getPosition() {
        return this.f57368e;
    }
}
