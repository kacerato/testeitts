package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;

public final class C6807cm0 {

    public final C9626th[] f47157a = (C9626th[]) X3.a((Object[]) new C9626th[5], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return C6807cm0.this.c(i10);
        }
    });

    public final C6500av[] f47158b = (C6500av[]) X3.a((Object[]) new C6500av[5], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return C6807cm0.this.d(i10);
        }
    });

    public final C6500av[] f47159c = (C6500av[]) X3.a((Object[]) new C6500av[5], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return C6807cm0.this.e(i10);
        }
    });

    public final C8687o10[] f47160d = (C8687o10[]) X3.a((Object[]) new C8687o10[5], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return C6807cm0.this.f(i10);
        }
    });

    public final C8687o10[] f47161e = (C8687o10[]) X3.a((Object[]) new C8687o10[5], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return C6807cm0.this.g(i10);
        }
    });

    public final ConcurrentHashMap f47162f = new ConcurrentHashMap();

    public final ConcurrentHashMap f47163g = new ConcurrentHashMap();

    public final ConcurrentHashMap f47164h = new ConcurrentHashMap();

    public final ConcurrentHashMap f47165i = new ConcurrentHashMap();

    public final ConcurrentHashMap f47166j = new ConcurrentHashMap();

    public final C9626th a(final int i10) {
        return (C9626th) a(i10, this.f47157a, this.f47162f, new Supplier() {
            @Override
            public final Object get() {
                return C6807cm0.this.b(i10);
            }
        });
    }

    public final C9626th b(int i10) {
        return new C9626th(i10);
    }

    public final C9626th c(int i10) {
        return new C9626th(i10);
    }

    public final C6500av d(int i10) {
        return new C6500av(i10, false);
    }

    public final C6500av e(int i10) {
        return new C6500av(i10, true);
    }

    public final C8687o10 f(int i10) {
        return new C8687o10(i10, C8854p10.b());
    }

    public final C8687o10 g(int i10) {
        return new C8687o10(i10, C8854p10.c());
    }

    public final C6500av a(final int i10, final boolean z10) {
        return (C6500av) a(i10, z10 ? this.f47159c : this.f47158b, z10 ? this.f47164h : this.f47163g, new Supplier() {
            @Override
            public final Object get() {
                return C6807cm0.this.b(i10, z10);
            }
        });
    }

    public final C6500av b(int i10, boolean z10) {
        return new C6500av(i10, z10);
    }

    public final C8687o10 b(int i10, C8854p10 c8854p10) {
        return new C8687o10(i10, c8854p10);
    }

    public final C8687o10 a(final int i10, final C8854p10 c8854p10) {
        return (C8687o10) a(i10, c8854p10.e() ? this.f47161e : this.f47160d, c8854p10.e() ? this.f47166j : this.f47165i, new Supplier() {
            @Override
            public final Object get() {
                return C6807cm0.this.b(i10, c8854p10);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AbstractC6148Wl0 a(int i10, AbstractC6148Wl0[] abstractC6148Wl0Arr, ConcurrentHashMap concurrentHashMap, final Supplier supplier) {
        if (i10 < abstractC6148Wl0Arr.length) {
            return abstractC6148Wl0Arr[i10];
        }
        return (AbstractC6148Wl0) concurrentHashMap.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6807cm0.a(Supplier.this, (Integer) obj);
            }
        });
    }

    public static AbstractC6148Wl0 a(Supplier supplier, Integer num) {
        return (AbstractC6148Wl0) supplier.get();
    }
}
