package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12031c {

    public C12022b f62240a;

    public C12022b f62241b;

    public final List f62242c;

    public C12031c() {
        this.f62240a = new C12022b("", 0L, null);
        this.f62241b = new C12022b("", 0L, null);
        this.f62242c = new ArrayList();
    }

    public final C12022b a() {
        return this.f62240a;
    }

    public final void b(C12022b c12022b) {
        this.f62240a = c12022b;
        this.f62241b = c12022b.clone();
        this.f62242c.clear();
    }

    public final C12022b c() {
        return this.f62241b;
    }

    public final Object clone() throws CloneNotSupportedException {
        C12031c c12031c = new C12031c(this.f62240a.clone());
        Iterator it = this.f62242c.iterator();
        while (it.hasNext()) {
            c12031c.f62242c.add(((C12022b) it.next()).clone());
        }
        return c12031c;
    }

    public final void d(C12022b c12022b) {
        this.f62241b = c12022b;
    }

    public final void e(String str, long j10, Map map) {
        HashMap hashMap = new HashMap();
        for (String str2 : map.o()) {
            hashMap.put(str2, C12022b.h(str2, this.f62240a.e(str2), map.get(str2)));
        }
        this.f62242c.add(new C12022b(str, j10, hashMap));
    }

    public final List f() {
        return this.f62242c;
    }

    public C12031c(C12022b c12022b) {
        this.f62240a = c12022b;
        this.f62241b = c12022b.clone();
        this.f62242c = new ArrayList();
    }
}
