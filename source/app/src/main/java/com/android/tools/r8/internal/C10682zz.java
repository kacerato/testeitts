package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10983p0;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10682zz {

    public final C4798y f54591a;

    public final com.android.tools.r8.graph.M3 f54592b;

    public C10682zz(C4798y c4798y) {
        this.f54591a = c4798y;
        this.f54592b = null;
    }

    public final void a(Collection collection, ExecutorService executorService) {
        final Predicate predicate;
        AbstractC10992r0 s10 = this.f54591a.s();
        s10.getClass();
        if ((s10 instanceof C10983p0) && !this.f54591a.f().i()) {
            this.f54591a.E().getClass();
        }
        if (this.f54591a.f().i()) {
            C11245i f10 = this.f54591a.M().f();
            Objects.requireNonNull(f10);
            predicate = new com.android.tools.r8.graph.Sb(f10);
        } else {
            predicate = EnumC6871d70.f47287c;
        }
        final Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10682zz.this.a(predicate, (com.android.tools.r8.graph.M2) obj);
            }
        };
        final BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C10682zz.this.a(predicate, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        };
        C5467Kr0.a(AT.a(collection, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10682zz.a(Predicate.this, (com.android.tools.r8.graph.H2) obj);
            }
        }), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10682zz.this.a(predicate, biPredicate, predicate2, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f54591a.E().G(), executorService);
        C4798y c4798y = this.f54591a;
        c4798y.f38416i = c4798y.v();
    }

    public C10682zz(C4798y c4798y, com.android.tools.r8.graph.M3 m32) {
        this.f54591a = c4798y;
        this.f54592b = m32;
    }

    public final boolean a(Predicate predicate, com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.M3.a(this.f54591a, m22, predicate);
    }

    public final boolean a(Predicate predicate, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        com.android.tools.r8.graph.M3 m32 = this.f54592b;
        C4798y c4798y = this.f54591a;
        m32.getClass();
        return com.android.tools.r8.graph.M3.a(c4798y, m22, m23, predicate);
    }

    public static boolean a(Predicate predicate, com.android.tools.r8.graph.H2 h22) {
        return !predicate.test(h22.getType());
    }

    public final void a(Predicate predicate, BiPredicate biPredicate, Predicate predicate2, com.android.tools.r8.graph.H2 h22) {
        final com.android.tools.r8.graph.U3 u32;
        H3.b N02;
        com.android.tools.r8.graph.M3 m32 = this.f54592b;
        if (m32 != null) {
            C4798y c4798y = this.f54591a;
            u32 = com.android.tools.r8.graph.U3.a(c4798y, m32.a(c4798y, (com.android.tools.r8.graph.J2) h22.getType(), predicate), biPredicate, predicate2);
        } else {
            u32 = null;
        }
        final com.android.tools.r8.graph.X3 x32 = new com.android.tools.r8.graph.X3(this.f54591a, h22, predicate2);
        if (u32 != null) {
            N02 = h22.N0();
            if (!N02.a()) {
                N02 = N02.a(u32, u32.f36863d.b());
            }
        } else {
            N02 = h22.N0();
        }
        if (!N02.a()) {
            C4724u1 c4724u1 = x32.f36955a;
            N02 = N02.a(new com.android.tools.r8.graph.W3(x32, c4724u1), c4724u1);
        }
        h22.a(N02);
        h22.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10682zz.a(com.android.tools.r8.graph.X3.this, u32, (C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
        h22.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10682zz.a(com.android.tools.r8.graph.X3.this, u32, (C4516j1) obj);
            }
        });
        Iterator<com.android.tools.r8.graph.P5> it = h22.X0().iterator();
        while (it.hasNext()) {
            x32.a(it.next().c());
        }
    }

    public static void a(com.android.tools.r8.graph.X3 x32, com.android.tools.r8.graph.U3 u32, C4460g1 c4460g1) {
        H3.e A02;
        if (u32 != null) {
            A02 = u32.b(c4460g1.A0());
        } else {
            A02 = c4460g1.A0();
        }
        H3.e a10 = x32.a(A02);
        c4460g1.getClass();
        if (!C4460g1.f37201p && a10 == null) {
            throw new AssertionError();
        }
        c4460g1.f37206k = a10;
    }

    public static void a(com.android.tools.r8.graph.X3 x32, com.android.tools.r8.graph.U3 u32, C4516j1 c4516j1) {
        H3.g A02;
        if (u32 != null) {
            A02 = u32.f(c4516j1.A0().c()).a(c4516j1.A0());
        } else {
            A02 = c4516j1.A0();
        }
        H3.g a10 = x32.a(A02);
        c4516j1.getClass();
        if (!C4516j1.f37313x && a10 == null) {
            throw new AssertionError();
        }
        c4516j1.f37324q = a10;
    }
}
