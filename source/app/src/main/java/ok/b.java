package Ok;

import Bi.C2376h;
import Bi.InterfaceC2374f;
import Bi.L;
import Li.C2769a;
import Li.C2785j;
import Li.C2795u;
import Li.C2796v;
import Li.V;
import Oi.G;
import Oi.J;
import Sh.d;
import Ti.C;
import Ti.C3092c;
import Ti.C3096g;
import Wi.e;
import Xh.t;
import Xi.B0;
import Xi.C3360o0;
import Xi.w0;
import android.security.keystore.KeyProperties;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import oh.C14549x;
import org.bouncycastle.openssl.EncryptionException;
import org.bouncycastle.openssl.PEMException;
import org.bouncycastle.util.k;

public class b {

    public static final Map f20317a;

    public static final Set f20318b;

    public static final Set f20319c;

    static {
        HashMap hashMap = new HashMap();
        f20317a = hashMap;
        HashSet hashSet = new HashSet();
        f20318b = hashSet;
        HashSet hashSet2 = new HashSet();
        f20319c = hashSet2;
        hashSet.add(t.f29081a1);
        hashSet.add(t.f29087c1);
        hashSet.add(t.f29091d1);
        hashSet.add(t.f29095e1);
        hashSet.add(t.f29099f1);
        hashSet.add(t.f29103g1);
        hashSet2.add(t.f29112j1);
        C14549x c14549x = t.f29123n1;
        hashSet2.add(c14549x);
        C14549x c14549x2 = d.f23373y;
        hashSet2.add(c14549x2);
        C14549x c14549x3 = d.f23314H;
        hashSet2.add(c14549x3);
        C14549x c14549x4 = d.f23323Q;
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
    }

    public static byte[] a(boolean z10, byte[] bArr, char[] cArr, String str, byte[] bArr2) throws PEMException {
        String str2;
        byte[] bArr3;
        C3360o0 c10;
        InterfaceC2374f r10;
        byte[] bArr4 = bArr2;
        Wi.d dVar = new Wi.d();
        Wi.d dVar2 = null;
        if (str.endsWith("-CFB")) {
            str2 = "CFB";
            dVar = null;
        } else {
            str2 = KeyProperties.BLOCK_MODE_CBC;
        }
        if (str.endsWith("-ECB") || "DES-EDE".equals(str) || "DES-EDE3".equals(str)) {
            str2 = KeyProperties.BLOCK_MODE_ECB;
            bArr3 = null;
        } else {
            bArr3 = bArr4;
        }
        if (str.endsWith("-OFB")) {
            str2 = "OFB";
        } else {
            dVar2 = dVar;
        }
        if (str.startsWith("DES-EDE")) {
            c10 = d(cArr, 24, bArr4, !str.startsWith("DES-EDE3"));
            r10 = new C2796v();
        } else if (str.startsWith("DES-")) {
            c10 = c(cArr, 8, bArr4);
            r10 = new C2795u();
        } else if (str.startsWith("BF-")) {
            c10 = c(cArr, 16, bArr4);
            r10 = new C2785j();
        } else {
            int i10 = 128;
            if (str.startsWith("RC2-")) {
                if (str.startsWith("RC2-40-")) {
                    i10 = 40;
                } else if (str.startsWith("RC2-64-")) {
                    i10 = 64;
                }
                B0 b02 = new B0(c(cArr, i10 / 8, bArr4).b(), i10);
                r10 = new V();
                c10 = b02;
            } else {
                if (!str.startsWith("AES-")) {
                    throw new EncryptionException("unknown encryption with private key: " + str);
                }
                if (bArr4.length > 8) {
                    byte[] bArr5 = new byte[8];
                    System.arraycopy(bArr4, 0, bArr5, 0, 8);
                    bArr4 = bArr5;
                }
                if (!str.startsWith("AES-128-")) {
                    if (str.startsWith("AES-192-")) {
                        i10 = 192;
                    } else {
                        if (!str.startsWith("AES-256-")) {
                            throw new EncryptionException("unknown AES encryption with private key: " + str);
                        }
                        i10 = 256;
                    }
                }
                c10 = c(cArr, i10 / 8, bArr4);
                r10 = C2769a.r();
            }
        }
        if (str2.equals(KeyProperties.BLOCK_MODE_CBC)) {
            r10 = C3092c.m(r10);
        } else if (str2.equals("CFB")) {
            r10 = C3096g.q(r10, r10.c() * 8);
        } else if (str2.equals("OFB")) {
            r10 = new C(r10, r10.c() * 8);
        }
        try {
            C2376h c2376h = dVar2 == null ? new C2376h(r10) : new e(r10, dVar2);
            if (bArr3 == null) {
                c2376h.f(z10, c10);
            } else {
                c2376h.f(z10, new w0(c10, bArr3));
            }
            int c11 = c2376h.c(bArr.length);
            byte[] bArr6 = new byte[c11];
            int h10 = c2376h.h(bArr, 0, bArr.length, bArr6, 0);
            int a10 = h10 + c2376h.a(bArr6, h10);
            if (a10 == c11) {
                return bArr6;
            }
            byte[] bArr7 = new byte[a10];
            System.arraycopy(bArr6, 0, bArr7, 0, a10);
            return bArr7;
        } catch (Exception e10) {
            throw new EncryptionException("exception using cipher - please check password and data.", e10);
        }
    }

    public static C3360o0 b(String str, char[] cArr, byte[] bArr, int i10) {
        J j10 = new J(new Ii.J());
        j10.j(L.b(cArr), bArr, i10);
        return (C3360o0) j10.e(e(str));
    }

    public static C3360o0 c(char[] cArr, int i10, byte[] bArr) throws PEMException {
        return d(cArr, i10, bArr, false);
    }

    public static C3360o0 d(char[] cArr, int i10, byte[] bArr, boolean z10) throws PEMException {
        G g10 = new G();
        g10.j(L.b(cArr), bArr, 1);
        C3360o0 c3360o0 = (C3360o0) g10.e(i10 * 8);
        if (!z10 || c3360o0.b().length != 24) {
            return c3360o0;
        }
        byte[] b10 = c3360o0.b();
        System.arraycopy(b10, 0, b10, 16, 8);
        return new C3360o0(b10);
    }

    public static int e(String str) {
        Map map = f20317a;
        if (map.containsKey(str)) {
            return ((Integer) map.get(str)).intValue();
        }
        throw new IllegalStateException("no key size for algorithm: " + str);
    }

    public static boolean f(C14549x c14549x) {
        return c14549x.J().startsWith(t.f29094d4.J());
    }

    public static boolean g(C14549x c14549x) {
        return f20318b.contains(c14549x);
    }

    public static boolean h(C14549x c14549x) {
        return f20319c.contains(c14549x);
    }
}
