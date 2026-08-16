package fj;

import Ah.h;
import Ah.k;
import Ah.n;
import Ah.o;
import android.security.keystore.KeyProperties;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.i;
import oh.C14549x;
import org.bouncycastle.eac.EACException;
import rk.InterfaceC15191b;
import rk.InterfaceC15195f;
import rk.InterfaceC15196g;

public class C13232c {

    public InterfaceC13231b f86393a = new C13230a();

    public static EllipticCurve a(AbstractC13875e abstractC13875e) {
        return new EllipticCurve(c(abstractC13875e.v()), abstractC13875e.p().v(), abstractC13875e.r().v(), null);
    }

    public static AbstractC13875e b(EllipticCurve ellipticCurve, BigInteger bigInteger, int i10) {
        ECField field = ellipticCurve.getField();
        BigInteger a10 = ellipticCurve.getA();
        BigInteger b10 = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            return new AbstractC13875e.f(((ECFieldFp) field).getP(), a10, b10, bigInteger, BigInteger.valueOf(i10));
        }
        throw new IllegalStateException("not implemented yet!!!");
    }

    public static ECField c(InterfaceC15191b interfaceC15191b) {
        if (C13873c.p(interfaceC15191b)) {
            return new ECFieldFp(interfaceC15191b.b());
        }
        InterfaceC15195f d10 = ((InterfaceC15196g) interfaceC15191b).d();
        int[] b10 = d10.b();
        return new ECFieldF2m(d10.a(), org.bouncycastle.util.a.R0(org.bouncycastle.util.a.Z(b10, 1, b10.length - 1)));
    }

    public static i d(AbstractC13875e abstractC13875e, ECPoint eCPoint) {
        return abstractC13875e.i(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    public final PublicKey e(k kVar) throws EACException, InvalidKeySpecException {
        try {
            return this.f86393a.b("ECDSA").generatePublic(new ECPublicKeySpec(i(kVar), g(kVar)));
        } catch (NoSuchAlgorithmException e10) {
            throw new EACException("cannot find algorithm ECDSA: " + e10.getMessage(), e10);
        } catch (NoSuchProviderException e11) {
            throw new EACException("cannot find provider: " + e11.getMessage(), e11);
        }
    }

    public PublicKey f(n nVar) throws EACException, InvalidKeySpecException {
        if (nVar.v().O(h.f641r)) {
            return e((k) nVar);
        }
        o oVar = (o) nVar;
        try {
            return this.f86393a.b(KeyProperties.KEY_ALGORITHM_RSA).generatePublic(new RSAPublicKeySpec(oVar.x(), oVar.y()));
        } catch (NoSuchAlgorithmException e10) {
            throw new EACException("cannot find algorithm ECDSA: " + e10.getMessage(), e10);
        } catch (NoSuchProviderException e11) {
            throw new EACException("cannot find provider: " + e11.getMessage(), e11);
        }
    }

    public final ECParameterSpec g(k kVar) {
        if (!kVar.E()) {
            throw new IllegalArgumentException("Public key does not contains EC Params");
        }
        AbstractC13875e.f fVar = new AbstractC13875e.f(kVar.B(), kVar.z(), kVar.D(), kVar.A(), kVar.y());
        i l10 = fVar.l(kVar.x());
        return new ECParameterSpec(a(fVar), new ECPoint(l10.f().v(), l10.g().v()), kVar.A(), kVar.y().intValue());
    }

    public n h(C14549x c14549x, PublicKey publicKey) {
        if (publicKey instanceof RSAPublicKey) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKey;
            return new o(c14549x, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        }
        ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
        ECParameterSpec params = eCPublicKey.getParams();
        EllipticCurve curve = params.getCurve();
        AbstractC13875e b10 = b(curve, params.getOrder(), params.getCofactor());
        return new k(c14549x, ((ECFieldFp) curve.getField()).getP(), curve.getA(), curve.getB(), d(b10, params.getGenerator()).l(false), params.getOrder(), d(b10, eCPublicKey.getW()).l(false), params.getCofactor());
    }

    public final ECPoint i(k kVar) {
        if (!kVar.E()) {
            throw new IllegalArgumentException("Public key does not contains EC Params");
        }
        i.e eVar = (i.e) new AbstractC13875e.f(kVar.B(), kVar.z(), kVar.D(), kVar.A(), kVar.y()).l(kVar.C());
        return new ECPoint(eVar.f().v(), eVar.g().v());
    }

    public C13232c j(String str) {
        this.f86393a = new C13233d(str);
        return this;
    }

    public C13232c k(Provider provider) {
        this.f86393a = new C13234e(provider);
        return this;
    }
}
