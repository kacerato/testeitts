package org.bouncycastle.cms;

import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.InterfaceC14520i;
import oh.InterfaceC14553z;
import uh.C15611b;
import uh.C15614e;
import uh.C15627s;
import uh.InterfaceC15619j;

public class C14632g extends C14678t {

    public final I0 f100751c;

    public final C15614e f100752d;

    public final b f100753e;

    public final C13486b f100754f;

    public C15611b f100755g;

    public oh.G f100756h;

    public C15611b f100757i;

    public boolean f100758j;

    public boolean f100759k;

    public x0 f100760l;

    public class a implements L {

        public OutputStream f100761a;

        public final C15627s f100762b;

        public final J f100763c;

        public a(C15627s c15627s, J j10) {
            this.f100762b = c15627s;
            this.f100763c = j10;
        }

        @Override
        public C14549x a() {
            return this.f100762b.b();
        }

        @Override
        public byte[] b() {
            return org.bouncycastle.util.a.p(C14632g.this.f100753e.b());
        }

        @Override
        public OutputStream c() {
            return this.f100761a;
        }

        @Override
        public oh.G d() {
            return C14632g.this.f100756h;
        }

        @Override
        public boolean e() {
            return true;
        }

        @Override
        public void f(oh.G g10) {
        }

        @Override
        public void g(OutputStream outputStream) {
            this.f100761a = outputStream;
        }

        @Override
        public InputStream getInputStream() throws IOException, CMSException {
            return this.f100763c.getInputStream();
        }
    }

    public static class b implements t0 {

        public byte[] f100765a;

        public final C15614e f100766b;

        public final C14632g f100767c;

        public L f100768d;

        public b(C15614e c15614e, C14632g c14632g) {
            this.f100766b = c15614e;
            this.f100767c = c14632g;
        }

        public void a(L l10) {
            this.f100768d = l10;
        }

        @Override
        public byte[] b() {
            return this.f100765a;
        }

        @Override
        public void init() throws IOException {
            C14632g c14632g = this.f100767c;
            c14632g.f100755g = c14632g.g();
            if (this.f100767c.f100755g != null) {
                this.f100768d.f(this.f100767c.f100756h);
                this.f100768d.c().write(this.f100767c.f100755g.i().s(InterfaceC14520i.f98892a));
            }
            this.f100765a = this.f100766b.c().H();
        }
    }

    public C14632g(InputStream inputStream) throws CMSException, IOException {
        super(inputStream);
        this.f100758j = true;
        this.f100759k = true;
        C15614e c15614e = new C15614e((oh.F) this.f101017a.a(16));
        this.f100752d = c15614e;
        uh.I d10 = c15614e.d();
        if (d10 != null) {
            this.f100760l = new x0(d10);
        }
        oh.G F10 = oh.G.F(c15614e.e().r());
        C15627s b10 = c15614e.b();
        C13486b a10 = b10.a();
        this.f100754f = a10;
        b bVar = new b(c15614e, this);
        this.f100753e = bVar;
        a aVar = new a(b10, new I(new C14625c0(((InterfaceC14553z) b10.c(4)).a(), bVar)));
        bVar.a(aVar);
        this.f100751c = D.a(F10, a10, aVar);
    }

    public final oh.G f() throws IOException {
        if (this.f100755g == null && this.f100758j) {
            oh.H a10 = this.f100752d.a();
            if (a10 != null) {
                this.f100756h = (oh.G) a10.r();
            }
            this.f100758j = false;
        }
        return this.f100756h;
    }

    public C15611b g() throws IOException {
        oh.G f10;
        if (this.f100755g == null && this.f100758j && (f10 = f()) != null) {
            this.f100755g = new C15611b(f10);
        }
        return this.f100755g;
    }

    public byte[] h() {
        C15611b c15611b = this.f100755g;
        if (c15611b != null) {
            return AbstractC14551y.F(c15611b.d(InterfaceC15619j.f120688b).v().H(0)).H();
        }
        return null;
    }

    public String i() {
        return this.f100754f.u().toString();
    }

    public byte[] j() {
        try {
            return X.l(this.f100754f.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public C13486b k() {
        return this.f100754f;
    }

    public byte[] l() throws IOException {
        return org.bouncycastle.util.a.p(this.f100753e.b());
    }

    public x0 m() {
        return this.f100760l;
    }

    public I0 n() {
        return this.f100751c;
    }

    public C15611b o() throws IOException {
        if (this.f100757i == null && this.f100759k) {
            this.f100759k = false;
            this.f100757i = X.p(this.f100752d.f());
        }
        return this.f100757i;
    }

    public C14632g(byte[] bArr) throws CMSException, IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
