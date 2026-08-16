package oi;

import Qk.A;
import Qk.G;
import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import oh.A0;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.RuntimeOperatorException;
import th.B;
import th.InterfaceC15427c;

public class C14571q implements G {

    public C13486b f99049a;

    public int f99050b;

    public C13486b f99051c;

    public int f99052d;

    public SecureRandom f99053e;

    public InterfaceC14574t f99054f;

    public B f99055g;

    public int f99056h;

    public class a implements A {

        public ByteArrayOutputStream f99057a = new ByteArrayOutputStream();

        public final B f99058b;

        public final byte[] f99059c;

        public a(B b10, byte[] bArr) {
            this.f99058b = b10;
            this.f99059c = bArr;
        }

        @Override
        public C13486b a() {
            return new C13486b(InterfaceC15427c.f117570a, this.f99058b);
        }

        @Override
        public byte[] e() {
            try {
                return C14571q.this.f99054f.b(this.f99059c, this.f99057a.toByteArray());
            } catch (CRMFException e10) {
                throw new RuntimeOperatorException("exception calculating mac: " + e10.getMessage(), e10);
            }
        }

        @Override
        public Qk.r getKey() {
            return new Qk.r(a(), this.f99059c);
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f99057a;
        }
    }

    public C14571q(C13486b c13486b, int i10, C13486b c13486b2, InterfaceC14574t interfaceC14574t) {
        this.f99052d = 20;
        this.f99049a = c13486b;
        this.f99050b = i10;
        this.f99051c = c13486b2;
        this.f99054f = interfaceC14574t;
    }

    @Override
    public A a(C13486b c13486b, char[] cArr) throws OperatorCreationException {
        if (!InterfaceC15427c.f117570a.A(c13486b.u())) {
            throw new OperatorCreationException("protection algorithm not mac based");
        }
        h(B.u(c13486b.x()));
        try {
            return c(cArr);
        } catch (CRMFException e10) {
            throw new OperatorCreationException(e10.getMessage(), e10.getCause());
        }
    }

    public A c(char[] cArr) throws CRMFException {
        B b10 = this.f99055g;
        if (b10 == null) {
            b10 = f();
        }
        return e(b10, cArr);
    }

    public final void d(int i10) {
        int i11 = this.f99056h;
        if (i11 <= 0 || i10 <= i11) {
            return;
        }
        throw new IllegalArgumentException("iteration count exceeds limit (" + i10 + " > " + this.f99056h + ")");
    }

    public final A e(B b10, char[] cArr) throws CRMFException {
        byte[] o10 = org.bouncycastle.util.w.o(cArr);
        byte[] H10 = b10.z().H();
        byte[] bArr = new byte[o10.length + H10.length];
        System.arraycopy(o10, 0, bArr, 0, o10.length);
        System.arraycopy(H10, 0, bArr, o10.length, H10.length);
        this.f99054f.c(b10.y(), b10.x());
        int O10 = b10.v().O();
        do {
            bArr = this.f99054f.a(bArr);
            O10--;
        } while (O10 > 0);
        return new a(b10, bArr);
    }

    public final B f() {
        byte[] bArr = new byte[this.f99052d];
        if (this.f99053e == null) {
            this.f99053e = new SecureRandom();
        }
        this.f99053e.nextBytes(bArr);
        return new B(bArr, this.f99049a, this.f99050b, this.f99051c);
    }

    public C14571q g(int i10) {
        if (i10 < 100) {
            throw new IllegalArgumentException("iteration count must be at least 100");
        }
        d(i10);
        this.f99050b = i10;
        return this;
    }

    public C14571q h(B b10) {
        d(b10.v().O());
        this.f99055g = b10;
        return this;
    }

    public C14571q i(int i10) {
        if (i10 < 8) {
            throw new IllegalArgumentException("salt length must be at least 8 bytes");
        }
        this.f99052d = i10;
        return this;
    }

    public C14571q j(SecureRandom secureRandom) {
        this.f99053e = secureRandom;
        return this;
    }

    public C14571q(InterfaceC14574t interfaceC14574t) {
        this(new C13486b(Wh.b.f27785i), 1000, new C13486b(Hh.a.f8468o, A0.f98776c), interfaceC14574t);
    }

    public C14571q(InterfaceC14574t interfaceC14574t, int i10) {
        this.f99052d = 20;
        this.f99056h = i10;
        this.f99054f = interfaceC14574t;
    }
}
