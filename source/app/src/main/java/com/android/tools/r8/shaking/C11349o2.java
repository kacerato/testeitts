package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.SR;
import com.android.tools.r8.synthesis.C11615y;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class C11349o2 {

    public static final C11349o2 f57579f;

    public static final boolean f57580g = true;

    public final Set f57581a;

    public final Set f57582b;

    public Set f57583c;

    public final Set f57584d;

    public boolean f57585e;

    static {
        Set set = Collections.EMPTY_SET;
        f57579f = new C11349o2(set, set, set, set, false);
    }

    public C11349o2(Set set, Set set2, Set set3, Set set4, boolean z10) {
        this.f57581a = set;
        this.f57582b = set2;
        this.f57583c = set3;
        this.f57584d = set4;
        this.f57585e = z10;
        if (f57580g) {
            return;
        }
        Stream<E> stream = set4.stream();
        Objects.requireNonNull(set2);
        if (!stream.noneMatch(new v.T0(set2))) {
            throw new AssertionError();
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.J2 j22, com.android.tools.r8.synthesis.J j10) {
        EnumC11332n2 a10 = a(h52.getReference(), j10);
        if (a10 == EnumC11332n2.f57554e || a10 == EnumC11332n2.f57553d) {
            return true;
        }
        if (a10 == EnumC11332n2.f57551b) {
            return false;
        }
        if (f57580g || a10 == EnumC11332n2.f57552c) {
            return a(j22, j10) == EnumC11332n2.f57552c;
        }
        throw new AssertionError();
    }

    public final boolean b(com.android.tools.r8.synthesis.J j10, com.android.tools.r8.graph.M2 m22) {
        return !a(m22, this.f57582b, j10);
    }

    public static C11349o2 b() {
        return f57579f;
    }

    public final void b(Set set, C11315m2 c11315m2, com.android.tools.r8.graph.M2 m22) {
        Objects.requireNonNull(c11315m2);
        Bd bd2 = new Bd(c11315m2);
        if (set.contains(m22)) {
            return;
        }
        bd2.accept(m22);
    }

    public final C11349o2 a(final com.android.tools.r8.synthesis.J j10, final AbstractC5308Hz abstractC5308Hz) {
        final Set c10 = AbstractC5513Ll0.c();
        this.f57581a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.a(AbstractC5308Hz.this, c10, (com.android.tools.r8.graph.M2) obj);
            }
        });
        final C11315m2 c11315m2 = new C11315m2(this.f57585e);
        this.f57582b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.a(AbstractC5308Hz.this, c11315m2, (com.android.tools.r8.graph.M2) obj);
            }
        });
        this.f57583c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.a(C11315m2.this, abstractC5308Hz, (com.android.tools.r8.graph.A2) obj);
            }
        });
        this.f57584d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.a(AbstractC5308Hz.this, c11315m2, j10, (com.android.tools.r8.graph.M2) obj);
            }
        });
        return c11315m2.a(c10);
    }

    public final EnumC11332n2 a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.synthesis.J j10) {
        if (a(j22, this.f57581a, j10)) {
            return EnumC11332n2.f57551b;
        }
        if (a(j22, this.f57582b, j10)) {
            return EnumC11332n2.f57552c;
        }
        if (this.f57584d.contains(j22.S())) {
            return EnumC11332n2.f57553d;
        }
        return EnumC11332n2.f57554e;
    }

    public final boolean a(com.android.tools.r8.synthesis.J j10, com.android.tools.r8.graph.M2 m22) {
        return !a(m22, this.f57581a, j10);
    }

    public static boolean a(com.android.tools.r8.graph.J2 j22, Set set, com.android.tools.r8.synthesis.J j10) {
        if (set.isEmpty()) {
            return false;
        }
        com.android.tools.r8.graph.M2 S10 = j22.S();
        Iterator<E> it = j10.b(S10).iterator();
        while (it.hasNext()) {
            if (set.contains((com.android.tools.r8.graph.M2) it.next())) {
                return true;
            }
        }
        return set.contains(S10);
    }

    public final void a() {
        this.f57585e = true;
        this.f57583c = AbstractC5513Ll0.c();
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        final com.android.tools.r8.synthesis.J g10;
        EnumC11332n2 a10;
        if (d52.S() != h52.p() && (a10 = a(d52.getReference(), (g10 = c4798y.f38408a.g()))) != EnumC11332n2.f57554e && a10 != EnumC11332n2.f57553d) {
            if (a10 == EnumC11332n2.f57551b) {
                return C11298l2.a(c4798y, h52, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C11349o2.this.a(g10, (com.android.tools.r8.graph.M2) obj);
                    }
                }) != null;
            }
            if (!f57580g && a10 != EnumC11332n2.f57552c) {
                throw new AssertionError();
            }
            if (C11298l2.a(c4798y, h52, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C11349o2.this.b(g10, (com.android.tools.r8.graph.M2) obj);
                }
            }) != null) {
                return true;
            }
        }
        return false;
    }

    public final void a(Consumer consumer) {
        Set c10 = AbstractC5513Ll0.c();
        this.f57581a.forEach(C6628bi.a(consumer, c10));
        this.f57582b.forEach(C6628bi.a(consumer, c10));
        this.f57584d.forEach(C6628bi.a(consumer, c10));
    }

    public final C11349o2 a(com.android.tools.r8.graph.O5 o52) {
        if (o52.b()) {
            return this;
        }
        final Set set = o52.f36682e;
        final Set c10 = AbstractC5513Ll0.c();
        this.f57581a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.this.a(set, c10, (com.android.tools.r8.graph.M2) obj);
            }
        });
        final C11315m2 c11315m2 = new C11315m2(this.f57585e);
        this.f57582b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.this.a(set, c11315m2, (com.android.tools.r8.graph.M2) obj);
            }
        });
        this.f57583c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.this.a(set, c11315m2, (com.android.tools.r8.graph.A2) obj);
            }
        });
        this.f57584d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.this.b(set, c11315m2, (com.android.tools.r8.graph.M2) obj);
            }
        });
        return c11315m2.a(c10);
    }

    public final void a(Set set, Set set2, com.android.tools.r8.graph.M2 m22) {
        Objects.requireNonNull(set2);
        Id id2 = new Id(set2);
        if (set.contains(m22)) {
            return;
        }
        id2.accept(m22);
    }

    public final void a(Set set, C11315m2 c11315m2, com.android.tools.r8.graph.M2 m22) {
        Objects.requireNonNull(c11315m2);
        Kd kd2 = new Kd(c11315m2);
        if (set.contains(m22)) {
            return;
        }
        kd2.accept(m22);
    }

    public final void a(Set set, final C11315m2 c11315m2, final com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11349o2.a(C11315m2.this, a22, (com.android.tools.r8.graph.M2) obj);
            }
        };
        if (set.contains(s02)) {
            return;
        }
        consumer.accept(s02);
    }

    public final C11349o2 a(final com.android.tools.r8.synthesis.J j10, final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (C11349o2) c8659ns0.a("Rewrite MainDexInfo", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C11349o2.this.a(j10, abstractC5308Hz);
            }
        });
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, Set set, com.android.tools.r8.graph.M2 m22) {
        Objects.requireNonNull(set);
        SR.a(abstractC5308Hz, m22, new Id(set));
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C11315m2 c11315m2, com.android.tools.r8.graph.M2 m22) {
        Objects.requireNonNull(c11315m2);
        SR.a(abstractC5308Hz, m22, new Kd(c11315m2));
    }

    public static void a(C11315m2 c11315m2, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        abstractC5308Hz.getClass();
        c11315m2.f57529c.add(abstractC5308Hz.d(AbstractC5308Hz.g(), a22));
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, final C11315m2 c11315m2, com.android.tools.r8.synthesis.J j10, com.android.tools.r8.graph.M2 m22) {
        abstractC5308Hz.getClass();
        if (abstractC5308Hz instanceof C11615y) {
            Objects.requireNonNull(c11315m2);
            SR.a(abstractC5308Hz, m22, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11315m2.this.b((com.android.tools.r8.graph.M2) obj);
                }
            });
        } else if (j10.c()) {
            SR.a(abstractC5308Hz, m22, c11315m2.a(j10));
        } else {
            Objects.requireNonNull(c11315m2);
            SR.a(abstractC5308Hz, m22, new Bd(c11315m2));
        }
    }

    public static void a(C11315m2 c11315m2, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22) {
        c11315m2.f57529c.add(a22);
    }
}
