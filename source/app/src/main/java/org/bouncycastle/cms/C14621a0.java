package org.bouncycastle.cms;

import bi.InterfaceC3890b;
import hi.C13486b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import oh.C14549x;
import yh.InterfaceC16192a;

public class C14621a0 implements N {

    public static final Set f100655a;

    public static final Map f100656b;

    static {
        HashSet hashSet = new HashSet();
        f100655a = hashSet;
        HashMap hashMap = new HashMap();
        f100656b = hashMap;
        hashSet.add(Xh.t.f29018I0);
        hashSet.add(Xh.t.f29022J0);
        hashSet.add(Xh.t.f29026K0);
        hashSet.add(Xh.t.f29030L0);
        hashSet.add(Wh.b.f27779c);
        hashSet.add(Wh.b.f27777a);
        hashSet.add(Wh.b.f27778b);
        hashSet.add(Wh.b.f27787k);
        hashSet.add(InterfaceC3890b.f33241g);
        hashSet.add(InterfaceC3890b.f33240f);
        hashSet.add(InterfaceC3890b.f33242h);
        C14549x c14549x = InterfaceC16192a.f130283o;
        C14549x c14549x2 = InterfaceC16192a.f130281m;
        oh.A0 a02 = oh.A0.f98776c;
        hashMap.put(c14549x, new C13486b(c14549x2, a02));
        hashMap.put(Yh.a.f30586i, new C13486b(Yh.a.f30584g, a02));
        hashMap.put(Yh.a.f30587j, new C13486b(Yh.a.f30585h, a02));
    }

    @Override
    public C13486b a(C13486b c13486b) {
        if (f100655a.contains(c13486b.u())) {
            return new C13486b(Xh.t.f29017H0, oh.A0.f98776c);
        }
        Map map = f100656b;
        return map.containsKey(c13486b.u()) ? (C13486b) map.get(c13486b.u()) : c13486b;
    }
}
