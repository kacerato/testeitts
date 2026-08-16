package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class IncompleteNestNestDesugarDiagnosic extends NestDesugarDiagnostic {
    public IncompleteNestNestDesugarDiagnosic(Origin origin, Position position, String str) {
        super(origin, position, str);
    }
}
