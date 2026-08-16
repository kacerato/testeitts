package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;

public final class C5771Pz {

    public C9001pv f43417a = C9001pv.f51661e;

    public final int f43418b = 1;

    public final C8336lw f43419c = EnumC9504sw.f52486b;

    public final HashMap f43420d = new HashMap();

    public final ArrayList f43421e = new ArrayList();

    public final ArrayList f43422f = new ArrayList();

    public boolean f43423g = false;

    public final int f43424h = 2;

    public final int f43425i = 2;

    public final boolean f43426j = true;

    public final boolean f43427k = true;

    public final C8826os0 f43428l = EnumC9493ss0.f52474b;

    public final C8993ps0 f43429m = EnumC9493ss0.f52475c;

    public final LinkedList f43430n = new LinkedList();

    /* JADX WARN: Multi-variable type inference failed */
    public final C5771Pz a(Class cls, InterfaceC6740cL interfaceC6740cL) {
        if (interfaceC6740cL == 0 && !(interfaceC6740cL instanceof AbstractC9997vt0)) {
            throw new IllegalArgumentException();
        }
        if (interfaceC6740cL != 0) {
            C5009Cu0 c5009Cu0 = new C5009Cu0(cls);
            this.f43421e.add(new C6994dt0(interfaceC6740cL, c5009Cu0, c5009Cu0.f39379b == c5009Cu0.f39378a));
        }
        if (interfaceC6740cL instanceof AbstractC9997vt0) {
            C6164Wt0 c6164Wt0 = AbstractC8164ku0.f49809a;
            this.f43421e.add(new C6107Vt0(new C5009Cu0(cls), (AbstractC9997vt0) interfaceC6740cL));
        }
        return this;
    }

    public final C5713Oz a() {
        C6164Wt0 c6164Wt0;
        C6164Wt0 c6164Wt02;
        ArrayList arrayList = new ArrayList(this.f43422f.size() + this.f43421e.size() + 3);
        arrayList.addAll(this.f43421e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f43422f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        int i10 = this.f43424h;
        int i11 = this.f43425i;
        boolean z10 = AbstractC5632Nn0.f42693a;
        if (i10 != 2 && i11 != 2) {
            C10133wj c10133wj = new C10133wj(AbstractC9966vj.f53209b, i10, i11);
            C6164Wt0 c6164Wt03 = AbstractC8164ku0.f49809a;
            C6164Wt0 c6164Wt04 = new C6164Wt0(Date.class, c10133wj);
            if (z10) {
                C5574Mn0 c5574Mn0 = AbstractC5632Nn0.f42695c;
                c5574Mn0.getClass();
                c6164Wt0 = new C6164Wt0(c5574Mn0.f53210a, new C10133wj(c5574Mn0, i10, i11));
                C5517Ln0 c5517Ln0 = AbstractC5632Nn0.f42694b;
                c5517Ln0.getClass();
                c6164Wt02 = new C6164Wt0(c5517Ln0.f53210a, new C10133wj(c5517Ln0, i10, i11));
            } else {
                c6164Wt0 = null;
                c6164Wt02 = null;
            }
            arrayList.add(c6164Wt04);
            if (z10) {
                arrayList.add(c6164Wt0);
                arrayList.add(c6164Wt02);
            }
        }
        C9001pv c9001pv = this.f43417a;
        C8336lw c8336lw = this.f43419c;
        HashMap hashMap = new HashMap(this.f43420d);
        boolean z11 = this.f43423g;
        boolean z12 = this.f43426j;
        boolean z13 = this.f43427k;
        int i12 = this.f43418b;
        new ArrayList(this.f43421e);
        new ArrayList(this.f43422f);
        return new C5713Oz(c9001pv, c8336lw, hashMap, z11, z12, z13, i12, arrayList, this.f43428l, this.f43429m, new ArrayList(this.f43430n));
    }
}
