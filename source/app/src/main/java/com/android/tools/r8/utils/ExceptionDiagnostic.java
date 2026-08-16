package com.android.tools.r8.utils;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class ExceptionDiagnostic implements Diagnostic {

    static final boolean f58541e = true;

    private final Throwable f58542b;

    private final Origin f58543c;

    private final Position f58544d;

    public ExceptionDiagnostic(Throwable th2, Origin origin, Position position) {
        boolean z10 = f58541e;
        if (!z10 && th2 == null) {
            throw new AssertionError();
        }
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && position == null) {
            throw new AssertionError();
        }
        this.f58542b = th2;
        this.f58543c = origin;
        this.f58544d = position;
    }

    public Throwable getCause() {
        return this.f58542b;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f58542b.toString();
    }

    @Override
    public Origin getOrigin() {
        return this.f58543c;
    }

    @Override
    public Position getPosition() {
        return this.f58544d;
    }

    public ExceptionDiagnostic(Throwable th2) {
        this(th2, Origin.unknown(), Position.UNKNOWN);
    }

    public ExceptionDiagnostic(Throwable th2, Origin origin) {
        this(th2, origin, Position.UNKNOWN);
    }

    public ExceptionDiagnostic(ResourceException resourceException) {
        this(resourceException, resourceException.getOrigin());
    }
}
