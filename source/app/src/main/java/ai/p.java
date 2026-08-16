package Ai;

import Bi.C2378j;
import Bi.D;
import Bi.InterfaceC2379k;
import Bi.Z;
import Ii.J;
import Ii.K;
import Ii.L;
import Ii.M;
import Ii.O;
import Li.C2769a;
import Li.C2772b0;
import Li.C2795u;
import Li.C2796v;
import Li.V;
import Xh.t;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import hi.C13486b;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import oh.C14549x;
import org.bouncycastle.cms.C14624c;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;

public class p {

    public static final Map f823a;

    public static final Map f824b;

    public static final Set f825c;

    public static final Map f826d;

    public class a implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new J();
        }
    }

    public class b implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new K();
        }
    }

    public class c implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return L.x();
        }
    }

    public class d implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new M();
        }
    }

    public class e implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new O();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f823a = hashMap;
        HashMap hashMap2 = new HashMap();
        f824b = hashMap2;
        HashSet hashSet = new HashSet();
        f825c = hashSet;
        f826d = d();
        C14549x c14549x = C14624c.f100687b;
        hashMap.put(c14549x, "DESEDE");
        C14549x c14549x2 = C14624c.f100695f;
        hashMap.put(c14549x2, KeyProperties.KEY_ALGORITHM_AES);
        C14549x c14549x3 = C14624c.f100697g;
        hashMap.put(c14549x3, KeyProperties.KEY_ALGORITHM_AES);
        C14549x c14549x4 = C14624c.f100699h;
        hashMap.put(c14549x4, KeyProperties.KEY_ALGORITHM_AES);
        hashMap2.put(c14549x, "DESEDEMac");
        hashMap2.put(c14549x2, "AESMac");
        hashMap2.put(c14549x3, "AESMac");
        hashMap2.put(c14549x4, "AESMac");
        hashMap2.put(C14624c.f100689c, "RC2Mac");
        hashSet.add(Sh.d.f23309C);
        hashSet.add(Sh.d.f23318L);
        hashSet.add(Sh.d.f23327U);
        hashSet.add(Sh.d.f23310D);
        hashSet.add(Sh.d.f23319M);
        hashSet.add(Sh.d.f23328V);
    }

    public static Object a(boolean z10, InterfaceC2379k interfaceC2379k, C13486b c13486b) throws CMSException {
        try {
            return org.bouncycastle.crypto.util.c.c(z10, interfaceC2379k, c13486b);
        } catch (IllegalArgumentException e10) {
            throw new CMSException(e10.getMessage(), e10);
        }
    }

    public static Z c(C14549x c14549x) throws CMSException {
        if (Sh.d.f23373y.A(c14549x) || Sh.d.f23314H.A(c14549x) || Sh.d.f23323Q.A(c14549x)) {
            return new C2772b0(C2769a.r());
        }
        if (t.f29123n1.A(c14549x)) {
            return new C2772b0(new C2796v());
        }
        if (Wh.b.f27781e.A(c14549x)) {
            return new C2772b0(new C2795u());
        }
        if (t.f29126o1.A(c14549x)) {
            return new C2772b0(new V());
        }
        throw new CMSException("cannot recognise wrapper: " + ((Object) c14549x));
    }

    public static Map d() {
        HashMap hashMap = new HashMap();
        hashMap.put(t.f29144w1, new a());
        hashMap.put(t.f29147x1, new b());
        hashMap.put(t.f29152z1, new c());
        hashMap.put(t.f29000A1, new d());
        hashMap.put(t.f29003B1, new e());
        return Collections.unmodifiableMap(hashMap);
    }

    public static D f(C13486b c13486b) throws OperatorCreationException {
        return ((Rk.l) f826d.get(c13486b.u())).a(null);
    }

    public C2378j b(C14549x c14549x, int i10, SecureRandom secureRandom) throws CMSException {
        try {
            return org.bouncycastle.crypto.util.d.b(c14549x, secureRandom);
        } catch (IllegalArgumentException e10) {
            throw new CMSException(e10.getMessage(), e10);
        }
    }

    public C13486b e(C14549x c14549x, C3360o0 c3360o0, SecureRandom secureRandom) throws CMSException {
        try {
            return org.bouncycastle.crypto.util.a.a(c14549x, c3360o0.b().length * 8, secureRandom);
        } catch (IllegalArgumentException e10) {
            throw new CMSException(e10.getMessage(), e10);
        }
    }

    public boolean g(C14549x c14549x) {
        return f825c.contains(c14549x);
    }
}
