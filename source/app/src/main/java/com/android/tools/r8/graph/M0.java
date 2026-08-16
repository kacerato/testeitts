package com.android.tools.r8.graph;

import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.GG;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class M0 implements V0 {

    public static final boolean f36579i = true;

    public boolean f36580a;

    public boolean f36581b;

    public final HashMap f36582c;

    public final GG f36583d;

    public K0 f36584e;

    public final HashMap f36585f;

    public ArrayList f36586g;

    public final C4346a1 f36587h;

    public M0(int i10, A2 a22, boolean z10) {
        this.f36580a = false;
        this.f36581b = false;
        this.f36582c = new HashMap();
        this.f36583d = new GG();
        this.f36584e = null;
        this.f36585f = new HashMap();
        this.f36586g = new ArrayList();
        if (!f36579i && a22 == null) {
            throw new AssertionError();
        }
        this.f36587h = new C4346a1(i10, a22, z10);
    }

    @Override
    public final void a(O0.a aVar) {
        this.f36587h.a(aVar);
        a(false);
    }

    @Override
    public final void a(N0 n02) {
        this.f36587h.f37037b += n02.f36628d;
    }

    @Override
    public final void a(S0 s02) {
        this.f36587h.a(s02);
    }

    @Override
    public final void a(O0.b bVar) {
        this.f36587h.a(bVar);
        a(true);
    }

    @Override
    public final void a(O0.c cVar) {
        this.f36587h.getClass();
    }

    @Override
    public final void a(T0 t02) {
        this.f36580a = true;
    }

    public M0(C4516j1 c4516j1, C4724u1 c4724u1) {
        L2 l22;
        this.f36580a = false;
        this.f36581b = false;
        HashMap hashMap = new HashMap();
        this.f36582c = hashMap;
        GG gg2 = new GG();
        this.f36583d = gg2;
        this.f36584e = null;
        HashMap hashMap2 = new HashMap();
        this.f36585f = hashMap2;
        this.f36586g = new ArrayList();
        boolean z10 = f36579i;
        if (!z10 && (c4516j1 == null || c4516j1.getReference() == null)) {
            throw new AssertionError();
        }
        J0 C10 = c4516j1.Q0().C();
        W0.a l02 = C10.E0().l0();
        if (!z10 && l02 == null) {
            throw new AssertionError();
        }
        this.f36587h = new C4346a1(l02.f36924e, c4516j1.getReference(), c4516j1.F0());
        int i10 = C10.f36458e - C10.f36459f;
        if (!c4516j1.f37314g.n()) {
            L2 l23 = c4724u1.f38083k1;
            M2 B02 = c4516j1.B0();
            C4515j0 c4515j0 = new C4515j0(l23, B02, null);
            C4515j0 c4515j02 = (C4515j0) hashMap2.putIfAbsent(c4515j0, c4515j0);
            c4515j0 = c4515j02 != null ? c4515j02 : c4515j0;
            gg2.a(i10, c4515j0);
            L0 l03 = (L0) hashMap.get(Integer.valueOf(i10));
            if (l03 == null) {
                l03 = new L0();
                hashMap.put(Integer.valueOf(i10), l03);
            }
            l03.f36553a = c4515j0;
            l03.f36554b = c4515j0;
            i10 += EnumC5477Kw0.a(B02).c();
        }
        M2[] m2Arr = c4516j1.getReference().f36127i.f36441f.f36675b;
        L2[] l2Arr = l02.f36925f;
        for (int i11 = 0; i11 < m2Arr.length; i11++) {
            if (i11 < l2Arr.length && (l22 = l2Arr[i11]) != null) {
                C4515j0 c4515j03 = new C4515j0(l22, m2Arr[i11], null);
                C4515j0 c4515j04 = (C4515j0) this.f36585f.putIfAbsent(c4515j03, c4515j03);
                c4515j03 = c4515j04 != null ? c4515j04 : c4515j03;
                this.f36583d.a(i10, c4515j03);
                L0 l04 = (L0) this.f36582c.get(Integer.valueOf(i10));
                if (l04 == null) {
                    l04 = new L0();
                    this.f36582c.put(Integer.valueOf(i10), l04);
                }
                l04.f36553a = c4515j03;
                l04.f36554b = c4515j03;
            }
            i10 += EnumC5477Kw0.a(m2Arr[i11]).c();
        }
        for (O0 o02 : l02.f36926g) {
            o02.a(this);
        }
    }

    @Override
    public final void a(R0 r02) {
        this.f36581b = true;
    }

    @Override
    public final void a(O0.d dVar) {
        int i10 = dVar.f36667d;
        L0 l02 = (L0) this.f36582c.get(Integer.valueOf(i10));
        if (l02 == null) {
            l02 = new L0();
            this.f36582c.put(Integer.valueOf(i10), l02);
        }
        C4515j0 c4515j0 = new C4515j0(dVar.f36668e, dVar.f36669f, dVar.f36670g);
        C4515j0 c4515j02 = (C4515j0) this.f36585f.putIfAbsent(c4515j0, c4515j0);
        if (c4515j02 != null) {
            c4515j0 = c4515j02;
        }
        l02.f36553a = c4515j0;
        l02.f36554b = c4515j0;
    }

    @Override
    public final void a(P0 p02) {
        int i10 = p02.f36692d;
        L0 l02 = (L0) this.f36582c.get(Integer.valueOf(i10));
        if (l02 == null) {
            l02 = new L0();
            this.f36582c.put(Integer.valueOf(i10), l02);
        }
        l02.f36553a = null;
    }

    @Override
    public final void a(Q0 q02) {
        int i10 = q02.f36717d;
        L0 l02 = (L0) this.f36582c.get(Integer.valueOf(i10));
        if (l02 == null) {
            l02 = new L0();
            this.f36582c.put(Integer.valueOf(i10), l02);
        }
        l02.f36553a = l02.f36554b;
    }

    public final void a(boolean z10) {
        if (this.f36584e != null) {
            ArrayList arrayList = this.f36586g;
            K0 k02 = this.f36584e;
            boolean z11 = k02.f36514a;
            int i10 = k02.f36515b;
            boolean z12 = k02.f36516c;
            boolean z13 = k02.f36517d;
            C8051kC c8051kC = new C8051kC(4);
            for (Map.Entry entry : this.f36582c.entrySet()) {
                Integer num = (Integer) entry.getKey();
                C4515j0 c4515j0 = ((L0) entry.getValue()).f36553a;
                if (c4515j0 != null) {
                    c8051kC.a(num, c4515j0);
                }
            }
            arrayList.add(new K0(z11, i10, z12, z13, c8051kC.b(), this.f36584e.b()));
        }
        this.f36584e = new K0(z10, this.f36587h.b(), this.f36580a, this.f36581b, null, this.f36587h.c());
        this.f36580a = false;
        this.f36581b = false;
    }

    public List<K0> a() {
        if (this.f36584e != null) {
            a(false);
            this.f36584e = null;
        }
        ArrayList arrayList = this.f36586g;
        this.f36586g = null;
        return arrayList;
    }
}
