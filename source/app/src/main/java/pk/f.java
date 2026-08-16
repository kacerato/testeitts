package Pk;

import Bi.InterfaceC2377i;
import Qk.t;
import Qk.u;
import Xh.k;
import Xh.m;
import Xh.o;
import Xh.p;
import Xh.q;
import Xh.s;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.bouncycastle.openssl.PEMException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.w;

public class f {

    public InterfaceC12950f f21567a = new C12948d();

    public class a implements u {

        public final char[] f21568a;

        public class C0523a implements InterfaceC2377i {
            public C0523a() {
            }

            @Override
            public byte[] a(char[] cArr) {
                return w.k(cArr);
            }

            @Override
            public String getType() {
                return "ASCII";
            }
        }

        public class b implements t {

            public final C13486b f21571a;

            public final Cipher f21572b;

            public b(C13486b c13486b, Cipher cipher) {
                this.f21571a = c13486b;
                this.f21572b = cipher;
            }

            @Override
            public C13486b a() {
                return this.f21571a;
            }

            @Override
            public InputStream d(InputStream inputStream) {
                return new Jj.a(inputStream, this.f21572b);
            }
        }

        public a(char[] cArr) {
            this.f21568a = cArr;
        }

        @Override
        public t a(C13486b c13486b) throws OperatorCreationException {
            Cipher e10;
            Key hVar;
            try {
                if (j.m(c13486b.u())) {
                    p v10 = p.v(c13486b.x());
                    m x10 = v10.x();
                    k u10 = v10.u();
                    q qVar = (q) x10.x();
                    int intValue = qVar.v().intValue();
                    byte[] z10 = qVar.z();
                    String J10 = u10.u().J();
                    SecretKey b10 = j.j(qVar.y()) ? j.b(f.this.f21567a, J10, this.f21568a, z10, intValue) : j.c(f.this.f21567a, J10, this.f21568a, z10, intValue, qVar.y());
                    e10 = f.this.f21567a.e(j.e(u10.u()));
                    AlgorithmParameters l10 = f.this.f21567a.l(J10);
                    l10.init(u10.x().r().getEncoded());
                    e10.init(2, b10, l10);
                } else {
                    if (j.k(c13486b.u())) {
                        s v11 = s.v(c13486b.x());
                        e10 = f.this.f21567a.e(j.e(c13486b.u()));
                        hVar = new Hj.m(this.f21568a, v11.u(), v11.x().intValue());
                    } else {
                        if (!j.l(c13486b.u())) {
                            throw new PEMException("Unknown algorithm: " + ((Object) c13486b.u()));
                        }
                        o u11 = o.u(c13486b.x());
                        e10 = f.this.f21567a.e(j.e(c13486b.u()));
                        hVar = new Hj.h(this.f21568a, new C0523a(), u11.x(), u11.v().intValue());
                    }
                    e10.init(2, hVar);
                }
                return new b(c13486b, e10);
            } catch (IOException e11) {
                throw new OperatorCreationException(((Object) c13486b.u()) + " not available: " + e11.getMessage(), e11);
            } catch (GeneralSecurityException e12) {
                throw new OperatorCreationException(((Object) c13486b.u()) + " not available: " + e12.getMessage(), e12);
            }
        }
    }

    public u b(char[] cArr) throws OperatorCreationException {
        return new a(cArr);
    }

    public f c(String str) {
        this.f21567a = new dk.i(str);
        return this;
    }

    public f d(Provider provider) {
        this.f21567a = new dk.k(provider);
        return this;
    }
}
