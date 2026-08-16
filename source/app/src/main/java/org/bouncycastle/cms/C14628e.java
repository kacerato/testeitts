package org.bouncycastle.cms;

import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import oh.C14549x;
import oh.InterfaceC14520i;
import uh.C15611b;
import uh.C15613d;
import uh.C15624o;

public class C14628e implements org.bouncycastle.util.g {

    public I0 f100738b;

    public C15624o f100739c;

    public x0 f100740d;

    public C13486b f100741e;

    public oh.G f100742f;

    public byte[] f100743g;

    public oh.G f100744h;

    public class a implements L {

        public OutputStream f100745a;

        public final uh.r f100746b;

        public a(uh.r rVar) {
            this.f100746b = rVar;
        }

        @Override
        public C14549x a() {
            return this.f100746b.v();
        }

        @Override
        public byte[] b() {
            return org.bouncycastle.util.a.p(C14628e.this.f100743g);
        }

        @Override
        public OutputStream c() {
            return this.f100745a;
        }

        @Override
        public oh.G d() {
            return C14628e.this.f100742f;
        }

        @Override
        public boolean e() {
            return (this.f100745a == null || C14628e.this.f100742f == null) ? false : true;
        }

        @Override
        public void f(oh.G g10) {
        }

        @Override
        public void g(OutputStream outputStream) {
            this.f100745a = outputStream;
        }

        @Override
        public InputStream getInputStream() throws IOException {
            if (this.f100745a != null && C14628e.this.f100742f != null) {
                this.f100745a.write(C14628e.this.f100742f.s(InterfaceC14520i.f98892a));
            }
            return new C14625c0(new ByteArrayInputStream(this.f100746b.x().H()), C14628e.this.f100743g);
        }
    }

    public C14628e(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public C15611b c() {
        oh.G g10 = this.f100742f;
        if (g10 == null) {
            return null;
        }
        return new C15611b(g10);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f100743g);
    }

    public x0 e() {
        return this.f100740d;
    }

    public I0 f() {
        return this.f100738b;
    }

    public C15611b g() {
        oh.G g10 = this.f100744h;
        if (g10 == null) {
            return null;
        }
        return new C15611b(g10);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f100739c.getEncoded();
    }

    public C15624o h() {
        return this.f100739c;
    }

    public C14628e(C15624o c15624o) throws CMSException {
        this.f100739c = c15624o;
        C15613d w10 = C15613d.w(c15624o.u());
        if (w10.z() != null) {
            this.f100740d = new x0(w10.z());
        }
        oh.G A10 = w10.A();
        uh.r v10 = w10.v();
        this.f100741e = v10.u();
        this.f100743g = w10.y().H();
        a aVar = new a(v10);
        this.f100742f = w10.u();
        this.f100744h = w10.B();
        this.f100738b = D.a(A10, this.f100741e, aVar);
    }

    public C14628e(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }
}
