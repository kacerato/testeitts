package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public class G1 {

    public static final boolean f40367f = true;

    public final ConcurrentHashMap f40368a = new ConcurrentHashMap();

    public final ConcurrentHashMap f40369b = new ConcurrentHashMap();

    public final ConcurrentHashMap f40370c = new ConcurrentHashMap();

    public final ConcurrentHashMap f40371d = new ConcurrentHashMap();

    public final ConcurrentHashMap f40372e = new ConcurrentHashMap();

    public final AbstractC4935Bm0 a(com.android.tools.r8.graph.M2 m22) {
        if (f40367f || m22.P0() || m22.Q0()) {
            return m22.P0() ? a() : b(m22);
        }
        throw new AssertionError();
    }

    public final C5515Lm0 b(int i10) {
        return (C5515Lm0) this.f40370c.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5515Lm0(((Integer) obj).intValue());
            }
        });
    }

    public final C4877Am0 c(com.android.tools.r8.graph.M2 m22) {
        return (C4877Am0) this.f40368a.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C4877Am0((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public static C5283Hm0 b(com.android.tools.r8.graph.M2 m22) {
        if (f40367f || m22.Q0()) {
            return C5283Hm0.f40867c;
        }
        throw new AssertionError(m22);
    }

    public final F1 a(int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            int i12 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if ((i10 | i11) == -1) {
            return a(i10);
        }
        return new C5392Jj(i10, i11);
    }

    public final MQ a(int i10) {
        return (MQ) this.f40372e.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new MQ(((Integer) obj).intValue());
            }
        });
    }

    public final C5341Im0 a(long j10, AbstractC8999pu0 abstractC8999pu0) {
        if (f40367f || abstractC8999pu0.x()) {
            return a(j10);
        }
        throw new AssertionError();
    }

    public final C5341Im0 a(long j10) {
        return (C5341Im0) this.f40369b.computeIfAbsent(Long.valueOf(j10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5341Im0(((Long) obj).longValue());
            }
        });
    }

    public C5341Im0 a() {
        return a(0L);
    }

    public final C5688Om0 a(com.android.tools.r8.graph.L2 l22) {
        return (C5688Om0) this.f40371d.computeIfAbsent(l22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5688Om0((com.android.tools.r8.graph.L2) obj);
            }
        });
    }
}
