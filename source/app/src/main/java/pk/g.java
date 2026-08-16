package Pk;

import Qk.F;
import Qk.r;
import Xh.k;
import Xh.m;
import Xh.p;
import Xh.q;
import Xh.s;
import Xh.t;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import oh.A0;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import org.bouncycastle.operator.OperatorCreationException;

public class g {

    public static final String f21574l = Sh.d.f23373y.J();

    public static final String f21575m = Sh.d.f23314H.J();

    public static final String f21576n = Sh.d.f23323Q.J();

    public static final String f21577o = t.f29123n1.J();

    public static final String f21578p = t.f29098e4.J();

    public static final String f21579q = t.f29102f4.J();

    public static final String f21580r = t.f29106g4.J();

    public static final String f21581s = t.f29110h4.J();

    public static final String f21582t = t.f29111i4.J();

    public static final String f21583u = t.f29115j4.J();

    public AlgorithmParameters f21585b;

    public C14549x f21586c;

    public byte[] f21587d;

    public Cipher f21589f;

    public SecureRandom f21590g;

    public AlgorithmParameterGenerator f21591h;

    public char[] f21592i;

    public SecretKey f21593j;

    public InterfaceC12950f f21584a = new C12948d();

    public C13486b f21594k = new C13486b(t.f29144w1, A0.f98776c);

    public int f21588e = 2048;

    public class a implements F {

        public final C13486b f21595a;

        public a(C13486b c13486b) {
            this.f21595a = c13486b;
        }

        @Override
        public C13486b a() {
            return this.f21595a;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return new Jj.b(outputStream, g.this.f21589f);
        }

        @Override
        public r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f21595a, g.this.f21593j);
        }
    }

    public g(C14549x c14549x) {
        this.f21586c = c14549x;
    }

    public F c() throws OperatorCreationException {
        C13486b c13486b;
        if (this.f21590g == null) {
            this.f21590g = new SecureRandom();
        }
        try {
            this.f21589f = this.f21584a.e(j.e(this.f21586c));
            if (j.m(this.f21586c)) {
                this.f21591h = this.f21584a.o(this.f21586c.J());
            }
            if (j.m(this.f21586c)) {
                byte[] bArr = new byte[j.i(this.f21594k.u())];
                this.f21587d = bArr;
                this.f21590g.nextBytes(bArr);
                AlgorithmParameters generateParameters = this.f21591h.generateParameters();
                this.f21585b = generateParameters;
                try {
                    k kVar = new k(this.f21586c, B.B(generateParameters.getEncoded()));
                    m mVar = new m(t.f29107h1, new q(this.f21587d, this.f21588e, this.f21594k));
                    C14518h c14518h = new C14518h();
                    c14518h.a(mVar);
                    c14518h.a(kVar);
                    c13486b = new C13486b(t.f29112j1, p.v(new G0(c14518h)));
                    try {
                        this.f21593j = j.j(this.f21594k) ? j.b(this.f21584a, this.f21586c.J(), this.f21592i, this.f21587d, this.f21588e) : j.c(this.f21584a, this.f21586c.J(), this.f21592i, this.f21587d, this.f21588e, this.f21594k);
                        this.f21589f.init(1, this.f21593j, this.f21585b);
                    } catch (GeneralSecurityException e10) {
                        throw new OperatorCreationException(e10.getMessage(), e10);
                    }
                } catch (IOException e11) {
                    throw new OperatorCreationException(e11.getMessage(), e11);
                }
            } else {
                if (!j.k(this.f21586c)) {
                    throw new OperatorCreationException("unknown algorithm: " + ((Object) this.f21586c), null);
                }
                C14518h c14518h2 = new C14518h();
                byte[] bArr2 = new byte[20];
                this.f21587d = bArr2;
                this.f21590g.nextBytes(bArr2);
                c14518h2.a(new C0(this.f21587d));
                c14518h2.a(new C14539s(this.f21588e));
                C13486b c13486b2 = new C13486b(this.f21586c, s.v(new G0(c14518h2)));
                try {
                    this.f21589f.init(1, new Hj.m(this.f21592i, this.f21587d, this.f21588e));
                    c13486b = c13486b2;
                } catch (GeneralSecurityException e12) {
                    throw new OperatorCreationException(e12.getMessage(), e12);
                }
            }
            return new a(c13486b);
        } catch (GeneralSecurityException e13) {
            throw new OperatorCreationException(((Object) this.f21586c) + " not available: " + e13.getMessage(), e13);
        }
    }

    public g d(int i10) {
        this.f21588e = i10;
        return this;
    }

    public g e(C13486b c13486b) {
        this.f21594k = c13486b;
        return this;
    }

    public g f(char[] cArr) {
        this.f21592i = cArr;
        return this;
    }

    public g g(char[] cArr) {
        this.f21592i = cArr;
        return this;
    }

    public g h(String str) {
        this.f21584a = new dk.i(str);
        return this;
    }

    public g i(Provider provider) {
        this.f21584a = new dk.k(provider);
        return this;
    }

    public g j(SecureRandom secureRandom) {
        this.f21590g = secureRandom;
        return this;
    }
}
