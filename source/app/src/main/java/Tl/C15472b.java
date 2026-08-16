package tl;

import Xh.v;
import bk.AbstractC3895a;
import bk.InterfaceC3897c;
import hi.h0;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public class C15472b extends Provider implements Tj.a {

    public static String f117727b = "BouncyCastle Post-Quantum Security Provider v1.78.1";

    public static String f117728c = "BCPQC";

    public static final Tj.c f117729d = null;

    public static final String f117731f = "org.bouncycastle.pqc.jcajce.provider.";

    public static final Map f117730e = new HashMap();

    public static final String[] f117732g = {"SPHINCS", "LMS", "NH", "XMSS", "SPHINCSPlus", "CMCE", "Frodo", "SABER", "Picnic", "NTRU", "Falcon", "Kyber", "Dilithium", "NTRUPrime", "BIKE", "HQC", "Rainbow"};

    public class a implements PrivilegedAction {
        public a() {
        }

        @Override
        public Object run() {
            C15472b.this.p();
            return null;
        }
    }

    public class C2020b implements PrivilegedAction {

        public final String f117734a;

        public C2020b(String str) {
            this.f117734a = str;
        }

        @Override
        public Object run() {
            try {
                return Class.forName(this.f117734a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public C15472b() {
        super(f117728c, 1.7801d, f117727b);
        AccessController.doPrivileged(new a());
    }

    private static InterfaceC3897c k(C14549x c14549x) {
        InterfaceC3897c interfaceC3897c;
        Map map = f117730e;
        synchronized (map) {
            interfaceC3897c = (InterfaceC3897c) map.get(c14549x);
        }
        return interfaceC3897c;
    }

    public static PrivateKey l(v vVar) throws IOException {
        InterfaceC3897c k10 = k(vVar.y().u());
        if (k10 == null) {
            return null;
        }
        return k10.b(vVar);
    }

    public static PublicKey m(h0 h0Var) throws IOException {
        InterfaceC3897c k10 = k(h0Var.u().u());
        if (k10 == null) {
            return null;
        }
        return k10.a(h0Var);
    }

    private void n(String str, String[] strArr) {
        for (int i10 = 0; i10 != strArr.length; i10++) {
            Class o10 = o(C15472b.class, str + strArr[i10] + "$Mappings");
            if (o10 != null) {
                try {
                    ((AbstractC3895a) o10.newInstance()).a(this);
                } catch (Exception e10) {
                    throw new InternalError("cannot create instance of " + str + strArr[i10] + "$Mappings : " + ((Object) e10));
                }
            }
        }
    }

    public static Class o(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new C2020b(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public void p() {
        n(f117731f, f117732g);
    }

    @Override
    public void a(String str, Object obj) {
        synchronized (f117729d) {
        }
    }

    @Override
    public void b(String str, String str2, Map<String, String> map) {
        d(str, str2);
        h(str, map);
    }

    @Override
    public void c(C14549x c14549x, InterfaceC3897c interfaceC3897c) {
        Map map = f117730e;
        synchronized (map) {
            map.put(c14549x, interfaceC3897c);
        }
    }

    @Override
    public void d(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    @Override
    public InterfaceC3897c e(C14549x c14549x) {
        return (InterfaceC3897c) f117730e.get(c14549x);
    }

    @Override
    public boolean f(String str, String str2) {
        if (!containsKey(str + "." + str2)) {
            if (!containsKey("Alg.Alias." + str + "." + str2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void g(String str, C14549x c14549x, String str2) {
        if (!containsKey(str + "." + str2)) {
            throw new IllegalStateException("primary key (" + str + "." + str2 + ") not found");
        }
        d(str + "." + ((Object) c14549x), str2);
        d(str + ".OID." + ((Object) c14549x), str2);
    }

    @Override
    public void h(String str, Map<String, String> map) {
        for (String str2 : map.o()) {
            String str3 = str + " " + str2;
            if (containsKey(str3)) {
                throw new IllegalStateException("duplicate provider attribute key (" + str3 + ") found");
            }
            put(str3, map.get(str2));
        }
    }

    @Override
    public void i(String str, C14549x c14549x, String str2, Map<String, String> map) {
        g(str, c14549x, str2);
        h(str + "." + ((Object) c14549x), map);
        h(str + ".OID." + ((Object) c14549x), map);
    }
}
