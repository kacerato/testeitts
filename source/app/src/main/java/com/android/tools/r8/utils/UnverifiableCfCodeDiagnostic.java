package com.android.tools.r8.utils;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C7598hX;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;

public class UnverifiableCfCodeDiagnostic implements Diagnostic {

    private final MethodReference f58569b;

    private final int f58570c;

    private final String f58571d;

    private final Origin f58572e;

    public UnverifiableCfCodeDiagnostic(MethodReference methodReference, int i10, String str, Origin origin) {
        this.f58569b = methodReference;
        this.f58570c = i10;
        this.f58571d = str;
        this.f58572e = origin;
    }

    @Override
    public String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder("Unverifiable code in `");
        sb2.append(C7598hX.b(this.f58569b));
        sb2.append("`");
        if (this.f58570c >= 0) {
            sb2.append(" at instruction ");
            sb2.append(this.f58570c);
        }
        sb2.append(": ");
        sb2.append(this.f58571d);
        sb2.append(".");
        return sb2.toString();
    }

    @Override
    public Origin getOrigin() {
        return this.f58572e;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
