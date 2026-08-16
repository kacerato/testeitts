package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C10656zq0;
import java.util.Arrays;
import java.util.function.Function;

public final class C5326If0 extends AbstractC5384Jf0 {

    public static final C5326If0 f41161d = new C5326If0("LINVALID;", new String[0]);

    public static final boolean f41162e = true;

    public final String f41163b;

    public final String[] f41164c;

    public C5326If0(String str, String[] strArr) {
        if (!f41162e && !C4932Bl.z(str) && !C4932Bl.G(str)) {
            throw new AssertionError();
        }
        this.f41163b = str;
        this.f41164c = strArr;
    }

    public static C5326If0 a(com.android.tools.r8.graph.A2 a22) {
        return new C5326If0(a22.z0().V0(), X3.a((Object[]) a22.x0().f36675b, (Function) new VI0()));
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        if (!f41162e) {
            eVar.getClass();
            if (!(eVar instanceof C5326If0)) {
                throw new AssertionError();
            }
        }
        return this;
    }

    @Override
    public final C5326If0 h() {
        return this;
    }

    @Override
    public final boolean s() {
        return this != f41161d;
    }

    @Override
    public final String t() {
        return C10656zq0.a("", Arrays.asList(this.f41164c), C10656zq0.a.f54549b) + this.f41163b;
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        if (!(eVar instanceof C5326If0)) {
            return true;
        }
        C5326If0 h10 = eVar.h();
        return this.f41163b.equals(h10.f41163b) && Arrays.equals(this.f41164c, h10.f41164c);
    }
}
