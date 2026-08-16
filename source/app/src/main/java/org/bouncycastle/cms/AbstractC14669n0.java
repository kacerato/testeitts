package org.bouncycastle.cms;

import hi.C13486b;
import oh.C14549x;
import yh.InterfaceC16192a;

public abstract class AbstractC14669n0 implements G0 {

    public C14549x f100998a;

    public C14549x f100999b;

    public hi.h0 f101000c;

    public AbstractC14669n0(C14549x c14549x, hi.h0 h0Var, C14549x c14549x2) {
        this.f101000c = h0Var;
        this.f100998a = c14549x;
        this.f100999b = c14549x2;
    }

    @Override
    public uh.Q a(Qk.r rVar) throws CMSException {
        uh.H h10 = new uh.H(b(this.f101000c));
        C13486b c13486b = (X.y(this.f100999b.J()) || this.f100999b.A(Xh.t.f29024J2)) ? new C13486b(this.f100999b, oh.A0.f98776c) : X.B(this.f100998a) ? new C13486b(this.f100999b, new yh.i(InterfaceC16192a.f130276h)) : new C13486b(this.f100999b);
        C13486b c13486b2 = new C13486b(this.f100998a, c13486b);
        oh.E c10 = c(c13486b2, c13486b, rVar);
        byte[] d10 = d(c13486b2);
        return d10 != null ? new uh.Q(new uh.E(h10, new oh.C0(d10), c13486b2, c10)) : new uh.Q(new uh.E(h10, null, c13486b2, c10));
    }

    public uh.J b(hi.h0 h0Var) {
        return new uh.J(h0Var.u(), h0Var.z().F());
    }

    public abstract oh.E c(C13486b c13486b, C13486b c13486b2, Qk.r rVar) throws CMSException;

    public abstract byte[] d(C13486b c13486b) throws CMSException;
}
