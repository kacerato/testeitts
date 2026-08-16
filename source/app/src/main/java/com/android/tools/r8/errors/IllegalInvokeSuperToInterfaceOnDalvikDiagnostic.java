package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C7598hX;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;

public class IllegalInvokeSuperToInterfaceOnDalvikDiagnostic implements Diagnostic {

    private final MethodReference f36055b;

    private final MethodReference f36056c;

    private final Origin f36057d;

    public IllegalInvokeSuperToInterfaceOnDalvikDiagnostic(MethodReference methodReference, MethodReference methodReference2, Origin origin) {
        this.f36055b = methodReference;
        this.f36056c = methodReference2;
        this.f36057d = origin;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Verification error in `" + C7598hX.b(this.f36055b) + "`: Illegal invoke-super to interface method `" + C7598hX.b(this.f36056c) + "` on Dalvik (Android 4).";
    }

    @Override
    public Origin getOrigin() {
        return this.f36057d;
    }

    @Override
    public Position getPosition() {
        return MethodPosition.create(this.f36055b);
    }
}
