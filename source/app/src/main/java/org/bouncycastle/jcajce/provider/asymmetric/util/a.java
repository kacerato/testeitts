package org.bouncycastle.jcajce.provider.asymmetric.util;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Oi.x;
import Xh.t;
import Xi.C3344g0;
import Xi.C3351k;
import Xi.C3358n0;
import android.security.keystore.KeyProperties;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;
import org.bouncycastle.util.w;
import rj.InterfaceC15189a;
import wj.InterfaceC16012a;
import yh.InterfaceC16192a;
import yj.InterfaceC16198c;

public abstract class a extends KeyAgreementSpi {

    public static final Map<String, C14549x> f101317f;

    public static final Map<String, Integer> f101318g;

    public static final Map<String, String> f101319h;

    public static final Hashtable f101320i;

    public static final Hashtable f101321j;

    public final String f101322a;

    public final InterfaceC2390w f101323b;

    public byte[] f101324c;

    public byte[] f101325d;

    public ck.m f101326e;

    static {
        HashMap hashMap = new HashMap();
        f101317f = hashMap;
        HashMap hashMap2 = new HashMap();
        f101318g = hashMap2;
        HashMap hashMap3 = new HashMap();
        f101319h = hashMap3;
        Hashtable hashtable = new Hashtable();
        f101320i = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f101321j = hashtable2;
        Integer j10 = org.bouncycastle.util.k.j(64);
        Integer j11 = org.bouncycastle.util.k.j(128);
        Integer j12 = org.bouncycastle.util.k.j(192);
        Integer j13 = org.bouncycastle.util.k.j(256);
        hashMap2.put("DES", j10);
        hashMap2.put("DESEDE", j12);
        hashMap2.put("BLOWFISH", j11);
        hashMap2.put(KeyProperties.KEY_ALGORITHM_AES, j13);
        hashMap2.put(Sh.d.f23372x.J(), j11);
        hashMap2.put(Sh.d.f23313G.J(), j12);
        hashMap2.put(Sh.d.f23322P.J(), j13);
        hashMap2.put(Sh.d.f23373y.J(), j11);
        hashMap2.put(Sh.d.f23314H.J(), j12);
        C14549x c14549x = Sh.d.f23323Q;
        hashMap2.put(c14549x.J(), j13);
        hashMap2.put(Sh.d.f23307A.J(), j11);
        hashMap2.put(Sh.d.f23316J.J(), j12);
        hashMap2.put(Sh.d.f23325S.J(), j13);
        hashMap2.put(Sh.d.f23374z.J(), j11);
        hashMap2.put(Sh.d.f23315I.J(), j12);
        hashMap2.put(Sh.d.f23324R.J(), j13);
        C14549x c14549x2 = Sh.d.f23308B;
        hashMap2.put(c14549x2.J(), j11);
        hashMap2.put(Sh.d.f23317K.J(), j12);
        hashMap2.put(Sh.d.f23326T.J(), j13);
        C14549x c14549x3 = Sh.d.f23310D;
        hashMap2.put(c14549x3.J(), j11);
        hashMap2.put(Sh.d.f23319M.J(), j12);
        hashMap2.put(Sh.d.f23328V.J(), j13);
        hashMap2.put(Sh.d.f23309C.J(), j11);
        hashMap2.put(Sh.d.f23318L.J(), j12);
        hashMap2.put(Sh.d.f23327U.J(), j13);
        C14549x c14549x4 = Aj.a.f830d;
        hashMap2.put(c14549x4.J(), j11);
        C14549x c14549x5 = Aj.a.f831e;
        hashMap2.put(c14549x5.J(), j12);
        C14549x c14549x6 = Aj.a.f832f;
        hashMap2.put(c14549x6.J(), j13);
        C14549x c14549x7 = InterfaceC16012a.f127587d;
        hashMap2.put(c14549x7.J(), j11);
        C14549x c14549x8 = t.f29020I2;
        hashMap2.put(c14549x8.J(), j12);
        C14549x c14549x9 = t.f29123n1;
        hashMap2.put(c14549x9.J(), j12);
        C14549x c14549x10 = Bj.b.f1907e;
        hashMap2.put(c14549x10.J(), j10);
        C14549x c14549x11 = InterfaceC16192a.f130274f;
        hashMap2.put(c14549x11.J(), j13);
        hashMap2.put(InterfaceC16192a.f130272d.J(), j13);
        hashMap2.put(InterfaceC16192a.f130273e.J(), j13);
        C14549x c14549x12 = t.f29144w1;
        hashMap2.put(c14549x12.J(), org.bouncycastle.util.k.j(160));
        C14549x c14549x13 = t.f29152z1;
        hashMap2.put(c14549x13.J(), j13);
        C14549x c14549x14 = t.f29000A1;
        hashMap2.put(c14549x14.J(), org.bouncycastle.util.k.j(384));
        C14549x c14549x15 = t.f29003B1;
        hashMap2.put(c14549x15.J(), org.bouncycastle.util.k.j(512));
        hashMap.put("DESEDE", c14549x9);
        hashMap.put(KeyProperties.KEY_ALGORITHM_AES, c14549x);
        C14549x c14549x16 = Aj.a.f829c;
        hashMap.put("CAMELLIA", c14549x16);
        C14549x c14549x17 = InterfaceC16012a.f127584a;
        hashMap.put("SEED", c14549x17);
        hashMap.put("DES", c14549x10);
        hashMap3.put(InterfaceC16198c.f130394u.J(), "CAST5");
        hashMap3.put(InterfaceC16198c.f130396w.J(), "IDEA");
        hashMap3.put(InterfaceC16198c.f130399z.J(), "Blowfish");
        hashMap3.put(InterfaceC16198c.f130339A.J(), "Blowfish");
        hashMap3.put(InterfaceC16198c.f130340B.J(), "Blowfish");
        hashMap3.put(InterfaceC16198c.f130341C.J(), "Blowfish");
        hashMap3.put(Bj.b.f1906d.J(), "DES");
        hashMap3.put(c14549x10.J(), "DES");
        hashMap3.put(Bj.b.f1909g.J(), "DES");
        hashMap3.put(Bj.b.f1908f.J(), "DES");
        hashMap3.put(Bj.b.f1910h.J(), "DESede");
        hashMap3.put(c14549x9.J(), "DESede");
        hashMap3.put(c14549x8.J(), "DESede");
        hashMap3.put(t.f29024J2.J(), "RC2");
        hashMap3.put(c14549x12.J(), "HmacSHA1");
        hashMap3.put(t.f29147x1.J(), KeyProperties.KEY_ALGORITHM_HMAC_SHA224);
        hashMap3.put(c14549x13.J(), KeyProperties.KEY_ALGORITHM_HMAC_SHA256);
        hashMap3.put(c14549x14.J(), KeyProperties.KEY_ALGORITHM_HMAC_SHA384);
        hashMap3.put(c14549x15.J(), KeyProperties.KEY_ALGORITHM_HMAC_SHA512);
        hashMap3.put(Aj.a.f827a.J(), "Camellia");
        hashMap3.put(Aj.a.f828b.J(), "Camellia");
        hashMap3.put(c14549x16.J(), "Camellia");
        hashMap3.put(c14549x4.J(), "Camellia");
        hashMap3.put(c14549x5.J(), "Camellia");
        hashMap3.put(c14549x6.J(), "Camellia");
        hashMap3.put(c14549x7.J(), "SEED");
        hashMap3.put(c14549x17.J(), "SEED");
        hashMap3.put(InterfaceC16012a.f127585b.J(), "SEED");
        hashMap3.put(c14549x11.J(), "GOST28147");
        hashMap3.put(c14549x2.J(), KeyProperties.KEY_ALGORITHM_AES);
        hashMap3.put(c14549x3.J(), KeyProperties.KEY_ALGORITHM_AES);
        hashMap3.put(c14549x3.J(), KeyProperties.KEY_ALGORITHM_AES);
        hashtable.put("DESEDE", c14549x9);
        hashtable.put(KeyProperties.KEY_ALGORITHM_AES, c14549x);
        hashtable.put("DES", c14549x10);
        hashtable2.put("DES", "DES");
        hashtable2.put("DESEDE", "DES");
        hashtable2.put(c14549x10.J(), "DES");
        hashtable2.put(c14549x9.J(), "DES");
        hashtable2.put(c14549x8.J(), "DES");
    }

    public a(String str, InterfaceC2390w interfaceC2390w) {
        this.f101322a = str;
        this.f101323b = interfaceC2390w;
    }

    public static String d(String str) {
        if (str.indexOf(91) > 0) {
            return str.substring(0, str.indexOf(91));
        }
        if (str.startsWith(Sh.d.f23371w.J())) {
            return KeyProperties.KEY_ALGORITHM_AES;
        }
        if (str.startsWith(InterfaceC15189a.f109060i.J())) {
            return "Serpent";
        }
        String str2 = f101319h.get(w.p(str));
        return str2 != null ? str2 : str;
    }

    public static int e(String str) {
        if (str.indexOf(91) > 0) {
            return Integer.parseInt(str.substring(str.indexOf(91) + 1, str.indexOf(93)));
        }
        String p10 = w.p(str);
        Map<String, Integer> map = f101318g;
        if (map.containsKey(p10)) {
            return map.get(p10).intValue();
        }
        return -1;
    }

    public static byte[] g(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int i10 = 0;
        while (i10 < bArr.length && bArr[i10] == 0) {
            i10++;
        }
        int length = bArr.length - i10;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i10, bArr2, 0, length);
        return bArr2;
    }

    public final byte[] a() {
        if (this.f101326e == null) {
            return b();
        }
        byte[] b10 = b();
        byte[] B10 = this.f101326e.d() ? org.bouncycastle.util.a.B(this.f101326e.c(), b10) : org.bouncycastle.util.a.B(b10, this.f101326e.c());
        org.bouncycastle.util.a.n(b10);
        return B10;
    }

    public abstract byte[] b();

    public abstract void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    @Override
    public int engineGenerateSecret(byte[] bArr, int i10) throws IllegalStateException, ShortBufferException {
        byte[] engineGenerateSecret = engineGenerateSecret();
        if (bArr.length - i10 >= engineGenerateSecret.length) {
            System.arraycopy(engineGenerateSecret, 0, bArr, i10, engineGenerateSecret.length);
            return engineGenerateSecret.length;
        }
        throw new ShortBufferException(this.f101322a + " key agreement: need " + engineGenerateSecret.length + " bytes");
    }

    @Override
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            c(key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidKeyException(e10.getMessage());
        }
    }

    public final byte[] f(byte[] bArr, String str, int i10) throws NoSuchAlgorithmException {
        InterfaceC2391x c3358n0;
        InterfaceC2390w interfaceC2390w = this.f101323b;
        if (interfaceC2390w == null) {
            if (i10 <= 0) {
                return bArr;
            }
            int i11 = i10 / 8;
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, 0, bArr2, 0, i11);
            org.bouncycastle.util.a.n(bArr);
            return bArr2;
        }
        if (i10 < 0) {
            throw new NoSuchAlgorithmException("unknown algorithm encountered: " + str);
        }
        int i12 = i10 / 8;
        byte[] bArr3 = new byte[i12];
        if (interfaceC2390w instanceof Ei.c) {
            if (str == null) {
                throw new NoSuchAlgorithmException("algorithm OID is null");
            }
            try {
                c3358n0 = new Ei.b(new C14549x(str), i10, bArr, this.f101324c);
            } catch (IllegalArgumentException unused) {
                throw new NoSuchAlgorithmException("no OID for algorithm: " + str);
            }
        } else {
            if (interfaceC2390w instanceof x) {
                interfaceC2390w.c(new C3344g0(bArr, this.f101325d, this.f101324c));
                this.f101323b.a(bArr3, 0, i12);
                org.bouncycastle.util.a.n(bArr);
                return bArr3;
            }
            c3358n0 = new C3358n0(bArr, this.f101324c);
        }
        this.f101323b.c(c3358n0);
        this.f101323b.a(bArr3, 0, i12);
        org.bouncycastle.util.a.n(bArr);
        return bArr3;
    }

    @Override
    public SecretKey engineGenerateSecret(String str) throws NoSuchAlgorithmException {
        String p10 = w.p(str);
        Hashtable hashtable = f101320i;
        String J10 = hashtable.containsKey(p10) ? ((C14549x) hashtable.get(p10)).J() : str;
        byte[] f10 = f(a(), J10, e(J10));
        String d10 = d(str);
        if (f101321j.containsKey(d10)) {
            C3351k.f(f10);
        }
        return new SecretKeySpec(f10, d10);
    }

    @Override
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec instanceof ck.m) {
            ck.m mVar = (ck.m) algorithmParameterSpec;
            this.f101326e = mVar;
            algorithmParameterSpec = mVar.b();
        } else {
            this.f101326e = null;
        }
        c(key, algorithmParameterSpec, secureRandom);
    }

    @Override
    public byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.f101323b == null) {
            return a();
        }
        byte[] a10 = a();
        try {
            return f(a10, null, a10.length * 8);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }
}
