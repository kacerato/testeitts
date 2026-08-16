package org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import oh.C14518h;
import oh.C14519h0;
import oh.C14539s;
import oh.C14549x;
import oh.X0;
import uh.C15629u;
import uh.InterfaceC15621l;

public class B extends C {

    public int f100463C;

    public boolean f100464D;

    public class a extends OutputStream {

        public final Qk.F f100465b;

        public final OutputStream f100466c;

        public OutputStream f100467d;

        public C14519h0 f100468e;

        public C14519h0 f100469f;

        public C14519h0 f100470g;

        public a(Qk.F f10, OutputStream outputStream, C14519h0 c14519h0, C14519h0 c14519h02, C14519h0 c14519h03) {
            this.f100465b = f10;
            this.f100467d = outputStream;
            this.f100466c = f10.d(outputStream);
            this.f100468e = c14519h0;
            this.f100469f = c14519h02;
            this.f100470g = c14519h03;
        }

        @Override
        public void close() throws IOException {
            this.f100466c.close();
            Qk.F f10 = this.f100465b;
            if (f10 instanceof Qk.D) {
                this.f100467d.write(((Qk.D) f10).b());
                this.f100467d.close();
            }
            this.f100470g.g();
            X.a(this.f100469f, B.this.f100498b, 1, Collections.EMPTY_MAP);
            this.f100469f.g();
            this.f100468e.g();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f100466c.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f100466c.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f100466c.write(bArr, i10, i11);
        }
    }

    public final OutputStream d(C14549x c14549x, OutputStream outputStream, Qk.F f10) throws IOException, CMSException {
        return i(c14549x, outputStream, X.v(f10.getKey(), this.f100497a), f10);
    }

    public final C14539s e(C14518h c14518h) {
        return this.f100498b != null ? new C14539s(C15629u.u(this.f100499c, new X0(c14518h), new X0())) : new C14539s(C15629u.u(this.f100499c, new X0(c14518h), null));
    }

    public OutputStream f(OutputStream outputStream, Qk.F f10) throws CMSException, IOException {
        return d(new C14549x(InterfaceC15621l.f120705m8.J()), outputStream, f10);
    }

    public OutputStream g(OutputStream outputStream, C14518h c14518h, Qk.F f10) throws CMSException {
        try {
            return i(InterfaceC15621l.f120705m8, outputStream, c14518h, f10);
        } catch (IOException e10) {
            throw new CMSException("exception decoding algorithm parameters.", e10);
        }
    }

    public OutputStream h(C14549x c14549x, OutputStream outputStream, Qk.F f10) throws CMSException, IOException {
        return d(c14549x, outputStream, f10);
    }

    public OutputStream i(C14549x c14549x, OutputStream outputStream, C14518h c14518h, Qk.F f10) throws IOException {
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120707o8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(e(c14518h));
        X.c(c14519h02, this.f100499c);
        X.d(c14518h, c14519h02, this.f100464D);
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(c14549x);
        c14519h03.a().write(f10.a().getEncoded());
        return new a(f10, X.h(c14519h03.a(), 0, false, this.f100463C), c14519h0, c14519h02, c14519h03);
    }

    public void j(boolean z10) {
        this.f100464D = z10;
    }

    public void k(int i10) {
        this.f100463C = i10;
    }
}
