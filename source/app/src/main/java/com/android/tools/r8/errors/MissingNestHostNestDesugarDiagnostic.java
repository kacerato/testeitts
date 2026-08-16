package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class MissingNestHostNestDesugarDiagnostic extends NestDesugarDiagnostic {
    public MissingNestHostNestDesugarDiagnostic(Origin origin, Position position, String str) {
        super(origin, position, str);
    }
}
