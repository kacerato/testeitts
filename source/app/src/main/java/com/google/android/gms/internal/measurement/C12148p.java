package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class C12148p extends AbstractC12103k implements InterfaceC12121m {

    @v2.d
    public final List f62382d;

    @v2.d
    public final List f62383e;

    @v2.d
    public C12079h2 f62384f;

    public C12148p(C12148p c12148p) {
        super(c12148p.f62337b);
        ArrayList arrayList = new ArrayList(c12148p.f62382d.size());
        this.f62382d = arrayList;
        arrayList.addAll(c12148p.f62382d);
        ArrayList arrayList2 = new ArrayList(c12148p.f62383e.size());
        this.f62383e = arrayList2;
        arrayList2.addAll(c12148p.f62383e);
        this.f62384f = c12148p.f62384f;
    }

    @Override
    public final InterfaceC12157q g() {
        return new C12148p(this);
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        C12079h2 c10 = this.f62384f.c();
        int i10 = 0;
        while (true) {
            List list2 = this.f62382d;
            if (i10 >= list2.size()) {
                break;
            }
            if (i10 < list.size()) {
                c10.f((String) list2.get(i10), c12079h2.a((InterfaceC12157q) list.get(i10)));
            } else {
                c10.f((String) list2.get(i10), InterfaceC12157q.f62394o4);
            }
            i10++;
        }
        for (InterfaceC12157q interfaceC12157q : this.f62383e) {
            InterfaceC12157q a10 = c10.a(interfaceC12157q);
            if (a10 instanceof r) {
                a10 = c10.a(interfaceC12157q);
            }
            if (a10 instanceof C12076h) {
                return ((C12076h) a10).b();
            }
        }
        return InterfaceC12157q.f62394o4;
    }

    public C12148p(String str, List list, List list2, C12079h2 c12079h2) {
        super(str);
        this.f62382d = new ArrayList();
        this.f62384f = c12079h2;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f62382d.add(((InterfaceC12157q) it.next()).P1());
            }
        }
        this.f62383e = new ArrayList(list2);
    }
}
