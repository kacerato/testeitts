package org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import oh.C14519h0;
import oh.C14539s;
import oh.C14549x;
import uh.InterfaceC15621l;

public class r {

    public static final String f101007b = InterfaceC15621l.f120715w8.J();

    public int f101008a;

    public static class a extends OutputStream {

        public OutputStream f101009b;

        public C14519h0 f101010c;

        public C14519h0 f101011d;

        public C14519h0 f101012e;

        public a(OutputStream outputStream, C14519h0 c14519h0, C14519h0 c14519h02, C14519h0 c14519h03) {
            this.f101009b = outputStream;
            this.f101010c = c14519h0;
            this.f101011d = c14519h02;
            this.f101012e = c14519h03;
        }

        @Override
        public void close() throws IOException {
            this.f101009b.close();
            this.f101012e.g();
            this.f101011d.g();
            this.f101010c.g();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f101009b.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f101009b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f101009b.write(bArr, i10, i11);
        }
    }

    public OutputStream a(OutputStream outputStream, Qk.E e10) throws IOException {
        return b(InterfaceC15621l.f120705m8, outputStream, e10);
    }

    public OutputStream b(C14549x c14549x, OutputStream outputStream, Qk.E e10) throws IOException {
        C14519h0 c14519h0 = new C14519h0(outputStream);
        c14519h0.f(InterfaceC15621l.f120712t8);
        C14519h0 c14519h02 = new C14519h0(c14519h0.a(), 0, true);
        c14519h02.f(new C14539s(0L));
        c14519h02.e(e10.a());
        C14519h0 c14519h03 = new C14519h0(c14519h02.a());
        c14519h03.f(c14549x);
        return new a(e10.d(X.h(c14519h03.a(), 0, true, this.f101008a)), c14519h0, c14519h02, c14519h03);
    }

    public void c(int i10) {
        this.f101008a = i10;
    }
}
