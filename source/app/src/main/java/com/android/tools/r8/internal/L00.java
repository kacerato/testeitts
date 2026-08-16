package com.android.tools.r8.internal;

import java.util.Set;

public class L00 extends AbstractC7696i40 {

    public static final boolean f41841c = true;

    public final Set f41842b;

    public L00(Set<com.android.tools.r8.graph.M2> set) {
        this.f41842b = set;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.E0 e02) {
        if (f41841c || e02.isInterface()) {
            return !this.f41842b.contains(e02.getType());
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a() {
        return this.f41842b.isEmpty();
    }

    @Override
    public final AbstractC7696i40 a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (AbstractC7696i40) c8659ns0.a("Rewrite NonEmptyOpenClosedInterfacesCollection", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return L00.this.a(abstractC5308Hz);
            }
        });
    }

    public final AbstractC7696i40 a(AbstractC5308Hz abstractC5308Hz) {
        Set b10 = C4875Al0.b(this.f41842b.size());
        for (com.android.tools.r8.graph.M2 m22 : this.f41842b) {
            abstractC5308Hz.getClass();
            b10.add(abstractC5308Hz.c(AbstractC5308Hz.g(), m22));
        }
        return new L00(b10);
    }

    @Override
    public final AbstractC7696i40 a(com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        if (!o52.a()) {
            return this;
        }
        c8659ns0.b("Prune NonEmptyOpenClosedInterfacesCollection");
        Set b10 = C4875Al0.b(this.f41842b.size());
        for (com.android.tools.r8.graph.M2 m22 : this.f41842b) {
            if (!o52.f36682e.contains(m22)) {
                b10.add(m22);
            }
        }
        L00 l00 = new L00(b10);
        c8659ns0.d();
        return l00;
    }
}
