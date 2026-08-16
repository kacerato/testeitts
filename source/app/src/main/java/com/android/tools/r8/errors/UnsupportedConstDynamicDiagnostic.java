package com.android.tools.r8.errors;

import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class UnsupportedConstDynamicDiagnostic extends UnsupportedFeatureDiagnostic {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsupportedConstDynamicDiagnostic(Origin origin, Position position) {
        super("const-dynamic", null, origin, position);
        boolean z10 = C8570nJ.f50578e2;
    }

    @Override
    public String getDiagnosticMessage() {
        boolean z10 = C8570nJ.f50578e2;
        return UnsupportedFeatureDiagnostic.makeMessage(null, "const-dynamic", getPosition().toString());
    }
}
