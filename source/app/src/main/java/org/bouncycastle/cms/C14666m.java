package org.bouncycastle.cms;

import fm.C13262f;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Map;
import oh.C14518h;
import oh.C14519h0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import uh.C15615f;
import uh.InterfaceC15621l;

public class C14666m extends C14668n {

    public int f100984E;

    public boolean f100985F;

    public Qk.A f100986G;

    public class a extends OutputStream {

        public OutputStream f100987b;

        public C14519h0 f100988c;

        public C14519h0 f100989d;

        public C14519h0 f100990e;

        public Qk.A f100991f;

        public Qk.p f100992g;

        public C14549x f100993h;

        public a(Qk.A a10, Qk.p pVar, C14549x c14549x, OutputStream outputStream, C14519h0 c14519h0, C14519h0 c14519h02, C14519h0 c14519h03) {
            this.f100991f = a10;
            this.f100992g = pVar;
            this.f100993h = c14549x;
            this.f100987b = outputStream;
            this.f100988c = c14519h0;
            this.f100989d = c14519h02;
            this.f100990e = c14519h03;
        }

        @Override
        public void close() throws IOException {
            Map map;
            this.f100987b.close();
            this.f100990e.g();
            Qk.p pVar = this.f100992g;
            if (pVar != null) {
                map = Collections.unmodifiableMap(C14666m.this.d(this.f100993h, pVar.a(), this.f100991f.a(), this.f100992g.b()));
                C14666m c14666m = C14666m.this;
                if (c14666m.f100996C == null) {
                    c14666m.f100996C = new Y();
                }
                oh.I0 i02 = new oh.I0(C14666m.this.f100996C.a(map).h());
                OutputStream outputStream = this.f100991f.getOutputStream();
                outputStream.write(i02.s(InterfaceC14520i.f98892a));
                outputStream.close();
                this.f100989d.f(new oh.K0(false, 2, (InterfaceC14516g) i02));
            } else {
                map = Collections.EMPTY_MAP;
            }
            this.f100989d.f(new oh.C0(this.f100991f.e()));
            X.a(this.f100989d, C14666m.this.f100997D, 3, map);
            this.f100989d.g();
            this.f100988c.g();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f100987b.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f100987b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f100987b.write(bArr, i10, i11);
        }
    }

    public OutputStream g(OutputStream outputStream, Qk.A a10) throws CMSException {
        return i(InterfaceC15621l.f120705m8, outputStream, a10);
    }

    public OutputStream h(OutputStream outputStream, Qk.A a10, Qk.p pVar) throws CMSException {
        return j(InterfaceC15621l.f120705m8, outputStream, a10, pVar);
    }

    public OutputStream i(C14549x c14549x, OutputStream outputStream, Qk.A a10) throws CMSException {
        return j(c14549x, outputStream, a10, null);
    }

    public OutputStream j(C14549x c14549x, OutputStream outputStream, Qk.A a10, Qk.p pVar) throws CMSException {
        this.f100986G = a10;
        try {
            C14518h v10 = X.v(a10.getKey(), this.f100497a);
            C14519h0 c14519h0 = new C14519h0(outputStream);
            c14519h0.f(InterfaceC15621l.f120711s8);
            C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
            c14519h02.f(new C14539s(C15615f.u(this.f100499c)));
            X.c(c14519h02, this.f100499c);
            X.d(v10, c14519h02, this.f100985F);
            c14519h02.a().write(a10.a().getEncoded());
            if (pVar != null) {
                c14519h02.f(new oh.K0(false, 1, (InterfaceC14516g) pVar.a()));
            }
            C14519h0 c14519h03 = new C14519h0(c14519h02.a());
            c14519h03.f(c14549x);
            OutputStream h10 = X.h(c14519h03.a(), 0, true, this.f100984E);
            return new a(a10, pVar, c14549x, pVar != null ? new C13262f(h10, pVar.getOutputStream()) : new C13262f(h10, a10.getOutputStream()), c14519h0, c14519h02, c14519h03);
        } catch (IOException e10) {
            throw new CMSException("exception decoding algorithm parameters.", e10);
        }
    }

    public void k(boolean z10) {
        this.f100985F = z10;
    }

    public void l(int i10) {
        this.f100984E = i10;
    }
}
