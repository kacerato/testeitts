package org.bouncycastle.cms;

import hi.C13486b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import oh.C14549x;
import oh.InterfaceC14516g;
import uh.InterfaceC15621l;

public class D {

    public static class a extends b {

        public C13486b f100513d;

        public a(C13486b c13486b, C14549x c14549x, J j10) {
            super(c14549x, j10);
            this.f100513d = c13486b;
        }

        @Override
        public boolean e() {
            return false;
        }

        @Override
        public InputStream getInputStream() throws IOException, CMSException {
            return this.f100515b.getInputStream();
        }
    }

    public static abstract class b implements K {

        public final C14549x f100514a;

        public J f100515b;

        public oh.G f100516c;

        public b(C14549x c14549x, J j10) {
            this.f100514a = c14549x;
            this.f100515b = j10;
        }

        @Override
        public C14549x a() {
            return this.f100514a;
        }

        @Override
        public oh.G d() {
            return this.f100516c;
        }

        @Override
        public void f(oh.G g10) {
            this.f100516c = g10;
        }
    }

    public static class c extends b {

        public Qk.p f100517d;

        public class a extends FilterInputStream {
            public a(InputStream inputStream) {
                super(inputStream);
            }

            @Override
            public int read() throws IOException {
                int read = this.f92730in.read();
                if (read >= 0) {
                    c.this.f100517d.getOutputStream().write(read);
                }
                return read;
            }

            @Override
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                int read = this.f92730in.read(bArr, i10, i11);
                if (read >= 0) {
                    c.this.f100517d.getOutputStream().write(bArr, i10, read);
                }
                return read;
            }
        }

        public c(Qk.p pVar, C14549x c14549x, J j10) {
            super(c14549x, j10);
            this.f100517d = pVar;
        }

        @Override
        public boolean e() {
            return true;
        }

        @Override
        public InputStream getInputStream() throws IOException, CMSException {
            return new a(this.f100515b.getInputStream());
        }

        public byte[] i() {
            return this.f100517d.b();
        }
    }

    public static I0 a(oh.G g10, C13486b c13486b, K k10) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != g10.size(); i10++) {
            b(arrayList, uh.Q.v(g10.H(i10)), c13486b, k10);
        }
        return new I0(arrayList);
    }

    public static void b(List list, uh.Q q10, C13486b c13486b, K k10) {
        H0 d02;
        InterfaceC14516g u10 = q10.u();
        if (u10 instanceof uh.F) {
            d02 = new s0((uh.F) u10, c13486b, k10);
        } else if (u10 instanceof uh.L) {
            uh.L u11 = uh.L.u(u10);
            if (!InterfaceC15621l.f120703H8.A(u11.x())) {
                return;
            } else {
                d02 = new C14663k0(uh.C.v(u11.y()), c13486b, k10);
            }
        } else if (u10 instanceof uh.B) {
            d02 = new C14633g0((uh.B) u10, c13486b, k10);
        } else if (u10 instanceof uh.E) {
            C14671o0.p(list, (uh.E) u10, c13486b, k10);
            return;
        } else if (!(u10 instanceof uh.N)) {
            return;
        } else {
            d02 = new D0((uh.N) u10, c13486b, k10);
        }
        list.add(d02);
    }
}
