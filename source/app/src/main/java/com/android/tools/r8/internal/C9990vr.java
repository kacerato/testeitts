package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4346a1;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;

public final class C9990vr extends C4346a1 {

    public static final boolean f53349m = true;

    public final C10157wr f53350g;

    public final ArrayList f53351h;

    public final D60 f53352i;

    public final ArrayList f53353j;

    public int f53354k;

    public boolean f53355l;

    public C9990vr(C10157wr c10157wr, ArrayList arrayList, D60 d60, ArrayList arrayList2, int i10, com.android.tools.r8.graph.A2 a22, boolean z10) {
        super(i10, a22, z10);
        this.f53354k = 0;
        this.f53350g = c10157wr;
        this.f53351h = arrayList;
        this.f53352i = d60;
        this.f53353j = arrayList2;
    }

    @Override
    public final void a(O0.b bVar) {
        super.a(bVar);
        if (!f53349m && a() < 0) {
            throw new AssertionError();
        }
        B60 c10 = c();
        D60 d60 = this.f53352i;
        ArrayList arrayList = this.f53351h;
        C8699o50 a10 = d60.a(c10);
        B60 b60 = (B60) a10.a();
        B60 b602 = (B60) a10.b();
        arrayList.add(new UU(b602.f(), b60));
        C10157wr c10157wr = this.f53350g;
        int b10 = b();
        if (c10157wr.f53624e == null) {
            c10157wr.f53621b = b602.f();
            c10157wr.f53624e = B60.b.t().a(c10157wr.f53621b).a(c10157wr.f53622c).a();
        }
        com.android.tools.r8.graph.U0.a(c10157wr.f53623d, c10157wr.f53624e, b10, b602, c10157wr.f53625f, c10157wr.f53620a, true);
        c10157wr.f53623d = b10;
        c10157wr.f53624e = b602;
        if (b602 != c10) {
            this.f53355l = true;
        }
        this.f53354k = b();
    }

    public final void d() {
        if (this.f53354k != b()) {
            C10157wr c10157wr = this.f53350g;
            int b10 = b();
            c10157wr.f53625f.add(new O0.a(b10 - c10157wr.f53623d));
            c10157wr.f53623d = b10;
            this.f53354k = b();
        }
    }

    @Override
    public final void a(O0.c cVar) {
        this.f53353j.add(cVar);
    }

    @Override
    public final void a(com.android.tools.r8.graph.T0 t02) {
        this.f53353j.add(t02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.R0 r02) {
        this.f53353j.add(r02);
    }

    @Override
    public final void a(O0.d dVar) {
        d();
        this.f53353j.add(dVar);
    }

    @Override
    public final void a(com.android.tools.r8.graph.P0 p02) {
        d();
        this.f53353j.add(p02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.Q0 q02) {
        d();
        this.f53353j.add(q02);
    }
}
