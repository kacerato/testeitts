package org.bouncycastle.cms;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import hi.C13486b;
import li.C14146h;
import org.bouncycastle.operator.OperatorCreationException;

public class P0 {

    public InterfaceC3015h f100587a;

    public Qk.q f100588b;

    public Qk.J f100589c;

    public M f100590d;

    public P0(M m10, Qk.J j10, InterfaceC3015h interfaceC3015h, Qk.q qVar) {
        this.f100590d = m10;
        this.f100589c = j10;
        this.f100587a = interfaceC3015h;
        this.f100588b = qVar;
    }

    public C14146h a() {
        return this.f100587a.b();
    }

    public InterfaceC3014g b(C13486b c13486b, C13486b c13486b2) throws OperatorCreationException {
        return this.f100587a.a(new C13486b(this.f100589c.a(this.f100590d.a(c13486b2, c13486b)).u(), c13486b.x()));
    }

    public Qk.p c(C13486b c13486b) throws OperatorCreationException {
        return this.f100588b.a(c13486b);
    }

    public boolean d() {
        return this.f100587a.c();
    }
}
