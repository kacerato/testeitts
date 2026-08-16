package Fj;

import Dj.o;
import Fk.AbstractC2538j;
import Fk.C2539k;
import Fk.C2540l;
import Fk.L;
import Fk.M;
import Fk.T;
import android.security.keystore.KeyProperties;
import bi.C3889a;
import bi.InterfaceC3890b;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.h0;
import java.security.Provider;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPublicKeySpec;
import jk.AbstractC13875e;
import ki.l;
import oh.C14549x;

public class h extends o {

    public final InterfaceC12950f f6987b;

    public static class a {

        public InterfaceC12950f f6988a = new C12948d();

        public h a(T t10) {
            return new h(t10, this.f6988a);
        }

        public h b(PublicKey publicKey) {
            return new h(publicKey, this.f6988a);
        }

        public a c(String str) {
            this.f6988a = new dk.i(str);
            return this;
        }

        public a d(Provider provider) {
            this.f6988a = new dk.k(provider);
            return this;
        }
    }

    public h(T t10, InterfaceC12950f interfaceC12950f) {
        super(t10);
        this.f6987b = interfaceC12950f;
    }

    public static T b(ECPublicKey eCPublicKey) {
        C14549x K10 = C14549x.K(h0.w(eCPublicKey.getEncoded()).u().x());
        if (K10.A(Zh.d.f31273H)) {
            return new T(0, C2539k.F(L.u().b(eCPublicKey.getW().getAffineX()).e(eCPublicKey.getW().getAffineY()).a()));
        }
        if (K10.A(InterfaceC3890b.f33255u)) {
            return new T(1, C2539k.F(L.u().b(eCPublicKey.getW().getAffineX()).e(eCPublicKey.getW().getAffineY()).a()));
        }
        if (K10.A(InterfaceC3890b.f33259y)) {
            return new T(2, C2540l.D(M.u().b(eCPublicKey.getW().getAffineX()).e(eCPublicKey.getW().getAffineY()).a()));
        }
        throw new IllegalArgumentException("unknown curve in public encryption key");
    }

    public PublicKey c() {
        l d10;
        C14549x c14549x;
        int y10 = this.f5258a.y();
        if (y10 != 0) {
            if (y10 == 1) {
                c14549x = InterfaceC3890b.f33255u;
            } else {
                if (y10 != 2) {
                    throw new IllegalStateException("unknown key type");
                }
                c14549x = InterfaceC3890b.f33259y;
            }
            d10 = C3889a.j(c14549x);
        } else {
            d10 = Sh.c.d(Zh.d.f31273H);
        }
        AbstractC13875e v10 = d10.v();
        if (!(this.f5258a.A() instanceof AbstractC2538j)) {
            throw new IllegalStateException("extension to public verification key not supported");
        }
        AbstractC2538j abstractC2538j = (AbstractC2538j) this.f5258a.A();
        if (!(abstractC2538j instanceof C2539k) && !(abstractC2538j instanceof C2540l)) {
            throw new IllegalStateException("unknown key type");
        }
        jk.i B10 = v10.l(abstractC2538j.u()).B();
        try {
            return this.f6987b.b(KeyProperties.KEY_ALGORITHM_EC).generatePublic(new ECPublicKeySpec(b.c(B10), b.d(d10)));
        } catch (Exception e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }

    public h(PublicKey publicKey, InterfaceC12950f interfaceC12950f) {
        super(b((ECPublicKey) publicKey));
        this.f6987b = interfaceC12950f;
    }
}
