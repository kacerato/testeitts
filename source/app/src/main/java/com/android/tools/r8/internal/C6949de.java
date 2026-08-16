package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C10070wI;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;

public class C6949de extends AbstractC6450ae0 {

    public static final boolean f47439i = true;

    public final C10070wI f47440e;

    public final C4798y f47441f;

    public final C9021q10 f47442g;

    public final com.android.tools.r8.graph.M2 f47443h;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public C6949de(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C10070wI c10070wI, C4798y c4798y, C9021q10 c9021q10) {
        super(c8854p10);
        boolean z10 = f47439i;
        if (!z10 && (c4798y == null ? c10070wI == null || !c10070wI.f53468a.isEmpty() : !c4798y.m())) {
            throw new AssertionError();
        }
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        this.f47443h = m22;
        this.f47441f = c4798y;
        this.f47440e = c10070wI;
        this.f47442g = c9021q10;
    }

    @Override
    public final AbstractC8999pu0 D() {
        C8854p10 c8854p10 = this.f46573b;
        C8854p10 b10 = C8854p10.b();
        c8854p10.getClass();
        C8854p10 c8854p102 = C8854p10.f51411c;
        if (c8854p10 == c8854p102) {
            c8854p10 = b10;
        } else if (b10 != c8854p102 && c8854p10 != b10) {
            c8854p10 = C8854p10.f51412d;
        }
        return a(c8854p10);
    }

    public com.android.tools.r8.graph.M2 E() {
        return this.f47443h;
    }

    public C10070wI F() {
        C10070wI c10070wI = this.f47440e;
        if (c10070wI != null) {
            return c10070wI;
        }
        boolean z10 = f47439i;
        if (!z10 && this.f47441f == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f47441f.m()) {
            throw new AssertionError();
        }
        return this.f47441f.b().a(this.f47441f, this.f47443h);
    }

    @Override
    public final C6949de b() {
        return this;
    }

    @Override
    public final C6949de a(C8854p10 c8854p10) {
        return c8854p10.equals(this.f46573b) ? this : (C6949de) this.f47442g.a(c8854p10, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C6949de.this.a((C8854p10) obj, (C9021q10) obj2);
            }
        });
    }

    @Override
    public final C6949de b(C8854p10 c8854p10) {
        return a(this.f46573b.a(c8854p10));
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6949de)) {
            return false;
        }
        C6949de c6949de = (C6949de) obj;
        if (this.f46573b == c6949de.f46573b && this.f47443h.equals(c6949de.f47443h)) {
            return F().equals(c6949de.F());
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f46573b, this.f47443h);
    }

    @Override
    public final boolean s() {
        return true;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) this.f46573b);
        sb2.append(" ");
        sb2.append((Object) this.f47443h);
        sb2.append(" {");
        ArrayList b10 = F().b();
        b10.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (com.android.tools.r8.graph.M2) ((C8699o50) obj).a();
            }
        }));
        sb2.append((String) b10.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6949de.a((C8699o50) obj);
            }
        }).collect(Collectors.joining(", ")));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public static C6949de a(final com.android.tools.r8.graph.M2 m22, final C8854p10 c8854p10, final C4798y<? extends C4514j> c4798y, final C10070wI c10070wI) {
        boolean z10 = f47439i;
        if (!z10 && c4798y == null) {
            throw new AssertionError();
        }
        if (!z10 && !c4798y.m()) {
            throw new AssertionError();
        }
        if (!z10 && c10070wI == null) {
            throw new AssertionError();
        }
        return (C6949de) C9021q10.a(c8854p10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6949de.a(com.android.tools.r8.graph.M2.this, c8854p10, c10070wI, c4798y, (C9021q10) obj);
            }
        });
    }

    public static C6949de b(final com.android.tools.r8.graph.M2 m22, final C8854p10 c8854p10, final C4798y<? extends C4514j> c4798y) {
        boolean z10 = f47439i;
        if (!z10 && c4798y == null) {
            throw new AssertionError();
        }
        if (z10 || c4798y.m()) {
            return (C6949de) C9021q10.a(c8854p10, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C6949de.a(com.android.tools.r8.graph.M2.this, c8854p10, c4798y, (C9021q10) obj);
                }
            });
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public final C6949de c(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C4798y c4798y) {
        boolean z10 = f47439i;
        if (!z10 && c4798y.m()) {
            throw new AssertionError();
        }
        if (!z10 && this.f47440e == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f47440e.f53468a.isEmpty()) {
            throw new AssertionError();
        }
        return a(E() == m22 ? E() : c4798y.b().f38068i2, this.f46573b.a(c8854p10));
    }

    public static C6949de a(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C10070wI c10070wI, C4798y c4798y, C9021q10 c9021q10) {
        return new C6949de(m22, c8854p10, c10070wI, c4798y, c9021q10);
    }

    public static C6616be b(com.android.tools.r8.graph.M2 m22) {
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52518b;
        return new C6616be(abstractC9530t40, abstractC9530t40);
    }

    public static C6949de a(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C4798y c4798y, C9021q10 c9021q10) {
        return new C6949de(m22, c8854p10, null, c4798y, c9021q10);
    }

    public static void b(Queue queue, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        queue.add(new C6782ce(m22, bool.booleanValue() ? C6616be.f46812e : C6616be.f46813f));
    }

    public static C6949de a(final com.android.tools.r8.graph.M2 m22, final C8854p10 c8854p10) {
        return (C6949de) C9021q10.a(c8854p10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6949de.a(com.android.tools.r8.graph.M2.this, c8854p10, (C9021q10) obj);
            }
        });
    }

    public static C6949de a(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C9021q10 c9021q10) {
        return new C6949de(m22, c8854p10, C10070wI.f53466b, null, c9021q10);
    }

    public final C6949de a(C8854p10 c8854p10, C9021q10 c9021q10) {
        if (f47439i || this.f46573b != c8854p10) {
            return new C6949de(this.f47443h, c8854p10, this.f47440e, this.f47441f, c9021q10);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x006b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C10070wI a(C4798y<? extends C4514j> c4798y, C10070wI c10070wI, C10070wI c10070wI2) {
        com.android.tools.r8.graph.E0 g10;
        if (!c10070wI.f53468a.isEmpty() && !c10070wI2.f53468a.isEmpty()) {
            synchronized (c4798y.b().f38169v) {
                try {
                    WQ wq = c4798y.b().f38169v;
                    wq.getClass();
                    C6620bf0 c6620bf0 = C6620bf0.f46817i;
                    C10070wI c10070wI3 = (C10070wI) ((Map) wq.getOrDefault(c10070wI, c6620bf0)).get(c10070wI2);
                    if (c10070wI3 != null) {
                        return c10070wI3;
                    }
                    WQ wq2 = c4798y.b().f38169v;
                    wq2.getClass();
                    C10070wI c10070wI4 = (C10070wI) ((Map) wq2.getOrDefault(c10070wI2, c6620bf0)).get(c10070wI);
                    if (c10070wI4 != null) {
                        return c10070wI4;
                    }
                    IdentityHashMap identityHashMap = new IdentityHashMap();
                    final ArrayDeque arrayDeque = new ArrayDeque();
                    c10070wI.a(new BiConsumer() {
                        @Override
                        public final void accept(Object obj, Object obj2) {
                            C6949de.a(Queue.this, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
                        }
                    });
                    c10070wI2.a(new BiConsumer() {
                        @Override
                        public final void accept(Object obj, Object obj2) {
                            C6949de.b(Queue.this, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
                        }
                    });
                    while (true) {
                        if (!arrayDeque.isEmpty()) {
                            C6782ce c6782ce = (C6782ce) arrayDeque.poll();
                            com.android.tools.r8.graph.M2 m22 = c6782ce.f47122a;
                            C6616be c6616be = c6782ce.f47123b;
                            C6616be c6616be2 = (C6616be) identityHashMap.computeIfAbsent(m22, new Function() {
                                @Override
                                public final Object apply(Object obj) {
                                    return C6949de.b((com.android.tools.r8.graph.M2) obj);
                                }
                            });
                            c6616be2.getClass();
                            boolean z10 = C6616be.f46814g;
                            if (!z10 && !c6616be.f46815a.c() && !c6616be.f46816b.c()) {
                                throw new AssertionError();
                            }
                            if (!z10 && c6616be.f46815a.c() && c6616be.f46816b.c()) {
                                throw new AssertionError();
                            }
                            if (c6616be.f46815a.c()) {
                                AbstractC9530t40 abstractC9530t40 = c6616be2.f46815a;
                                AbstractC9530t40 abstractC9530t402 = c6616be.f46815a;
                                if (!z10 && !abstractC9530t40.c() && !abstractC9530t402.c()) {
                                    throw new AssertionError();
                                }
                                c6616be2.f46815a = (abstractC9530t40.d() || abstractC9530t402.d()) ? AbstractC9530t40.f52517a : AbstractC9530t40.f52519c;
                                if (c6616be2.f46816b.a() && c6616be2.f46815a != abstractC9530t40) {
                                    g10 = c4798y.g(m22);
                                    if (g10 == null) {
                                        for (com.android.tools.r8.graph.M2 m23 : g10.f36248h.f36675b) {
                                            arrayDeque.add(new C6782ce(m23, c6616be));
                                        }
                                    }
                                }
                            } else {
                                AbstractC9530t40 abstractC9530t403 = c6616be2.f46816b;
                                AbstractC9530t40 abstractC9530t404 = c6616be.f46816b;
                                if (!z10 && !abstractC9530t403.c() && !abstractC9530t404.c()) {
                                    throw new AssertionError();
                                }
                                c6616be2.f46816b = (abstractC9530t403.d() || abstractC9530t404.d()) ? AbstractC9530t40.f52517a : AbstractC9530t40.f52519c;
                                if (c6616be2.f46815a.a() && c6616be2.f46816b != abstractC9530t403) {
                                    g10 = c4798y.g(m22);
                                    if (g10 == null) {
                                    }
                                }
                            }
                        } else {
                            final ArrayList arrayList = new ArrayList(identityHashMap.size());
                            identityHashMap.forEach(new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    C6949de.a(List.this, (com.android.tools.r8.graph.M2) obj, (C6616be) obj2);
                                }
                            });
                            C10070wI.a a10 = C10070wI.a();
                            int size = arrayList.size();
                            int i10 = 0;
                            while (i10 < size) {
                                Object obj = arrayList.get(i10);
                                i10++;
                                C8699o50 c8699o50 = (C8699o50) obj;
                                int size2 = arrayList.size();
                                int i11 = 0;
                                while (true) {
                                    if (i11 < size2) {
                                        Object obj2 = arrayList.get(i11);
                                        i11++;
                                        if (c4798y.f().b((com.android.tools.r8.graph.M2) ((C8699o50) obj2).a(), (com.android.tools.r8.graph.M2) c8699o50.a())) {
                                            break;
                                        }
                                    } else {
                                        a10.a((com.android.tools.r8.graph.M2) c8699o50.a(), ((Boolean) c8699o50.b()).booleanValue());
                                        break;
                                    }
                                }
                            }
                            C10070wI a11 = a10.a();
                            if (c10070wI.equals(c10070wI2)) {
                                return a11;
                            }
                            synchronized (c4798y.b().f38169v) {
                                c4798y.b().f38169v.a(c10070wI, c10070wI2, a11);
                            }
                            return a11;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            return C10070wI.f53466b;
        }
    }

    @Override
    public final boolean a(final C4798y c4798y) {
        return ((C4514j) c4798y.f()).h(E()) || F().a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean h10;
                h10 = ((C4514j) C4798y.this.f()).h((com.android.tools.r8.graph.M2) obj);
                return h10;
            }
        });
    }

    @Override
    public final boolean a(Predicate predicate) {
        return predicate.test(this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 c10;
        return (!this.f47443h.a(c4724u1.f38068i2) || (c10 = F().c()) == null) ? this.f47443h : c10;
    }

    public static String a(C8699o50 c8699o50) {
        if (((Boolean) c8699o50.b()).booleanValue()) {
            return ((com.android.tools.r8.graph.M2) c8699o50.a()).toString();
        }
        return "maybe(" + c8699o50.a() + ")";
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, final Function function, final Set set) {
        boolean z10 = f47439i;
        if (!z10 && this.f47441f == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f47441f.m()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) function.apply(this.f47443h);
        if (m22.P0()) {
            if (D70.f39450b || m22.P0()) {
                return D70.a((char) m22.f36592f.f36562f[0], false);
            }
            throw new AssertionError();
        }
        C10070wI c10070wI = this.f47440e;
        if (c10070wI != null && !c10070wI.f53468a.isEmpty()) {
            final U6 u62 = new U6();
            final C7 c72 = new C7();
            F().a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C6949de.this.a(set, function, u62, c72, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
                }
            });
            if (u62.a()) {
                if (c72.b()) {
                    if (!z10 && ((com.android.tools.r8.graph.E0) c72.a()).isInterface()) {
                        throw new AssertionError();
                    }
                    if (z10 || m22 == this.f47441f.b().f38068i2) {
                        return b(((com.android.tools.r8.graph.E0) c72.a()).f36245e, this.f46573b, (C4798y<? extends C4514j>) this.f47441f);
                    }
                    throw new AssertionError();
                }
                final C10070wI.a a10 = C10070wI.a();
                this.f47440e.a(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C6949de.a(Function.this, a10, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
                    }
                });
                return a(m22, this.f46573b, (C4798y<? extends C4514j>) this.f47441f, a10.a());
            }
            if (m22 != this.f47443h) {
                return a(m22, this.f46573b, (C4798y<? extends C4514j>) this.f47441f, F());
            }
        } else if (m22 != this.f47443h) {
            return b(m22, this.f46573b, (C4798y<? extends C4514j>) this.f47441f);
        }
        return this;
    }

    public final void a(Set set, Function function, U6 u62, C7 c72, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        com.android.tools.r8.graph.M2 m23;
        if (set.contains(m22) || m22 == (m23 = (com.android.tools.r8.graph.M2) function.apply(m22))) {
            return;
        }
        u62.e();
        com.android.tools.r8.graph.E0 g10 = this.f47441f.g(m23);
        if (g10.isInterface()) {
            return;
        }
        if (c72.b() && g10 != c72.a()) {
            throw new C5325If("More than one interface has changed to a class: " + c72.a() + " and " + ((Object) g10));
        }
        c72.a((C7) g10);
    }

    public static void a(Function function, C10070wI.a aVar, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) function.apply(m22);
        if (!f47439i && m22 != m23 && !bool.booleanValue()) {
            throw new AssertionError((Object) "Rewritten implies program types thus known.");
        }
        aVar.a(m23, bool.booleanValue());
    }

    @Override
    public AbstractC6450ae0 a(AbstractC6450ae0 abstractC6450ae0, C4798y<?> c4798y) {
        if (abstractC6450ae0.r()) {
            W3 a10 = abstractC6450ae0.a();
            C4724u1 b10 = c4798y.b();
            if (c4798y.m()) {
                return a(c4798y.b().f38068i2, C10070wI.a().a(b10.f38048f6).a(b10.f38032d6).a(), a10.f46573b);
            }
            return c(b10.f38068i2, a10.f46573b, c4798y);
        }
        if (abstractC6450ae0.s()) {
            C6949de b11 = abstractC6450ae0.b();
            if (c4798y.m()) {
                boolean z10 = f47439i;
                if (!z10 && this.f47441f == null) {
                    throw new AssertionError();
                }
                if (z10 || this.f47441f.m()) {
                    return a(a((C4514j) this.f47441f.f(), E(), b11.E()), b11.F(), b11.f46573b);
                }
                throw new AssertionError();
            }
            return c(b11.E(), b11.f46573b, c4798y);
        }
        if (!f47439i && !(abstractC6450ae0 instanceof C6301Zd0)) {
            throw new AssertionError();
        }
        return b(abstractC6450ae0.f46573b);
    }

    public final C6949de a(com.android.tools.r8.graph.M2 m22, C10070wI c10070wI, C8854p10 c8854p10) {
        boolean z10 = f47439i;
        if (!z10 && this.f47441f == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f47441f.m()) {
            throw new AssertionError();
        }
        C10070wI F10 = F();
        if (!F10.equals(c10070wI)) {
            F10 = a((C4798y<? extends C4514j>) this.f47441f, F10, c10070wI);
        }
        C10070wI a10 = this.f47441f.b().a(this.f47441f, m22);
        C8854p10 a11 = this.f46573b.a(c8854p10);
        if (F10.equals(a10)) {
            return b(m22, a11, (C4798y<? extends C4514j>) this.f47441f);
        }
        return a(m22, a11, (C4798y<? extends C4514j>) this.f47441f, F10);
    }

    public static void a(List list, com.android.tools.r8.graph.M2 m22, C6616be c6616be) {
        if (c6616be.f46815a.c() && c6616be.f46816b.c()) {
            if (C6616be.f46814g || (c6616be.f46815a.c() && c6616be.f46816b.c())) {
                list.add(new C8699o50(m22, Boolean.valueOf(c6616be.f46815a.d() && c6616be.f46816b.d())));
                return;
            }
            throw new AssertionError();
        }
    }

    public static com.android.tools.r8.graph.M2 a(C4514j c4514j, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22 == m23) {
            return m22;
        }
        com.android.tools.r8.graph.M2 m24 = c4514j.b().f38068i2;
        if (m22 != m24 && m23 != m24) {
            ArrayList arrayList = new ArrayList(10);
            while (m22 != m23) {
                arrayList.add(m22);
                com.android.tools.r8.graph.E0 g10 = c4514j.g(m22);
                if (g10 == null || (m22 = g10.f36247g) == null || m22 == m24) {
                    int size = arrayList.size();
                    Collection collection = arrayList;
                    if (size > 20) {
                        collection = C4875Al0.a(arrayList);
                    }
                    while (!collection.contains(m23)) {
                        com.android.tools.r8.graph.E0 g11 = c4514j.g(m23);
                        if (g11 != null && (m23 = g11.f36247g) != null && m23 != m24) {
                        }
                    }
                    return m23;
                }
            }
            return m22;
        }
        return m24;
    }

    public static void a(Queue queue, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        queue.add(new C6782ce(m22, bool.booleanValue() ? C6616be.f46810c : C6616be.f46811d));
    }
}
