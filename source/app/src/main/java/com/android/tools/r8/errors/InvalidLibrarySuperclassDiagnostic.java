package com.android.tools.r8.errors;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import java.util.List;

public class InvalidLibrarySuperclassDiagnostic implements DesugarDiagnostic {

    static final boolean f36066g = true;

    private final Origin f36067b;

    private final List f36068c;

    private final ClassReference f36069d;

    private final ClassReference f36070e;

    private final String f36071f;

    public InvalidLibrarySuperclassDiagnostic(Origin origin, ClassReference classReference, ClassReference classReference2, String str, List<MethodReference> list) {
        boolean z10 = f36066g;
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && classReference == null) {
            throw new AssertionError();
        }
        if (!z10 && classReference2 == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        this.f36067b = origin;
        this.f36069d = classReference;
        this.f36070e = classReference2;
        this.f36071f = str;
        this.f36068c = list;
    }

    @Override
    public String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Superclass `");
        sb2.append(this.f36070e.getTypeName());
        sb2.append("` of library class `");
        sb2.append(this.f36069d.getTypeName());
        sb2.append("` is ");
        sb2.append(this.f36071f);
        sb2.append(". A superclass of a library class should be a library class. This is required for the desugaring of ");
        C10656zq0.a(sb2, this.f36068c, ", ", C10656zq0.a.f54552e);
        return sb2.toString();
    }

    @Override
    public Origin getOrigin() {
        return this.f36067b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
