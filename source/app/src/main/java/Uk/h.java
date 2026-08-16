package Uk;

import Hj.l;
import Qk.A;
import Qk.r;
import Xh.s;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.OutputStream;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEParameterSpec;
import oh.A0;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class h implements Sk.h {

    public InterfaceC12950f f26262a = new C12948d();

    public class a implements Sk.g {

        public final C13486b f26263a;

        public class C0726a implements A {

            public final C14549x f26265a;

            public final s f26266b;

            public final Mac f26267c;

            public final SecretKey f26268d;

            public C0726a(C14549x c14549x, s sVar, Mac mac, SecretKey secretKey) {
                this.f26265a = c14549x;
                this.f26266b = sVar;
                this.f26267c = mac;
                this.f26268d = secretKey;
            }

            @Override
            public C13486b a() {
                return new C13486b(this.f26265a, this.f26266b);
            }

            @Override
            public byte[] e() {
                return this.f26267c.doFinal();
            }

            @Override
            public r getKey() {
                return new r(a(), this.f26268d.getEncoded());
            }

            @Override
            public OutputStream getOutputStream() {
                return new Jj.d(this.f26267c);
            }
        }

        public a(C13486b c13486b) {
            this.f26263a = c13486b;
        }

        @Override
        public A a(char[] cArr) throws OperatorCreationException {
            s v10 = s.v(this.f26263a.x());
            try {
                C14549x u10 = this.f26263a.u();
                Mac w10 = h.this.f26262a.w(u10.J());
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(v10.u(), v10.x().intValue());
                l lVar = new l(cArr);
                w10.init(lVar, pBEParameterSpec);
                return new C0726a(u10, v10, w10, lVar);
            } catch (Exception e10) {
                throw new OperatorCreationException("unable to create MAC calculator: " + e10.getMessage(), e10);
            }
        }

        @Override
        public C13486b b() {
            return new C13486b(this.f26263a.u(), A0.f98776c);
        }
    }

    @Override
    public Sk.g a(C13486b c13486b) {
        return new a(c13486b);
    }

    public h c(String str) {
        this.f26262a = new dk.i(str);
        return this;
    }

    public h d(Provider provider) {
        this.f26262a = new dk.k(provider);
        return this;
    }
}
