package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class AssumeValuesMissingStaticFieldDiagnostic implements Diagnostic {

    private final M2 f36027b;

    private final L2 f36028c;

    private final Origin f36029d;

    private final Position f36030e;

    @Override
    public String getDiagnosticMessage() {
        return "The field " + this.f36027b.D0() + "." + ((Object) this.f36028c) + " is used as the return value in an -assumenosideeffects or -assumevalues rule, but no such static field exists.";
    }

    @Override
    public Origin getOrigin() {
        return this.f36029d;
    }

    @Override
    public Position getPosition() {
        return this.f36030e;
    }

    private AssumeValuesMissingStaticFieldDiagnostic(M2 m22, L2 l22, Origin origin, Position position) {
        this.f36027b = m22;
        this.f36028c = l22;
        this.f36029d = origin;
        this.f36030e = position;
    }
}
