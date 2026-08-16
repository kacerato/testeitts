package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class H10 {

    public static final boolean f40649c = true;

    public final ConcurrentHashMap f40650a;

    public final IdentityHashMap f40651b = new IdentityHashMap();

    public H10(ConcurrentHashMap concurrentHashMap) {
        this.f40650a = concurrentHashMap;
    }

    public final void a(AbstractC5990Ts0 abstractC5990Ts0) {
        F10 f10;
        C10507yw0 c10507yw0;
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) abstractC5990Ts0);
        int i10 = 0;
        while (c6286Yx0.b()) {
            AbstractC5990Ts0 abstractC5990Ts02 = (AbstractC5990Ts0) c6286Yx0.c();
            boolean z10 = f40649c;
            if (!z10) {
                abstractC5990Ts02.getClass();
            }
            abstractC5990Ts02.getClass();
            com.android.tools.r8.graph.A2 a22 = abstractC5990Ts02.f44603a;
            if (!this.f40650a.containsKey(a22)) {
                f10 = F10.f40067d;
            } else {
                G10 a10 = a(a22);
                if (abstractC5990Ts02 instanceof C6048Us0) {
                    f10 = a10.f40374a;
                } else {
                    if (!z10 && !(abstractC5990Ts02 instanceof C5932Ss0)) {
                        throw new AssertionError();
                    }
                    f10 = a10.f40375b[abstractC5990Ts02.a().f44323b];
                }
            }
            if (f10 == F10.f40066c) {
                i10++;
            } else {
                DW dw = (DW) this.f40650a.get(abstractC5990Ts02.f44603a);
                if (dw == null) {
                    c10507yw0 = C10507yw0.f54197c;
                } else if (abstractC5990Ts02 instanceof C6048Us0) {
                    if (!DW.f39542e && dw.a()) {
                        throw new AssertionError();
                    }
                    c10507yw0 = dw.f39543a;
                } else {
                    if (!z10 && !(abstractC5990Ts02 instanceof C5932Ss0)) {
                        throw new AssertionError();
                    }
                    int i11 = abstractC5990Ts02.a().f44323b;
                    boolean z11 = DW.f39542e;
                    if (!z11 && dw.a()) {
                        throw new AssertionError();
                    }
                    if (!z11 && dw.f39544b[i11] == null) {
                        throw new AssertionError();
                    }
                    c10507yw0 = dw.f39544b[i11];
                }
                if (f10 == F10.f40067d || c10507yw0.a()) {
                    i10 = -1;
                    break;
                }
                if (!z10 && f10 != F10.f40065b) {
                    throw new AssertionError();
                }
                c6286Yx0.b((Iterable) c10507yw0.f54200b);
                int size = c10507yw0.f54200b.size() + i10;
                if (!C10507yw0.f54198d && c10507yw0.a()) {
                    throw new AssertionError();
                }
                i10 = c10507yw0.f54199a + size;
            }
        }
        F10 f102 = i10 > 0 ? F10.f40066c : F10.f40067d;
        for (AbstractC5990Ts0 abstractC5990Ts03 : c6286Yx0.a()) {
            boolean z12 = f40649c;
            if (!z12) {
                abstractC5990Ts03.getClass();
            }
            abstractC5990Ts03.getClass();
            com.android.tools.r8.graph.A2 a23 = abstractC5990Ts03.f44603a;
            if (f102 != F10.f40067d || this.f40650a.containsKey(a23)) {
                G10 a11 = a(a23);
                if (abstractC5990Ts03 instanceof C6048Us0) {
                    a11.f40374a = f102;
                } else {
                    if (!z12 && !(abstractC5990Ts03 instanceof C5932Ss0)) {
                        throw new AssertionError();
                    }
                    a11.f40375b[abstractC5990Ts03.a().f44323b] = f102;
                }
            }
        }
    }

    public final void b(com.android.tools.r8.graph.A2 a22, G10 g10) {
        if (!f40649c && !this.f40650a.containsKey(a22)) {
            throw new AssertionError();
        }
    }

    public final void c() {
        this.f40651b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                H10.this.b((com.android.tools.r8.graph.A2) obj, (G10) obj2);
            }
        });
    }

    public final IdentityHashMap d() {
        if (!f40649c) {
            a(this.f40650a);
        }
        ArrayList a10 = AT.a(this.f40650a.o(), new C7064eG0());
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
            DW dw = (DW) this.f40650a.get(a22);
            if (!f40649c && dw.a()) {
                throw new AssertionError();
            }
            G10 a11 = a(a22);
            if (!DW.f39542e && dw.a()) {
                throw new AssertionError();
            }
            if (dw.f39543a.a()) {
                a11.f40374a = F10.f40067d;
            } else if (a11.f40374a == F10.f40065b) {
                a(new C6048Us0(a22));
            }
            int i11 = 0;
            while (true) {
                boolean z10 = DW.f39542e;
                if (!z10 && dw.a()) {
                    throw new AssertionError();
                }
                if (i11 < dw.f39544b.length) {
                    if (!z10 && dw.a()) {
                        throw new AssertionError();
                    }
                    if (!z10 && dw.f39544b[i11] == null) {
                        throw new AssertionError();
                    }
                    if (dw.f39544b[i11].a()) {
                        a11.f40375b[i11] = F10.f40067d;
                    } else if (a11.f40375b[i11] == F10.f40065b) {
                        a(new C5932Ss0(i11, a22));
                    }
                    i11++;
                }
            }
        }
        boolean z11 = f40649c;
        if (!z11) {
            c();
        }
        if (!z11) {
            a();
        }
        b();
        return this.f40651b;
    }

    public final void b() {
        this.f40651b.values().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((G10) obj).a();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final G10 a(com.android.tools.r8.graph.A2 a22) {
        if (f40649c || this.f40650a.containsKey(a22)) {
            return (G10) this.f40651b.computeIfAbsent(a22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return G10.a((com.android.tools.r8.graph.A2) obj);
                }
            });
        }
        throw new AssertionError();
    }

    public static void a(ConcurrentHashMap concurrentHashMap) {
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                H10.a((com.android.tools.r8.graph.A2) obj, (DW) obj2);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.A2 a22, DW dw) {
        boolean z10 = f40649c;
        if (!z10 && dw.a()) {
            throw new AssertionError((Object) (((Object) dw) + " registered for " + ((Object) a22)));
        }
        if (z10) {
            return;
        }
        dw.getClass();
        if (dw != DW.f39541d) {
            return;
        }
        throw new AssertionError((Object) (((Object) dw) + " registered for " + ((Object) a22)));
    }

    public final void a() {
        this.f40651b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                H10.a((com.android.tools.r8.graph.A2) obj, (G10) obj2);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.A2 a22, G10 g10) {
        if (!f40649c && g10.f40374a == F10.f40065b) {
            throw new AssertionError();
        }
        for (F10 f10 : g10.f40375b) {
            if (!f40649c && f10 == F10.f40065b) {
                throw new AssertionError();
            }
        }
    }
}
