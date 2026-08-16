package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Function;

public final class C8130kj {

    public static final boolean f49735c = true;

    public final int f49736a;

    public final C6899dH f49737b = new C6899dH(16);

    public C8130kj(int i10) {
        if (!f49735c && i10 < 0) {
            throw new AssertionError();
        }
        this.f49736a = i10;
    }

    public final void a(int i10, int i11) {
        if (!f49735c && i10 < 0) {
            throw new AssertionError();
        }
        C8631nj c8631nj = (C8631nj) this.f49737b.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C8631nj(((Integer) obj).intValue());
            }
        });
        c8631nj.getClass();
        if (!C8631nj.f51040d && i11 < 0) {
            throw new AssertionError();
        }
        c8631nj.f51043c++;
        c8631nj.f51042b += i11;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("params:");
        sb2.append(this.f49736a);
        sb2.append('\n');
        Iterator it = C6246Ye.a(this.f49737b.o(), new C7752iQ0()).iterator();
        while (it.hasNext()) {
            sb2.append(this.f49737b.get(((Integer) it.next()).intValue()));
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
