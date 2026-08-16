package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.util.List;
import oh.AbstractC14551y;
import uh.C15634z;

public class C14671o0 extends H0 {

    public uh.E f101003g;

    public AbstractC14551y f101004h;

    public C14671o0(uh.E e10, F0 f02, AbstractC14551y abstractC14551y, C13486b c13486b, K k10) {
        super(e10.x(), c13486b, k10);
        this.f101003g = e10;
        this.f100533a = f02;
        this.f101004h = abstractC14551y;
    }

    public static void p(List list, uh.E e10, C13486b c13486b, K k10) {
        oh.E z10 = e10.z();
        for (int i10 = 0; i10 < z10.size(); i10++) {
            uh.O w10 = uh.O.w(z10.I(i10));
            uh.D v10 = w10.v();
            C15634z x10 = v10.x();
            list.add(new C14671o0(e10, x10 != null ? new C14667m0(x10.v(), x10.x().I()) : new C14667m0(v10.y().y().H()), w10.u(), c13486b, k10));
        }
    }

    @Override
    public J0 j(E0 e02) throws CMSException, IOException {
        InterfaceC14665l0 interfaceC14665l0 = (InterfaceC14665l0) e02;
        return interfaceC14665l0.b(this.f100534b, this.f100535c, n(interfaceC14665l0.f(), this.f101003g.y()), this.f101003g.A(), this.f101004h.H());
    }

    public uh.H k() {
        return this.f101003g.y();
    }

    public final hi.h0 l(v0 v0Var) throws CMSException {
        throw new CMSException("No support for 'originator' as IssuerAndSerialNumber or SubjectKeyIdentifier");
    }

    public final hi.h0 m(C13486b c13486b, uh.J j10) {
        return new hi.h0(c13486b, j10.y());
    }

    public final hi.h0 n(C13486b c13486b, uh.H h10) throws CMSException, IOException {
        uh.J y10 = h10.y();
        if (y10 != null) {
            return m(c13486b, y10);
        }
        C15634z x10 = h10.x();
        return l(x10 != null ? new v0(x10.v(), x10.x().I()) : new v0(h10.z().x()));
    }

    public byte[] o() {
        AbstractC14551y A10 = this.f101003g.A();
        if (A10 != null) {
            return org.bouncycastle.util.a.p(A10.H());
        }
        return null;
    }
}
