package Uk;

import Qk.A;
import Qk.C3018k;
import Qk.z;
import Xh.q;
import Xh.r;
import Xh.t;
import ck.v;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.OutputStream;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import oh.A0;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class e {

    public static final C13486b f26230j;

    public static final C13486b f26231k;

    public static final C13486b f26232l;

    public static final C13486b f26233m;

    public static final C13486b f26234n;

    public static final C13486b f26235o;

    public static final C13486b f26236p;

    public static final C13486b f26237q;

    public static final C3018k f26238r;

    public InterfaceC12950f f26239a;

    public C13486b f26240b;

    public SecureRandom f26241c;

    public int f26242d;

    public int f26243e;

    public int f26244f;

    public q f26245g;

    public C13486b f26246h;

    public byte[] f26247i;

    public class a implements A {

        public final Mac f26248a;

        public final SecretKey f26249b;

        public a(Mac mac, SecretKey secretKey) {
            this.f26248a = mac;
            this.f26249b = secretKey;
        }

        @Override
        public C13486b a() {
            return new C13486b(t.f29116k1, new r(new C13486b(t.f29112j1, new q(e.this.f26247i, e.this.f26243e, (e.this.f26244f + 7) / 8, e.this.f26246h)), e.this.f26240b));
        }

        @Override
        public byte[] e() {
            return this.f26248a.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new Qk.r(a(), this.f26249b.getEncoded());
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f26248a);
        }
    }

    static {
        C14549x c14549x = t.f29147x1;
        A0 a02 = A0.f98776c;
        f26230j = new C13486b(c14549x, a02);
        f26231k = new C13486b(t.f29152z1, a02);
        f26232l = new C13486b(t.f29000A1, a02);
        f26233m = new C13486b(t.f29003B1, a02);
        f26234n = new C13486b(Sh.d.f23361o);
        f26235o = new C13486b(Sh.d.f23363p);
        f26236p = new C13486b(Sh.d.f23365q);
        f26237q = new C13486b(Sh.d.f23366r);
        f26238r = new C3018k();
    }

    public e(r rVar) {
        this.f26239a = new C12948d();
        this.f26242d = -1;
        this.f26243e = 8192;
        this.f26245g = null;
        this.f26246h = f26231k;
        this.f26247i = null;
        this.f26240b = rVar.x();
        this.f26245g = q.u(rVar.v().x());
    }

    public A f(char[] cArr) throws OperatorCreationException {
        if (this.f26241c == null) {
            this.f26241c = new SecureRandom();
        }
        try {
            Mac w10 = this.f26239a.w(this.f26240b.u().J());
            q qVar = this.f26245g;
            if (qVar != null) {
                this.f26247i = qVar.z();
                this.f26243e = org.bouncycastle.util.b.l(this.f26245g.v());
                this.f26244f = org.bouncycastle.util.b.l(this.f26245g.x()) * 8;
            } else if (this.f26247i == null) {
                if (this.f26242d < 0) {
                    this.f26242d = w10.getMacLength();
                }
                byte[] bArr = new byte[this.f26242d];
                this.f26247i = bArr;
                this.f26241c.nextBytes(bArr);
            }
            SecretKey generateSecret = this.f26239a.s("PBKDF2").generateSecret(new v(cArr, this.f26247i, this.f26243e, this.f26244f, this.f26246h));
            w10.init(generateSecret);
            return new a(w10, generateSecret);
        } catch (Exception e10) {
            throw new OperatorCreationException("unable to create MAC calculator: " + e10.getMessage(), e10);
        }
    }

    public e g(InterfaceC12950f interfaceC12950f) {
        this.f26239a = interfaceC12950f;
        return this;
    }

    public e h(int i10) {
        this.f26243e = i10;
        return this;
    }

    public e i(C13486b c13486b) {
        this.f26246h = c13486b;
        return this;
    }

    public e j(String str) {
        this.f26239a = new dk.i(str);
        return this;
    }

    public e k(Provider provider) {
        this.f26239a = new dk.k(provider);
        return this;
    }

    public e l(SecureRandom secureRandom) {
        this.f26241c = secureRandom;
        return this;
    }

    public e m(byte[] bArr) {
        this.f26247i = bArr;
        return this;
    }

    public e n(int i10) {
        this.f26242d = i10;
        return this;
    }

    public e(String str, int i10) {
        this(str, i10, f26238r);
    }

    public e(String str, int i10, z zVar) {
        this.f26239a = new C12948d();
        this.f26242d = -1;
        this.f26243e = 8192;
        this.f26245g = null;
        this.f26246h = f26231k;
        this.f26247i = null;
        this.f26240b = zVar.a(str);
        this.f26244f = i10;
    }
}
