package com.android.tools.r8.errors;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;

public class IgnoredBackportMethodDiagnostic implements DesugarDiagnostic {

    private final AbstractC4744v2 f36051b;

    private final Origin f36052c;

    private final Position f36053d;

    private final int f36054e;

    public IgnoredBackportMethodDiagnostic(AbstractC4744v2<?, ?> abstractC4744v2, Origin origin, Position position, int i10) {
        this.f36051b = abstractC4744v2;
        this.f36052c = origin;
        this.f36053d = position;
        this.f36054e = i10;
    }

    public int getConfiguredMinApiLevel() {
        return this.f36054e;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Ignored reference to backport " + this.f36051b.j0() + ". The compiler is compiling for min-api " + this.f36054e + " which includes runtimes that do not support " + this.f36051b.j0() + " but this method will be retained as is (i.e., it is not backported).";
    }

    public FieldReference getIgnoredBackportField() {
        if (this.f36051b.p0()) {
            return this.f36051b.l0().v0();
        }
        return null;
    }

    public MethodReference getIgnoredBackportMethod() {
        if (this.f36051b.r0()) {
            return this.f36051b.n0().v0();
        }
        return null;
    }

    @Override
    public Origin getOrigin() {
        return this.f36052c;
    }

    @Override
    public Position getPosition() {
        return this.f36053d;
    }
}
