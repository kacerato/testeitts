package org.bouncycastle.cms.jcajce;

import Qk.AbstractC3010c;
import Qk.C3019l;
import Xi.C3344g0;
import android.security.keystore.KeyProperties;
import hi.C13486b;
import java.io.IOException;
import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.A0;
import org.bouncycastle.cms.C14624c;
import org.bouncycastle.cms.CMSException;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public class C14642c {

    public static final Qk.I f100867b = C3019l.f22473a;

    public static final byte[] f100868c = org.bouncycastle.util.w.j("The Cryptographic Message Syntax");

    public static final Set f100869d;

    public static final Map f100870e;

    public static final Map f100871f;

    public static final Map f100872g;

    public static final Map f100873h;

    public static final short[] f100874i;

    public static final short[] f100875j;

    public InterfaceC14643d f100876a;

    public class a implements InterfaceC1914c {

        public final C13486b f100877a;

        public final Key f100878b;

        public a(C13486b c13486b, Key key) {
            this.f100877a = c13486b;
            this.f100878b = key;
        }

        @Override
        public Object a() throws CMSException, InvalidAlgorithmParameterException, InvalidKeyException, InvalidParameterSpecException, NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException {
            C13486b v10 = this.f100877a.u().A(InterfaceC15621l.f120704I8) ? C13486b.v(this.f100877a.x()) : this.f100877a;
            Cipher f10 = C14642c.this.f(v10.u());
            InterfaceC14516g x10 = v10.x();
            String J10 = v10.u().J();
            if (x10 != null && !(x10 instanceof AbstractC14541t)) {
                try {
                    AlgorithmParameters c10 = C14642c.this.c(v10.u());
                    C14640a.o(c10, x10);
                    f10.init(2, this.f100878b, c10);
                } catch (NoSuchAlgorithmException e10) {
                    if (!J10.equals(C14624c.f100685a.J()) && !J10.equals(org.bouncycastle.cms.C.f100474d) && !J10.equals(org.bouncycastle.cms.C.f100476f) && !J10.equals(org.bouncycastle.cms.C.f100478h) && !J10.equals(org.bouncycastle.cms.C.f100479i) && !J10.equals(org.bouncycastle.cms.C.f100480j)) {
                        throw e10;
                    }
                    f10.init(2, this.f100878b, new IvParameterSpec(AbstractC14551y.F(x10).H()));
                }
            } else if (J10.equals(C14624c.f100685a.J()) || J10.equals(org.bouncycastle.cms.C.f100474d) || J10.equals(org.bouncycastle.cms.C.f100476f) || J10.equals(org.bouncycastle.cms.C.f100477g)) {
                f10.init(2, this.f100878b, new IvParameterSpec(new byte[8]));
            } else {
                f10.init(2, this.f100878b);
            }
            return f10;
        }
    }

    public class b implements InterfaceC1914c {

        public final C13486b f100880a;

        public final Key f100881b;

        public b(C13486b c13486b, Key key) {
            this.f100880a = c13486b;
            this.f100881b = key;
        }

        @Override
        public Object a() throws CMSException, InvalidAlgorithmParameterException, InvalidKeyException, InvalidParameterSpecException, NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException {
            Mac n10 = C14642c.this.n(this.f100880a.u());
            InterfaceC14516g x10 = this.f100880a.x();
            this.f100880a.u().J();
            if (x10 == null || (x10 instanceof AbstractC14541t)) {
                n10.init(this.f100881b);
            } else {
                AlgorithmParameters c10 = C14642c.this.c(this.f100880a.u());
                C14640a.o(c10, x10);
                n10.init(this.f100881b, c10.getParameterSpec(AlgorithmParameterSpec.class));
            }
            return n10;
        }
    }

    public interface InterfaceC1914c {
        Object a() throws CMSException, InvalidAlgorithmParameterException, InvalidKeyException, InvalidParameterSpecException, NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException;
    }

    static {
        HashSet hashSet = new HashSet();
        f100869d = hashSet;
        HashMap hashMap = new HashMap();
        f100870e = hashMap;
        HashMap hashMap2 = new HashMap();
        f100871f = hashMap2;
        HashMap hashMap3 = new HashMap();
        f100872g = hashMap3;
        HashMap hashMap4 = new HashMap();
        f100873h = hashMap4;
        C14549x c14549x = C14624c.f100685a;
        hashMap.put(c14549x, "DES");
        C14549x c14549x2 = C14624c.f100687b;
        hashMap.put(c14549x2, "DESEDE");
        C14549x c14549x3 = C14624c.f100695f;
        hashMap.put(c14549x3, KeyProperties.KEY_ALGORITHM_AES);
        C14549x c14549x4 = C14624c.f100697g;
        hashMap.put(c14549x4, KeyProperties.KEY_ALGORITHM_AES);
        C14549x c14549x5 = C14624c.f100699h;
        hashMap.put(c14549x5, KeyProperties.KEY_ALGORITHM_AES);
        C14549x c14549x6 = C14624c.f100689c;
        hashMap.put(c14549x6, "RC2");
        C14549x c14549x7 = C14624c.f100693e;
        hashMap.put(c14549x7, "CAST5");
        C14549x c14549x8 = C14624c.f100713o;
        hashMap.put(c14549x8, "Camellia");
        C14549x c14549x9 = C14624c.f100715p;
        hashMap.put(c14549x9, "Camellia");
        C14549x c14549x10 = C14624c.f100717q;
        hashMap.put(c14549x10, "Camellia");
        C14549x c14549x11 = C14624c.f100719s;
        hashMap.put(c14549x11, "SEED");
        C14549x c14549x12 = Xh.t.f29129p1;
        hashMap.put(c14549x12, "RC4");
        hashMap.put(InterfaceC16192a.f130274f, "GOST28147");
        hashMap2.put(c14549x, "DES/CBC/PKCS5Padding");
        hashMap2.put(c14549x6, "RC2/CBC/PKCS5Padding");
        hashMap2.put(c14549x2, "DESEDE/CBC/PKCS5Padding");
        hashMap2.put(c14549x3, "AES/CBC/PKCS5Padding");
        hashMap2.put(c14549x4, "AES/CBC/PKCS5Padding");
        hashMap2.put(c14549x5, "AES/CBC/PKCS5Padding");
        hashMap2.put(Xh.t.f29017H0, "RSA/ECB/PKCS1Padding");
        hashMap2.put(c14549x7, "CAST5/CBC/PKCS5Padding");
        hashMap2.put(c14549x8, "Camellia/CBC/PKCS5Padding");
        hashMap2.put(c14549x9, "Camellia/CBC/PKCS5Padding");
        hashMap2.put(c14549x10, "Camellia/CBC/PKCS5Padding");
        hashMap2.put(c14549x11, "SEED/CBC/PKCS5Padding");
        hashMap2.put(c14549x12, "RC4");
        hashMap3.put(c14549x2, "DESEDEMac");
        hashMap3.put(c14549x3, "AESMac");
        hashMap3.put(c14549x4, "AESMac");
        hashMap3.put(c14549x5, "AESMac");
        hashMap3.put(c14549x6, "RC2Mac");
        hashMap4.put(A0.a.f100456c.a(), "PBKDF2WITHHMACSHA1");
        hashMap4.put(A0.a.f100457d.a(), "PBKDF2WITHHMACSHA224");
        hashMap4.put(A0.a.f100458e.a(), "PBKDF2WITHHMACSHA256");
        hashMap4.put(A0.a.f100459f.a(), "PBKDF2WITHHMACSHA384");
        hashMap4.put(A0.a.f100460g.a(), "PBKDF2WITHHMACSHA512");
        hashSet.add(Sh.d.f23309C);
        hashSet.add(Sh.d.f23318L);
        hashSet.add(Sh.d.f23327U);
        hashSet.add(Sh.d.f23310D);
        hashSet.add(Sh.d.f23319M);
        hashSet.add(Sh.d.f23328V);
        f100874i = new short[]{189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171};
        f100875j = new short[]{93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253};
    }

    public C14642c(InterfaceC14643d interfaceC14643d) {
        this.f100876a = interfaceC14643d;
    }

    public static Object r(InterfaceC1914c interfaceC1914c) throws CMSException {
        try {
            return interfaceC1914c.a();
        } catch (InvalidAlgorithmParameterException e10) {
            throw new CMSException("algorithm parameters invalid.", e10);
        } catch (InvalidKeyException e11) {
            throw new CMSException("key invalid in message.", e11);
        } catch (NoSuchAlgorithmException e12) {
            throw new CMSException("can't find algorithm.", e12);
        } catch (NoSuchProviderException e13) {
            throw new CMSException("can't find provider.", e13);
        } catch (InvalidParameterSpecException e14) {
            throw new CMSException("MAC algorithm parameter spec invalid.", e14);
        } catch (NoSuchPaddingException e15) {
            throw new CMSException("required padding not supported.", e15);
        }
    }

    public void A(C13486b c13486b, Key key) throws CMSException {
        byte[] bArr;
        int a10 = f100867b.a(c13486b);
        if (a10 > 0) {
            try {
                bArr = key.getEncoded();
            } catch (Exception unused) {
                bArr = null;
            }
            if (bArr != null && bArr.length * 8 != a10) {
                throw new CMSException("Expected key size for algorithm OID not found in recipient.");
            }
        }
    }

    public byte[] a(int i10, char[] cArr, C13486b c13486b, int i11) throws CMSException {
        InterfaceC14643d interfaceC14643d;
        String str;
        Xh.q u10 = Xh.q.u(c13486b.x());
        try {
            if (i10 == 0) {
                interfaceC14643d = this.f100876a;
                str = "PBKDF2with8BIT";
            } else {
                interfaceC14643d = this.f100876a;
                str = (String) f100873h.get(u10.y());
            }
            return interfaceC14643d.s(str).generateSecret(new PBEKeySpec(cArr, u10.z(), u10.v().intValue(), i11)).getEncoded();
        } catch (GeneralSecurityException e10) {
            throw new CMSException("Unable to calculate derived key from password: " + e10.getMessage(), e10);
        }
    }

    public AlgorithmParameterGenerator b(C14549x c14549x) throws GeneralSecurityException {
        String str = (String) f100870e.get(c14549x);
        if (str != null) {
            try {
                return this.f100876a.o(str);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return this.f100876a.o(c14549x.J());
    }

    public AlgorithmParameters c(C14549x c14549x) throws NoSuchAlgorithmException, NoSuchProviderException {
        String str = (String) f100870e.get(c14549x);
        if (str != null) {
            try {
                return this.f100876a.l(str);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return this.f100876a.l(c14549x.J());
    }

    public org.bouncycastle.operator.jcajce.e d(C13486b c13486b, PrivateKey privateKey) {
        return this.f100876a.d(c13486b, C14640a.a(privateKey));
    }

    public org.bouncycastle.operator.jcajce.i e(C13486b c13486b, PrivateKey privateKey, byte[] bArr, byte[] bArr2) {
        return this.f100876a.c(c13486b, C14640a.a(privateKey), bArr, bArr2);
    }

    public Cipher f(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100871f.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.e(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public Cipher g(Key key, C13486b c13486b) throws CMSException {
        return (Cipher) r(new a(c13486b, key));
    }

    public Mac h(Key key, C13486b c13486b) throws CMSException {
        return (Mac) r(new b(c13486b, key));
    }

    public AbstractC3010c i(C13486b c13486b, PrivateKey privateKey) {
        return this.f100876a.h(c13486b, C14640a.a(privateKey));
    }

    public KeyAgreement j(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100870e.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.g(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.g(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create key agreement: " + e10.getMessage(), e10);
        }
    }

    public KeyFactory k(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100870e.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.b(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.b(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create key factory: " + e10.getMessage(), e10);
        }
    }

    public KeyGenerator l(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100870e.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.v(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.v(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create key generator: " + e10.getMessage(), e10);
        }
    }

    public KeyPairGenerator m(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100870e.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.j(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.j(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create key pair generator: " + e10.getMessage(), e10);
        }
    }

    public Mac n(C14549x c14549x) throws CMSException {
        try {
            String str = (String) f100872g.get(c14549x);
            if (str != null) {
                try {
                    return this.f100876a.w(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f100876a.w(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create mac: " + e10.getMessage(), e10);
        }
    }

    public Cipher o(C14549x c14549x) throws CMSException {
        String str = (String) f100870e.get(c14549x);
        if (str == null) {
            throw new CMSException("no name for " + ((Object) c14549x));
        }
        try {
            return this.f100876a.e(str + "RFC3211Wrap");
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public SecretKeyFactory p(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return this.f100876a.s(str);
    }

    public Qk.K q(C13486b c13486b, SecretKey secretKey) {
        return this.f100876a.q(c13486b, secretKey);
    }

    public AlgorithmParameters s(C14549x c14549x, SecretKey secretKey, SecureRandom secureRandom) throws CMSException {
        try {
            AlgorithmParameterGenerator b10 = b(c14549x);
            if (c14549x.A(C14624c.f100689c)) {
                byte[] bArr = new byte[8];
                secureRandom.nextBytes(bArr);
                try {
                    b10.init(new RC2ParameterSpec(secretKey.getEncoded().length * 8, bArr), secureRandom);
                } catch (InvalidAlgorithmParameterException e10) {
                    throw new CMSException("parameters generation error: " + ((Object) e10), e10);
                }
            }
            return b10.generateParameters();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        } catch (GeneralSecurityException e11) {
            throw new CMSException("exception creating algorithm parameter generator: " + ((Object) e11), e11);
        }
    }

    public C13486b t(C14549x c14549x, AlgorithmParameters algorithmParameters) throws CMSException {
        return new C13486b(c14549x, algorithmParameters != null ? C14640a.e(algorithmParameters) : oh.A0.f98776c);
    }

    public C13486b u(C14549x c14549x, AlgorithmParameterSpec algorithmParameterSpec) {
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            return new C13486b(c14549x, new C0(((IvParameterSpec) algorithmParameterSpec).getIV()));
        }
        if (!(algorithmParameterSpec instanceof RC2ParameterSpec)) {
            throw new IllegalStateException("unknown parameter spec: " + ((Object) algorithmParameterSpec));
        }
        RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
        int effectiveKeyBits = rC2ParameterSpec.getEffectiveKeyBits();
        if (effectiveKeyBits == -1) {
            return new C13486b(c14549x, new Xh.w(rC2ParameterSpec.getIV()));
        }
        int i10 = effectiveKeyBits;
        if (effectiveKeyBits < 256) {
            i10 = f100874i[effectiveKeyBits];
        }
        return new C13486b(c14549x, new Xh.w(i10, rC2ParameterSpec.getIV()));
    }

    public String v(C14549x c14549x) {
        String str = (String) f100870e.get(c14549x);
        return str == null ? c14549x.J() : str;
    }

    public Key w(Qk.r rVar) {
        if (rVar.b() instanceof Key) {
            return (Key) rVar.b();
        }
        if (rVar.b() instanceof byte[]) {
            return new SecretKeySpec((byte[]) rVar.b(), "ENC");
        }
        throw new IllegalArgumentException("unknown generic key type");
    }

    public Key x(C13486b c13486b, Qk.r rVar) throws CMSException {
        if (!c13486b.u().A(InterfaceC15621l.f120704I8)) {
            return y(c13486b.u(), rVar);
        }
        byte[] encoded = rVar.b() instanceof Key ? ((Key) rVar.b()).getEncoded() : null;
        if (rVar.b() instanceof byte[]) {
            encoded = (byte[]) rVar.b();
        }
        C13486b v10 = C13486b.v(c13486b.x());
        Oi.x xVar = new Oi.x(new Ii.L());
        try {
            xVar.c(new C3344g0(encoded, f100868c, v10.s(InterfaceC14520i.f98892a)));
            xVar.a(encoded, 0, encoded.length);
            return new SecretKeySpec(encoded, v(v10.u()));
        } catch (IOException e10) {
            throw new CMSException("unable to encode enc algorithm parameters", e10);
        }
    }

    public Key y(C14549x c14549x, Qk.r rVar) {
        if (rVar.b() instanceof Key) {
            return (Key) rVar.b();
        }
        if (rVar.b() instanceof byte[]) {
            return new SecretKeySpec((byte[]) rVar.b(), v(c14549x));
        }
        throw new IllegalArgumentException("unknown generic key type");
    }

    public boolean z(C14549x c14549x) {
        return f100869d.contains(c14549x);
    }
}
