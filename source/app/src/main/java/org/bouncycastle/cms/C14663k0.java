package org.bouncycastle.cms;

import hi.C13486b;
import oh.AbstractC14551y;
import oh.InterfaceC14516g;
import uh.C15634z;

public class C14663k0 extends H0 {

    public uh.C f100972g;

    public C14663k0(uh.C c10, C13486b c13486b, K k10) {
        super(c10.y(), c13486b, k10);
        C14675q0 c14675q0;
        this.f100972g = c10;
        uh.P A10 = c10.A();
        boolean x10 = A10.x();
        InterfaceC14516g u10 = A10.u();
        if (x10) {
            c14675q0 = new C14675q0(AbstractC14551y.F(u10).H());
        } else {
            C15634z u11 = C15634z.u(u10);
            c14675q0 = new C14675q0(u11.v(), u11.x().I());
        }
        this.f100533a = c14675q0;
    }

    @Override
    public J0 j(E0 e02) throws CMSException {
        return ((InterfaceC14637i0) e02).a(new C13486b(this.f100534b.u(), this.f100972g), this.f100535c, this.f100972g.u().H());
    }
}
