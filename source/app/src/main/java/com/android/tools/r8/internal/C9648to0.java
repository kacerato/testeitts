package com.android.tools.r8.internal;

public class C9648to0 extends AbstractC10483yo0 implements InterfaceC8686o1 {

    public final com.android.tools.r8.graph.M2 f52698b;

    public C9648to0(com.android.tools.r8.graph.M2 m22) {
        this.f52698b = m22;
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02) {
        interfaceC6160Wr0.accept(this);
    }

    @Override
    public final com.android.tools.r8.graph.J2 c() {
        return this.f52698b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f52698b == ((C9648to0) obj).f52698b;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getReference() {
        return this.f52698b;
    }

    public final int hashCode() {
        return this.f52698b.hashCode();
    }

    @Override
    public final void a(StringBuilder sb2) {
        sb2.append((CharSequence) this.f52698b.V0());
    }
}
