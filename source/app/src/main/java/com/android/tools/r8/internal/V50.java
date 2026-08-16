package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public final class V50 {

    public final ArrayList f44953a;

    public final T50[] f44954b;

    public final boolean f44955c;

    public V50(boolean z10, T50... t50Arr) {
        this.f44953a = new ArrayList(t50Arr.length);
        for (int i10 = 0; i10 < t50Arr.length; i10++) {
            this.f44953a.add(new ArrayList());
            t50Arr[i10].a(i10);
        }
        this.f44955c = z10;
        this.f44954b = t50Arr;
    }

    public final C10430yV a(final C7920jS c7920jS) {
        if (this.f44955c) {
            return a(new Supplier() {
                @Override
                public final Object get() {
                    return Boolean.valueOf(EE.this.hasPrevious());
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    return EE.this.previous();
                }
            }, new Runnable() {
                @Override
                public final void run() {
                    EE.this.next();
                }
            });
        }
        return a(new Supplier() {
            @Override
            public final Object get() {
                return Boolean.valueOf(EE.this.hasNext());
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                return EE.this.next();
            }
        }, new Runnable() {
            @Override
            public final void run() {
                EE.this.previous();
            }
        });
    }

    public final C10430yV a(Supplier supplier, Supplier supplier2, Runnable runnable) {
        if (!((Boolean) supplier.get()).booleanValue()) {
            return null;
        }
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) supplier2.get();
        int i10 = 0;
        boolean z10 = true;
        while (true) {
            T50[] t50Arr = this.f44954b;
            if (i10 >= t50Arr.length) {
                break;
            }
            T50 t50 = t50Arr[i10];
            List list = (List) this.f44953a.get(i10);
            list.clear();
            if (abstractC10561zE != null) {
                int i11 = 0;
                while (true) {
                    if (i11 >= t50.c() || !t50.a().test(abstractC10561zE)) {
                        break;
                    }
                    list.add(abstractC10561zE);
                    if (!((Boolean) supplier.get()).booleanValue()) {
                        abstractC10561zE = null;
                        break;
                    }
                    abstractC10561zE = (AbstractC10561zE) supplier2.get();
                    i11++;
                }
            }
            z10 &= list.size() >= t50.b() && list.size() <= t50.c();
            if (!z10) {
                break;
            }
            i10++;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < ((List) this.f44953a.get(i12)).size(); i13++) {
                runnable.run();
            }
        }
        if (abstractC10561zE != null) {
            runnable.run();
        }
        if (z10) {
            return new C10430yV(this.f44953a);
        }
        return null;
    }
}
