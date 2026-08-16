package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C9251rQ;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.PQ;
import java.util.function.Consumer;

public final class C10824n0 implements InterfaceC10835p {

    public static final boolean f55383e = true;

    public final PQ f55384a;

    public final O f55385b;

    public final String f55386c;

    public final int f55387d;

    public C10824n0(PQ pq, O o10, int i10, String str) {
        this.f55384a = pq;
        this.f55385b = o10;
        this.f55387d = i10;
        this.f55386c = str;
    }

    @Override
    public final C8699o50 a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        PQ pq = this.f55384a;
        ML ml2 = AbstractC10752b0.f55255a;
        if (pq.a().compareTo(ml2) < 0) {
            pq.a(ml2);
        }
        if (this.f55385b == null) {
            return C8699o50.a(this.f55384a.b(), Boolean.FALSE);
        }
        final C7 c72 = new C7();
        boolean a10 = this.f55385b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7.this.a((C7) obj);
            }
        }, h22, c4798y);
        if (!f55383e && !c72.b()) {
            throw new AssertionError();
        }
        this.f55384a.f43202b = (C9251rQ) c72.a();
        PQ pq2 = this.f55384a;
        pq2.f43204d = 0;
        return C8699o50.a(pq2.b(), Boolean.valueOf(a10));
    }

    @Override
    public final C10824n0 g() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String r() {
        return this.f55386c;
    }

    @Override
    public final ML u() {
        return this.f55384a.f43203c;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        O o10 = this.f55385b;
        if (o10 != null) {
            o10.f55133a.a(interfaceC4403d1);
        }
    }
}
