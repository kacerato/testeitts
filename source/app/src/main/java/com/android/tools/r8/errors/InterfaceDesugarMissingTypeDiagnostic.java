package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.ClassReference;

public class InterfaceDesugarMissingTypeDiagnostic implements DesugarDiagnostic {

    static final boolean f36060g = true;

    private final Origin f36061b;

    private final Position f36062c;

    private final ClassReference f36063d;

    private final ClassReference f36064e;

    private final ClassReference f36065f;

    public InterfaceDesugarMissingTypeDiagnostic(Origin origin, Position position, ClassReference classReference, ClassReference classReference2, ClassReference classReference3) {
        boolean z10 = f36060g;
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && position == null) {
            throw new AssertionError();
        }
        if (!z10 && classReference == null) {
            throw new AssertionError();
        }
        if (!z10 && classReference2 == null) {
            throw new AssertionError();
        }
        this.f36061b = origin;
        this.f36062c = position;
        this.f36063d = classReference;
        this.f36064e = classReference2;
        this.f36065f = classReference3;
    }

    public ClassReference getContextType() {
        return this.f36064e;
    }

    @Override
    public String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder("Type `");
        sb2.append(this.f36063d.getTypeName());
        sb2.append("` was not found, it is required for default or static interface methods desugaring of `");
        Position position = this.f36062c;
        if (position != Position.UNKNOWN) {
            sb2.append(position.getDescription());
        } else {
            sb2.append(this.f36064e.getTypeName());
        }
        sb2.append("`");
        if (this.f36065f != null) {
            sb2.append(" This missing interface is declared in the direct hierarchy of `");
            sb2.append((Object) this.f36065f);
            sb2.append("`");
        }
        return sb2.toString();
    }

    public ClassReference getMissingType() {
        return this.f36063d;
    }

    @Override
    public Origin getOrigin() {
        return this.f36061b;
    }

    @Override
    public Position getPosition() {
        return this.f36062c;
    }
}
