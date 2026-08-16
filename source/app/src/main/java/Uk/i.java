package Uk;

import Bi.M;
import Hj.m;
import Qk.C3019l;
import Qk.I;
import Qk.t;
import Qk.u;
import Xh.o;
import Xh.p;
import Xh.q;
import Xh.s;
import ck.C4217j;
import ck.v;
import ck.z;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import oh.AbstractC14551y;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import org.bouncycastle.operator.OperatorCreationException;

public class i {

    public InterfaceC12950f f26270a = new C12948d();

    public boolean f26271b = false;

    public I f26272c = C3019l.f22473a;

    public class a implements u {

        public Cipher f26273a;

        public C13486b f26274b;

        public final char[] f26275c;

        public class C0727a implements t {
            public C0727a() {
            }

            @Override
            public C13486b a() {
                return a.this.f26274b;
            }

            @Override
            public InputStream d(InputStream inputStream) {
                return new Jj.a(inputStream, a.this.f26273a);
            }
        }

        public a(char[] cArr) {
            this.f26275c = cArr;
        }

        @Override
        public t a(C13486b c13486b) throws OperatorCreationException {
            SecretKey generateSecret;
            C14549x u10 = c13486b.u();
            try {
                if (u10.O(Xh.t.f29094d4)) {
                    s v10 = s.v(c13486b.x());
                    Cipher e10 = i.this.f26270a.e(u10.J());
                    this.f26273a = e10;
                    e10.init(2, new m(this.f26275c, i.this.f26271b, v10.u(), v10.x().intValue()));
                    this.f26274b = c13486b;
                } else if (u10.A(Xh.t.f29112j1)) {
                    p v11 = p.v(c13486b.x());
                    if (Qh.c.f22355O.A(v11.x().u())) {
                        Qh.f w10 = Qh.f.w(v11.x().x());
                        generateSecret = i.this.f26270a.s("SCRYPT").generateSecret(new z(this.f26275c, w10.z(), w10.v().intValue(), w10.u().intValue(), w10.y().intValue(), i.this.f26272c.a(C13486b.v(v11.u()))));
                    } else {
                        SecretKeyFactory s10 = i.this.f26270a.s(v11.x().u().J());
                        q u11 = q.u(v11.x().x());
                        C13486b v12 = C13486b.v(v11.u());
                        generateSecret = u11.A() ? s10.generateSecret(new PBEKeySpec(this.f26275c, u11.z(), u11.v().intValue(), i.this.f26272c.a(v12))) : s10.generateSecret(new v(this.f26275c, u11.z(), u11.v().intValue(), i.this.f26272c.a(v12), u11.y()));
                    }
                    this.f26273a = i.this.f26270a.e(v11.u().u().J());
                    this.f26274b = C13486b.v(v11.u());
                    InterfaceC14516g x10 = v11.u().x();
                    if (x10 instanceof AbstractC14551y) {
                        this.f26273a.init(2, generateSecret, new IvParameterSpec(AbstractC14551y.F(x10).H()));
                    } else if ((x10 instanceof E) && i.this.f(v11.u())) {
                        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(v11.u().u().J());
                        algorithmParameters.init(((E) x10).getEncoded());
                        this.f26273a.init(2, generateSecret, algorithmParameters);
                    } else if (x10 == null) {
                        this.f26273a.init(2, generateSecret);
                    } else {
                        yh.d w11 = yh.d.w(x10);
                        this.f26273a.init(2, generateSecret, new C4217j(w11.u(), w11.v()));
                    }
                } else {
                    if (!u10.A(Xh.t.f29091d1) && !u10.A(Xh.t.f29099f1)) {
                        throw new OperatorCreationException("unable to create InputDecryptor: algorithm " + ((Object) u10) + " unknown.");
                    }
                    o u12 = o.u(c13486b.x());
                    Cipher e11 = i.this.f26270a.e(u10.J());
                    this.f26273a = e11;
                    e11.init(2, new Hj.g(this.f26275c, M.ASCII), new PBEParameterSpec(u12.x(), u12.v().intValue()));
                }
                return new C0727a();
            } catch (Exception e12) {
                throw new OperatorCreationException("unable to create InputDecryptor: " + e12.getMessage(), e12);
            }
        }
    }

    public u e(char[] cArr) {
        return new a(cArr);
    }

    public final boolean f(InterfaceC14516g interfaceC14516g) {
        InterfaceC14516g x10 = C13486b.v(interfaceC14516g).x();
        if (!(x10 instanceof E)) {
            return false;
        }
        E G10 = E.G(x10);
        if (G10.size() == 2) {
            return G10.I(1) instanceof C14539s;
        }
        return false;
    }

    public i g(I i10) {
        this.f26272c = i10;
        return this;
    }

    public i h(String str) {
        this.f26270a = new dk.i(str);
        return this;
    }

    public i i(Provider provider) {
        this.f26270a = new dk.k(provider);
        return this;
    }

    public i j(boolean z10) {
        this.f26271b = z10;
        return this;
    }
}
