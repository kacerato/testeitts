package org.bouncycastle.cms;

import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.AbstractC14551y;
import oh.InterfaceC14553z;
import org.bouncycastle.cms.D;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15611b;
import uh.C15616g;
import uh.C15625p;
import uh.InterfaceC15619j;

public class C14664l extends C14678t {

    public I0 f100973c;

    public C15616g f100974d;

    public C13486b f100975e;

    public byte[] f100976f;

    public C15611b f100977g;

    public oh.G f100978h;

    public C15611b f100979i;

    public boolean f100980j;

    public boolean f100981k;

    public x0 f100982l;

    public K f100983m;

    public C14664l(InputStream inputStream) throws CMSException, IOException {
        this(inputStream, (Qk.q) null);
    }

    private oh.G b() throws IOException {
        if (this.f100977g == null && this.f100980j) {
            oh.H a10 = this.f100974d.a();
            if (a10 != null) {
                this.f100978h = (oh.G) a10.r();
            }
            this.f100980j = false;
            this.f100983m.f(this.f100978h);
        }
        return this.f100978h;
    }

    public C15611b c() throws IOException {
        oh.G b10;
        if (this.f100977g == null && this.f100980j && (b10 = b()) != null) {
            this.f100977g = new C15611b(b10);
        }
        return this.f100977g;
    }

    public byte[] d() {
        C15611b c15611b = this.f100977g;
        if (c15611b != null) {
            return AbstractC14551y.F(c15611b.d(InterfaceC15619j.f120688b).v().H(0)).H();
        }
        return null;
    }

    public byte[] e() throws IOException {
        if (this.f100976f == null) {
            c();
            this.f100976f = this.f100974d.d().H();
        }
        return org.bouncycastle.util.a.p(this.f100976f);
    }

    public String f() {
        return this.f100975e.u().toString();
    }

    public byte[] g() {
        try {
            return X.l(this.f100975e.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public C13486b h() {
        return this.f100975e;
    }

    public x0 i() {
        return this.f100982l;
    }

    public I0 j() {
        return this.f100973c;
    }

    public C15611b k() throws IOException {
        if (this.f100979i == null && this.f100981k) {
            this.f100981k = false;
            this.f100979i = X.p(this.f100974d.h());
        }
        return this.f100979i;
    }

    public C14664l(InputStream inputStream, Qk.q qVar) throws CMSException, IOException {
        super(inputStream);
        this.f100980j = true;
        C15616g c15616g = new C15616g((oh.F) this.f101017a.a(16));
        this.f100974d = c15616g;
        uh.I f10 = c15616g.f();
        if (f10 != null) {
            this.f100982l = new x0(f10);
        }
        oh.G F10 = oh.G.F(this.f100974d.g().r());
        this.f100975e = this.f100974d.e();
        C13486b b10 = this.f100974d.b();
        if (b10 == null) {
            C15625p c10 = this.f100974d.c();
            D.a aVar = new D.a(this.f100975e, c10.b(), new I(((InterfaceC14553z) c10.a(4)).a()));
            this.f100983m = aVar;
            this.f100973c = D.a(F10, this.f100975e, aVar);
            return;
        }
        if (qVar == null) {
            throw new CMSException("a digest calculator provider is required if authenticated attributes are present");
        }
        C15625p c11 = this.f100974d.c();
        try {
            D.c cVar = new D.c(qVar.a(b10), c11.b(), new I(((InterfaceC14553z) c11.a(4)).a()));
            this.f100983m = cVar;
            this.f100973c = D.a(F10, this.f100975e, cVar);
        } catch (OperatorCreationException e10) {
            throw new CMSException("unable to create digest calculator: " + e10.getMessage(), e10);
        }
    }

    public C14664l(byte[] bArr) throws CMSException, IOException {
        this(new ByteArrayInputStream(bArr));
    }

    public C14664l(byte[] bArr, Qk.q qVar) throws CMSException, IOException {
        this(new ByteArrayInputStream(bArr), qVar);
    }
}
