package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12008y2 implements Iterator {

    public int f61875b = -1;

    public boolean f61876c;

    public Iterator f61877d;

    public final C2 f61878e;

    public final Iterator a() {
        Map map;
        if (this.f61877d == null) {
            map = this.f61878e.f61589d;
            this.f61877d = map.entrySet().iterator();
        }
        return this.f61877d;
    }

    @Override
    public final boolean hasNext() {
        List list;
        Map map;
        int i10 = this.f61875b + 1;
        list = this.f61878e.f61588c;
        if (i10 < list.size()) {
            return true;
        }
        map = this.f61878e.f61589d;
        return !map.isEmpty() && a().hasNext();
    }

    @Override
    public final Object next() {
        List list;
        List list2;
        this.f61876c = true;
        int i10 = this.f61875b + 1;
        this.f61875b = i10;
        list = this.f61878e.f61588c;
        if (i10 >= list.size()) {
            return (Map.Entry) a().next();
        }
        list2 = this.f61878e.f61588c;
        return (Map.Entry) list2.get(this.f61875b);
    }

    @Override
    public final void remove() {
        List list;
        if (!this.f61876c) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f61876c = false;
        this.f61878e.u();
        int i10 = this.f61875b;
        list = this.f61878e.f61588c;
        if (i10 >= list.size()) {
            a().remove();
            return;
        }
        C2 c22 = this.f61878e;
        int i11 = this.f61875b;
        this.f61875b = i11 - 1;
        c22.s(i11);
    }
}
