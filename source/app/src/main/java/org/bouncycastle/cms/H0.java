package org.bouncycastle.cms;

import fm.C13260d;
import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.D;

public abstract class H0 {

    public F0 f100533a;

    public C13486b f100534b;

    public C13486b f100535c;

    public K f100536d;

    public byte[] f100537e;

    public J0 f100538f;

    public H0(C13486b c13486b, C13486b c13486b2, K k10) {
        this.f100534b = c13486b;
        this.f100535c = c13486b2;
        this.f100536d = k10;
    }

    public byte[] a(E0 e02) throws CMSException {
        try {
            return X.I(c(e02).b());
        } catch (IOException e10) {
            throw new CMSException("unable to parse internal stream: " + e10.getMessage(), e10);
        }
    }

    public byte[] b() {
        K k10 = this.f100536d;
        if (k10 instanceof D.c) {
            return ((D.c) k10).i();
        }
        return null;
    }

    public W c(E0 e02) throws CMSException, IOException {
        J0 j10 = j(e02);
        this.f100538f = j10;
        if (j10.d()) {
            ((L) this.f100536d).g(this.f100538f.a());
        } else if (this.f100536d.e()) {
            return new W(this.f100536d.a(), this.f100536d.getInputStream());
        }
        return new W(this.f100536d.a(), this.f100538f.b(this.f100536d.getInputStream()));
    }

    public C14549x d() {
        return this.f100536d.a();
    }

    public String e() {
        return this.f100534b.u().J();
    }

    public byte[] f() {
        try {
            return X.l(this.f100534b.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public C13486b g() {
        return this.f100534b;
    }

    public byte[] h() {
        if (this.f100537e == null) {
            if (this.f100538f.e() && this.f100536d.e()) {
                try {
                    C13260d.a(this.f100538f.b(new ByteArrayInputStream(this.f100536d.d().s(InterfaceC14520i.f98892a))));
                } catch (IOException e10) {
                    throw new IllegalStateException("unable to drain input: " + e10.getMessage());
                }
            }
            this.f100537e = this.f100538f.c();
        }
        return this.f100537e;
    }

    public F0 i() {
        return this.f100533a;
    }

    public abstract J0 j(E0 e02) throws CMSException, IOException;
}
