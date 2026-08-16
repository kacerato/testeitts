package dk;

import Xh.t;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import oh.A0;
import oh.C14549x;
import rj.InterfaceC15189a;
import vj.InterfaceC15855a;
import yh.InterfaceC16192a;
import yj.InterfaceC16198c;

public class h {

    public static Map<C14549x, String> f84745a = new HashMap();

    public static Map<String, C13486b> f84746b = new HashMap();

    static {
        f84745a.put(t.f29135s1, "MD2");
        f84745a.put(t.f29138t1, "MD4");
        f84745a.put(t.f29141u1, KeyProperties.DIGEST_MD5);
        Map<C14549x, String> map = f84745a;
        C14549x c14549x = Bj.b.f1911i;
        map.put(c14549x, "SHA-1");
        Map<C14549x, String> map2 = f84745a;
        C14549x c14549x2 = Sh.d.f23343f;
        map2.put(c14549x2, "SHA-224");
        Map<C14549x, String> map3 = f84745a;
        C14549x c14549x3 = Sh.d.f23337c;
        map3.put(c14549x3, "SHA-256");
        Map<C14549x, String> map4 = f84745a;
        C14549x c14549x4 = Sh.d.f23339d;
        map4.put(c14549x4, "SHA-384");
        Map<C14549x, String> map5 = f84745a;
        C14549x c14549x5 = Sh.d.f23341e;
        map5.put(c14549x5, "SHA-512");
        f84745a.put(Sh.d.f23345g, "SHA-512(224)");
        f84745a.put(Sh.d.f23347h, "SHA-512(256)");
        f84745a.put(InterfaceC3890b.f33237c, "RIPEMD-128");
        f84745a.put(InterfaceC3890b.f33236b, "RIPEMD-160");
        f84745a.put(InterfaceC3890b.f33238d, "RIPEMD-128");
        f84745a.put(InterfaceC15855a.f121635d, "RIPEMD-128");
        f84745a.put(InterfaceC15855a.f121634c, "RIPEMD-160");
        f84745a.put(InterfaceC16192a.f130270b, "GOST3411");
        f84745a.put(InterfaceC15189a.f109058g, "Tiger");
        f84745a.put(InterfaceC15855a.f121636e, "Whirlpool");
        Map<C14549x, String> map6 = f84745a;
        C14549x c14549x6 = Sh.d.f23349i;
        map6.put(c14549x6, "SHA3-224");
        Map<C14549x, String> map7 = f84745a;
        C14549x c14549x7 = Sh.d.f23351j;
        map7.put(c14549x7, "SHA3-256");
        Map<C14549x, String> map8 = f84745a;
        C14549x c14549x8 = Sh.d.f23353k;
        map8.put(c14549x8, "SHA3-384");
        Map<C14549x, String> map9 = f84745a;
        C14549x c14549x9 = Sh.d.f23355l;
        map9.put(c14549x9, "SHA3-512");
        f84745a.put(Sh.d.f23357m, "SHAKE128");
        f84745a.put(Sh.d.f23359n, "SHAKE256");
        f84745a.put(Fh.b.f6869d0, "SM3");
        Map<C14549x, String> map10 = f84745a;
        C14549x c14549x10 = InterfaceC16198c.f130352N;
        map10.put(c14549x10, "BLAKE3-256");
        f84746b.put("SHA-1", new C13486b(c14549x, A0.f98776c));
        f84746b.put("SHA-224", new C13486b(c14549x2));
        f84746b.put("SHA224", new C13486b(c14549x2));
        f84746b.put("SHA-256", new C13486b(c14549x3));
        f84746b.put("SHA256", new C13486b(c14549x3));
        f84746b.put("SHA-384", new C13486b(c14549x4));
        f84746b.put("SHA384", new C13486b(c14549x4));
        f84746b.put("SHA-512", new C13486b(c14549x5));
        f84746b.put("SHA512", new C13486b(c14549x5));
        f84746b.put("SHA3-224", new C13486b(c14549x6));
        f84746b.put("SHA3-256", new C13486b(c14549x7));
        f84746b.put("SHA3-384", new C13486b(c14549x8));
        f84746b.put("SHA3-512", new C13486b(c14549x9));
        f84746b.put("BLAKE3-256", new C13486b(c14549x10));
    }

    public static C13486b a(String str) {
        if (f84746b.containsKey(str)) {
            return f84746b.get(str);
        }
        throw new IllegalArgumentException("unknown digest: " + str);
    }

    public static String b(C14549x c14549x) {
        String str = f84745a.get(c14549x);
        return str != null ? str : c14549x.J();
    }
}
