package org.bouncycastle.cms;

import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.InterfaceC14553z;
import org.bouncycastle.cms.D;
import uh.C15611b;
import uh.C15627s;
import uh.C15630v;

public class A extends C14678t {

    public I0 f100448c;

    public C15630v f100449d;

    public C13486b f100450e;

    public C15611b f100451f;

    public boolean f100452g;

    public x0 f100453h;

    public A(InputStream inputStream) throws CMSException, IOException {
        super(inputStream);
        this.f100452g = true;
        C15630v c15630v = new C15630v((oh.F) this.f101017a.a(16));
        this.f100449d = c15630v;
        uh.I b10 = c15630v.b();
        if (b10 != null) {
            this.f100453h = new x0(b10);
        }
        oh.G F10 = oh.G.F(this.f100449d.c().r());
        C15627s a10 = this.f100449d.a();
        this.f100450e = a10.a();
        this.f100448c = D.a(F10, this.f100450e, new D.a(this.f100450e, a10.b(), new I(((InterfaceC14553z) a10.c(4)).a())));
    }

    public C13486b b() {
        return this.f100450e;
    }

    public String c() {
        return this.f100450e.u().toString();
    }

    public byte[] d() {
        try {
            return X.l(this.f100450e.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public x0 e() {
        return this.f100453h;
    }

    public I0 f() {
        return this.f100448c;
    }

    public C15611b g() throws IOException {
        if (this.f100451f == null && this.f100452g) {
            this.f100452g = false;
            this.f100451f = X.p(this.f100449d.d());
        }
        return this.f100451f;
    }

    public A(byte[] bArr) throws CMSException, IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
