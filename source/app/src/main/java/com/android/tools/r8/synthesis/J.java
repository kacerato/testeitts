package com.android.tools.r8.synthesis;

import android.icu.text.DateFormat;
import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.SyntheticInfoConsumer;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4761w0;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.J5;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.M5;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.graph.O5;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10643zm;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5209Gf;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.GK;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.InterfaceC6285Yx;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class J {

    public static final boolean f58083g = true;

    public final int f58084a;

    public final S f58085b;

    public final C11555d f58086c;

    public final F f58087d;

    public final A f58088e;

    public final E f58089f;

    public J(C11549b c11549b) {
        int i10 = c11549b.f58226b;
        C11555d c11555d = c11549b.f58227c;
        E e10 = c11549b.f58229e;
        this.f58087d = new F();
        this.f58084a = i10;
        this.f58086c = c11555d;
        this.f58085b = c11555d.f58240a;
        this.f58088e = e10.a();
        this.f58089f = e10;
    }

    public static boolean a(boolean z10, AbstractC11547a0 abstractC11547a0) {
        return z10 == abstractC11547a0.f58222a.f();
    }

    public final boolean b(H2 h22) {
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(h22.f36245e);
        if (abstractC11602t != null) {
            return abstractC11602t.f58331a.f();
        }
        C6057Ux a10 = this.f58086c.a(h22.f36245e);
        GK gk2 = (GK) a10.iterator();
        if (!gk2.hasNext()) {
            return false;
        }
        final boolean f10 = ((AbstractC11547a0) gk2.next()).f58222a.f();
        if (f58083g || AbstractC9907vK.a(a10, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return J.a(f10, (AbstractC11547a0) obj);
            }
        })) {
            return f10;
        }
        throw new AssertionError();
    }

    public final boolean c() {
        return this.f58084a == 2;
    }

    public final List d(M2 m22) {
        if (!g(m22)) {
            return Collections.EMPTY_LIST;
        }
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        b(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.b(C7051eC.this, (C11579l) obj);
            }
        });
        return c7051eC.a();
    }

    public final AbstractC6114Vx e(M2 m22) {
        C9406sK b10 = C9073qK.b(this.f58086c.a(m22), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AbstractC11547a0) obj).a();
            }
        });
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(m22);
        return abstractC11602t != null ? AbstractC6114Vx.b(b10, C9073qK.b(abstractC11602t.f58331a)) : b10;
    }

    public final boolean f(M2 m22) {
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(m22);
        if (abstractC11602t != null) {
            return abstractC11602t.f58331a.d();
        }
        List<Y> list = (List) this.f58086c.f58242c.get(m22);
        if (list == null) {
            return false;
        }
        if (list.size() == 1 && ((Y) list.get(0)).f58222a.d()) {
            return true;
        }
        if (!f58083g) {
            for (Y y10 : list) {
                if (!f58083g && y10.f58222a.d()) {
                    throw new AssertionError();
                }
            }
        }
        return false;
    }

    public final boolean g(M2 m22) {
        C11555d c11555d = this.f58086c;
        return c11555d.f58241b.containsKey(m22) || c11555d.f58242c.containsKey(m22) || this.f58087d.f58055a.containsKey(m22);
    }

    public final AbstractC7552hC c(final M2 m22) {
        return AT.b(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                J.this.b(m22, consumer);
            }
        });
    }

    public final boolean a(AbstractC11547a0 abstractC11547a0) {
        S.b bVar = abstractC11547a0.f58222a;
        S.b bVar2 = this.f58085b.f58191r;
        bVar.getClass();
        return InterfaceC7166ev.a(bVar, bVar2);
    }

    public static void a(M2 m22, Set set, M2 m23, P p10) {
        if (p10.f58223b.f58273b == m22) {
            set.add(m23);
        }
    }

    public static void a(M2 m22, Set set, M2 m23, Y y10) {
        if (y10.f58223b.f58273b == m22) {
            set.add(m23);
        }
    }

    public static void b(C7051eC c7051eC, C11579l c11579l) {
        c7051eC.a(c11579l.f58275d);
    }

    public final C11549b a(AbstractC4780x0 abstractC4780x0) {
        M5 m52 = new M5();
        m52.f36605a = abstractC4780x0;
        return a(m52.a(), this.f58087d, this.f58088e, this.f58086c, this.f58084a, this.f58089f);
    }

    public final IdentityHashMap b(C4798y c4798y) {
        if (!f58083g && !c()) {
            throw new AssertionError();
        }
        final C4724u1 b10 = c4798y.b();
        AbstractC8552nC abstractC8552nC = this.f58086c.f58243d;
        final AbstractC10992r0 s10 = c4798y.s();
        final IdentityHashMap identityHashMap = new IdentityHashMap(abstractC8552nC.size());
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                J.a(Map.this, s10, b10, (M2) obj, (Set) obj2);
            }
        });
        return identityHashMap;
    }

    public static C11549b a(O5 o52, F f10, A a10, C11555d c11555d, int i10, E e10) {
        AbstractC7552hC b10;
        C11555d c11555d2;
        AbstractC4780x0 abstractC4780x0 = o52.f36678a;
        Set set = o52.f36681d;
        c11555d.getClass();
        C11552c c11552c = new C11552c(c11555d);
        boolean z10 = false;
        if (f10.f58055a.isEmpty()) {
            int i11 = AbstractC7552hC.f48487c;
            b10 = C6190Xe0.f45779e;
        } else {
            AbstractC4761w0 c10 = abstractC4780x0.c();
            int i12 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            int i13 = 0;
            for (AbstractC11602t abstractC11602t : f10.f58055a.values()) {
                if (!set.contains(abstractC11602t.d().getType())) {
                    if (abstractC11602t.e()) {
                        M2 type = abstractC11602t.d().getType();
                        type.getClass();
                        int i14 = i13 + 1;
                        if (objArr.length < i14) {
                            objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i14));
                        }
                        objArr[i13] = type;
                        if (abstractC11602t.f58331a.e()) {
                            c10.a(abstractC11602t.c().getHolder());
                        } else {
                            H2 holder = abstractC11602t.c().getHolder();
                            synchronized (c10) {
                                c10.f38316a.add(holder);
                            }
                        }
                        i13 = i14;
                    } else {
                        c10.getClass();
                        if (c10 instanceof C4462g3.a) {
                            if (!f58083g && !(abstractC11602t instanceof C11594q)) {
                                throw new AssertionError();
                            }
                            c10.a().f37234j.add((com.android.tools.r8.graph.I0) ((C11594q) abstractC11602t.a()).f58305d);
                        }
                    }
                    c11552c.a(abstractC11602t);
                }
            }
            c11552c.a(a10);
            b10 = AbstractC7552hC.b(i13, objArr);
            abstractC4780x0 = c10.b();
        }
        AbstractC7552hC abstractC7552hC = b10;
        AbstractC4780x0 abstractC4780x02 = abstractC4780x0;
        C11555d a11 = c11552c.a();
        a11.getClass();
        Set set2 = o52.f36681d;
        if (!set2.isEmpty()) {
            S s10 = a11.f58240a;
            C6620bf0 c6620bf0 = C6620bf0.f46817i;
            int i15 = QC.f43505c;
            C11552c c11552c2 = new C11552c(new C11555d(s10, c6620bf0, c6620bf0, c6620bf0, C7119ef0.f47742j));
            for (P p10 : C9073qK.b((Iterable) a11.f58241b.values())) {
                if (set2.contains(p10.f58134d.f38297f)) {
                    z10 = true;
                } else {
                    c11552c2.a(p10);
                }
            }
            for (Y y10 : C9073qK.b((Iterable) a11.f58242c.values())) {
                if (set2.contains(y10.f58310d)) {
                    z10 = true;
                } else {
                    c11552c2.a(y10);
                }
            }
            AbstractC4895Av0 it = a11.f58244e.iterator();
            while (it.hasNext()) {
                M2 m22 = (M2) it.next();
                if (set2.contains(m22)) {
                    z10 = true;
                } else {
                    if (c11552c2.f58235d == null) {
                        int i16 = QC.f43505c;
                        c11552c2.f58235d = new IC();
                    }
                    c11552c2.f58235d.a(m22);
                }
            }
            if (!C11555d.f58239f && !a11.f58243d.isEmpty() && o52.f36681d.size() != o52.f36682e.size()) {
                throw new AssertionError();
            }
            if (z10) {
                c11555d2 = c11552c2.a();
                return new C11549b(i10, abstractC4780x02, c11555d2, abstractC7552hC, e10);
            }
        }
        c11555d2 = a11;
        return new C11549b(i10, abstractC4780x02, c11555d2, abstractC7552hC, e10);
    }

    public final H5 b(I i10, final C5209Gf c5209Gf, C4798y c4798y, Consumer consumer) {
        return a(i10, c5209Gf.f40551b, c4798y, consumer, new Supplier() {
            @Override
            public final Object get() {
                return C5209Gf.this.a();
            }
        });
    }

    public final boolean b() {
        return !this.f58087d.f58055a.isEmpty();
    }

    public final AbstractC7552hC b(M2 m22) {
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        b(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a(C7051eC.this, (C11579l) obj);
            }
        });
        return c7051eC.a();
    }

    public static void a(C7051eC c7051eC, C11579l c11579l) {
        c7051eC.a(c11579l.f58273b);
    }

    public static void a(Consumer consumer, N n10) {
        n10.f58127q = false;
        consumer.accept(n10);
    }

    public static void a(Consumer consumer, W w10) {
        w10.f58293l = true;
        consumer.accept(w10);
    }

    public static void a(H2 h22, final L l10, final C11579l c11579l, final C11552c c11552c) {
        S.b bVar = l10.f58103a;
        if (bVar != null && bVar.g()) {
            h22.l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    J.a(C11552c.this, l10, c11579l, (H5) obj);
                }
            });
            return;
        }
        S.b bVar2 = l10.f58103a;
        if (bVar2 == null || bVar2.g()) {
            return;
        }
        S.b bVar3 = l10.f58103a;
        boolean z10 = AbstractC11602t.f58330c;
        if (!z10 && bVar3 == null) {
            throw new AssertionError();
        }
        if (!z10 && c11579l == null) {
            throw new AssertionError();
        }
        c11552c.getClass();
        c11552c.a(new Y(bVar3, c11579l, h22.getType()));
    }

    public final Set a(final M2 m22) {
        final Set c10 = AbstractC5513Ll0.c();
        this.f58086c.f58241b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((List) obj2).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        J.a(M2.this, r2, r3, (P) obj3);
                    }
                });
            }
        });
        this.f58086c.f58242c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((List) obj2).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        J.a(M2.this, r2, r3, (Y) obj3);
                    }
                });
            }
        });
        return c10;
    }

    public static void a(C11552c c11552c, L l10, C11579l c11579l, H5 h52) {
        S.b bVar = l10.f58103a;
        boolean z10 = AbstractC11602t.f58330c;
        if (!z10 && bVar == null) {
            throw new AssertionError();
        }
        if (!z10 && c11579l == null) {
            throw new AssertionError();
        }
        if (!O.f58130e && !bVar.g()) {
            throw new AssertionError();
        }
        c11552c.getClass();
        c11552c.a(new P(bVar, c11579l, h52.getReference()));
    }

    public static C11549b a(AbstractC4780x0 abstractC4780x0, E e10) {
        S s10 = abstractC4780x0.f38367e.f38144r6;
        C6620bf0 c6620bf0 = C6620bf0.f46817i;
        int i10 = QC.f43505c;
        return new C11549b(1, abstractC4780x0, new C11555d(s10, c6620bf0, c6620bf0, c6620bf0, C7119ef0.f47742j), C6190Xe0.f45779e, e10);
    }

    public static void a(Map map, final AbstractC10992r0 abstractC10992r0, final C4724u1 c4724u1, M2 m22, Set set) {
        Set set2 = (Set) map.put(abstractC10992r0.a(c4724u1, m22), C4875Al0.a(set, new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 a10;
                a10 = AbstractC10992r0.this.a(c4724u1, (M2) obj);
                return a10;
            }
        }));
        if (!f58083g && set2 != null) {
            throw new AssertionError();
        }
    }

    public static M2 a(S.b bVar, C5209Gf c5209Gf, C4798y c4798y, C11579l c11579l) {
        M2 m22;
        String sb2 = c5209Gf.b(new StringBuilder()).toString();
        if (!S.f58147a0 && bVar.c()) {
            throw new AssertionError();
        }
        if (c4798y.E().f50595E0) {
            m22 = c11579l.f58274c;
        } else {
            m22 = c11579l.f58273b;
        }
        return c4798y.b().d(S.a("$$InternalSynthetic", bVar, m22.w0(), sb2));
    }

    public static void a(C4798y c4798y, C11552c c11552c, H2 h22) {
        L b10 = L.b(h22, c4798y);
        if (!L.f58102d && b10.f58104b == null && b10 != L.f58101c) {
            throw new AssertionError();
        }
        C11579l c11579l = b10.f58104b;
        if (c11579l != null) {
            a(h22, b10, c11579l, c11552c);
        }
    }

    public static void a(final C4798y c4798y, final C11552c c11552c) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        c4798y.f().d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a(Map.this, c11552c, c4798y, (H2) obj);
            }
        });
    }

    public static C11579l a(final Map map, final C11552c c11552c, final C4798y c4798y, final H2 h22) {
        final L b10 = L.b(h22, c4798y);
        if (!L.f58102d && b10.f58104b == null && b10 != L.f58101c) {
            throw new AssertionError();
        }
        if (b10.f58104b != null) {
            return (C11579l) map.computeIfAbsent(h22.getType(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return J.a(H2.this, b10, map, c11552c, c4798y, (M2) obj);
                }
            });
        }
        return (C11579l) map.get(h22.getType());
    }

    public static C11579l a(H2 h22, L l10, Map map, C11552c c11552c, C4798y c4798y, M2 m22) {
        C11579l a10;
        if (!f58083g && c4798y.E().f50595E0) {
            throw new AssertionError();
        }
        H2 a11 = H2.a(c4798y.f().c(l10.f58104b.f58273b));
        if (a11 == null) {
            c4798y.E().f50691j.error(new StringDiagnostic("Attempt at compiling intermediate artifact without its context", h22.f36244d));
            a10 = l10.f58104b;
        } else {
            a10 = a(map, c11552c, c4798y, a11);
            if (a10 == null) {
                a10 = l10.f58104b;
            }
        }
        a(h22, l10, a10, c11552c);
        return a10;
    }

    public final InterfaceC4364b0 a(Function function, M2 m22) {
        com.android.tools.r8.graph.E0 e02;
        S.b bVar;
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(m22);
        if (abstractC11602t != null) {
            e02 = abstractC11602t.d();
            bVar = abstractC11602t.f58331a;
            boolean z10 = f58083g;
            if (!z10 && e02.e0() != abstractC11602t.e()) {
                throw new AssertionError();
            }
            if (!z10) {
                e02.getClass();
                if ((e02 instanceof com.android.tools.r8.graph.I0) != (abstractC11602t instanceof C11594q)) {
                    throw new AssertionError();
                }
            }
        } else {
            e02 = null;
            bVar = null;
        }
        if (e02 != null) {
            boolean z11 = f58083g;
            if (!z11 && bVar == null) {
                throw new AssertionError();
            }
            if (z11 || !((InterfaceC4364b0) function.apply(m22)).X() || bVar.e()) {
                return e02;
            }
            throw new AssertionError((Object) ("Pending synthetic definition also present in the active program: " + ((Object) m22)));
        }
        return (InterfaceC4364b0) function.apply(m22);
    }

    public final List a() {
        F f10 = this.f58087d;
        f10.getClass();
        ArrayList arrayList = new ArrayList(f10.f58055a.size());
        for (AbstractC11602t abstractC11602t : f10.f58055a.values()) {
            if (abstractC11602t.e()) {
                arrayList.add(abstractC11602t.c().getHolder());
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final boolean a(H2 h22) {
        if (!g(h22.f36245e)) {
            return false;
        }
        if (f(h22.getType())) {
            return true;
        }
        M2 type = h22.getType();
        GK gk2 = (GK) this.f58086c.a(type).iterator();
        if (gk2.hasNext()) {
            return f(((AbstractC11547a0) gk2.next()).f58223b.f58273b);
        }
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(type);
        if (abstractC11602t != null) {
            return f(abstractC11602t.f58332b.f58273b);
        }
        return false;
    }

    public final boolean a(M2 m22, final BiPredicate biPredicate) {
        return JK.a(e(m22).iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return J.this.a(biPredicate, (S.b) obj);
            }
        }) != -1;
    }

    public final boolean a(BiPredicate biPredicate, S.b bVar) {
        return biPredicate.test(bVar, this.f58085b);
    }

    public final boolean a(M2 m22, I i10) {
        S.b a10 = i10.a(this.f58085b);
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(m22);
        if (abstractC11602t != null && abstractC11602t.f58331a == a10) {
            return true;
        }
        C11555d c11555d = this.f58086c;
        List list = (List) c11555d.f58242c.get(m22);
        if (list == null) {
            List list2 = (List) c11555d.f58241b.get(m22);
            if (list2 == null) {
                return false;
            }
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((P) it.next()).f58222a == a10) {
                    return true;
                }
            }
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((Y) it2.next()).f58222a == a10) {
                return true;
            }
        }
        return false;
    }

    public final FeatureSplit a(M2 m22, FeatureSplit featureSplit) {
        boolean z10 = f58083g;
        if (!z10 && !g(m22)) {
            throw new AssertionError();
        }
        if (a(m22, new I() {
            @Override
            public final S.b a(S s10) {
                S.b bVar;
                bVar = s10.f58182i;
                return bVar;
            }
        })) {
            return FeatureSplit.BASE;
        }
        AbstractC7552hC c10 = c(m22);
        if (c10.isEmpty()) {
            if (z10) {
                return featureSplit;
            }
            throw new AssertionError((Object) ("Expected synthetic to have at least one synthesizing context: " + m22.D0()));
        }
        if (!z10) {
            Function function = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((C11579l) obj).a();
                }
            };
            if (!z10 && c10.isEmpty()) {
                throw new AssertionError();
            }
            FeatureSplit featureSplit2 = (FeatureSplit) function.apply(c10.get(0));
            for (int i10 = 1; i10 < c10.size(); i10++) {
                if (!f58083g && featureSplit2 != function.apply(c10.get(i10))) {
                    throw new AssertionError();
                }
            }
        }
        return ((C11579l) c10.get(0)).f58276e;
    }

    public static void a(final C4798y c4798y) {
        J g10 = c4798y.f38408a.g();
        boolean z10 = f58083g;
        boolean z11 = false;
        if (!z10) {
            C11555d c11555d = g10.f58086c;
            boolean z12 = c11555d.f58241b.isEmpty() && c11555d.f58242c.isEmpty();
            if (!C11555d.f58239f && z12 && !c11555d.f58244e.isEmpty()) {
                throw new AssertionError();
            }
            if (!z12) {
                throw new AssertionError();
            }
        }
        if (!z10 && !g10.f58087d.f58055a.isEmpty()) {
            throw new AssertionError();
        }
        C11555d c11555d2 = g10.f58086c;
        c11555d2.getClass();
        final C11552c c11552c = new C11552c(c11555d2);
        if (c4798y.E().f50595E0) {
            c4798y.f().d().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    J.a(C4798y.this, c11552c, (H2) obj);
                }
            });
        } else {
            a(c4798y, c11552c);
        }
        if (c11552c.f58233b != null) {
            if (c11552c.f58235d == null) {
                int i10 = QC.f43505c;
                c11552c.f58235d = new IC();
            }
            c11552c.f58235d.a((Iterable) c11552c.f58233b.o());
        }
        if (c11552c.f58234c != null) {
            if (c11552c.f58235d == null) {
                int i11 = QC.f43505c;
                c11552c.f58235d = new IC();
            }
            c11552c.f58235d.a((Iterable) c11552c.f58234c.o());
        }
        C11555d a10 = c11552c.a();
        if (a10.f58241b.isEmpty() && a10.f58242c.isEmpty()) {
            z11 = true;
        }
        if (!C11555d.f58239f && z11 && !a10.f58244e.isEmpty()) {
            throw new AssertionError();
        }
        if (z11) {
            return;
        }
        int i12 = g10.f58084a;
        AbstractC4780x0 a11 = c4798y.f().a();
        int i13 = AbstractC7552hC.f48487c;
        C11549b c11549b = new C11549b(i12, a11, a10, C6190Xe0.f45779e, g10.f58089f);
        if (c4798y.f().h()) {
            c4798y.L().b(c4798y.f().l().a(c11549b));
        } else {
            c4798y.N().b(c4798y.f().a(c11549b));
        }
    }

    public final void b(M2 m22, Consumer consumer) {
        Iterator it = this.f58086c.a(m22).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                break;
            } else {
                consumer.accept(((AbstractC11547a0) gk2.next()).f58223b);
            }
        }
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(m22);
        if (abstractC11602t != null) {
            consumer.accept(abstractC11602t.f58332b);
        }
    }

    public final M2 a(final C8570nJ c8570nJ, M2 m22) {
        if (!g(m22)) {
            return null;
        }
        final C7 c72 = new C7(null);
        b(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a(C7.this, c8570nJ, (C11579l) obj);
            }
        });
        return (M2) c72.a();
    }

    public static void a(C7 c72, C8570nJ c8570nJ, C11579l c11579l) {
        M2 m22;
        if (!f58083g && c72.a() != null) {
            throw new AssertionError();
        }
        if (c8570nJ.f50595E0) {
            m22 = c11579l.f58274c;
        } else {
            m22 = c11579l.f58273b;
        }
        c72.a((C7) m22);
    }

    public final void a(H2 h22, V60 v60, V60 v602) {
        C6057Ux a10 = this.f58086c.a(h22.getType());
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(h22.getType());
        if (abstractC11602t != null) {
            a10 = AbstractC6114Vx.b(a10, C9073qK.b(abstractC11602t.g()));
        }
        if (JK.a(a10.iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return J.this.a((AbstractC11547a0) obj);
            }
        }) != -1) {
            if (!f58083g && !v60.test(h22)) {
                throw new AssertionError();
            }
        } else if (!f58083g && !v602.test(h22)) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C11579l a(D5 d52, C6300Zd c6300Zd) {
        boolean z10;
        M2 S10 = d52.S();
        AbstractC11602t abstractC11602t = (AbstractC11602t) this.f58087d.f58055a.get(S10);
        if (abstractC11602t != null) {
            return abstractC11602t.f58332b;
        }
        C6057Ux a10 = this.f58086c.a(S10);
        if (a10 instanceof Collection) {
            z10 = ((Collection) a10).isEmpty();
        } else {
            z10 = !((GK) a10.iterator()).hasNext();
        }
        if (!z10) {
            Comparator comparator = new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int b10;
                    b10 = ((AbstractC11547a0) obj).b().b(((AbstractC11547a0) obj2).b());
                    return b10;
                }
            };
            Iterator it = a10.iterator();
            Object obj = null;
            while (true) {
                GK gk2 = (GK) it;
                if (gk2.hasNext()) {
                    Object next = gk2.next();
                    if (obj == null || comparator.compare(next, obj) < 0) {
                        obj = next;
                    }
                } else {
                    return ((AbstractC11547a0) obj).f58223b;
                }
            }
        } else {
            c6300Zd.getClass();
            return new C11579l(d52.S(), d52.S(), d52.getOrigin(), c6300Zd.a(d52.getReference(), this));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final H2 a(final S.b bVar, final Consumer consumer, Consumer consumer2, Consumer consumer3, C11579l c11579l, final C4798y c4798y) {
        H2 h22;
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 a10;
                a10 = S.a(S.b.this, (C11579l) obj, c4798y.b());
                return a10;
            }
        };
        M2 m22 = (M2) function.apply(c11579l);
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        H2 h23 = null;
        if (g10 != null) {
            if (g10.e0()) {
                h22 = g10.d0();
                if (h22 == null) {
                    consumer2.accept(h22);
                    return h22;
                }
                synchronized (m22) {
                    try {
                        com.android.tools.r8.graph.E0 g11 = c4798y.g(m22);
                        if (g11 != null) {
                            if (g11.e0()) {
                                h23 = g11.d0();
                            } else if (!g11.f0() || !bVar.d()) {
                                a(g11, "program", c4798y);
                                throw null;
                            }
                        }
                        if (h23 != null) {
                            return h23;
                        }
                        if (!f58083g && g(m22)) {
                            throw new AssertionError();
                        }
                        Consumer consumer4 = new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                J.a(Consumer.this, (W) obj);
                            }
                        };
                        AbstractC10643zm b10 = c4798y.E().x().b();
                        M2 b11 = b10.b(c11579l.f58273b);
                        if (b11 != null) {
                            b10.a(m22, (M2) function.apply(new C11579l(b11, b11, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE)));
                        }
                        W w10 = new W(m22, bVar, c11579l, c4798y.b());
                        consumer4.accept(w10);
                        H2 h24 = (H2) w10.a();
                        if (!W.f58216t) {
                            com.android.tools.r8.graph.Q q10 = h24.f36246f;
                            if (!q10.o() || q10.I()) {
                                throw new AssertionError();
                            }
                        }
                        X x10 = new X(bVar, c11579l, h24);
                        this.f58087d.f58055a.put(x10.d().getType(), x10);
                        consumer2.accept(h24);
                        consumer3.accept(h24);
                        return h24;
                    } finally {
                    }
                }
            }
            if (!g10.f0() || !bVar.d()) {
                a(g10, "program", c4798y);
                throw null;
            }
        }
        h22 = null;
        if (h22 == null) {
        }
    }

    public final H2 a(I i10, final C5209Gf c5209Gf, final C4798y c4798y, Consumer consumer) {
        final S.b a10 = i10.a(this.f58085b);
        C11579l a11 = a(c5209Gf.f40551b, c4798y.f().f37255b);
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return J.a(S.b.this, c5209Gf, c4798y, (C11579l) obj);
            }
        };
        M2 m22 = (M2) function.apply(a11);
        AbstractC10643zm b10 = c4798y.E().x().b();
        M2 b11 = b10.b(a11.f58273b);
        if (b11 != null) {
            b10.a(m22, (M2) function.apply(new C11579l(b11, b11, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE)));
        }
        W w10 = new W(m22, a10, a11, c4798y.b());
        consumer.accept(w10);
        H2 h22 = (H2) w10.a();
        if (!W.f58216t) {
            com.android.tools.r8.graph.Q q10 = h22.f36246f;
            if (!q10.o() || q10.I()) {
                throw new AssertionError();
            }
        }
        X x10 = new X(a10, a11, h22);
        this.f58087d.f58055a.put(x10.d().getType(), x10);
        return h22;
    }

    public final H2 a(I i10, H2 h22, final C4798y c4798y, Consumer consumer) {
        final S.b a10 = i10.a(this.f58085b);
        h22.e0();
        C11579l a11 = a(h22.d0(), c4798y.f().f37255b);
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 a12;
                a12 = S.a(S.b.this, (C11579l) obj, c4798y.b());
                return a12;
            }
        };
        M2 m22 = (M2) function.apply(a11);
        AbstractC10643zm b10 = c4798y.E().x().b();
        M2 b11 = b10.b(a11.f58273b);
        if (b11 != null) {
            b10.a(m22, (M2) function.apply(new C11579l(b11, b11, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE)));
        }
        W w10 = new W(m22, a10, a11, c4798y.b());
        consumer.accept(w10);
        H2 h23 = (H2) w10.a();
        if (!W.f58216t) {
            com.android.tools.r8.graph.Q q10 = h23.f36246f;
            if (!q10.o() || q10.I()) {
                throw new AssertionError();
            }
        }
        X x10 = new X(a10, a11, h23);
        this.f58087d.f58055a.put(x10.d().getType(), x10);
        return h23;
    }

    public final H2 a(I i10, com.android.tools.r8.graph.E0 e02, C4798y c4798y) {
        C11579l a10;
        S.b a11 = i10.a(this.f58085b);
        boolean z10 = f58083g;
        if (!z10 && !a11.c()) {
            throw new AssertionError();
        }
        if (e02.e0()) {
            a10 = a(e02.d0(), c4798y.f().f37255b);
        } else {
            a10 = C11579l.a(e02.z());
        }
        M2 a12 = S.a(a11, a10, c4798y.b());
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a12);
        if (!z10 && g10 == null) {
            throw new AssertionError((Object) ("Missing existing fixed class " + ((Object) a12)));
        }
        if (!z10 && !g(a12)) {
            throw new AssertionError();
        }
        if (z10 || g10.e0()) {
            return g10.d0();
        }
        throw new AssertionError();
    }

    public final H2 a(I i10, com.android.tools.r8.graph.E0 e02, C4798y c4798y, Consumer consumer, Consumer consumer2) {
        C11579l a10;
        S.b a11 = i10.a(this.f58085b);
        if (!f58083g && !a11.c()) {
            throw new AssertionError();
        }
        Consumer b10 = C6628bi.b();
        if (e02.e0()) {
            a10 = a(e02.d0(), c4798y.f().f37255b);
        } else {
            a10 = C11579l.a(e02.z());
        }
        return a(a11, consumer, consumer2, b10, a10, c4798y);
    }

    public final H5 a(L2 l22, I2 i22, I i10, J5 j52, C4798y c4798y, Consumer consumer, Consumer consumer2, Consumer consumer3) {
        S.b a10 = i10.a(this.f58085b);
        H2 a11 = a(i10, j52.a(), c4798y, consumer, C6628bi.b());
        return new H5(a11, a(c4798y.b().a(a11.getType(), i22, l22), a11, a10, c4798y, consumer2, consumer3));
    }

    public static void a(com.android.tools.r8.graph.E0 e02, String str, C4798y c4798y) {
        String str2;
        if (!e02.e0()) {
            str2 = e02 instanceof com.android.tools.r8.graph.I0 ? ClasspathEntry.TAG_CLASSPATH : "library";
        } else {
            str2 = "program";
        }
        throw c4798y.E().f50691j.b("Cannot ensure " + ((Object) e02.f36245e) + " as a synthetic " + str + " class, because it is already a " + str2 + " class.");
    }

    public final com.android.tools.r8.graph.I0 a(final S.b bVar, Consumer consumer, Consumer consumer2, C11579l c11579l, final C4798y c4798y) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 a10;
                a10 = S.a(S.b.this, (C11579l) obj, c4798y.b());
                return a10;
            }
        };
        M2 m22 = (M2) function.apply(c11579l);
        synchronized (m22) {
            try {
                com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
                if (g10 != null) {
                    if (g10 instanceof com.android.tools.r8.graph.I0) {
                        return g10.k();
                    }
                    a(g10, ClasspathEntry.TAG_CLASSPATH, c4798y);
                    throw null;
                }
                AbstractC10643zm b10 = c4798y.E().x().b();
                M2 b11 = b10.b(c11579l.f58273b);
                if (b11 != null) {
                    b10.a(m22, (M2) function.apply(new C11579l(b11, b11, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE)));
                }
                C11591p c11591p = new C11591p(m22, bVar, c11579l, c4798y.b());
                consumer.accept(c11591p);
                com.android.tools.r8.graph.I0 i02 = (com.android.tools.r8.graph.I0) c11591p.a();
                C11594q c11594q = new C11594q(bVar, c11579l, i02);
                this.f58087d.f58055a.put(c11594q.d().getType(), c11594q);
                consumer2.accept(i02);
                return i02;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static C4421e0 a(L2 l22, I2 i22, S.b bVar, C4798y c4798y, final Consumer consumer, com.android.tools.r8.graph.I0 i02) {
        return new C4421e0(i02, a(c4798y.b().a(i02.getType(), i22, l22), i02, bVar, c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a(Consumer.this, (N) obj);
            }
        }, C6628bi.b()));
    }

    public static C4516j1 a(A2 a22, com.android.tools.r8.graph.E0 e02, S.b bVar, C4798y c4798y, Consumer consumer, Consumer consumer2) {
        N4 b02 = e02.b0();
        synchronized (b02) {
            try {
                C4516j1 a10 = b02.f36638b.a(a22.y0(), a22.t0());
                if (a10 != null) {
                    return a10;
                }
                N n10 = new N(c4798y.b(), e02.getType(), bVar);
                n10.a(a22.t0());
                n10.f58115e = a22.y0();
                consumer.accept(n10);
                C4516j1 a11 = n10.a(e02.S0());
                b02.f36639c = C4516j1.f37311v;
                b02.f36638b.b(a11);
                consumer2.accept(com.android.tools.r8.graph.H0.a(e02, a11));
                return a11;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final H2 a(Supplier supplier, I i10, M2 m22, Collection collection, C4798y c4798y, Consumer consumer, Consumer consumer2, Consumer consumer3) {
        S.b a10 = i10.a(this.f58085b);
        boolean z10 = f58083g;
        if (!z10 && !a10.d()) {
            throw new AssertionError();
        }
        if (!z10 && collection.isEmpty()) {
            throw new AssertionError();
        }
        if (c4798y.E().f50595E0 && c4798y.E().f50703n == null) {
            C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
            c5094Ef0.a(null, (Diagnostic) supplier.get());
            throw c5094Ef0.f39969c;
        }
        H2 a11 = a(a10, consumer, consumer3, consumer2, new C11579l(m22, m22, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE), c4798y);
        Consumer<H2> consumer4 = c4798y.E().f50599F1.f50820H;
        if (consumer4 != null) {
            consumer4.accept(a11);
        }
        this.f58088e.a(a11.getType(), collection);
        return a11;
    }

    public final H5 a(I i10, D5 d52, C4798y c4798y, Consumer consumer, Supplier supplier) {
        M2 m22;
        if (!f58083g && c()) {
            throw new AssertionError();
        }
        C11579l a10 = a(d52, c4798y.f().f37255b);
        S.b a11 = i10.a(this.f58085b);
        String str = (String) supplier.get();
        if (!S.f58147a0 && a11.c()) {
            throw new AssertionError();
        }
        if (c4798y.E().f50595E0) {
            m22 = a10.f58274c;
        } else {
            m22 = a10.f58273b;
        }
        H2 h22 = (H2) ((W) new W(c4798y.b().d(S.a("$$InternalSynthetic", a11, m22.w0(), str)), a11, a10, c4798y.b()).a(consumer.andThen(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a((N) obj);
            }
        }))).a();
        if (!W.f58216t) {
            com.android.tools.r8.graph.Q q10 = h22.f36246f;
            if (!q10.o() || q10.I()) {
                throw new AssertionError();
            }
        }
        H5 h52 = new H5(h22, h22.z1().iterator().next());
        O o10 = new O(a11, a10, h52);
        this.f58087d.f58055a.put(o10.d().getType(), o10);
        return h52;
    }

    public static void a(N n10) {
        n10.a(n10.f58111a.b(DateFormat.MINUTE));
    }

    public final C11549b a(AbstractC4780x0 abstractC4780x0, R00 r00, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite SyntheticItems");
        if (!f58083g) {
            this.f58087d.a(r00);
        }
        M5 m52 = new M5();
        m52.f36605a = abstractC4780x0;
        O5 a10 = m52.a();
        F f10 = this.f58087d;
        A a11 = this.f58088e;
        C11555d c11555d = this.f58086c;
        c11555d.getClass();
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        C11549b a12 = a(a10, f10, a11, new C11555d(c11555d.f58240a, c11555d.a(c11555d.f58241b, r00, ic2), c11555d.a(c11555d.f58242c, r00, ic2), c11555d.f58243d, ic2.a()), this.f58084a, this.f58089f);
        c8659ns0.d();
        return a12;
    }

    public final void a(final SyntheticInfoConsumer syntheticInfoConsumer) {
        if (!f58083g && !c()) {
            throw new AssertionError();
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f58086c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.a(Map.this, syntheticInfoConsumer, (AbstractC11547a0) obj);
            }
        });
    }

    public static void a(Map map, SyntheticInfoConsumer syntheticInfoConsumer, AbstractC11547a0 abstractC11547a0) {
        M2 holder = abstractC11547a0.getHolder();
        M2 m22 = abstractC11547a0.f58223b.f58273b;
        M2 m23 = (M2) map.put(holder, m22);
        if (!f58083g && m23 != null && m23 != m22) {
            throw new AssertionError();
        }
        if (m23 == null) {
            syntheticInfoConsumer.acceptSyntheticInfo(new H(holder, m22));
        }
    }
}
