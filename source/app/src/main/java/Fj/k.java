package Fj;

import Dj.n;
import Fk.AbstractC2538j;
import Fk.C2528a;
import Fk.C2539k;
import Fk.C2540l;
import Fk.S;
import Fk.m0;
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

public class k extends n {

    public final InterfaceC12950f f7001b;

    public static class a {

        public InterfaceC12950f f7002a = new C12948d();

        public k a(S s10) {
            return new k(s10, this.f7002a);
        }

        public k b(PublicKey publicKey) {
            return new k(publicKey, this.f7002a);
        }

        public a c(String str) {
            this.f7002a = new dk.i(str);
            return this;
        }

        public a d(Provider provider) {
            this.f7002a = new dk.k(provider);
            return this;
        }
    }

    public k(S s10, InterfaceC12950f interfaceC12950f) {
        super(s10);
        this.f7001b = interfaceC12950f;
    }

    public static S b(PublicKey publicKey) {
        if (!(publicKey instanceof ECPublicKey)) {
            throw new IllegalArgumentException("must be ECPublicKey instance");
        }
        ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
        C14549x K10 = C14549x.K(h0.w(publicKey.getEncoded()).u().x());
        if (K10.A(Zh.d.f31273H)) {
            return new S(m0.f7143f, new C2528a.C0133a().b(0).c(C2539k.G(eCPublicKey.getW().getAffineX(), eCPublicKey.getW().getAffineY())).a());
        }
        if (K10.A(InterfaceC3890b.f33255u)) {
            return new S(m0.f7143f, new C2528a.C0133a().b(1).c(C2539k.G(eCPublicKey.getW().getAffineX(), eCPublicKey.getW().getAffineY())).a());
        }
        throw new IllegalArgumentException("unknown curve in public encryption key");
    }

    public PublicKey c() {
        l d10;
        C2528a x10 = this.f5257a.x();
        int y10 = x10.y();
        if (y10 == 0) {
            d10 = Sh.c.d(Zh.d.f31273H);
        } else {
            if (y10 != 1) {
                throw new IllegalStateException("unknown key type");
            }
            d10 = C3889a.j(InterfaceC3890b.f33255u);
        }
        if (!(this.f5257a.x().x() instanceof AbstractC2538j)) {
            throw new IllegalStateException("extension to public verification key not supported");
        }
        AbstractC2538j abstractC2538j = (AbstractC2538j) x10.x();
        AbstractC13875e v10 = d10.v();
        if (!(abstractC2538j instanceof C2539k) && !(abstractC2538j instanceof C2540l)) {
            throw new IllegalStateException("unknown key type");
        }
        jk.i B10 = v10.l(abstractC2538j.u()).B();
        try {
            return this.f7001b.b(KeyProperties.KEY_ALGORITHM_EC).generatePublic(new ECPublicKeySpec(b.c(B10), b.d(d10)));
        } catch (Exception e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }

    public k(PublicKey publicKey, InterfaceC12950f interfaceC12950f) {
        super(b(publicKey));
        this.f7001b = interfaceC12950f;
    }
}
