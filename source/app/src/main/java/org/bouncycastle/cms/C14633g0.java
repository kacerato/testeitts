package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;

public class C14633g0 extends H0 {

    public uh.B f100769g;

    public C14633g0(uh.B b10, C13486b c13486b, K k10) {
        super(b10.y(), c13486b, k10);
        this.f100769g = b10;
        this.f100533a = new C14629e0(b10.x().x().H());
    }

    @Override
    public J0 j(E0 e02) throws CMSException, IOException {
        return ((InterfaceC14627d0) e02).a(this.f100534b, this.f100535c, this.f100769g.u().H());
    }
}
