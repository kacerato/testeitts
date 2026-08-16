package com.android.tools.r8.internal;

public class C9982vo0 extends AbstractC10483yo0 implements InterfaceC9020q1 {

    public final com.android.tools.r8.graph.A2 f53337b;

    public C9982vo0(com.android.tools.r8.graph.A2 a22) {
        this.f53337b = a22;
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02) {
        interfaceC6160Wr02.accept(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f53337b == ((C9982vo0) obj).f53337b;
    }

    @Override
    public com.android.tools.r8.graph.A2 c() {
        return this.f53337b;
    }

    public final int hashCode() {
        return this.f53337b.hashCode();
    }

    @Override
    public final void a(StringBuilder sb2) {
        sb2.append((CharSequence) this.f53337b.i0());
    }
}
