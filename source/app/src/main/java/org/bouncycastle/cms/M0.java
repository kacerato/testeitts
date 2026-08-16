package org.bouncycastle.cms;

import Qk.C3017j;
import Qk.InterfaceC3013f;
import hi.C13486b;
import li.C14146h;
import oh.AbstractC14551y;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15634z;

public class M0 {

    public final Qk.o f100554a;

    public Qk.q f100555b;

    public boolean f100556c;

    public InterfaceC14626d f100557d;

    public InterfaceC14626d f100558e;

    public N f100559f;

    public C13486b f100560g;

    public M0(Qk.q qVar) {
        this(qVar, new C14621a0());
    }

    public L0 a(InterfaceC3013f interfaceC3013f, C14146h c14146h) throws OperatorCreationException {
        L0 c10 = c(interfaceC3013f, new uh.X(new C15634z(c14146h.x())));
        c10.m(c14146h);
        return c10;
    }

    public L0 b(InterfaceC3013f interfaceC3013f, byte[] bArr) throws OperatorCreationException {
        return c(interfaceC3013f, new uh.X((AbstractC14551y) new oh.C0(bArr)));
    }

    public final L0 c(InterfaceC3013f interfaceC3013f, uh.X x10) throws OperatorCreationException {
        C13486b c13486b = this.f100560g;
        Qk.p a10 = c13486b != null ? this.f100555b.a(c13486b) : this.f100555b.a(this.f100554a.c(interfaceC3013f.a()));
        if (this.f100556c) {
            return new L0(x10, interfaceC3013f, a10.a(), this.f100559f);
        }
        InterfaceC14626d interfaceC14626d = this.f100557d;
        if (interfaceC14626d == null && this.f100558e == null) {
            return new L0(x10, interfaceC3013f, a10, this.f100559f, new C14623b0(), null);
        }
        if (interfaceC14626d == null) {
            this.f100557d = new C14623b0();
        }
        return new L0(x10, interfaceC3013f, a10, this.f100559f, this.f100557d, this.f100558e);
    }

    public M0 d(C13486b c13486b) {
        this.f100560g = c13486b;
        return this;
    }

    public M0 e(boolean z10) {
        this.f100556c = z10;
        return this;
    }

    public M0 f(InterfaceC14626d interfaceC14626d) {
        this.f100557d = interfaceC14626d;
        return this;
    }

    public M0 g(InterfaceC14626d interfaceC14626d) {
        this.f100558e = interfaceC14626d;
        return this;
    }

    public M0(Qk.q qVar, N n10) {
        this.f100554a = new C3017j();
        this.f100555b = qVar;
        this.f100559f = n10;
    }
}
