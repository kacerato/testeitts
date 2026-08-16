package org.bouncycastle.operator.jcajce;

import Qk.AbstractC3011d;
import Qk.r;
import Xh.t;
import Xh.x;
import ck.C4206D;
import dk.C12948d;
import hi.C13486b;
import hi.h0;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import javax.crypto.spec.SecretKeySpec;
import nl.C14464h;
import oh.A0;
import oh.C0;
import oh.C14549x;
import org.bouncycastle.operator.OperatorException;
import yh.InterfaceC16192a;

public class f extends AbstractC3011d {

    public static final Set f101957f;

    public static final Map f101958g;

    public OperatorHelper f101959b;

    public Map f101960c;

    public PublicKey f101961d;

    public SecureRandom f101962e;

    static {
        HashSet hashSet = new HashSet();
        f101957f = hashSet;
        hashSet.add(InterfaceC16192a.f130267C);
        hashSet.add(InterfaceC16192a.f130281m);
        hashSet.add(Yh.a.f30589l);
        hashSet.add(Yh.a.f30590m);
        hashSet.add(Yh.a.f30584g);
        hashSet.add(Yh.a.f30585h);
        HashMap hashMap = new HashMap();
        f101958g = hashMap;
        C14549x c14549x = Wh.b.f27785i;
        A0 a02 = A0.f98776c;
        hashMap.put("SHA1", new C13486b(c14549x, a02));
        hashMap.put("SHA-1", new C13486b(c14549x, a02));
        C14549x c14549x2 = Sh.d.f23343f;
        hashMap.put("SHA224", new C13486b(c14549x2, a02));
        hashMap.put("SHA-224", new C13486b(c14549x2, a02));
        C14549x c14549x3 = Sh.d.f23337c;
        hashMap.put("SHA256", new C13486b(c14549x3, a02));
        hashMap.put("SHA-256", new C13486b(c14549x3, a02));
        C14549x c14549x4 = Sh.d.f23339d;
        hashMap.put("SHA384", new C13486b(c14549x4, a02));
        hashMap.put("SHA-384", new C13486b(c14549x4, a02));
        C14549x c14549x5 = Sh.d.f23341e;
        hashMap.put("SHA512", new C13486b(c14549x5, a02));
        hashMap.put("SHA-512", new C13486b(c14549x5, a02));
        C14549x c14549x6 = Sh.d.f23345g;
        hashMap.put("SHA512/224", new C13486b(c14549x6, a02));
        hashMap.put("SHA-512/224", new C13486b(c14549x6, a02));
        hashMap.put("SHA-512(224)", new C13486b(c14549x6, a02));
        C14549x c14549x7 = Sh.d.f23347h;
        hashMap.put("SHA512/256", new C13486b(c14549x7, a02));
        hashMap.put(C14464h.f98323d, new C13486b(c14549x7, a02));
        hashMap.put("SHA-512(256)", new C13486b(c14549x7, a02));
    }

    public f(C13486b c13486b, PublicKey publicKey) {
        super(c13486b);
        this.f101959b = new OperatorHelper(new C12948d());
        this.f101960c = new HashMap();
        this.f101961d = publicKey;
    }

    public static C13486b c(PublicKey publicKey, AlgorithmParameterSpec algorithmParameterSpec) {
        if (!(algorithmParameterSpec instanceof OAEPParameterSpec)) {
            throw new IllegalArgumentException("unknown spec: " + algorithmParameterSpec.getClass().getName());
        }
        OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
        if (!oAEPParameterSpec.getMGFAlgorithm().equals(OAEPParameterSpec.DEFAULT.getMGFAlgorithm())) {
            throw new IllegalArgumentException("unknown MGF: " + oAEPParameterSpec.getMGFAlgorithm());
        }
        if (oAEPParameterSpec.getPSource() instanceof PSource.PSpecified) {
            return new C13486b(t.f29033N0, new x(d(oAEPParameterSpec.getDigestAlgorithm()), new C13486b(t.f29037O0, d(((MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters()).getDigestAlgorithm())), new C13486b(t.f29041P0, new C0(((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue()))));
        }
        throw new IllegalArgumentException("unknown PSource: " + oAEPParameterSpec.getPSource().getAlgorithm());
    }

    public static C13486b d(String str) {
        C13486b c13486b = (C13486b) f101958g.get(str);
        if (c13486b != null) {
            return c13486b;
        }
        throw new IllegalArgumentException("unknown digest name: " + str);
    }

    public static boolean e(C14549x c14549x) {
        return f101957f.contains(c14549x);
    }

    @Override
    public byte[] b(r rVar) throws OperatorException {
        AlgorithmParameters algorithmParameters;
        if (!e(a().u())) {
            Cipher d10 = this.f101959b.d(a().u(), this.f101960c);
            byte[] bArr = null;
            try {
                algorithmParameters = !a().u().A(Wh.b.f27788l) ? this.f101959b.c(a()) : null;
                try {
                    if (algorithmParameters != null) {
                        d10.init(3, this.f101961d, algorithmParameters, this.f101962e);
                    } else {
                        d10.init(3, this.f101961d, this.f101962e);
                    }
                    bArr = d10.wrap(m.a(rVar));
                } catch (IllegalStateException | UnsupportedOperationException | InvalidKeyException | GeneralSecurityException | ProviderException unused) {
                }
            } catch (IllegalStateException | UnsupportedOperationException | InvalidKeyException | GeneralSecurityException | ProviderException unused2) {
                algorithmParameters = null;
            }
            if (bArr != null) {
                return bArr;
            }
            try {
                if (algorithmParameters != null) {
                    d10.init(1, this.f101961d, algorithmParameters, this.f101962e);
                } else {
                    d10.init(1, this.f101961d, this.f101962e);
                }
                return d10.doFinal(m.a(rVar).getEncoded());
            } catch (InvalidKeyException e10) {
                throw new OperatorException("unable to encrypt contents key", e10);
            } catch (GeneralSecurityException e11) {
                throw new OperatorException("unable to encrypt contents key", e11);
            }
        }
        try {
            this.f101962e = Bi.r.i(this.f101962e);
            KeyPairGenerator h10 = this.f101959b.h(a().u());
            h10.initialize(((ECPublicKey) this.f101961d).getParams(), this.f101962e);
            KeyPair generateKeyPair = h10.generateKeyPair();
            byte[] bArr2 = new byte[8];
            this.f101962e.nextBytes(bArr2);
            h0 w10 = h0.w(generateKeyPair.getPublic().getEncoded());
            yh.k kVar = w10.u().u().O(Yh.a.f30579b) ? new yh.k(Yh.a.f30600w, w10, bArr2) : new yh.k(InterfaceC16192a.f130276h, w10, bArr2);
            KeyAgreement g10 = this.f101959b.g(a().u());
            g10.init(generateKeyPair.getPrivate(), new C4206D(kVar.y()));
            g10.doPhase(this.f101961d, true);
            C14549x c14549x = InterfaceC16192a.f130273e;
            SecretKey generateSecret = g10.generateSecret(c14549x.J());
            byte[] encoded = m.a(rVar).getEncoded();
            Cipher e12 = this.f101959b.e(c14549x);
            e12.init(3, generateSecret, new ck.k(kVar.u(), kVar.y()));
            byte[] wrap = e12.wrap(new SecretKeySpec(encoded, "GOST"));
            return new yh.j(new yh.h(org.bouncycastle.util.a.X(wrap, 0, 32), org.bouncycastle.util.a.X(wrap, 32, 36)), kVar).getEncoded();
        } catch (Exception e13) {
            throw new OperatorException("exception wrapping key: " + e13.getMessage(), e13);
        }
    }

    public f f(C14549x c14549x, String str) {
        this.f101960c.put(c14549x, str);
        return this;
    }

    public f g(String str) {
        this.f101959b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public f h(Provider provider) {
        this.f101959b = new OperatorHelper(new dk.k(provider));
        return this;
    }

    public f i(SecureRandom secureRandom) {
        this.f101962e = secureRandom;
        return this;
    }

    public f(AlgorithmParameters algorithmParameters, PublicKey publicKey) throws InvalidParameterSpecException {
        super(c(publicKey, algorithmParameters.getParameterSpec(AlgorithmParameterSpec.class)));
        this.f101959b = new OperatorHelper(new C12948d());
        this.f101960c = new HashMap();
        this.f101961d = publicKey;
    }

    public f(PublicKey publicKey) {
        super(h0.w(publicKey.getEncoded()).u());
        this.f101959b = new OperatorHelper(new C12948d());
        this.f101960c = new HashMap();
        this.f101961d = publicKey;
    }

    public f(X509Certificate x509Certificate) {
        this(x509Certificate.getPublicKey());
    }

    public f(AlgorithmParameterSpec algorithmParameterSpec, PublicKey publicKey) {
        super(c(publicKey, algorithmParameterSpec));
        this.f101959b = new OperatorHelper(new C12948d());
        this.f101960c = new HashMap();
        this.f101961d = publicKey;
    }
}
