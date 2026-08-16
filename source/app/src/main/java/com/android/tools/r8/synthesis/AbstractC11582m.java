package com.android.tools.r8.synthesis;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.H9;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.P4;
import com.android.tools.r8.internal.AbstractC8880pA;
import com.android.tools.r8.internal.C7192f30;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.EnumC5372Jb0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC8546nA;
import com.android.tools.r8.internal.RY;
import com.android.tools.r8.internal.SY;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.synthesis.S;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public abstract class AbstractC11582m {

    public static final boolean f58281s = true;

    public final C4724u1 f58282a;

    public final M2 f58283b;

    public final S.b f58284c;

    public final Origin f58285d;

    public ProgramResource.Kind f58289h;

    public M2 f58290i;

    public boolean f58286e = false;

    public boolean f58287f = true;

    public boolean f58288g = false;

    public O2 f58291j = O2.k0();

    public L2 f58292k = null;

    public boolean f58293l = false;

    public final ArrayList f58294m = new ArrayList();

    public final ArrayList f58295n = new ArrayList();

    public final ArrayList f58296o = new ArrayList();

    public final ArrayList f58297p = new ArrayList();

    public final ArrayList f58298q = new ArrayList();

    public final H3.b f58299r = H3.b.f();

    public AbstractC11582m(M2 m22, S.b bVar, C11579l c11579l, C4724u1 c4724u1) {
        this.f58282a = c4724u1;
        this.f58283b = m22;
        this.f58284c = bVar;
        this.f58285d = c11579l.f58275d;
        this.f58290i = c4724u1.f38068i2;
    }

    public static long a(List... listArr) {
        int i10 = AbstractC8880pA.f51464a;
        int i11 = SY.f44229b;
        final C8379mA c8379mA = new C8379mA(new RY());
        for (List list : listArr) {
            list.stream().sorted().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((InterfaceC5580Mq0) obj).a(InterfaceC8546nA.this);
                }
            });
        }
        return c8379mA.f50229a.a().hashCode();
    }

    public abstract com.android.tools.r8.graph.V b();

    public final void b(AbstractCollection abstractCollection) {
        this.f58297p.clear();
        ArrayList arrayList = this.f58297p;
        Objects.requireNonNull(arrayList);
        abstractCollection.forEach(new H9(arrayList));
    }

    public abstract AbstractC11582m c();

    public final AbstractC11582m d() {
        this.f58286e = true;
        this.f58287f = false;
        this.f58288g = true;
        return c();
    }

    public final AbstractC11582m a(List list) {
        O2 o22;
        if (list.isEmpty()) {
            o22 = O2.k0();
        } else {
            o22 = new O2((M2[]) list.toArray(M2.f36589h));
        }
        this.f58291j = o22;
        return c();
    }

    public final AbstractC11582m a(AbstractCollection abstractCollection) {
        this.f58296o.clear();
        ArrayList arrayList = this.f58296o;
        Objects.requireNonNull(arrayList);
        abstractCollection.forEach(new H9(arrayList));
        return c();
    }

    public final AbstractC11582m a(Consumer consumer) {
        N n10 = new N(this);
        consumer.accept(n10);
        this.f58298q.add(n10);
        return c();
    }

    public final com.android.tools.r8.graph.E0 a() {
        boolean z10 = this.f58286e;
        int i10 = 0;
        int i11 = z10 ? 1024 : 0;
        int i12 = this.f58287f ? 16 : 0;
        boolean z11 = this.f58288g;
        int i13 = z11 ? 512 : 0;
        if (!f58281s && z11 && !z10) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.Q g10 = com.android.tools.r8.graph.Q.g(i11 | i12 | i13 | 4097);
        List list = Collections.EMPTY_LIST;
        ArrayList arrayList = this.f58298q;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4516j1 a10 = ((N) obj).a(b());
            if (a10.n1()) {
                this.f58297p.add(a10);
            } else {
                this.f58296o.add(a10);
            }
        }
        com.android.tools.r8.graph.V b10 = b();
        M2 m22 = this.f58283b;
        ProgramResource.Kind kind = this.f58289h;
        Origin origin = this.f58285d;
        M2 m23 = this.f58290i;
        O2 o22 = this.f58291j;
        L2 l22 = this.f58292k;
        H3.b bVar = this.f58299r;
        C4723u0 l02 = C4723u0.l0();
        ArrayList arrayList2 = this.f58294m;
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1[] c4460g1Arr2 = (C4460g1[]) arrayList2.toArray(c4460g1Arr);
        C4460g1[] c4460g1Arr3 = (C4460g1[]) this.f58295n.toArray(c4460g1Arr);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        com.android.tools.r8.graph.E0 a11 = b10.f36880a.a(m22, kind, origin, g10, m23, o22, l22, null, list, list, list, null, list, bVar, l02, c4460g1Arr2, c4460g1Arr3, c4516j1Arr, c4516j1Arr, this.f58282a.f37846D6, new H2.a() {
            @Override
            public final long a(H2 h22) {
                return AbstractC11582m.this.a(h22);
            }
        }, null, EnumC5372Jb0.f41429b);
        if (this.f58293l) {
            N4 b02 = a11.b0();
            if (!N4.f36636d) {
                if (b02.f36638b.h() != 0) {
                    throw new AssertionError();
                }
            } else {
                b02.getClass();
            }
            b02.f36638b = new P4(true, new C7192f30());
        }
        a11.f36252l.a((C4516j1[]) this.f58296o.toArray(c4516j1Arr));
        a11.a((C4516j1[]) this.f58297p.toArray(c4516j1Arr));
        return a11;
    }

    public final long a(H2 h22) {
        return (a(this.f58295n, this.f58294m) * 13) + (a(this.f58297p, this.f58296o) * 7);
    }
}
