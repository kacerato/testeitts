package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.List;

public final class C9118qe0 {

    public final C9451se0 f51836a;

    public C9118qe0(C9451se0 c9451se0) {
        this.f51836a = c9451se0;
    }

    public final void a(String str) {
        if (str.length() <= 0 || str.length() > 80) {
            return;
        }
        this.f51836a.f52423b.f44527d.add(str);
        this.f51836a.f52423b.f44529f = true;
    }

    public final void b(String str) {
        GJ.c(str, "<this>");
        List a10 = AbstractC5349Iq0.a(str, '/', 2) >= 0 ? this.f51836a.f52423b.f44525b.a(str) : this.f51836a.f52423b.f44525b.a(EnumC8289lg0.RAW, AbstractC5349Iq0.c(str, '.'));
        if (a10.isEmpty()) {
            a(str);
            return;
        }
        C9451se0 c9451se0 = this.f51836a;
        Iterator<E> it = a10.iterator();
        while (it.hasNext()) {
            c9451se0.f52425d.a((C8623ng0) it.next());
        }
    }
}
