package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;

public final class C5858Rk0 extends AbstractC7173ex0 {

    public static final boolean f43981c = true;

    public final C4798y f43982b;

    public C5858Rk0(C4798y c4798y) {
        this.f43982b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        if (!f43981c && !this.f43982b.E().a().e()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        com.android.tools.r8.androidapi.a aVar = this.f43982b.f38404S;
        Iterable z02 = h22.z0();
        aVar.getClass();
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        com.android.tools.r8.androidapi.f a10 = aVar.a(z02);
        Iterator<C4516j1> it = h22.z1().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C4516j1 next = it.next();
            if (next.b1()) {
                com.android.tools.r8.androidapi.f fVar = next.f37322o;
                if (fVar.x()) {
                    a10 = com.android.tools.r8.androidapi.g.f35607b;
                    break;
                }
                a10 = a10.a(fVar);
            }
            if (a10.U()) {
                break;
            }
        }
        Iterable z03 = h23.z0();
        int i11 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar2 = com.android.tools.r8.androidapi.h.f35609b;
        com.android.tools.r8.androidapi.f a11 = aVar.a(z03);
        Iterator<C4516j1> it2 = h23.z1().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            C4516j1 next2 = it2.next();
            if (next2.b1()) {
                com.android.tools.r8.androidapi.f fVar2 = next2.f37322o;
                if (fVar2.x()) {
                    a11 = com.android.tools.r8.androidapi.g.f35607b;
                    break;
                }
                a11 = a11.a(fVar2);
            }
            if (a11.U()) {
                break;
            }
        }
        return a10.equals(a11);
    }

    @Override
    public final String f() {
        return "SameApiReferenceLevelPolicy";
    }

    @Override
    public final boolean l() {
        return !this.f43982b.E().a().e();
    }
}
