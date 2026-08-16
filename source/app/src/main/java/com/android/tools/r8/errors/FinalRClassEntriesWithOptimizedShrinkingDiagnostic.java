package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class FinalRClassEntriesWithOptimizedShrinkingDiagnostic implements Diagnostic {

    private final Origin f36049b;

    private final C4554l1 f36050c;

    public FinalRClassEntriesWithOptimizedShrinkingDiagnostic(Origin origin, C4554l1 c4554l1) {
        this.f36049b = origin;
        this.f36050c = c4554l1;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Running optimized resource shrinking with final R class ids is not supported and can lead to missing resources and code necessary for program execution. Field " + ((Object) this.f36050c) + " is final";
    }

    @Override
    public Origin getOrigin() {
        return this.f36049b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
