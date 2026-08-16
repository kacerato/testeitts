package Bi;

import Xi.C3363q;
import Xi.C3371v;
import Xi.C3375z;
import java.math.BigInteger;
import java.security.AccessController;
import java.security.Permission;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;

public final class r {

    public static final Logger f1873a = Logger.getLogger(r.class.getName());

    public static final Permission f1874b = new C2385q(C2385q.f1868c);

    public static final Permission f1875c = new C2385q(C2385q.f1869d);

    public static final Permission f1876d = new C2385q(C2385q.f1870e);

    public static final Permission f1877e = new C2385q(C2385q.f1871f);

    public static final ThreadLocal<Map<String, Object[]>> f1878f = new ThreadLocal<>();

    public static final Map<String, Object[]> f1879g = Collections.synchronizedMap(new HashMap());

    public static final Q f1880h = new e(null);

    public static final InterfaceC2384p f1881i;

    public static final AtomicReference<Q> f1882j;

    public static final boolean f1883k;

    public static final AtomicReference<InterfaceC2384p> f1884l;

    public class a implements InterfaceC2384p {
        @Override
        public void a(InterfaceC2382n interfaceC2382n) {
        }
    }

    public class b implements Q {

        public final SecureRandom f1885a;

        public b(SecureRandom secureRandom) {
            this.f1885a = secureRandom;
        }

        @Override
        public SecureRandom get() {
            return this.f1885a;
        }
    }

    public class c implements PrivilegedAction<Object> {

        public final SecurityManager f1886a;

        public final Permission f1887b;

        public c(SecurityManager securityManager, Permission permission) {
            this.f1886a = securityManager;
            this.f1887b = permission;
        }

        @Override
        public Object run() {
            this.f1886a.checkPermission(this.f1887b);
            return null;
        }
    }

    public static final class d {

        public static final d f1888c = new d("ecImplicitlyCA", ki.l.class);

        public static final d f1889d = new d("dhDefaultParams", C3363q.class);

        public static final d f1890e = new d("dsaDefaultParams", C3375z.class);

        public final String f1891a;

        public final Class f1892b;

        public d(String str, Class cls) {
            this.f1891a = str;
            this.f1892b = cls;
        }
    }

    public static class e implements Q {

        public final ThreadLocal<SecureRandom> f1893a;

        public e() {
            this.f1893a = new ThreadLocal<>();
        }

        @Override
        public SecureRandom get() {
            if (this.f1893a.get() == null) {
                this.f1893a.set(new SecureRandom());
            }
            return this.f1893a.get();
        }

        public e(a aVar) {
            this();
        }
    }

    static {
        a aVar = new a();
        f1881i = aVar;
        f1882j = new AtomicReference<>();
        AtomicReference<InterfaceC2384p> atomicReference = new AtomicReference<>();
        f1884l = atomicReference;
        C3375z c3375z = new C3375z(new BigInteger("fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17", 16), new BigInteger("962eddcc369cba8ebb260ee6b6a126d9346e38c5", 16), new BigInteger("678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4", 16), new Xi.C(em.h.d("b869c82b35d70e1b1ff91b28e37a62ecdc34409b"), 123));
        C3375z c3375z2 = new C3375z(new BigInteger("e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf", 16), new BigInteger("9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511", 16), new BigInteger("30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252", 16), new Xi.C(em.h.d("77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"), 263));
        C3375z c3375z3 = new C3375z(new BigInteger("fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7", 16), new BigInteger("9760508f15230bccb292b982a2eb840bf0581cf5", 16), new BigInteger("f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a", 16), new Xi.C(em.h.d("8d5155894229d5e689ee01e6018a237e2cae64cd"), 92));
        C3375z c3375z4 = new C3375z(new BigInteger("95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b", 16), new BigInteger("f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773", 16), new BigInteger("42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a", 16), new Xi.C(em.h.d("b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"), 497));
        n(d.f1890e, c3375z, c3375z2, c3375z3, c3375z4);
        n(d.f1889d, v(c3375z), v(c3375z2), v(c3375z3), v(c3375z4));
        atomicReference.set(f());
        f1883k = atomicReference.get() != aVar;
    }

    public static void a(InterfaceC2382n interfaceC2382n) {
        f1884l.get().a(interfaceC2382n);
    }

    public static void b(Permission permission) {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            AccessController.doPrivileged(new c(securityManager, permission));
        }
    }

    public static int c(int i10) {
        if (i10 <= 1024) {
            return 160;
        }
        if (i10 <= 2048) {
            return 224;
        }
        if (i10 <= 3072) {
            return 256;
        }
        return i10 <= 7680 ? 384 : 512;
    }

    public static <T> T[] d(d dVar) {
        b(f1874b);
        m(dVar);
        return (T[]) f1879g.remove(dVar.f1891a);
    }

    public static <T> T[] e(d dVar) {
        b(f1875c);
        return (T[]) m(dVar);
    }

    public static InterfaceC2384p f() {
        return f1881i;
    }

    public static <T> T g(d dVar) {
        Object[] p10 = p(dVar);
        if (p10 != null) {
            return (T) p10[0];
        }
        return null;
    }

    public static SecureRandom h() {
        AtomicReference<Q> atomicReference = f1882j;
        androidx.lifecycle.c.a(atomicReference, null, f1880h);
        return atomicReference.get().get();
    }

    public static SecureRandom i(SecureRandom secureRandom) {
        return secureRandom == null ? h() : secureRandom;
    }

    public static InterfaceC2384p j() {
        return f1884l.get();
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [Xi.z, T] */
    /* JADX WARN: Type inference failed for: r4v8, types: [T, Xi.q] */
    public static <T> T k(d dVar, int i10) {
        Object[] p10 = p(dVar);
        if (p10 == null) {
            return null;
        }
        int i11 = 0;
        if (dVar.f1892b.isAssignableFrom(C3363q.class)) {
            while (i11 != p10.length) {
                ?? r42 = (T) ((C3363q) p10[i11]);
                if (r42.f().bitLength() == i10) {
                    return r42;
                }
                i11++;
            }
        } else if (dVar.f1892b.isAssignableFrom(C3375z.class)) {
            while (i11 != p10.length) {
                ?? r43 = (T) ((C3375z) p10[i11]);
                if (r43.b().bitLength() == i10) {
                    return r43;
                }
                i11++;
            }
        }
        return null;
    }

    public static <T> T[] l(d dVar) {
        Object[] p10 = p(dVar);
        if (p10 == null) {
            return null;
        }
        return (T[]) ((Object[]) p10.clone());
    }

    public static Object[] m(d dVar) {
        ThreadLocal<Map<String, Object[]>> threadLocal = f1878f;
        Map<String, Object[]> map = threadLocal.get();
        if (map == null) {
            map = new HashMap<>();
            threadLocal.set(map);
        }
        return map.remove(dVar.f1891a);
    }

    public static <T> void n(d dVar, T... tArr) {
        if (!dVar.f1892b.isAssignableFrom(tArr[0].getClass())) {
            throw new IllegalArgumentException("Bad property value passed");
        }
        o(dVar, tArr);
        f1879g.put(dVar.f1891a, tArr);
    }

    public static <T> void o(d dVar, T[] tArr) {
        ThreadLocal<Map<String, Object[]>> threadLocal = f1878f;
        Map<String, Object[]> map = threadLocal.get();
        if (map == null) {
            map = new HashMap<>();
            threadLocal.set(map);
        }
        map.put(dVar.f1891a, tArr);
    }

    public static Object[] p(d dVar) {
        Map<String, Object[]> map = f1878f.get();
        if (map == null || !map.containsKey(dVar.f1891a)) {
            map = f1879g;
        }
        return map.get(dVar.f1891a);
    }

    public static <T> void q(d dVar, T... tArr) {
        b(f1874b);
        n(dVar, (Object[]) tArr.clone());
    }

    public static void r(SecureRandom secureRandom) {
        b(f1876d);
        if (secureRandom == null) {
            f1882j.set(f1880h);
        } else {
            f1882j.set(new b(secureRandom));
        }
    }

    public static void s(Q q10) {
        b(f1876d);
        f1882j.set(q10);
    }

    public static void t(InterfaceC2384p interfaceC2384p) {
        b(f1877e);
        if (interfaceC2384p == null) {
            interfaceC2384p = f1881i;
        }
        if (!f1883k || org.bouncycastle.util.q.f("org.bouncycastle.constraints.allow_override")) {
            f1884l.set(interfaceC2384p);
        } else {
            f1873a.warning("attempt to override pre-configured constraints ignored");
        }
    }

    public static <T> void u(d dVar, T... tArr) {
        b(f1875c);
        if (!dVar.f1892b.isAssignableFrom(tArr[0].getClass())) {
            throw new IllegalArgumentException("Bad property value passed");
        }
        o(dVar, (Object[]) tArr.clone());
    }

    public static C3363q v(C3375z c3375z) {
        return new C3363q(c3375z.b(), c3375z.a(), c3375z.c(), c(c3375z.b().bitLength()), 0, null, new C3371v(c3375z.d().b(), c3375z.d().a()));
    }
}
