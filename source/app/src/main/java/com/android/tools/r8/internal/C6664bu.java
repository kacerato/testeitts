package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.G9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Consumer;

public final class C6664bu extends AbstractC8489mr0 {

    public static final boolean f46886g = true;

    public final com.android.tools.r8.graph.A2 f46887c;

    public final com.android.tools.r8.graph.A2 f46888d;

    public final int f46889e;

    public final LinkedHashMap f46890f;

    public C6664bu(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, LinkedHashMap linkedHashMap, int i10, C4798y c4798y) {
        super(c4798y, m22);
        this.f46887c = a22;
        this.f46888d = a23;
        this.f46890f = linkedHashMap;
        this.f46889e = i10;
    }

    public final void a(G9.a aVar) {
        Iterator<com.android.tools.r8.graph.M2> it = this.f46888d.x0().iterator();
        while (it.hasNext()) {
            aVar.a((InterfaceC8008jy) InterfaceC8008jy.a(it.next()));
        }
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        com.android.tools.r8.graph.M2 k10 = this.f46887c.k(0);
        ArrayList arrayList = new ArrayList();
        int size = this.f46890f.size() + 1;
        C8103ka[] c8103kaArr = new C8103ka[size];
        for (int i10 = 0; i10 < size; i10++) {
            c8103kaArr[i10] = new C8103ka();
        }
        G9 a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(k10)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6664bu.this.a((G9.a) obj);
            }
        }).a();
        arrayList.add(new C8938pa(EnumC5477Kw0.a(k10), 0));
        arrayList.add(new V9(this.f46888d.f38297f));
        arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103kaArr[0]));
        arrayList.add(new C8938pa(EnumC5477Kw0.a((char) k10.f36592f.f36562f[0]), 0));
        arrayList.add(new C7710i9(this.f46888d.f38297f));
        com.android.tools.r8.graph.M2[] m2Arr = this.f46888d.f36127i.f36441f.f36675b;
        int length = m2Arr.length;
        int i11 = 0;
        int i12 = 1;
        while (i11 < length) {
            arrayList.add(new C8938pa(EnumC5477Kw0.a(m2Arr[i11]), i12));
            i11++;
            i12++;
        }
        arrayList.add(new C7437ga(185, this.f46888d, true));
        if (this.f46888d.z0().S0()) {
            arrayList.add(new C6607bb());
        } else {
            arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f46888d.z0())));
        }
        int i13 = 0;
        for (Map.Entry entry : this.f46890f.entrySet()) {
            int i14 = i13 + 1;
            arrayList.add(c8103kaArr[i13]);
            arrayList.add(a10);
            arrayList.add(new C8938pa(EnumC5477Kw0.a((char) k10.f36592f.f36562f[0]), 0));
            arrayList.add(new V9((com.android.tools.r8.graph.M2) entry.getKey()));
            arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103kaArr[i14]));
            arrayList.add(new C8938pa(EnumC5477Kw0.a((char) k10.f36592f.f36562f[0]), 0));
            a(arrayList, (com.android.tools.r8.graph.A2) entry.getValue(), (com.android.tools.r8.graph.M2) entry.getKey());
            if (this.f46888d.z0().S0()) {
                arrayList.add(new C6607bb());
            } else {
                arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f46888d.z0())));
            }
            i13 = i14;
        }
        arrayList.add(c8103kaArr[i13]);
        arrayList.add(new G9(a10.f40404c, a10.f40405d));
        arrayList.add(new C8938pa(EnumC5477Kw0.a((char) k10.f36592f.f36562f[0]), 0));
        a(arrayList, this.f46887c, null);
        if (this.f46888d.z0().S0()) {
            arrayList.add(new C6607bb());
        } else {
            arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f46888d.z0())));
        }
        return a(arrayList);
    }

    public final void a(ArrayList arrayList, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22) {
        if (m22 != null) {
            arrayList.add(new C7710i9(m22));
        }
        com.android.tools.r8.graph.M2[] m2Arr = this.f46888d.f36127i.f36441f.f36675b;
        int length = m2Arr.length;
        int i10 = 0;
        int i11 = 1;
        while (i10 < length) {
            arrayList.add(new C8938pa(EnumC5477Kw0.a(m2Arr[i10]), i11));
            i10++;
            i11++;
        }
        if (this.f46889e != 1 && !this.f50436a.f38408a.g().g(a22.s0())) {
            boolean z10 = f46886g;
            if (!z10 && this.f46889e != 2) {
                throw new AssertionError();
            }
            if (a22.s0().a(this.f50436a.b().f38096l6)) {
                if (!z10 && this.f50436a.g(a22.s0()) != null && !this.f50436a.g(a22.s0()).isInterface()) {
                    throw new AssertionError();
                }
                arrayList.add(new C7437ga(185, a22, true));
            } else {
                if (!z10 && this.f50436a.g(a22.s0()) != null && this.f50436a.g(a22.s0()).isInterface()) {
                    throw new AssertionError();
                }
                arrayList.add(new C7437ga(182, a22, false));
            }
        } else {
            arrayList.add(new C7437ga(184, a22, false));
        }
        if (!this.f46888d.z0().S0() || a22.z0().S0()) {
            return;
        }
        arrayList.add(new C8106kb(a22.z0().T0() ? C8106kb.a.Pop2 : C8106kb.a.Pop));
    }
}
