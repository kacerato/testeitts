package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.inspector.FieldInspector;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;
import java.util.Optional;

public final class C7503gw implements FieldInspector {

    public final C6779cd f48387a;

    public final C4460g1 f48388b;

    public FieldReference f48389c = null;

    public C7503gw(C6779cd c6779cd, C4460g1 c4460g1) {
        this.f48387a = c6779cd;
        this.f48388b = c4460g1;
    }

    @Override
    public final FieldReference getFieldReference() {
        if (this.f48389c == null) {
            this.f48389c = Reference.field(this.f48387a.getClassReference(), this.f48388b.getReference().f38298g.toString(), Reference.typeFromDescriptor(this.f48388b.getReference().f37449i.V0()));
        }
        return this.f48389c;
    }

    @Override
    public final Optional getInitialValue() {
        return (!this.f48388b.w0() || this.f48388b.K0() == null) ? Optional.empty() : Optional.of(new C5013Cw0(this.f48388b.K0(), this.f48388b.getReference().f37449i));
    }

    @Override
    public final boolean isFinal() {
        return this.f48388b.f37202g.e();
    }

    @Override
    public final boolean isStatic() {
        return this.f48388b.f37202g.n();
    }
}
