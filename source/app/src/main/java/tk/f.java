package Tk;

import Bi.C2376h;
import Bi.D;
import Bi.InterfaceC2374f;
import Bi.L;
import Ii.J;
import Qk.F;
import Qk.r;
import Xh.s;
import hi.C13486b;
import java.io.OutputStream;
import java.security.SecureRandom;
import oh.C14549x;

public class f {

    public D f25422a;

    public C2376h f25423b;

    public C14549x f25424c;

    public SecureRandom f25425d;

    public int f25426e;

    public class a implements F {

        public final s f25427a;

        public final char[] f25428b;

        public a(s sVar, char[] cArr) {
            this.f25427a = sVar;
            this.f25428b = cArr;
        }

        @Override
        public C13486b a() {
            return new C13486b(f.this.f25424c, this.f25427a);
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return new Qi.b(outputStream, f.this.f25423b);
        }

        @Override
        public r getKey() {
            return new r(new C13486b(f.this.f25424c, this.f25427a), L.a(this.f25428b));
        }
    }

    public f(C14549x c14549x, InterfaceC2374f interfaceC2374f) {
        this(c14549x, interfaceC2374f, new J());
    }

    public F c(char[] cArr) {
        if (this.f25425d == null) {
            this.f25425d = new SecureRandom();
        }
        byte[] bArr = new byte[20];
        this.f25425d.nextBytes(bArr);
        s sVar = new s(bArr, this.f25426e);
        this.f25423b.f(true, g.a(this.f25424c, this.f25422a, this.f25423b.b(), sVar, cArr));
        return new a(sVar, cArr);
    }

    public f d(int i10) {
        this.f25426e = i10;
        return this;
    }

    public f(C14549x c14549x, InterfaceC2374f interfaceC2374f, D d10) {
        this.f25426e = 1024;
        this.f25424c = c14549x;
        this.f25423b = new Wi.e(interfaceC2374f, new Wi.d());
        this.f25422a = d10;
    }
}
