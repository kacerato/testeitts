package org.bouncycastle.jce;

import Xh.B;
import Xh.C3330e;
import Xh.t;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import com.android.apksig.internal.oid.OidConstants;
import hi.B0;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import ki.r;
import oh.A0;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.w;
import yh.InterfaceC16192a;

public class e extends C3330e {

    public static Hashtable f101514e = new Hashtable();

    public static Hashtable f101515f = new Hashtable();

    public static Hashtable f101516g = new Hashtable();

    public static Hashtable f101517h = new Hashtable();

    public static Set f101518i = new HashSet();

    static {
        f101514e.put("MD2WITHRSAENCRYPTION", new C14549x("1.2.840.113549.1.1.2"));
        f101514e.put("MD2WITHRSA", new C14549x("1.2.840.113549.1.1.2"));
        f101514e.put("MD5WITHRSAENCRYPTION", new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA));
        f101514e.put("MD5WITHRSA", new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA));
        f101514e.put("RSAWITHMD5", new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA));
        f101514e.put("SHA1WITHRSAENCRYPTION", new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA));
        f101514e.put("SHA1WITHRSA", new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA));
        Hashtable hashtable = f101514e;
        C14549x c14549x = t.f29059U0;
        hashtable.put("SHA224WITHRSAENCRYPTION", c14549x);
        f101514e.put("SHA224WITHRSA", c14549x);
        Hashtable hashtable2 = f101514e;
        C14549x c14549x2 = t.f29049R0;
        hashtable2.put("SHA256WITHRSAENCRYPTION", c14549x2);
        f101514e.put("SHA256WITHRSA", c14549x2);
        Hashtable hashtable3 = f101514e;
        C14549x c14549x3 = t.f29051S0;
        hashtable3.put("SHA384WITHRSAENCRYPTION", c14549x3);
        f101514e.put("SHA384WITHRSA", c14549x3);
        Hashtable hashtable4 = f101514e;
        C14549x c14549x4 = t.f29055T0;
        hashtable4.put("SHA512WITHRSAENCRYPTION", c14549x4);
        f101514e.put("SHA512WITHRSA", c14549x4);
        Hashtable hashtable5 = f101514e;
        C14549x c14549x5 = t.f29045Q0;
        hashtable5.put("SHA1WITHRSAANDMGF1", c14549x5);
        f101514e.put("SHA224WITHRSAANDMGF1", c14549x5);
        f101514e.put("SHA256WITHRSAANDMGF1", c14549x5);
        f101514e.put("SHA384WITHRSAANDMGF1", c14549x5);
        f101514e.put("SHA512WITHRSAANDMGF1", c14549x5);
        f101514e.put("RSAWITHSHA1", new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA));
        Hashtable hashtable6 = f101514e;
        C14549x c14549x6 = InterfaceC3890b.f33241g;
        hashtable6.put("RIPEMD128WITHRSAENCRYPTION", c14549x6);
        f101514e.put("RIPEMD128WITHRSA", c14549x6);
        Hashtable hashtable7 = f101514e;
        C14549x c14549x7 = InterfaceC3890b.f33240f;
        hashtable7.put("RIPEMD160WITHRSAENCRYPTION", c14549x7);
        f101514e.put("RIPEMD160WITHRSA", c14549x7);
        Hashtable hashtable8 = f101514e;
        C14549x c14549x8 = InterfaceC3890b.f33242h;
        hashtable8.put("RIPEMD256WITHRSAENCRYPTION", c14549x8);
        f101514e.put("RIPEMD256WITHRSA", c14549x8);
        f101514e.put("SHA1WITHDSA", new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA));
        f101514e.put("DSAWITHSHA1", new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA));
        Hashtable hashtable9 = f101514e;
        C14549x c14549x9 = Sh.d.f23334a0;
        hashtable9.put("SHA224WITHDSA", c14549x9);
        Hashtable hashtable10 = f101514e;
        C14549x c14549x10 = Sh.d.f23336b0;
        hashtable10.put("SHA256WITHDSA", c14549x10);
        f101514e.put("SHA384WITHDSA", Sh.d.f23338c0);
        f101514e.put("SHA512WITHDSA", Sh.d.f23340d0);
        Hashtable hashtable11 = f101514e;
        C14549x c14549x11 = r.f95301E5;
        hashtable11.put("SHA1WITHECDSA", c14549x11);
        Hashtable hashtable12 = f101514e;
        C14549x c14549x12 = r.f95309K5;
        hashtable12.put("SHA224WITHECDSA", c14549x12);
        Hashtable hashtable13 = f101514e;
        C14549x c14549x13 = r.f95311L5;
        hashtable13.put("SHA256WITHECDSA", c14549x13);
        Hashtable hashtable14 = f101514e;
        C14549x c14549x14 = r.f95313M5;
        hashtable14.put("SHA384WITHECDSA", c14549x14);
        Hashtable hashtable15 = f101514e;
        C14549x c14549x15 = r.f95315N5;
        hashtable15.put("SHA512WITHECDSA", c14549x15);
        f101514e.put("ECDSAWITHSHA1", c14549x11);
        Hashtable hashtable16 = f101514e;
        C14549x c14549x16 = InterfaceC16192a.f130282n;
        hashtable16.put("GOST3411WITHGOST3410", c14549x16);
        f101514e.put("GOST3410WITHGOST3411", c14549x16);
        Hashtable hashtable17 = f101514e;
        C14549x c14549x17 = InterfaceC16192a.f130283o;
        hashtable17.put("GOST3411WITHECGOST3410", c14549x17);
        f101514e.put("GOST3411WITHECGOST3410-2001", c14549x17);
        f101514e.put("GOST3411WITHGOST3410-2001", c14549x17);
        f101517h.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA), "SHA1WITHRSA");
        f101517h.put(c14549x, "SHA224WITHRSA");
        f101517h.put(c14549x2, "SHA256WITHRSA");
        f101517h.put(c14549x3, "SHA384WITHRSA");
        f101517h.put(c14549x4, "SHA512WITHRSA");
        f101517h.put(c14549x16, "GOST3411WITHGOST3410");
        f101517h.put(c14549x17, "GOST3411WITHECGOST3410");
        f101517h.put(new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA), "MD5WITHRSA");
        f101517h.put(new C14549x("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        f101517h.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA), "SHA1WITHDSA");
        f101517h.put(c14549x11, "SHA1WITHECDSA");
        f101517h.put(c14549x12, "SHA224WITHECDSA");
        f101517h.put(c14549x13, "SHA256WITHECDSA");
        f101517h.put(c14549x14, "SHA384WITHECDSA");
        f101517h.put(c14549x15, "SHA512WITHECDSA");
        f101517h.put(Bj.b.f1913k, "SHA1WITHRSA");
        Hashtable hashtable18 = f101517h;
        C14549x c14549x18 = Bj.b.f1912j;
        hashtable18.put(c14549x18, "SHA1WITHDSA");
        f101517h.put(c14549x9, "SHA224WITHDSA");
        f101517h.put(c14549x10, "SHA256WITHDSA");
        f101516g.put(t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        f101516g.put(r.f95349s6, "DSA");
        f101518i.add(c14549x11);
        f101518i.add(c14549x12);
        f101518i.add(c14549x13);
        f101518i.add(c14549x14);
        f101518i.add(c14549x15);
        f101518i.add(r.f95350t6);
        f101518i.add(c14549x18);
        f101518i.add(c14549x9);
        f101518i.add(c14549x10);
        f101518i.add(c14549x16);
        f101518i.add(c14549x17);
        C14549x c14549x19 = Bj.b.f1911i;
        A0 a02 = A0.f98776c;
        f101515f.put("SHA1WITHRSAANDMGF1", A(new C13486b(c14549x19, a02), 20));
        f101515f.put("SHA224WITHRSAANDMGF1", A(new C13486b(Sh.d.f23343f, a02), 28));
        f101515f.put("SHA256WITHRSAANDMGF1", A(new C13486b(Sh.d.f23337c, a02), 32));
        f101515f.put("SHA384WITHRSAANDMGF1", A(new C13486b(Sh.d.f23339d, a02), 48));
        f101515f.put("SHA512WITHRSAANDMGF1", A(new C13486b(Sh.d.f23341e, a02), 64));
    }

    public e(String str, B0 b02, PublicKey publicKey, G g10, PrivateKey privateKey) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        this(str, b02, publicKey, g10, privateKey, C14720a.f101701e);
    }

    public static B A(C13486b c13486b, int i10) {
        return new B(c13486b, new C13486b(t.f29037O0, c13486b), new C14539s(i10), new C14539s(1L));
    }

    public static String B(C14549x c14549x) {
        return t.f29141u1.A(c14549x) ? KeyProperties.DIGEST_MD5 : Bj.b.f1911i.A(c14549x) ? "SHA1" : Sh.d.f23343f.A(c14549x) ? "SHA224" : Sh.d.f23337c.A(c14549x) ? "SHA256" : Sh.d.f23339d.A(c14549x) ? "SHA384" : Sh.d.f23341e.A(c14549x) ? "SHA512" : InterfaceC3890b.f33237c.A(c14549x) ? "RIPEMD128" : InterfaceC3890b.f33236b.A(c14549x) ? "RIPEMD160" : InterfaceC3890b.f33238d.A(c14549x) ? "RIPEMD256" : InterfaceC16192a.f130270b.A(c14549x) ? "GOST3411" : c14549x.J();
    }

    public static String E(C13486b c13486b) {
        InterfaceC14516g x10 = c13486b.x();
        if (x10 == null || A0.f98776c.z(x10) || !c13486b.u().A(t.f29045Q0)) {
            return c13486b.u().J();
        }
        return B(B.v(x10).u().u()) + "withRSAandMGF1";
    }

    public static E G(byte[] bArr) {
        try {
            return (E) new oh.r(bArr).k();
        } catch (Exception unused) {
            throw new IllegalArgumentException("badly encoded request");
        }
    }

    public static B0 z(X500Principal x500Principal) {
        try {
            return new j(x500Principal.getEncoded());
        } catch (IOException unused) {
            throw new IllegalArgumentException("can't convert name");
        }
    }

    public PublicKey C() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException {
        return D(C14720a.f101701e);
    }

    public PublicKey D(String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException {
        h0 y10 = this.f28963b.y();
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(new C14538r0(y10).J());
            C13486b u10 = y10.u();
            try {
                return str == null ? KeyFactory.getInstance(u10.u().J()).generatePublic(x509EncodedKeySpec) : KeyFactory.getInstance(u10.u().J(), str).generatePublic(x509EncodedKeySpec);
            } catch (NoSuchAlgorithmException e10) {
                if (f101516g.get(u10.u()) == null) {
                    throw e10;
                }
                String str2 = (String) f101516g.get(u10.u());
                return str == null ? KeyFactory.getInstance(str2).generatePublic(x509EncodedKeySpec) : KeyFactory.getInstance(str2, str).generatePublic(x509EncodedKeySpec);
            }
        } catch (IOException unused) {
            throw new InvalidKeyException("error decoding public key");
        } catch (InvalidKeySpecException unused2) {
            throw new InvalidKeyException("error decoding public key");
        }
    }

    public final void F(Signature signature, InterfaceC14516g interfaceC14516g) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (interfaceC14516g == null || A0.f98776c.z(interfaceC14516g)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(interfaceC14516g.r().s(InterfaceC14520i.f98892a));
            if (signature.getAlgorithm().endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e10) {
                    throw new SignatureException("Exception extracting parameters: " + e10.getMessage());
                }
            }
        } catch (IOException e11) {
            throw new SignatureException("IOException decoding parameters: " + e11.getMessage());
        }
    }

    public boolean H() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        return I(C14720a.f101701e);
    }

    public boolean I(String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        return J(D(str), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.bouncycastle.jce.e, Xh.e] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public boolean J(PublicKey publicKey, String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        try {
            str = str == 0 ? Signature.getInstance(E(this.f28964c)) : Signature.getInstance(E(this.f28964c), (String) str);
        } catch (NoSuchAlgorithmException e10) {
            if (f101517h.get(this.f28964c.u()) == null) {
                throw e10;
            }
            String str2 = (String) f101517h.get(this.f28964c.u());
            str = str == 0 ? Signature.getInstance(str2) : Signature.getInstance(str2, (String) str);
        }
        F(str, this.f28964c.x());
        str.initVerify(publicKey);
        try {
            str.update(this.f28963b.s(InterfaceC14520i.f98892a));
            return str.verify(this.f28965d.J());
        } catch (Exception e11) {
            throw new SignatureException("exception encoding TBS cert request - " + ((Object) e11));
        }
    }

    @Override
    public byte[] getEncoded() {
        try {
            return s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new RuntimeException(e10.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e(String str, B0 b02, PublicKey publicKey, G g10, PrivateKey privateKey, String str2) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        C13486b c13486b;
        String p10 = w.p(str);
        C14549x c14549x = (C14549x) f101514e.get(p10);
        if (c14549x == null) {
            try {
                c14549x = new C14549x(p10);
            } catch (Exception unused) {
                throw new IllegalArgumentException("Unknown signature type requested");
            }
        }
        if (b02 == null) {
            throw new IllegalArgumentException("subject must not be null");
        }
        if (publicKey == null) {
            throw new IllegalArgumentException("public key must not be null");
        }
        try {
            try {
                if (f101518i.contains(c14549x)) {
                    c13486b = new C13486b(c14549x);
                } else {
                    if (f101515f.containsKey(p10)) {
                        this.f28964c = new C13486b(c14549x, (InterfaceC14516g) f101515f.get(p10));
                        this.f28963b = new Xh.f(b02, h0.w((E) oh.B.B(publicKey.getEncoded())), g10);
                        Signature signature = str2 != null ? Signature.getInstance(str) : Signature.getInstance(str, str2);
                        signature.initSign(privateKey);
                        signature.update(this.f28963b.s(InterfaceC14520i.f98892a));
                        this.f28965d = new C14538r0(signature.sign());
                        return;
                    }
                    c13486b = new C13486b(c14549x, A0.f98776c);
                }
                signature.update(this.f28963b.s(InterfaceC14520i.f98892a));
                this.f28965d = new C14538r0(signature.sign());
                return;
            } catch (Exception e10) {
                throw new IllegalArgumentException("exception encoding TBS cert request - " + ((Object) e10));
            }
            this.f28963b = new Xh.f(b02, h0.w((E) oh.B.B(publicKey.getEncoded())), g10);
            if (str2 != null) {
            }
            signature.initSign(privateKey);
        } catch (IOException unused2) {
            throw new IllegalArgumentException("can't encode public key");
        }
        this.f28964c = c13486b;
    }

    public e(String str, X500Principal x500Principal, PublicKey publicKey, G g10, PrivateKey privateKey) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        this(str, z(x500Principal), publicKey, g10, privateKey, C14720a.f101701e);
    }

    public e(String str, X500Principal x500Principal, PublicKey publicKey, G g10, PrivateKey privateKey, String str2) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, SignatureException {
        this(str, z(x500Principal), publicKey, g10, privateKey, str2);
    }

    public e(E e10) {
        super(e10);
    }

    public e(byte[] bArr) {
        super(G(bArr));
    }
}
