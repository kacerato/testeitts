package org.bouncycastle.crypto.util;

import Bi.EnumC2383o;
import Bi.InterfaceC2392y;
import Ii.C2667z;
import Ii.J;
import Ii.K;
import Ii.L;
import Ii.M;
import Ii.N;
import Ii.O;
import Ii.P;
import Ii.Q;
import java.util.HashMap;
import java.util.Map;

public final class g {

    public static final Map f101063a;

    public class a implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new N((N) interfaceC2392y);
        }
    }

    public class b implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new Q((Q) interfaceC2392y);
        }
    }

    public class c implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new Q((Q) interfaceC2392y);
        }
    }

    public class d implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new C2667z((C2667z) interfaceC2392y);
        }
    }

    public class e implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new C2667z((C2667z) interfaceC2392y);
        }
    }

    public class f implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new K((K) interfaceC2392y);
        }
    }

    public class C1915g implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return L.z(interfaceC2392y);
        }
    }

    public class h implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new M((M) interfaceC2392y);
        }
    }

    public class i implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new O((O) interfaceC2392y);
        }
    }

    public class j implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new N((N) interfaceC2392y);
        }
    }

    public class k implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new N((N) interfaceC2392y);
        }
    }

    public class l implements m {
        @Override
        public InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
            return new N((N) interfaceC2392y);
        }
    }

    public interface m {
        InterfaceC2392y a(InterfaceC2392y interfaceC2392y);
    }

    static {
        HashMap hashMap = new HashMap();
        f101063a = hashMap;
        hashMap.put(b().b(), new d());
        hashMap.put(d().b(), new e());
        hashMap.put(f().b(), new f());
        hashMap.put(h().b(), new C1915g());
        hashMap.put(j().b(), new h());
        hashMap.put(t().b(), new i());
        hashMap.put(l().b(), new j());
        hashMap.put(n().b(), new k());
        hashMap.put(p().b(), new l());
        hashMap.put(r().b(), new a());
        hashMap.put(z().b(), new b());
        hashMap.put(A().b(), new c());
    }

    public static InterfaceC2392y A() {
        return new Q(256);
    }

    public static InterfaceC2392y a(InterfaceC2392y interfaceC2392y) {
        return ((m) f101063a.get(interfaceC2392y.b())).a(interfaceC2392y);
    }

    public static InterfaceC2392y b() {
        return new C2667z();
    }

    public static InterfaceC2392y c() {
        return new C2667z();
    }

    public static InterfaceC2392y d() {
        return new J();
    }

    public static InterfaceC2392y e() {
        return new J(EnumC2383o.PRF);
    }

    public static InterfaceC2392y f() {
        return new K();
    }

    public static InterfaceC2392y g() {
        return new K(EnumC2383o.PRF);
    }

    public static InterfaceC2392y h() {
        return L.x();
    }

    public static InterfaceC2392y i() {
        return new L(EnumC2383o.PRF);
    }

    public static InterfaceC2392y j() {
        return new M();
    }

    public static InterfaceC2392y k() {
        return new M(EnumC2383o.PRF);
    }

    public static InterfaceC2392y l() {
        return new N(224);
    }

    public static InterfaceC2392y m() {
        return new N(224, EnumC2383o.PRF);
    }

    public static InterfaceC2392y n() {
        return new N(256);
    }

    public static InterfaceC2392y o() {
        return new N(256, EnumC2383o.PRF);
    }

    public static InterfaceC2392y p() {
        return new N(384);
    }

    public static InterfaceC2392y q() {
        return new N(384, EnumC2383o.PRF);
    }

    public static InterfaceC2392y r() {
        return new N(512);
    }

    public static InterfaceC2392y s() {
        return new N(512, EnumC2383o.PRF);
    }

    public static InterfaceC2392y t() {
        return new O();
    }

    public static InterfaceC2392y u() {
        return new O(EnumC2383o.PRF);
    }

    public static InterfaceC2392y v() {
        return new P(224);
    }

    public static InterfaceC2392y w() {
        return new P(224, EnumC2383o.PRF);
    }

    public static InterfaceC2392y x() {
        return new P(256);
    }

    public static InterfaceC2392y y() {
        return new P(256, EnumC2383o.PRF);
    }

    public static InterfaceC2392y z() {
        return new Q(128);
    }
}
