package org.bouncycastle.cms;

import hi.C13486b;
import oh.AbstractC14551y;
import oh.InterfaceC14516g;
import uh.C15634z;

public class s0 extends H0 {

    public uh.F f101016g;

    public s0(uh.F f10, C13486b c13486b, K k10) {
        super(f10.x(), c13486b, k10);
        C14675q0 c14675q0;
        this.f101016g = f10;
        uh.P y10 = f10.y();
        boolean x10 = y10.x();
        InterfaceC14516g u10 = y10.u();
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
        return ((InterfaceC14673p0) e02).a(this.f100534b, this.f100535c, this.f101016g.u().H());
    }
}
