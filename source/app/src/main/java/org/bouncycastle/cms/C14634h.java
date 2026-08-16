package org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import oh.C14518h;
import oh.C14519h0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import uh.C15615f;
import uh.InterfaceC15621l;

public class C14634h extends C14636i {

    public int f100770G;

    public boolean f100771H;

    public class a extends OutputStream {

        public final Qk.D f100772b;

        public final OutputStream f100773c;

        public final OutputStream f100774d;

        public final C14519h0 f100775e;

        public final C14519h0 f100776f;

        public final C14519h0 f100777g;

        public a(Qk.D d10, OutputStream outputStream, C14519h0 c14519h0, C14519h0 c14519h02, C14519h0 c14519h03) {
            this.f100772b = d10;
            this.f100774d = outputStream;
            this.f100773c = d10.d(outputStream);
            this.f100775e = c14519h0;
            this.f100776f = c14519h02;
            this.f100777g = c14519h03;
        }

        @Override
        public void close() throws IOException {
            oh.G E10 = X.E(C14634h.this.f100780D, this.f100772b);
            this.f100773c.close();
            this.f100774d.close();
            this.f100777g.g();
            if (E10 != null) {
                this.f100776f.f(new oh.K0(false, 1, (InterfaceC14516g) E10));
            }
            this.f100776f.f(new oh.C0(this.f100772b.b()));
            X.a(this.f100776f, C14634h.this.f100781E, 2, Collections.EMPTY_MAP);
            this.f100776f.g();
            this.f100775e.g();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f100773c.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f100773c.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f100773c.write(bArr, i10, i11);
        }
    }

    public final OutputStream f(C14549x c14549x, OutputStream outputStream, Qk.D d10) throws IOException, CMSException {
        return i(c14549x, outputStream, X.v(d10.getKey(), this.f100779C), d10);
    }

    public OutputStream g(OutputStream outputStream, Qk.D d10) throws CMSException, IOException {
        return f(new C14549x(InterfaceC15621l.f120705m8.J()), outputStream, d10);
    }

    public OutputStream h(OutputStream outputStream, C14518h c14518h, Qk.D d10) throws CMSException {
        try {
            return i(InterfaceC15621l.f120705m8, outputStream, c14518h, d10);
        } catch (IOException e10) {
            throw new CMSException("exception decoding algorithm parameters.", e10);
        }
    }

    public OutputStream i(C14549x c14549x, OutputStream outputStream, C14518h c14518h, Qk.D d10) throws IOException {
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120713u8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(new C14539s(C15615f.u(this.f100782F)));
        X.c(c14519h02, this.f100782F);
        X.d(c14518h, c14519h02, this.f100771H);
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(c14549x);
        c14519h03.a().write(d10.a().getEncoded());
        return new a(d10, X.h(c14519h03.a(), 0, true, this.f100770G), c14519h0, c14519h02, c14519h03);
    }

    public void j(boolean z10) {
        this.f100771H = z10;
    }

    public void k(int i10) {
        this.f100770G = i10;
    }
}
