package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.RR;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import u.w1;

public final class n0 implements M {

    public static final boolean f35897n = true;

    public final C4798y f35898a;

    public final s0 f35899b;

    public final RR f35900c;

    public final m0 f35909l;

    public final LinkedHashSet f35901d = new LinkedHashSet();

    public final LinkedHashSet f35902e = new LinkedHashSet();

    public final LinkedHashSet f35903f = new LinkedHashSet();

    public final LinkedHashSet f35904g = new LinkedHashSet();

    public final LinkedHashMap f35905h = new LinkedHashMap();

    public final LinkedHashSet f35906i = new LinkedHashSet();

    public final LinkedHashSet f35907j = new LinkedHashSet();

    public final LinkedHashSet f35908k = new LinkedHashSet();

    public H2 f35910m = null;

    public n0(s0 s0Var, C4798y c4798y) {
        this.f35898a = c4798y;
        this.f35899b = s0Var;
        this.f35900c = new RR(c4798y, 0);
        c4798y.E().f50599F1.getClass();
        this.f35909l = new m0();
    }

    public final boolean a(AbstractC4592n1 abstractC4592n1, Predicate predicate, Set set, boolean z10) {
        if (set.contains(abstractC4592n1)) {
            return false;
        }
        boolean test = predicate.test(abstractC4592n1);
        if (f35897n || !test || !z10 || this.f35901d.contains(this.f35910m)) {
            return test;
        }
        throw new AssertionError();
    }

    public final boolean b(I2 i22) {
        return t0.a(i22, this.f35905h, this.f35899b.f35936b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.n0.this.a((L2) obj);
            }
        }, this.f35899b.f35935a);
    }

    public final boolean b() {
        return this.f35901d.isEmpty() && this.f35902e.isEmpty() && this.f35903f.isEmpty() && this.f35905h.isEmpty() && this.f35904g.isEmpty() && this.f35906i.isEmpty() && this.f35907j.isEmpty() && this.f35908k.isEmpty();
    }

    @Override
    public final boolean a(H2 h22) {
        if (!f35897n && this.f35910m != null) {
            throw new AssertionError();
        }
        this.f35910m = h22;
        final LinkedHashSet linkedHashSet = this.f35901d;
        Objects.requireNonNull(linkedHashSet);
        return a(h22, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((H2) obj);
            }
        }, this.f35899b.f35937c, true);
    }

    @Override
    public final boolean a(C4554l1 c4554l1) {
        if (!f35897n && this.f35910m == null) {
            throw new AssertionError();
        }
        LinkedHashSet linkedHashSet = this.f35902e;
        Objects.requireNonNull(linkedHashSet);
        return a(c4554l1, new w1(linkedHashSet), this.f35899b.f35941g, true);
    }

    @Override
    public final boolean a(A2 a22) {
        if (!f35897n && this.f35910m == null) {
            throw new AssertionError();
        }
        final LinkedHashSet linkedHashSet = this.f35903f;
        Objects.requireNonNull(linkedHashSet);
        return a(a22, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((A2) obj);
            }
        }, this.f35899b.f35940f, true);
    }

    @Override
    public final boolean a(L2 l22) {
        if (this.f35910m == null && !f35897n && !l22.c("~~")) {
            throw new AssertionError();
        }
        final LinkedHashSet linkedHashSet = this.f35906i;
        Objects.requireNonNull(linkedHashSet);
        return a(l22, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((L2) obj);
            }
        }, this.f35899b.f35942h, false);
    }

    @Override
    public final boolean a(I2 i22) {
        if (f35897n || this.f35910m != null) {
            return a(i22, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.dex.n0.this.b((I2) obj);
                }
            }, this.f35899b.f35938d.o(), true);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(M2 m22) {
        boolean z10 = f35897n;
        if (!z10 && this.f35910m == null) {
            throw new AssertionError();
        }
        if (!z10) {
            boolean z11 = com.android.tools.r8.synthesis.S.f58147a0;
            com.android.tools.r8.synthesis.S.a(m22.V0());
        }
        final LinkedHashSet linkedHashSet = this.f35904g;
        Objects.requireNonNull(linkedHashSet);
        return a(m22, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((M2) obj);
            }
        }, this.f35899b.f35939e, true);
    }

    @Override
    public final boolean a(D0 d02) {
        if (!f35897n && this.f35910m == null) {
            throw new AssertionError();
        }
        final LinkedHashSet linkedHashSet = this.f35907j;
        Objects.requireNonNull(linkedHashSet);
        return a(d02, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((com.android.tools.r8.graph.D0) obj);
            }
        }, this.f35899b.f35943i, true);
    }

    @Override
    public final boolean a(C2 c22) {
        if (!f35897n && this.f35910m == null) {
            throw new AssertionError();
        }
        final LinkedHashSet linkedHashSet = this.f35908k;
        Objects.requireNonNull(linkedHashSet);
        return a(c22, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Set.this.add((C2) obj);
            }
        }, this.f35899b.f35944j, true);
    }

    public static void a(Set set, final Function function) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.n0.a(Function.this, (AbstractC4592n1) obj);
            }
        });
        set.clear();
    }

    public static void a(Function function, AbstractC4592n1 abstractC4592n1) {
        boolean booleanValue = ((Boolean) function.apply(abstractC4592n1)).booleanValue();
        if (!f35897n && !booleanValue) {
            throw new AssertionError();
        }
    }

    public final void a() {
        LinkedHashSet linkedHashSet = this.f35901d;
        final s0 s0Var = this.f35899b;
        Objects.requireNonNull(s0Var);
        a(linkedHashSet, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((H2) obj));
            }
        });
        LinkedHashSet linkedHashSet2 = this.f35902e;
        final s0 s0Var2 = this.f35899b;
        Objects.requireNonNull(s0Var2);
        a(linkedHashSet2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((C4554l1) obj));
            }
        });
        LinkedHashSet linkedHashSet3 = this.f35903f;
        final s0 s0Var3 = this.f35899b;
        Objects.requireNonNull(s0Var3);
        a(linkedHashSet3, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((A2) obj));
            }
        });
        Set o10 = this.f35905h.o();
        final s0 s0Var4 = this.f35899b;
        Objects.requireNonNull(s0Var4);
        a(o10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.b((I2) obj));
            }
        });
        LinkedHashSet linkedHashSet4 = this.f35904g;
        final s0 s0Var5 = this.f35899b;
        Objects.requireNonNull(s0Var5);
        a(linkedHashSet4, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((M2) obj));
            }
        });
        LinkedHashSet linkedHashSet5 = this.f35906i;
        final s0 s0Var6 = this.f35899b;
        Objects.requireNonNull(s0Var6);
        a(linkedHashSet5, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((L2) obj));
            }
        });
        LinkedHashSet linkedHashSet6 = this.f35907j;
        final s0 s0Var7 = this.f35899b;
        Objects.requireNonNull(s0Var7);
        a(linkedHashSet6, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((com.android.tools.r8.graph.D0) obj));
            }
        });
        LinkedHashSet linkedHashSet7 = this.f35908k;
        final s0 s0Var8 = this.f35899b;
        Objects.requireNonNull(s0Var8);
        a(linkedHashSet7, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(com.android.tools.r8.dex.s0.this.a((C2) obj));
            }
        });
        this.f35898a.E().f50599F1.getClass();
    }
}
