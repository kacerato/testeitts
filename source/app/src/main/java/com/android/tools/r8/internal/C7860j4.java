package com.android.tools.r8.internal;

import java.io.OutputStreamWriter;

public class C7860j4 extends AbstractC10531z4 implements InterfaceC8686o1 {

    public final com.android.tools.r8.graph.M2 f49145b;

    public C7860j4(com.android.tools.r8.graph.M2 m22) {
        this.f49145b = m22;
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02) {
        interfaceC6160Wr0.accept(this);
    }

    @Override
    public final com.android.tools.r8.graph.J2 c() {
        return this.f49145b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f49145b == ((C7860j4) obj).f49145b;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getReference() {
        return this.f49145b;
    }

    public final int hashCode() {
        return this.f49145b.hashCode();
    }

    public final String toString() {
        return this.f49145b.V0();
    }

    @Override
    public final Object a(InterfaceC6217Xr0 interfaceC6217Xr0, InterfaceC6217Xr0 interfaceC6217Xr02) {
        return interfaceC6217Xr0.apply(this);
    }

    @Override
    public final void a(OutputStreamWriter outputStreamWriter) {
        outputStreamWriter.write(this.f49145b.V0());
    }
}
