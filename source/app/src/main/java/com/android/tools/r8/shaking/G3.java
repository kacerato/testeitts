package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.M3;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;

public class G3 extends L3 {

    public static final boolean f56495w = true;

    public final com.android.tools.r8.graph.E0 f56496t;

    final K3 f56497u;

    public ConcurrentHashMap f56498v;

    static {
        new E3(Origin.root());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public G3(Origin origin, Position position, String str, List list, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, List list2, AbstractC11250i4 abstractC11250i4, boolean z11, List list3, K3 k32, com.android.tools.r8.graph.E0 e02) {
        super(origin, position, str, list, s22, s23, z10, enumC11299l3, abstractC11147c3, list2, abstractC11250i4, z11, list3, r14, new M3(r0.f56731a, r0.f56732b, r0.f56733c, r0.f56734d, r0.f56735e, r0.f56736f, r0.f56737g, r0.f56738h, r0.f56739i));
        O3 o32 = O3.f56856e;
        M3.a a10 = M3.a();
        this.f56498v = new ConcurrentHashMap();
        this.f56497u = k32;
        this.f56496t = e02;
    }

    @Override
    public final String A() {
        return "if";
    }

    public final K3 E() {
        return this.f56497u;
    }

    @Override
    public final C6057Ux a(Predicate predicate) {
        return AbstractC6114Vx.b(super.a(predicate), this.f56497u.a(predicate));
    }

    @Override
    public final boolean equals(Object obj) {
        if ((obj instanceof G3) && this.f56497u.equals(((G3) obj).f56497u)) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f56497u.hashCode() + (super.hashCode() * 3);
    }

    @Override
    public final G3 p() {
        return this;
    }

    @Override
    public final StringBuilder a(StringBuilder sb2) {
        super.a(sb2);
        sb2.append('\n');
        return this.f56497u.a(sb2);
    }
}
