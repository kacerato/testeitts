package com.android.tools.r8.graph;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;

public final class H implements Diagnostic {

    public final Origin f36358b;

    public final MethodPosition f36359c;

    public final String f36360d;

    public H(H5 h52, String str) {
        this.f36358b = h52.f36317b.f36244d;
        this.f36359c = new MethodPosition(h52.w());
        this.f36360d = str;
    }

    @Override
    public final String getDiagnosticMessage() {
        return this.f36360d;
    }

    @Override
    public final Origin getOrigin() {
        return this.f36358b;
    }

    @Override
    public final Position getPosition() {
        return this.f36359c;
    }
}
