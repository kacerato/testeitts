package org.bouncycastle.operator.jcajce;

import Qk.n;
import Xh.B;
import Xh.t;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import dk.C12945a;
import dk.InterfaceC12950f;
import hi.C13486b;
import hi.h0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import li.C14146h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;
import yh.InterfaceC16192a;

public class OperatorHelper {

    public static final Map f101914b;

    public static final Map f101915c;

    public static final Map f101916d;

    public static final Map f101917e;

    public static final Map f101918f;

    public static n f101919g;

    public InterfaceC12950f f101920a;

    public static class OpCertificateException extends CertificateException {
        private Throwable cause;

        public OpCertificateException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f101914b = hashMap;
        HashMap hashMap2 = new HashMap();
        f101915c = hashMap2;
        HashMap hashMap3 = new HashMap();
        f101916d = hashMap3;
        HashMap hashMap4 = new HashMap();
        f101917e = hashMap4;
        HashMap hashMap5 = new HashMap();
        f101918f = hashMap5;
        f101919g = new n();
        hashMap.put(Wh.b.f27785i, "SHA1");
        hashMap.put(Sh.d.f23343f, "SHA224");
        hashMap.put(Sh.d.f23337c, "SHA256");
        hashMap.put(Sh.d.f23339d, "SHA384");
        hashMap.put(Sh.d.f23341e, "SHA512");
        hashMap.put(InterfaceC3890b.f33237c, "RIPEMD128");
        hashMap.put(InterfaceC3890b.f33236b, "RIPEMD160");
        hashMap.put(InterfaceC3890b.f33238d, "RIPEMD256");
        hashMap2.put(t.f29017H0, "RSA/ECB/PKCS1Padding");
        hashMap2.put(Wh.b.f27788l, "Elgamal/ECB/PKCS1Padding");
        hashMap2.put(t.f29033N0, "RSA/ECB/OAEPPadding");
        hashMap2.put(InterfaceC16192a.f130281m, "ECGOST3410");
        C14549x c14549x = t.f29020I2;
        hashMap3.put(c14549x, "DESEDEWrap");
        hashMap3.put(t.f29024J2, "RC2Wrap");
        C14549x c14549x2 = Sh.d.f23308B;
        hashMap3.put(c14549x2, "AESWrap");
        C14549x c14549x3 = Sh.d.f23317K;
        hashMap3.put(c14549x3, "AESWrap");
        C14549x c14549x4 = Sh.d.f23326T;
        hashMap3.put(c14549x4, "AESWrap");
        C14549x c14549x5 = Uh.a.f26185d;
        hashMap3.put(c14549x5, "CamelliaWrap");
        C14549x c14549x6 = Uh.a.f26186e;
        hashMap3.put(c14549x6, "CamelliaWrap");
        C14549x c14549x7 = Uh.a.f26187f;
        hashMap3.put(c14549x7, "CamelliaWrap");
        C14549x c14549x8 = Oh.a.f20094d;
        hashMap3.put(c14549x8, "SEEDWrap");
        C14549x c14549x9 = t.f29123n1;
        hashMap3.put(c14549x9, "DESede");
        hashMap5.put(c14549x, org.bouncycastle.util.k.j(192));
        hashMap5.put(c14549x2, org.bouncycastle.util.k.j(128));
        hashMap5.put(c14549x3, org.bouncycastle.util.k.j(192));
        hashMap5.put(c14549x4, org.bouncycastle.util.k.j(256));
        hashMap5.put(c14549x5, org.bouncycastle.util.k.j(128));
        hashMap5.put(c14549x6, org.bouncycastle.util.k.j(192));
        hashMap5.put(c14549x7, org.bouncycastle.util.k.j(256));
        hashMap5.put(c14549x8, org.bouncycastle.util.k.j(128));
        hashMap5.put(c14549x9, org.bouncycastle.util.k.j(192));
        hashMap4.put(Sh.d.f23371w, KeyProperties.KEY_ALGORITHM_AES);
        hashMap4.put(Sh.d.f23373y, KeyProperties.KEY_ALGORITHM_AES);
        hashMap4.put(Sh.d.f23314H, KeyProperties.KEY_ALGORITHM_AES);
        hashMap4.put(Sh.d.f23323Q, KeyProperties.KEY_ALGORITHM_AES);
        hashMap4.put(c14549x9, "DESede");
        hashMap4.put(t.f29126o1, "RC2");
    }

    public OperatorHelper(InterfaceC12950f interfaceC12950f) {
        this.f101920a = interfaceC12950f;
    }

    public static String l(C14549x c14549x) {
        String b10 = dk.h.b(c14549x);
        int indexOf = b10.indexOf(45);
        if (indexOf <= 0 || b10.startsWith("SHA3")) {
            return b10;
        }
        return b10.substring(0, indexOf) + b10.substring(indexOf + 1);
    }

    public static String o(C13486b c13486b) {
        return f101919g.b(c13486b);
    }

    public X509Certificate a(C14146h c14146h) throws CertificateException {
        try {
            return (X509Certificate) this.f101920a.r("X.509").generateCertificate(new ByteArrayInputStream(c14146h.getEncoded()));
        } catch (IOException e10) {
            throw new OpCertificateException("cannot get encoded form of certificate: " + e10.getMessage(), e10);
        } catch (NoSuchProviderException e11) {
            throw new OpCertificateException("cannot find factory provider: " + e11.getMessage(), e11);
        }
    }

    public PublicKey b(h0 h0Var) throws OperatorCreationException {
        try {
            return this.f101920a.b(h0Var.u().u().J()).generatePublic(new X509EncodedKeySpec(h0Var.getEncoded()));
        } catch (IOException e10) {
            throw new OperatorCreationException("cannot get encoded form of key: " + e10.getMessage(), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new OperatorCreationException("cannot create key factory: " + e11.getMessage(), e11);
        } catch (NoSuchProviderException e12) {
            throw new OperatorCreationException("cannot find factory provider: " + e12.getMessage(), e12);
        } catch (InvalidKeySpecException e13) {
            throw new OperatorCreationException("cannot create key factory: " + e13.getMessage(), e13);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AlgorithmParameters c(C13486b c13486b) throws OperatorCreationException {
        AlgorithmParameters l10;
        if (c13486b.u().A(t.f29017H0)) {
            return null;
        }
        try {
            if (c13486b.u().A(t.f29033N0)) {
                try {
                    l10 = this.f101920a.l("OAEP");
                } catch (NoSuchAlgorithmException unused) {
                } catch (NoSuchProviderException e10) {
                    throw new OperatorCreationException("cannot create algorithm parameters: " + e10.getMessage(), e10);
                }
                if (l10 == null) {
                    try {
                        l10 = this.f101920a.l(c13486b.u().J());
                    } catch (NoSuchAlgorithmException unused2) {
                        return null;
                    } catch (NoSuchProviderException e11) {
                        throw new OperatorCreationException("cannot create algorithm parameters: " + e11.getMessage(), e11);
                    }
                }
                l10.init(c13486b.x().r().getEncoded());
                return l10;
            }
            l10.init(c13486b.x().r().getEncoded());
            return l10;
        } catch (IOException e12) {
            throw new OperatorCreationException("cannot initialise algorithm parameters: " + e12.getMessage(), e12);
        }
        l10 = null;
        if (l10 == null) {
        }
    }

    public Cipher d(C14549x c14549x, Map map) throws OperatorCreationException {
        try {
            String str = !map.isEmpty() ? (String) map.get(c14549x) : null;
            if (str == null) {
                str = (String) f101915c.get(c14549x);
            }
            if (str != null) {
                try {
                    return this.f101920a.e(str);
                } catch (NoSuchAlgorithmException unused) {
                    if (str.equals("RSA/ECB/PKCS1Padding")) {
                        try {
                            return this.f101920a.e("RSA/NONE/PKCS1Padding");
                        } catch (NoSuchAlgorithmException unused2) {
                        }
                    }
                }
            }
            return this.f101920a.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public Cipher e(C14549x c14549x) throws OperatorCreationException {
        try {
            return this.f101920a.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.security.MessageDigest] */
    public MessageDigest f(C13486b c13486b) throws GeneralSecurityException {
        InterfaceC12950f interfaceC12950f;
        String b10;
        try {
            if (c13486b.u().A(Sh.d.f23368t)) {
                interfaceC12950f = this.f101920a;
                b10 = "SHAKE256-" + ((Object) C14539s.F(c13486b.x()).I());
            } else if (c13486b.u().A(Sh.d.f23367s)) {
                interfaceC12950f = this.f101920a;
                b10 = "SHAKE128-" + ((Object) C14539s.F(c13486b.x()).I());
            } else {
                interfaceC12950f = this.f101920a;
                b10 = dk.h.b(c13486b.u());
            }
            c13486b = interfaceC12950f.m(b10);
            return c13486b;
        } catch (NoSuchAlgorithmException e10) {
            Map map = f101914b;
            if (map.get(c13486b.u()) == null) {
                throw e10;
            }
            return this.f101920a.m((String) map.get(c13486b.u()));
        }
    }

    public KeyAgreement g(C14549x c14549x) throws OperatorCreationException {
        try {
            return this.f101920a.g(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create key agreement: " + e10.getMessage(), e10);
        }
    }

    public KeyPairGenerator h(C14549x c14549x) throws CMSException {
        try {
            return this.f101920a.j(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create key agreement: " + e10.getMessage(), e10);
        }
    }

    public Signature i(C13486b c13486b) {
        try {
            String o10 = o(c13486b);
            String str = KeyProperties.DIGEST_NONE + o10.substring(o10.indexOf("WITH"));
            Signature a10 = this.f101920a.a(str);
            if (c13486b.u().A(t.f29045Q0)) {
                AlgorithmParameters l10 = this.f101920a.l(str);
                C12945a.b(l10, c13486b.x());
                a10.setParameter((PSSParameterSpec) l10.getParameterSpec(PSSParameterSpec.class));
            }
            return a10;
        } catch (Exception unused) {
            return null;
        }
    }

    public Signature j(C13486b c13486b) throws GeneralSecurityException {
        Signature a10;
        String o10 = o(c13486b);
        try {
            a10 = this.f101920a.a(o10);
        } catch (NoSuchAlgorithmException e10) {
            if (!o10.endsWith("WITHRSAANDMGF1")) {
                throw e10;
            }
            a10 = this.f101920a.a(o10.substring(0, o10.indexOf(87)) + "WITHRSASSA-PSS");
        }
        if (c13486b.u().A(t.f29045Q0)) {
            E G10 = E.G(c13486b.x());
            if (q(G10)) {
                try {
                    AlgorithmParameters l10 = this.f101920a.l(KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                    l10.init(G10.getEncoded());
                    a10.setParameter(l10.getParameterSpec(PSSParameterSpec.class));
                } catch (IOException e11) {
                    throw new GeneralSecurityException("unable to process PSS parameters: " + e11.getMessage());
                }
            }
        }
        return a10;
    }

    public Cipher k(C14549x c14549x) throws OperatorCreationException {
        try {
            String str = (String) f101916d.get(c14549x);
            if (str != null) {
                try {
                    return this.f101920a.e(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f101920a.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public String m(C14549x c14549x) {
        String str = (String) f101917e.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public int n(C14549x c14549x) {
        return ((Integer) f101918f.get(c14549x)).intValue();
    }

    public String p(C14549x c14549x) {
        return (String) f101916d.get(c14549x);
    }

    public final boolean q(E e10) throws GeneralSecurityException {
        if (e10 == null || e10.size() == 0) {
            return false;
        }
        B v10 = B.v(e10);
        if (v10.x().u().A(t.f29037O0) && v10.u().equals(C13486b.v(v10.x().x()))) {
            return v10.y().intValue() != f(v10.u()).getDigestLength();
        }
        return true;
    }
}
