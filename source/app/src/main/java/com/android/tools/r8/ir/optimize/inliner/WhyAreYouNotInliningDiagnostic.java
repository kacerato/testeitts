package com.android.tools.r8.ir.optimize.inliner;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class WhyAreYouNotInliningDiagnostic implements Diagnostic {

    private final Origin f54881b;

    private final String f54882c;

    public WhyAreYouNotInliningDiagnostic(Origin origin, String str) {
        this.f54881b = origin;
        this.f54882c = str;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f54882c;
    }

    @Override
    public Origin getOrigin() {
        return this.f54881b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
