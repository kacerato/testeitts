package Pk;

import Xh.t;
import android.security.keystore.KeyProperties;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;
import org.bouncycastle.openssl.EncryptionException;
import org.bouncycastle.openssl.PEMException;
import org.bouncycastle.util.k;
import yh.InterfaceC16192a;

public class j {

    public static final Map f21608a;

    public static final Set f21609b;

    public static final Set f21610c;

    public static final Map f21611d;

    public static final Map f21612e;

    public static final Map f21613f;

    public static final Map f21614g;

    static {
        HashMap hashMap = new HashMap();
        f21608a = hashMap;
        HashSet hashSet = new HashSet();
        f21609b = hashSet;
        HashSet hashSet2 = new HashSet();
        f21610c = hashSet2;
        HashMap hashMap2 = new HashMap();
        f21611d = hashMap2;
        HashMap hashMap3 = new HashMap();
        f21612e = hashMap3;
        HashMap hashMap4 = new HashMap();
        f21613f = hashMap4;
        HashMap hashMap5 = new HashMap();
        f21614g = hashMap5;
        hashSet.add(t.f29081a1);
        hashSet.add(t.f29087c1);
        hashSet.add(t.f29091d1);
        hashSet.add(t.f29095e1);
        hashSet.add(t.f29099f1);
        hashSet.add(t.f29103g1);
        hashSet2.add(t.f29112j1);
        C14549x c14549x = t.f29123n1;
        hashSet2.add(c14549x);
        C14549x c14549x2 = Sh.d.f23373y;
        hashSet2.add(c14549x2);
        C14549x c14549x3 = Sh.d.f23314H;
        hashSet2.add(c14549x3);
        C14549x c14549x4 = Sh.d.f23323Q;
        hashSet2.add(c14549x4);
        hashMap.put(c14549x.J(), k.j(192));
        hashMap.put(c14549x2.J(), k.j(128));
        hashMap.put(c14549x3.J(), k.j(192));
        hashMap.put(c14549x4.J(), k.j(256));
        hashMap.put(t.f29098e4.J(), k.j(128));
        hashMap.put(t.f29102f4, k.j(40));
        hashMap.put(t.f29110h4, k.j(128));
        hashMap.put(t.f29106g4, k.j(192));
        hashMap.put(t.f29111i4, k.j(128));
        hashMap.put(t.f29115j4, k.j(40));
        C14549x c14549x5 = t.f29144w1;
        hashMap2.put(c14549x5, "PBKDF2withHMACSHA1");
        C14549x c14549x6 = t.f29152z1;
        hashMap2.put(c14549x6, "PBKDF2withHMACSHA256");
        C14549x c14549x7 = t.f29003B1;
        hashMap2.put(c14549x7, "PBKDF2withHMACSHA512");
        C14549x c14549x8 = t.f29147x1;
        hashMap2.put(c14549x8, "PBKDF2withHMACSHA224");
        C14549x c14549x9 = t.f29000A1;
        hashMap2.put(c14549x9, "PBKDF2withHMACSHA384");
        C14549x c14549x10 = Sh.d.f23361o;
        hashMap2.put(c14549x10, "PBKDF2withHMACSHA3-224");
        C14549x c14549x11 = Sh.d.f23363p;
        hashMap2.put(c14549x11, "PBKDF2withHMACSHA3-256");
        C14549x c14549x12 = Sh.d.f23365q;
        hashMap2.put(c14549x12, "PBKDF2withHMACSHA3-384");
        C14549x c14549x13 = Sh.d.f23366r;
        hashMap2.put(c14549x13, "PBKDF2withHMACSHA3-512");
        C14549x c14549x14 = InterfaceC16192a.f130271c;
        hashMap2.put(c14549x14, "PBKDF2withHMACGOST3411");
        hashMap3.put(c14549x5, k.j(20));
        hashMap3.put(c14549x6, k.j(32));
        hashMap3.put(c14549x7, k.j(64));
        hashMap3.put(c14549x8, k.j(28));
        hashMap3.put(c14549x9, k.j(48));
        hashMap3.put(c14549x10, k.j(28));
        hashMap3.put(c14549x11, k.j(32));
        hashMap3.put(c14549x12, k.j(48));
        hashMap3.put(c14549x13, k.j(64));
        hashMap3.put(c14549x14, k.j(32));
        hashMap4.put(c14549x, "DESEDE/CBC/PKCS5Padding");
        hashMap4.put(c14549x2, "AES/CBC/PKCS7Padding");
        hashMap4.put(c14549x3, "AES/CBC/PKCS7Padding");
        hashMap4.put(c14549x4, "AES/CBC/PKCS7Padding");
        hashMap5.put(c14549x.J(), "DESEDE");
        hashMap5.put(c14549x2.J(), KeyProperties.KEY_ALGORITHM_AES);
        hashMap5.put(c14549x3.J(), KeyProperties.KEY_ALGORITHM_AES);
        hashMap5.put(c14549x4.J(), KeyProperties.KEY_ALGORITHM_AES);
    }

    public static byte[] a(boolean z10, InterfaceC12950f interfaceC12950f, byte[] bArr, char[] cArr, String str, byte[] bArr2) throws PEMException {
        String str2;
        String str3;
        String str4;
        String str5;
        byte[] bArr3;
        String str6;
        SecretKey f10;
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
        if (str.endsWith("-CFB")) {
            str2 = "CFB";
            str3 = KeyProperties.ENCRYPTION_PADDING_NONE;
        } else {
            str2 = KeyProperties.BLOCK_MODE_CBC;
            str3 = "PKCS5Padding";
        }
        if (str.endsWith("-ECB") || "DES-EDE".equals(str) || "DES-EDE3".equals(str)) {
            str2 = KeyProperties.BLOCK_MODE_ECB;
            ivParameterSpec = null;
        }
        AlgorithmParameterSpec algorithmParameterSpec = ivParameterSpec;
        if (str.endsWith("-OFB")) {
            str5 = "OFB";
            str4 = KeyProperties.ENCRYPTION_PADDING_NONE;
        } else {
            str4 = str3;
            str5 = str2;
        }
        int i10 = 1;
        if (str.startsWith("DES-EDE")) {
            str6 = "DESede";
            f10 = g(interfaceC12950f, cArr, "DESede", 24, bArr2, !str.startsWith("DES-EDE3"));
        } else if (str.startsWith("DES-")) {
            str6 = "DES";
            f10 = f(interfaceC12950f, cArr, "DES", 8, bArr2);
        } else if (str.startsWith("BF-")) {
            str6 = "Blowfish";
            f10 = f(interfaceC12950f, cArr, "Blowfish", 16, bArr2);
        } else {
            int i11 = 128;
            if (str.startsWith("RC2-")) {
                if (str.startsWith("RC2-40-")) {
                    i11 = 40;
                } else if (str.startsWith("RC2-64-")) {
                    i11 = 64;
                }
                str6 = "RC2";
                f10 = f(interfaceC12950f, cArr, "RC2", i11 / 8, bArr2);
                algorithmParameterSpec = algorithmParameterSpec == null ? new RC2ParameterSpec(i11) : new RC2ParameterSpec(i11, bArr2);
            } else {
                if (!str.startsWith("AES-")) {
                    throw new EncryptionException("unknown encryption with private key");
                }
                if (bArr2.length > 8) {
                    bArr3 = new byte[8];
                    System.arraycopy(bArr2, 0, bArr3, 0, 8);
                } else {
                    bArr3 = bArr2;
                }
                if (!str.startsWith("AES-128-")) {
                    if (str.startsWith("AES-192-")) {
                        i11 = 192;
                    } else {
                        if (!str.startsWith("AES-256-")) {
                            throw new EncryptionException("unknown AES encryption with private key");
                        }
                        i11 = 256;
                    }
                }
                str6 = KeyProperties.KEY_ALGORITHM_AES;
                f10 = f(interfaceC12950f, cArr, KeyProperties.KEY_ALGORITHM_AES, i11 / 8, bArr3);
            }
        }
        try {
            Cipher e10 = interfaceC12950f.e(str6 + "/" + str5 + "/" + str4);
            if (!z10) {
                i10 = 2;
            }
            if (algorithmParameterSpec == null) {
                e10.init(i10, f10);
            } else {
                e10.init(i10, f10, algorithmParameterSpec);
            }
            return e10.doFinal(bArr);
        } catch (Exception e11) {
            throw new EncryptionException("exception using cipher - please check password and data.", e11);
        }
    }

    public static SecretKey b(InterfaceC12950f interfaceC12950f, String str, char[] cArr, byte[] bArr, int i10) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidKeySpecException {
        return new SecretKeySpec(interfaceC12950f.s("PBKDF2with8BIT").generateSecret(new PBEKeySpec(cArr, bArr, i10, h(str))).getEncoded(), d(str));
    }

    public static SecretKey c(InterfaceC12950f interfaceC12950f, String str, char[] cArr, byte[] bArr, int i10, C13486b c13486b) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidKeySpecException {
        String str2 = (String) f21611d.get(c13486b.u());
        if (str2 != null) {
            return new SecretKeySpec(interfaceC12950f.s(str2).generateSecret(new PBEKeySpec(cArr, bArr, i10, h(str))).getEncoded(), str);
        }
        throw new NoSuchAlgorithmException("unknown PRF in PKCS#2: " + ((Object) c13486b.u()));
    }

    public static String d(String str) {
        String str2 = (String) f21614g.get(str);
        return str2 != null ? str2 : str;
    }

    public static String e(C14549x c14549x) {
        String str = (String) f21613f.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public static SecretKey f(InterfaceC12950f interfaceC12950f, char[] cArr, String str, int i10, byte[] bArr) throws PEMException {
        return g(interfaceC12950f, cArr, str, i10, bArr, false);
    }

    public static SecretKey g(InterfaceC12950f interfaceC12950f, char[] cArr, String str, int i10, byte[] bArr, boolean z10) throws PEMException {
        try {
            byte[] encoded = interfaceC12950f.s("PBKDF-OpenSSL").generateSecret(new PBEKeySpec(cArr, bArr, 1, i10 * 8)).getEncoded();
            if (z10 && encoded.length >= 24) {
                System.arraycopy(encoded, 0, encoded, 16, 8);
            }
            return new SecretKeySpec(encoded, str);
        } catch (GeneralSecurityException e10) {
            throw new PEMException("Unable to create OpenSSL PBDKF: " + e10.getMessage(), e10);
        }
    }

    public static int h(String str) {
        Map map = f21608a;
        if (map.containsKey(str)) {
            return ((Integer) map.get(str)).intValue();
        }
        throw new IllegalStateException("no key size for algorithm: " + str);
    }

    public static int i(C14549x c14549x) {
        Map map = f21612e;
        if (map.containsKey(c14549x)) {
            return ((Integer) map.get(c14549x)).intValue();
        }
        throw new IllegalStateException("no salt size for algorithm: " + ((Object) c14549x));
    }

    public static boolean j(C13486b c13486b) {
        return c13486b == null || c13486b.u().A(t.f29144w1);
    }

    public static boolean k(C14549x c14549x) {
        return c14549x.J().startsWith(t.f29094d4.J());
    }

    public static boolean l(C14549x c14549x) {
        return f21609b.contains(c14549x);
    }

    public static boolean m(C14549x c14549x) {
        return f21610c.contains(c14549x);
    }
}
