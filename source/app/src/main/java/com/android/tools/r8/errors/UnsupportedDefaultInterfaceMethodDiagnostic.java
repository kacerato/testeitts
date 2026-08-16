package com.android.tools.r8.errors;

import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class UnsupportedDefaultInterfaceMethodDiagnostic extends UnsupportedFeatureDiagnostic {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsupportedDefaultInterfaceMethodDiagnostic(Origin origin, Position position) {
        super("default-interface-method", C2.N, origin, position);
        boolean z10 = C8570nJ.f50578e2;
    }

    @Override
    public String getDiagnosticMessage() {
        boolean z10 = C8570nJ.f50578e2;
        return UnsupportedFeatureDiagnostic.makeMessage(C2.N, "Default interface methods", getPosition().toString());
    }
}
