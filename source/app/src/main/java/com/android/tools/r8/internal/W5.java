package com.android.tools.r8.internal;

import android.provider.MediaStore;
import com.android.dex.DexFormat;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import w2.C15883c;

public class W5 {

    public static final boolean f45287q = true;

    public C6899dH f45288a;

    public final ArrayList f45289b = new ArrayList();

    public final ArrayList f45290c = new ArrayList();

    public Set f45291d = null;

    public N8 f45292e = N8.f42507e;

    public final CE f45293f = new CE(this);

    public int f45294g = -1;

    public ArrayList f45295h = new ArrayList();

    public boolean f45296i = false;

    public boolean f45297j = false;

    public final HashMap f45298k = new HashMap();

    public int f45299l = 0;

    public int f45300m = 0;

    public int f45301n = 0;

    public HashMap f45302o = new HashMap();

    public C8382mB f45303p;

    public W5(C8382mB c8382mB) {
        this.f45303p = c8382mB;
    }

    public static boolean a(C9389sD c9389sD, boolean z10) {
        if (!z10) {
            return true;
        }
        boolean z11 = f45287q;
        if (!z11 && !c9389sD.e1()) {
            throw new AssertionError();
        }
        if (!z11 && c9389sD.d().y()) {
            throw new AssertionError();
        }
        if (!z11 && c9389sD.d().B()) {
            throw new AssertionError();
        }
        if (z11 || c9389sD.d().b0().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).f2();
            }
        })) {
            return true;
        }
        throw new AssertionError();
    }

    public static void e(W5 w52) {
        boolean z10 = f45287q;
        if (!z10 && !w52.f45290c.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !w52.f45289b.isEmpty()) {
            throw new AssertionError();
        }
    }

    public final boolean A() {
        ArrayList arrayList = this.f45295h;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public final boolean B() {
        return this.f45290c.size() == 1;
    }

    public final boolean C() {
        return this.f45289b.size() == 1;
    }

    public final boolean D() {
        return C() && y().u().size() == 1;
    }

    public final boolean E() {
        return i().g2();
    }

    public final boolean F() {
        W5 w52 = this;
        W5 w53 = w52;
        boolean z10 = false;
        do {
            List p10 = w52.p();
            if (p10.size() > 1) {
                return false;
            }
            if (p10.size() == 0) {
                return w52.i().m2();
            }
            w52 = (W5) p10.get(0);
            if (z10) {
                w53 = (W5) w53.p().get(0);
            }
            z10 = !z10;
        } while (w52 != w53);
        return false;
    }

    public boolean G() {
        return this.f45293f.size() == 1 && i().G1();
    }

    public AE H() {
        return this.f45293f.iterator();
    }

    public Y5 I() {
        return new Y5(this, 0);
    }

    public final void J() {
        Set set = this.f45291d;
        if (set != null) {
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    W5.this.a((T5) obj);
                }
            });
        }
    }

    public final void K() {
        Set set = this.f45291d;
        if (set != null) {
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    W5.this.b((T5) obj);
                }
            });
        }
    }

    public final int L() {
        if (z()) {
            return this.f45292e.a().size();
        }
        return 0;
    }

    public final int M() {
        return z() ? this.f45289b.size() - this.f45292e.a().size() : this.f45289b.size();
    }

    public final void N() {
        if (!f45287q && !z()) {
            throw new AssertionError();
        }
        CH ch2 = new CH(16);
        int L10 = L();
        for (int i10 = 0; i10 < L10; i10++) {
            ch2.add(i10);
            ((W5) this.f45289b.get(i10)).m().remove(this);
        }
        a(ch2);
    }

    public final void O() {
        if (!z()) {
            this.f45289b.clear();
            return;
        }
        CH ch2 = new CH(16);
        int size = this.f45289b.size();
        for (int L10 = L(); L10 < size; L10++) {
            ch2.add(L10);
        }
        a(ch2);
    }

    public void P() {
        this.f45296i = true;
    }

    public final String Q() {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("block ");
        sb2.append(this.f45294g);
        sb2.append(", pred-counts: " + this.f45290c.size());
        int i10 = this.f45300m;
        if (i10 > 0) {
            sb2.append(" (" + i10 + " unfilled)");
        }
        sb2.append(", succ-count: " + this.f45289b.size());
        sb2.append(", filled: " + this.f45296i);
        sb2.append(", sealed: " + this.f45297j);
        sb2.append("\npredecessors: ");
        ArrayList arrayList = this.f45290c;
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return W5.f((W5) obj);
            }
        };
        int i11 = 0;
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                W5 w52 = (W5) obj;
                sb2.append(w52.r());
                sb2.append((String) function.apply(w52));
                sb2.append(C15883c.f126249O);
            }
        } else {
            sb2.append('-');
        }
        sb2.append("\nsuccessors: ");
        ArrayList arrayList2 = this.f45289b;
        Function function2 = new Function() {
            @Override
            public final Object apply(Object obj2) {
                return W5.this.h((W5) obj2);
            }
        };
        if (arrayList2.size() > 0) {
            int size2 = arrayList2.size();
            int i13 = 0;
            while (i13 < size2) {
                Object obj2 = arrayList2.get(i13);
                i13++;
                W5 w53 = (W5) obj2;
                sb2.append(w53.r());
                sb2.append((String) function2.apply(w53));
                sb2.append(C15883c.f126249O);
            }
        } else {
            sb2.append('-');
        }
        if (this.f45289b.size() > 0) {
            sb2.append(" (");
            if (z()) {
                sb2.append(this.f45292e.size());
            } else {
                sb2.append("no");
            }
            sb2.append(" try/catch successors)");
        }
        sb2.append('\n');
        ArrayList arrayList3 = this.f45295h;
        if (arrayList3 == null || arrayList3.size() <= 0) {
            sb2.append("no phis\n");
        } else {
            ArrayList arrayList4 = this.f45295h;
            int size3 = arrayList4.size();
            int i14 = 0;
            while (i14 < size3) {
                Object obj3 = arrayList4.get(i14);
                i14++;
                C7201f60 c7201f60 = (C7201f60) obj3;
                sb2.append(c7201f60.e0());
                if (this.f45298k.values().contains(c7201f60)) {
                    sb2.append(" (incomplete)");
                }
                sb2.append('\n');
            }
        }
        if (this.f45288a != null) {
            sb2.append("locals: ");
            C10656zq0.a(sb2, this.f45288a.c(), ", ", C10656zq0.a.f54552e);
            sb2.append('\n');
        }
        Y5 it = this.f45293f.iterator();
        int i15 = 0;
        while (true) {
            String str3 = "???";
            if (!it.hasNext()) {
                break;
            }
            B60 b60 = it.next().f54324i;
            if (b60 != null) {
                str3 = b60.toString();
            }
            i15 = Math.max(i15, str3.length());
            i11 = Math.max(i11, (int) Math.ceil(Math.log10(r4.f54322g + 1)));
        }
        Y5 it2 = this.f45293f.iterator();
        String str4 = null;
        while (it2.hasNext()) {
            AbstractC10561zE next = it2.next();
            if (i15 > 0) {
                B60 b602 = next.f54324i;
                if ((b602 == null ? "???" : b602.toString()).equals(str4)) {
                    str = str4;
                    str2 = "";
                } else {
                    B60 b603 = next.f54324i;
                    str2 = b603 == null ? "???" : b603.toString();
                    str = str2;
                }
                C10656zq0.a(sb2, str2, i15 + 1);
                sb2.append(": ");
                str4 = str;
            }
            int i16 = next.f54322g;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(i16);
            C10656zq0.a(sb2, sb3.toString(), i11 + 1);
            sb2.append(": ");
            sb2.append(next.toString());
            int i17 = C4515j0.f37306e;
            if (!next.V0().isEmpty()) {
                sb2.append(" [end: ");
                C10656zq0.a(sb2, next.V0(), ", ", C10656zq0.a.f54552e);
                sb2.append("]");
            }
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final void R() {
        if (!f45287q && this.f45290c.size() != 1) {
            throw new AssertionError();
        }
        ((W5) this.f45290c.get(0)).i(this);
        m().clear();
    }

    public final W5 S() {
        boolean z10 = f45287q;
        if (!z10 && this.f45290c.size() != 1) {
            throw new AssertionError();
        }
        if (!z10 && ((W5) this.f45290c.get(0)).f45289b.size() != 1) {
            throw new AssertionError();
        }
        W5 w52 = (W5) this.f45290c.get(0);
        w52.n().clear();
        m().clear();
        return w52;
    }

    public final void T() {
        boolean z10 = f45287q;
        if (!z10 && this.f45290c.size() != 1) {
            throw new AssertionError();
        }
        if (!z10 && !((W5) this.f45290c.get(0)).f45289b.contains(this)) {
            throw new AssertionError();
        }
        m().get(0).n().remove(this);
        m().clear();
    }

    public final AbstractC6333Zs0 b(Object obj, BiFunction biFunction) {
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(obj);
        for (W5 w52 : u()) {
            if (!w52.b(this)) {
                c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(w52, c6276Ys0.b().f());
                if (c6276Ys0.c()) {
                    break;
                }
            }
        }
        return c6276Ys0;
    }

    public final void c(int i10) {
        boolean z10 = f45287q;
        if (!z10 && i10 == 0) {
            throw new AssertionError();
        }
        if (!z10 && a(i10)) {
            throw new AssertionError();
        }
        this.f45301n |= i10;
        if (!z10 && !a(i10)) {
            throw new AssertionError();
        }
    }

    public void d(int i10) {
        if (!f45287q && i10 < 0) {
            throw new AssertionError();
        }
        this.f45294g = i10;
    }

    public final void f() {
        ArrayList arrayList = this.f45289b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((W5) obj).m().remove(this);
        }
        n().clear();
    }

    public final void g(W5 w52) {
        boolean z10 = f45287q;
        if (!z10 && this.f45289b.contains(w52)) {
            throw new AssertionError();
        }
        if (!z10 && w52.f45290c.contains(this)) {
            throw new AssertionError();
        }
        n().add(w52);
        w52.m().add(this);
    }

    public final AbstractC10561zE h() {
        if (!f45287q && !z()) {
            throw new AssertionError();
        }
        for (AbstractC10561zE b10 = this.f45293f.b(); b10 != null; b10 = b10.b1()) {
            if (b10.o()) {
                return b10;
            }
        }
        return null;
    }

    public final void i(W5 w52) {
        int indexOf = this.f45289b.indexOf(w52);
        if (!f45287q && indexOf < 0) {
            throw new AssertionError((Object) "removeSuccessor did not find the successor to remove");
        }
        CH ch2 = new CH(1);
        System.arraycopy(new int[]{indexOf}, 0, ch2.f39176b, 0, 1);
        ch2.f39177c = 1;
        a(ch2);
    }

    public final N8 j() {
        if (!z()) {
            return N8.f42508f;
        }
        AbstractC7552hC abstractC7552hC = this.f45292e.f42511c;
        final ArrayList arrayList = this.f45289b;
        Objects.requireNonNull(arrayList);
        return new N8(this.f45292e.f42510b, AT.a((Collection) abstractC7552hC, new Function() {
            @Override
            public final Object apply(Object obj) {
                return (W5) List.this.get(((Integer) obj).intValue());
            }
        }));
    }

    public final W5 k() {
        if (this.f45293f.size() != 2) {
            return null;
        }
        AbstractC10561zE a10 = this.f45293f.a();
        a10.getClass();
        if (!(a10 instanceof C6600bY) || !i().G1()) {
            return null;
        }
        if (f45287q || !z()) {
            return w();
        }
        throw new AssertionError((Object) "Trampoline should not have catch handlers");
    }

    public CE l() {
        return this.f45293f;
    }

    public List<W5> m() {
        if (!f45287q) {
            J();
        }
        return this.f45290c;
    }

    public List<W5> n() {
        if (!f45287q) {
            K();
        }
        return this.f45289b;
    }

    public final AbstractC7552hC o() {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        ArrayList arrayList = this.f45290c;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            W5 w52 = (W5) obj;
            if (!w52.b(this)) {
                int i13 = i12 + 1;
                if (objArr.length < i13) {
                    objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
                }
                objArr[i12] = w52;
                i12 = i13;
            }
        }
        return AbstractC7552hC.b(i12, objArr);
    }

    public final List p() {
        if (!z()) {
            return this.f45289b;
        }
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((W5) obj);
            }
        };
        for (int size = this.f45289b.size() - M(); size < this.f45289b.size(); size++) {
            consumer.accept((W5) this.f45289b.get(size));
        }
        return c7051eC.a();
    }

    public int q() {
        if (f45287q || this.f45294g >= 0) {
            return this.f45294g;
        }
        throw new AssertionError();
    }

    public final String r() {
        int i10 = this.f45294g;
        if (i10 < 0) {
            return MediaStore.UNKNOWN_STRING;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        return sb2.toString();
    }

    public List<C7201f60> s() {
        return this.f45295h;
    }

    public final B60 t() {
        return this.f45293f.a().getPosition();
    }

    public final String toString() {
        return Q();
    }

    public List<W5> u() {
        ArrayList arrayList = this.f45290c;
        boolean z10 = AT.f38618a;
        return C8570nJ.b() ? Collections.unmodifiableList(arrayList) : arrayList;
    }

    public List<W5> v() {
        ArrayList arrayList = this.f45289b;
        boolean z10 = AT.f38618a;
        return C8570nJ.b() ? Collections.unmodifiableList(arrayList) : arrayList;
    }

    public W5 w() {
        if (f45287q || M() == 1) {
            return (W5) AT.b(this.f45289b);
        }
        throw new AssertionError();
    }

    public final W5 x() {
        if (f45287q || B()) {
            return (W5) this.f45290c.get(0);
        }
        throw new AssertionError();
    }

    public final W5 y() {
        if (f45287q || C()) {
            return (W5) this.f45289b.get(0);
        }
        throw new AssertionError();
    }

    public boolean z() {
        if (f45287q || this.f45292e != null) {
            return !this.f45292e.isEmpty();
        }
        throw new AssertionError();
    }

    public final Iterator d(AbstractC10561zE abstractC10561zE) {
        return new S5(this, abstractC10561zE);
    }

    public final void e() {
        V5 v52 = new V5();
        HashMap hashMap = new HashMap();
        Iterator it = this.f45295h.iterator();
        while (it.hasNext()) {
            C7201f60 c7201f60 = (C7201f60) it.next();
            C7333fv c7333fv = new C7333fv(v52, c7201f60);
            C7201f60 c7201f602 = (C7201f60) hashMap.get(c7333fv);
            if (c7201f602 == null) {
                hashMap.put(c7333fv, c7201f60);
            } else {
                if (c7201f60.s() != c7201f602.s()) {
                    if (c7201f602.s() == null) {
                        c7201f602.a(c7201f60.s());
                    } else if (c7201f60.s() != null) {
                        if (!f45287q && (!c7201f60.z() || !c7201f602.z())) {
                            throw new AssertionError();
                        }
                    }
                }
                c7201f60.f(c7201f602);
                for (C10340xw0 c10340xw0 : c7201f60.c0()) {
                    c10340xw0.f53889f.remove(c7201f60);
                    c10340xw0.f53890g = null;
                }
                it.remove();
            }
        }
    }

    public static String f(W5 w52) {
        return "";
    }

    public final void d() {
        this.f45300m--;
        this.f45299l--;
    }

    public final void a(final C4798y c4798y, final com.android.tools.r8.graph.H5 h52, final C6113Vw0 c6113Vw0) {
        if (!f45287q && !this.f45293f.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return W5.a(C4798y.this, h52, c6113Vw0, (AbstractC10561zE) obj);
            }
        })) {
            throw new AssertionError();
        }
    }

    public final void c() {
        if (z()) {
            boolean z10 = f45287q;
            if (!z10 && !i().G1() && !i().g2() && !i().m2()) {
                throw new AssertionError();
            }
            N8 n82 = this.f45292e;
            if (!z10 && n82.f42510b.size() != QC.a(n82.f42510b).size()) {
                throw new AssertionError();
            }
            AbstractC7552hC abstractC7552hC = n82.f42510b;
            int size = abstractC7552hC.size() - 1;
            for (int i10 = 0; i10 < abstractC7552hC.size(); i10++) {
                if (!f45287q && ((com.android.tools.r8.graph.M2) abstractC7552hC.get(i10)).V0().equals("Ljava/lang/Throwable;") && i10 != size) {
                    throw new AssertionError();
                }
            }
            ArrayList arrayList = new ArrayList(n82.f42511c);
            arrayList.sort(Comparator.naturalOrder());
            int intValue = ((Integer) arrayList.get(0)).intValue();
            int intValue2 = ((Integer) J6.a(arrayList, 1)).intValue();
            boolean z11 = f45287q;
            if (!z11 && intValue != 0) {
                throw new AssertionError();
            }
            if (!z11 && intValue2 >= arrayList.size()) {
                throw new AssertionError();
            }
            int size2 = v().size();
            int i11 = size2 - 1;
            if (!z11 && intValue2 != i11 && intValue2 != size2 - 2) {
                throw new AssertionError();
            }
            if (!z11 && intValue2 != i11 && i().m2()) {
                throw new AssertionError();
            }
        }
    }

    public final W5 g() {
        boolean z10 = false;
        W5 w52 = this;
        W5 w53 = w52;
        while (w52.G()) {
            w52 = R5.a(w52);
            if (z10) {
                w53 = R5.a(w53);
            }
            z10 = !z10;
            if (w52 == w53) {
                return null;
            }
        }
        return w52;
    }

    public final String h(W5 w52) {
        if (b(w52)) {
            if (!f45287q && !b(w52)) {
                throw new AssertionError();
            }
            int indexOf = this.f45289b.indexOf(w52);
            Iterator it = this.f45292e.f42511c.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (((Integer) it.next()).intValue() == indexOf) {
                    i10++;
                }
            }
            if (f45287q || i10 > 0) {
                return new String(new char[i10]).replace(DexFormat.MAGIC_SUFFIX, "*");
            }
            throw new AssertionError();
        }
        return "";
    }

    public final void b(T5 t52) {
        ((C6993dt) t52).f47538e = true;
    }

    public final boolean d(W5 w52) {
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(this);
        while (!arrayDeque.isEmpty()) {
            W5 w53 = (W5) arrayDeque.pop();
            if (w53 == w52) {
                return true;
            }
            c10.add(w53);
            for (W5 w54 : w53.v()) {
                if (!c10.contains(w54)) {
                    arrayDeque.push(w54);
                }
            }
        }
        return false;
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0, AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.a(c4798y, h52, c6113Vw0);
        return true;
    }

    public final void b(W5 w52, W5 w53) {
        if (!f45287q && !this.f45289b.contains(w52)) {
            throw new AssertionError((Object) "attempt to replace non-existent successor");
        }
        int i10 = 0;
        if (this.f45289b.contains(w53)) {
            int indexOf = this.f45289b.indexOf(w52);
            int indexOf2 = this.f45289b.indexOf(w53);
            if (z()) {
                ArrayList arrayList = new ArrayList(this.f45292e.f42511c);
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    if (((Integer) arrayList.get(i11)).intValue() == indexOf) {
                        arrayList.set(i11, Integer.valueOf(indexOf2));
                    }
                    if (((Integer) arrayList.get(i11)).intValue() > indexOf) {
                        arrayList.set(i11, Integer.valueOf(((Integer) arrayList.get(i11)).intValue() - 1));
                    }
                }
                this.f45292e = new N8(this.f45292e.f42510b, arrayList);
            }
            if (i().G1()) {
                if (indexOf == this.f45289b.size() - 1 && indexOf2 != this.f45289b.size() - 2) {
                    a(indexOf - 1, indexOf2);
                }
            } else if (i().H1()) {
                if (indexOf2 >= this.f45289b.size() - 2 && indexOf >= this.f45289b.size() - 2) {
                    AbstractC10561zE b10 = this.f45293f.b();
                    this.f45293f.b(b10);
                    for (int size = b10.f54321f.size() - 1; size >= 0; size--) {
                        C10340xw0 c10340xw0 = (C10340xw0) b10.f54321f.get(size);
                        if (c10340xw0.Q()) {
                            if (!c10340xw0.j()) {
                                AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                                abstractC10561zE.getClass();
                                if ((abstractC10561zE instanceof JT) && c10340xw0.f53886c.b() == this) {
                                    if (!f45287q) {
                                        W5 b11 = c10340xw0.f53886c.b();
                                        W5 w54 = this;
                                        while (w54 != b11) {
                                            if (w54.u().size() == 1) {
                                                W5 w55 = w54.u().get(0);
                                                if (w55.i().G1() && R5.a(w55) == w54) {
                                                    w54 = w55;
                                                }
                                            }
                                            throw new AssertionError();
                                        }
                                    }
                                    c10340xw0.f53886c.b().f45293f.b(c10340xw0.f53886c);
                                }
                            }
                            if (!f45287q && (c10340xw0 instanceof C8313lo0)) {
                                throw new AssertionError();
                            }
                            C9870v60 c9870v60 = new C9870v60(c10340xw0);
                            c9870v60.b(b10.getPosition());
                            l().a(c9870v60, null);
                        }
                        if (c10340xw0.F()) {
                            c10340xw0.f53887d.remove(b10);
                            c10340xw0.f53888e = null;
                        }
                    }
                    C4960Bz c4960Bz = new C4960Bz();
                    c4960Bz.b(b10.getPosition());
                    l().a(c4960Bz, null);
                } else if (indexOf >= this.f45289b.size() - 2) {
                    a(indexOf - 1, indexOf2);
                }
            } else if (i().l2()) {
                AbstractC6489ar0 Q02 = i().Q0();
                if (Q02.f46640m == indexOf) {
                    Q02.f46640m = indexOf2;
                }
                int i12 = Q02.f46640m;
                if (i12 > indexOf) {
                    Q02.f46640m = i12 - 1;
                }
                int[] iArr = Q02.f46639l;
                while (i10 < iArr.length) {
                    if (iArr[i10] == indexOf) {
                        iArr[i10] = indexOf2;
                    }
                    int i13 = iArr[i10];
                    if (i13 > indexOf) {
                        iArr[i10] = i13 - 1;
                    }
                    i10++;
                }
            } else if (!f45287q && !i().g2() && !i().m2()) {
                throw new AssertionError();
            }
            boolean remove = n().remove(w52);
            if (!f45287q && !remove) {
                throw new AssertionError();
            }
            return;
        }
        while (i10 < this.f45289b.size()) {
            if (this.f45289b.get(i10) == w52) {
                n().set(i10, w53);
                return;
            }
            i10++;
        }
    }

    public AbstractC9408sL i() {
        boolean z10 = f45287q;
        if (!z10 && !this.f45296i) {
            throw new AssertionError();
        }
        if (z10 || this.f45293f.b().U1()) {
            return this.f45293f.b().l0();
        }
        throw new AssertionError();
    }

    public final void a(AbstractC9408sL abstractC9408sL) {
        Y5 b10 = b(l().size());
        b10.previous();
        b10.a(abstractC9408sL, (C10696a) null);
    }

    public final AbstractC6333Zs0 a(Object obj, BiFunction biFunction) {
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(obj);
        for (W5 w52 : u()) {
            if (w52.b(this)) {
                c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(w52, c6276Ys0.b().f());
                if (c6276Ys0.c()) {
                    break;
                }
            }
        }
        return c6276Ys0;
    }

    public final AbstractC6333Zs0 a(BiFunction biFunction) {
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(null);
        for (int size = this.f45289b.size() - M(); size < this.f45289b.size(); size++) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(this.f45289b.get(size), c6276Ys0.b().f());
            if (c6276Ys0.c()) {
                return c6276Ys0;
            }
        }
        return c6276Ys0;
    }

    public final void a(C6993dt c6993dt) {
        if (this.f45291d == null) {
            this.f45291d = Collections.newSetFromMap(new WeakHashMap());
        }
        this.f45291d.add(c6993dt);
    }

    public final void a(T5 t52) {
        ((C6993dt) t52).f47538e = true;
    }

    public final void a(W5 w52, C10696a c10696a, Consumer consumer, Predicate predicate) {
        int indexOf = this.f45290c.indexOf(w52);
        if (!f45287q && indexOf < 0) {
            throw new AssertionError((Object) "removePredecessor did not find the predecessor to remove");
        }
        m().remove(indexOf);
        if (A()) {
            Iterator<C7201f60> it = s().iterator();
            while (it.hasNext()) {
                it.next().a(indexOf, c10696a, predicate);
            }
            ArrayList arrayList = new ArrayList();
            for (C7201f60 c7201f60 : s()) {
                if (c7201f60.d0()) {
                    arrayList.add(c7201f60);
                }
            }
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((C7201f60) obj).a((C6382aB) null, c10696a, consumer, predicate);
            }
        }
    }

    public final boolean c(W5 w52) {
        if (this == w52) {
            return true;
        }
        AbstractC7552hC abstractC7552hC = this.f45292e.f42511c;
        AbstractC7552hC abstractC7552hC2 = w52.f45292e.f42511c;
        int size = abstractC7552hC.size();
        if (size != abstractC7552hC2.size()) {
            return false;
        }
        if (size == 0) {
            return true;
        }
        AbstractC7552hC abstractC7552hC3 = this.f45292e.f42510b;
        AbstractC7552hC abstractC7552hC4 = w52.f45292e.f42510b;
        for (int i10 = 0; i10 < size; i10++) {
            W5 w53 = (W5) this.f45289b.get(((Integer) abstractC7552hC.get(i10)).intValue());
            W5 w54 = (W5) w52.f45289b.get(((Integer) abstractC7552hC2.get(i10)).intValue());
            W5 k10 = w53.k();
            if (k10 == null || k10 != w54.k() || !((com.android.tools.r8.graph.M2) abstractC7552hC3.get(i10)).a((com.android.tools.r8.graph.M2) abstractC7552hC4.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final void a(int i10, int i11) {
        boolean z10 = f45287q;
        if (!z10 && i10 == i11) {
            throw new AssertionError();
        }
        if (z()) {
            ArrayList arrayList = new ArrayList(this.f45292e.f42511c);
            if (!z10 && arrayList.contains(Integer.valueOf(i10)) != arrayList.contains(Integer.valueOf(i11))) {
                throw new AssertionError((Object) "Swapping normal successor and catch handler");
            }
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                if (((Integer) arrayList.get(i12)).intValue() == i10) {
                    arrayList.set(i12, Integer.valueOf(i11));
                } else if (((Integer) arrayList.get(i12)).intValue() == i11) {
                    arrayList.set(i12, Integer.valueOf(i10));
                }
            }
            this.f45292e = new N8(this.f45292e.f42510b, arrayList);
        }
        List<W5> n10 = n();
        W5 w52 = n10.get(i10);
        n10.set(i10, n10.get(i11));
        n10.set(i11, w52);
    }

    public final Iterator c(AbstractC10561zE abstractC10561zE) {
        CE ce2 = this.f45293f;
        ce2.getClass();
        return new Y5(ce2.f39166b, abstractC10561zE);
    }

    public final void a(W5 w52, W5 w53) {
        for (int i10 = 0; i10 < this.f45290c.size(); i10++) {
            if (this.f45290c.get(i10) == w52) {
                if (!f45287q) {
                    J();
                }
                m().set(i10, w53);
                return;
            }
        }
        if (!f45287q) {
            throw new AssertionError((Object) "replaceSuccessor did not find the predecessor to replace");
        }
    }

    public final void a(CH ch2) {
        if (ch2.isEmpty()) {
            return;
        }
        if (!f45287q) {
            boolean z10 = AT.f38618a;
            for (int i10 = ch2.f39177c - 1; i10 > 0; i10--) {
                if (Integer.valueOf(ch2.c(i10)).compareTo(Integer.valueOf(ch2.c(i10 - 1))) < 0) {
                    throw new AssertionError();
                }
            }
        }
        List<W5> n10 = n();
        ArrayList arrayList = new ArrayList(n10);
        n10.clear();
        Iterator o10 = ch2.o(0);
        int i11 = 0;
        while (o10.hasNext()) {
            int r10 = ((X) o10).r();
            n10.addAll(arrayList.subList(i11, r10));
            i11 = r10 + 1;
        }
        n10.addAll(arrayList.subList(i11, arrayList.size()));
        if (z()) {
            N8 n82 = this.f45292e;
            AbstractC7552hC abstractC7552hC = n82.f42511c;
            AbstractC7552hC abstractC7552hC2 = n82.f42510b;
            int size = n82.size();
            ArrayList arrayList2 = new ArrayList(size);
            ArrayList arrayList3 = new ArrayList(size);
            for (int i12 = 0; i12 < abstractC7552hC.size(); i12++) {
                int intValue = ((Integer) abstractC7552hC.get(i12)).intValue();
                Iterator o11 = ch2.o(0);
                int i13 = 0;
                while (o11.hasNext()) {
                    int r11 = ((X) o11).r();
                    if (intValue != r11) {
                        if (intValue < r11) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                }
                arrayList3.add(Integer.valueOf(intValue - i13));
                arrayList2.add((com.android.tools.r8.graph.M2) abstractC7552hC2.get(i12));
            }
            if (arrayList3.isEmpty()) {
                this.f45292e = N8.f42507e;
            } else {
                this.f45292e = new N8(arrayList2, arrayList3);
            }
        }
    }

    public final Iterable b(final AbstractC10561zE abstractC10561zE) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return W5.this.d(abstractC10561zE);
            }
        };
    }

    public final void b() {
        this.f45295h = null;
        this.f45293f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10561zE.a((AbstractC10561zE) obj);
            }
        });
    }

    public boolean b(W5 w52) {
        int indexOf;
        int L10 = L();
        return L10 != 0 && (indexOf = this.f45289b.indexOf(w52)) >= 0 && indexOf < L10;
    }

    public Y5 b(int i10) {
        return new Y5(this, i10);
    }

    public final void a(List list) {
        ArrayList arrayList = this.f45295h;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7201f60 c7201f60 = (C7201f60) obj;
            c7201f60.getClass();
            if (!list.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(c7201f60.f47863q);
                c7201f60.f47863q.clear();
                Iterator it = list.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    c7201f60.f47863q.addAll(arrayList2.subList(i11, intValue));
                    C10340xw0 c10340xw0 = (C10340xw0) arrayList2.get(intValue);
                    c10340xw0.f53889f.remove(c7201f60);
                    c10340xw0.f53890g = null;
                    i11 = intValue + 1;
                }
                c7201f60.f47863q.addAll(arrayList2.subList(i11, arrayList2.size()));
            }
        }
    }

    public final Iterable a(final AbstractC10561zE abstractC10561zE) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return W5.this.c(abstractC10561zE);
            }
        };
    }

    public final boolean a(int i10) {
        if (f45287q || i10 != 0) {
            return (i10 & this.f45301n) != 0;
        }
        throw new AssertionError();
    }

    public final void a(C7201f60 c7201f60, C10696a c10696a, Consumer consumer) {
        HashMap hashMap;
        this.f45295h.remove(c7201f60);
        if (f45287q || (hashMap = this.f45302o) == null || !hashMap.containsValue(c7201f60)) {
            if (c10696a != null) {
                c10696a.f54829b.remove(c7201f60);
            }
            consumer.accept(c7201f60);
        } else {
            throw new AssertionError((Object) ("Attempt to remove Phi " + ((Object) c7201f60) + " which is present in currentDefinitions"));
        }
    }

    public final void a(Collection collection) {
        HashMap hashMap;
        if (!f45287q && (hashMap = this.f45302o) != null && !hashMap.isEmpty()) {
            throw new AssertionError();
        }
        this.f45295h.removeAll(collection);
    }

    public void a(AbstractC10561zE abstractC10561zE, C8382mB c8382mB) {
        if (!f45287q && this.f45296i) {
            throw new AssertionError();
        }
        this.f45293f.a(abstractC10561zE, null);
    }

    public final void a(C6382aB c6382aB) {
        boolean z10 = f45287q;
        if (!z10 && this.f45296i) {
            throw new AssertionError();
        }
        if (!z10 && this.f45293f.isEmpty()) {
            throw new AssertionError();
        }
        this.f45296i = true;
        int i10 = 0;
        this.f45297j = this.f45300m == 0;
        if (!z10) {
            i().getClass();
        }
        if (!z10 && z()) {
            for (AbstractC10561zE b10 = this.f45293f.b(); b10 != null && !b10.o(); b10 = b10.b1()) {
                if (!f45287q && b10.d() != null) {
                    throw new AssertionError();
                }
            }
        }
        ArrayList arrayList = this.f45289b;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            W5 w52 = (W5) obj;
            boolean z11 = f45287q;
            if (!z11 && w52.f45300m <= 0) {
                throw new AssertionError();
            }
            int i11 = w52.f45300m - 1;
            w52.f45300m = i11;
            if (i11 == 0) {
                if (!z11 && w52.f45299l != w52.f45290c.size()) {
                    throw new AssertionError();
                }
                for (Map.Entry entry : w52.f45298k.entrySet()) {
                    int intValue = ((Integer) entry.getKey()).intValue();
                    if (intValue < 0) {
                        intValue = -(intValue + 1);
                    }
                    ((C7201f60) entry.getValue()).a(intValue, c6382aB);
                }
                w52.f45297j = true;
                w52.f45298k.clear();
            }
        }
    }

    public static void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W5.e((W5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        int indexOf = this.f45292e.f42510b.indexOf(m22);
        if (indexOf >= 0) {
            final int intValue = ((Integer) this.f45292e.f42511c.get(indexOf)).intValue();
            boolean z10 = f45287q;
            if (!z10 && intValue < 0) {
                throw new AssertionError();
            }
            this.f45292e = this.f45292e.a(m22);
            if (j().f42511c.stream().noneMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return W5.this.a(intValue, (W5) obj);
                }
            })) {
                n().remove(intValue);
            }
            if (z10) {
                return;
            }
            c();
        }
    }

    public final boolean a(int i10, W5 w52) {
        return w52 == this.f45289b.get(i10);
    }

    public final Set a(W5 w52, C6993dt c6993dt, C10696a c10696a) {
        boolean z10 = f45287q;
        if (!z10 && c10696a == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f45289b.contains(w52)) {
            throw new AssertionError();
        }
        if (!z10 && w52.f45290c.size() != 1) {
            throw new AssertionError();
        }
        if (!z10 && w52.f45290c.get(0) != this) {
            throw new AssertionError();
        }
        Set set = (Set) c6993dt.a(w52, AbstractC5513Ll0.c());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((W5) it.next()).a(c10696a, C6628bi.b(), new C6684c01(set));
        }
        if (!f45287q) {
            a(set);
        }
        return set;
    }

    public final void a(C10696a c10696a, Consumer consumer, Predicate predicate) {
        ArrayList arrayList = this.f45289b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((W5) obj).a(this, c10696a, consumer, predicate);
        }
        n().clear();
        ArrayList arrayList2 = this.f45290c;
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            ((W5) obj2).i(this);
        }
        m().clear();
        for (C7201f60 c7201f60 : s()) {
            c10696a.a(predicate, c7201f60);
            for (C10340xw0 c10340xw0 : c7201f60.c0()) {
                c10340xw0.f53889f.remove(c7201f60);
                c10340xw0.f53890g = null;
            }
            c10696a.f54829b.remove(c7201f60);
            consumer.accept(c7201f60);
        }
        s().clear();
        Y5 it = l().iterator();
        while (it.hasNext()) {
            AbstractC10561zE next = it.next();
            if (next.e1()) {
                C10340xw0 d10 = next.d();
                c10696a.a(predicate, d10);
                d10.d();
                next.d((C10340xw0) null);
                c10696a.f54829b.remove(d10);
                consumer.accept(d10);
            }
            ArrayList arrayList3 = next.f54321f;
            int size3 = arrayList3.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj3 = arrayList3.get(i12);
                i12++;
                C10340xw0 c10340xw02 = (C10340xw0) obj3;
                c10340xw02.f53887d.remove(next);
                c10340xw02.f53888e = null;
            }
            Iterator it2 = next.V0().iterator();
            while (it2.hasNext()) {
                ((C10340xw0) it2.next()).c(next);
            }
        }
    }

    public final void a(W5 w52, com.android.tools.r8.graph.M2 m22) {
        int size;
        if (a()) {
            if (z()) {
                if (this.f45292e.f42510b.contains(m22)) {
                    return;
                }
                int indexOf = this.f45289b.indexOf(w52);
                if (indexOf < 0) {
                    List<W5> n10 = n();
                    int size2 = n10.size();
                    int M10 = M();
                    if (M10 > 0) {
                        size = size2 - M10;
                        n10.add(size, w52);
                    } else {
                        size = n10.size();
                        n10.add(w52);
                    }
                    indexOf = size;
                    w52.m().add(this);
                }
                N8 n82 = this.f45292e;
                Integer valueOf = Integer.valueOf(indexOf);
                if (!N8.f42509g) {
                    if (n82.f42510b.contains(m22)) {
                        throw new AssertionError();
                    }
                } else {
                    n82.getClass();
                }
                this.f45292e = new N8(new C7051eC().b((Iterable) n82.f42510b).a(m22).a(), new C7051eC().b((Iterable) n82.f42511c).a(valueOf).a());
                return;
            }
            if (!f45287q && this.f45293f.stream().filter(new C6920dR0()).count() != 1) {
                throw new AssertionError();
            }
            n().add(0, w52);
            w52.m().add(this);
            this.f45292e = new N8(new C5920Sm0(m22), new C5920Sm0(0));
        }
    }

    public final void a(int i10, C10340xw0 c10340xw0, U5 u52) {
        if ((u52 == U5.f44669d ? (C10340xw0) this.f45302o.get(Integer.valueOf(-(i10 + 1))) : null) != null) {
            i10 = -(i10 + 1);
        }
        C10340xw0 c10340xw02 = (C10340xw0) this.f45302o.get(Integer.valueOf(i10));
        if (c10340xw0.j()) {
            c10340xw0.l().f47866t.add(this.f45302o);
        }
        if (!f45287q && i10 < 0) {
            for (Integer num : this.f45302o.o()) {
                if (!f45287q && num.intValue() < 0 && num.intValue() != i10) {
                    throw new AssertionError();
                }
            }
        }
        this.f45302o.put(Integer.valueOf(i10), c10340xw0);
        if (c10340xw02 == null || !c10340xw02.j() || this.f45302o.values().contains(c10340xw02)) {
            return;
        }
        c10340xw02.l().f47866t.remove(this.f45302o);
    }

    public final void a(int i10, C10340xw0 c10340xw0, int i11) {
        if (i11 == 2) {
            C10340xw0 c10340xw02 = (C10340xw0) this.f45302o.get(Integer.valueOf(i10));
            if (!f45287q && i10 < 0) {
                for (Integer num : this.f45302o.o()) {
                    if (!f45287q && num.intValue() < 0 && num.intValue() != i10) {
                        throw new AssertionError();
                    }
                }
            }
            HashMap hashMap = this.f45302o;
            Integer valueOf = Integer.valueOf(-(i10 + 1));
            if (c10340xw02 == null) {
                c10340xw02 = C10340xw0.f53883n;
            }
            hashMap.put(valueOf, c10340xw02);
        }
        a(i10, c10340xw0, U5.f44667b);
    }

    public static W5 a(int i10, B60 b60, C8382mB c8382mB, W5 w52) {
        W5 a10 = a(i10, b60, c8382mB);
        a10.n().add(w52);
        return a10;
    }

    public static W5 a(int i10, B60 b60, C8382mB c8382mB) {
        W5 w52 = new W5(c8382mB);
        w52.a(new C4960Bz(), c8382mB);
        w52.a((C6382aB) null);
        w52.d(i10);
        w52.f45293f.a().b(b60);
        return w52;
    }

    public boolean a() {
        Y5 it = this.f45293f.iterator();
        while (it.hasNext()) {
            if (it.next().o()) {
                return true;
            }
        }
        return false;
    }

    public final W5 a(int i10, boolean z10, AbstractC10561zE abstractC10561zE) {
        B60 position;
        boolean z11 = z();
        W5 w52 = new W5(this.f45303p);
        w52.d(i10);
        w52.n().addAll(this.f45289b);
        Iterator<W5> it = w52.v().iterator();
        while (it.hasNext()) {
            it.next().a(this, w52);
        }
        n().clear();
        w52.f45292e = this.f45292e;
        this.f45292e = N8.f42507e;
        if (z10 && z11) {
            ArrayList a10 = a(w52);
            int size = a10.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = a10.get(i11);
                i11++;
                W5 w53 = (W5) obj;
                w52.n().remove(w53);
                w53.getClass();
                w53.a(w52, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
            }
            w52.f45292e = N8.f42507e;
        }
        g(w52);
        C4960Bz c4960Bz = new C4960Bz();
        if (abstractC10561zE != null) {
            w52.f45293f.d(abstractC10561zE);
            if (abstractC10561zE.b1() != null) {
                position = abstractC10561zE.b1().getPosition();
            } else {
                position = abstractC10561zE.getPosition();
            }
            c4960Bz.b(position);
            this.f45293f.a(c4960Bz, null);
        } else {
            c4960Bz.b(B60.s());
            w52.f45293f.a(c4960Bz, null);
        }
        w52.f45296i = true;
        w52.f45297j = true;
        return w52;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.android.tools.r8.internal.aB, com.android.tools.r8.internal.zE] */
    public final void a(C7215fB c7215fB, ListIterator listIterator, W5 w52, C8570nJ c8570nJ) {
        com.android.tools.r8.graph.M2 m22;
        AbstractC8999pu0 abstractC8999pu0;
        C6600bY c6600bY;
        int i10;
        ?? r32;
        C8570nJ c8570nJ2 = c8570nJ;
        N8 n82 = this.f45292e;
        if (n82 != null) {
            C4724u1 c4724u1 = c8570nJ2.f50660a;
            if (n82.f42510b.size() > 0) {
                if (n82.f42510b.get(r4.size() - 1) == c4724u1.f38173v3) {
                    return;
                }
            }
        }
        ArrayList a10 = a(w52);
        int size = a10.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = a10.get(i11);
            int i12 = i11 + 1;
            W5 w53 = (W5) obj;
            List<W5> m10 = w53.m();
            AbstractC10561zE a11 = w53.f45293f.a();
            a11.getClass();
            boolean z10 = a11 instanceof C6600bY;
            B60 position = w53.f45293f.a().getPosition();
            if (z10) {
                C6600bY q02 = w53.f45293f.a().q0();
                abstractC8999pu0 = q02.a();
                com.android.tools.r8.graph.M2 m23 = q02.f46785k;
                if (!f45287q && !q02.V0().isEmpty()) {
                    throw new AssertionError();
                }
                w53.f45293f.b(q02);
                c6600bY = q02;
                m22 = m23;
            } else {
                m22 = null;
                abstractC8999pu0 = null;
                c6600bY = null;
            }
            Collection<? extends W5> arrayList = new ArrayList<>(m10.size());
            ArrayList arrayList2 = new ArrayList(m10.size());
            Iterator<W5> it = m10.iterator();
            while (it.hasNext()) {
                Iterator<W5> it2 = it;
                W5 next = it.next();
                if (next.b(w53)) {
                    ArrayList arrayList3 = a10;
                    int i13 = size;
                    W5 w54 = new W5(w53.f45303p);
                    w54.d(c7215fB.f47899f.a());
                    arrayList.add(w54);
                    if (z10) {
                        C10340xw0 a12 = c7215fB.a(abstractC8999pu0, c6600bY.q());
                        arrayList2.add(a12);
                        i10 = i12;
                        C6600bY c6600bY2 = new C6600bY(a12, m22, c8570nJ2);
                        r32 = 0;
                        w54.f45293f.a(c6600bY2, null);
                        c6600bY2.b(position);
                    } else {
                        i10 = i12;
                        r32 = 0;
                    }
                    C4960Bz c4960Bz = new C4960Bz();
                    c4960Bz.b(position);
                    w54.f45293f.a(c4960Bz, r32);
                    w54.a((C6382aB) r32);
                    w54.n().add(w53);
                    w54.m().add(next);
                    next.b(w53, w54);
                    if (listIterator == null) {
                        c7215fB.f47897d.add(w54);
                    } else {
                        listIterator.add(w54);
                    }
                    c8570nJ2 = c8570nJ;
                    a10 = arrayList3;
                    it = it2;
                    size = i13;
                    i12 = i10;
                } else {
                    throw new C5325If("Invalid block structure: catch block reachable via non-exceptional flow.");
                }
            }
            ArrayList arrayList4 = a10;
            int i14 = size;
            int i15 = i12;
            m10.clear();
            m10.addAll(arrayList);
            if (z10) {
                C7201f60 c7201f60 = new C7201f60(c7215fB.f47898e.a(), w53, abstractC8999pu0, c6600bY.q(), C7201f60.a.f47867b);
                c7201f60.a(arrayList2);
                c6600bY.d().f(c7201f60);
            }
            c8570nJ2 = c8570nJ;
            a10 = arrayList4;
            size = i14;
            i11 = i15;
        }
    }

    public final ArrayList a(W5 w52) {
        if (!f45287q && !w52.z()) {
            throw new AssertionError();
        }
        N8 n82 = w52.f45292e;
        AbstractC7552hC abstractC7552hC = n82.f42511c;
        AbstractC7552hC abstractC7552hC2 = n82.f42510b;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i10 = 0;
        if (z()) {
            arrayList2.addAll(this.f45292e.f42510b);
            arrayList3.addAll(this.f45292e.f42511c);
            int size = arrayList3.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList3.get(i11);
                i11++;
                int intValue = ((Integer) obj).intValue();
                W5 w53 = (W5) this.f45289b.get(intValue);
                if (!arrayList.contains(w53)) {
                    arrayList.add(w53);
                }
                int indexOf = arrayList.indexOf(w53);
                if (!f45287q && indexOf != intValue) {
                    throw new AssertionError();
                }
            }
        }
        int size2 = arrayList.size();
        for (int i12 = 0; i12 < abstractC7552hC.size(); i12++) {
            int intValue2 = ((Integer) abstractC7552hC.get(i12)).intValue();
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) abstractC7552hC2.get(i12);
            if (!arrayList2.contains(m22)) {
                W5 w54 = (W5) w52.f45289b.get(intValue2);
                boolean z10 = f45287q;
                if (!z10 && w54.u().size() != 1) {
                    throw new AssertionError();
                }
                if (!z10 && !w54.s().isEmpty()) {
                    throw new AssertionError();
                }
                int indexOf2 = arrayList.indexOf(w54);
                if (indexOf2 == -1) {
                    arrayList.add(w54);
                    indexOf2 = arrayList.size() - 1;
                }
                arrayList2.add(m22);
                arrayList3.add(Integer.valueOf(indexOf2));
            }
        }
        List<W5> n10 = n();
        ArrayList arrayList4 = new ArrayList(n10);
        n10.clear();
        ArrayList arrayList5 = new ArrayList();
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            if (i13 < size2) {
                if (!f45287q && !((W5) arrayList.get(i13)).u().contains(this)) {
                    throw new AssertionError();
                }
                n10.add((W5) arrayList.get(i13));
            } else {
                if (!f45287q && ((W5) arrayList.get(i13)).u().contains(this)) {
                    throw new AssertionError();
                }
                g((W5) arrayList.get(i13));
                arrayList5.add((W5) arrayList.get(i13));
            }
        }
        this.f45292e = new N8(arrayList2, arrayList3);
        int size3 = n10.size();
        int size4 = arrayList4.size();
        while (i10 < size4) {
            Object obj2 = arrayList4.get(i10);
            i10++;
            W5 w55 = (W5) obj2;
            if (!n10.contains(w55)) {
                if (!f45287q && i().m2()) {
                    throw new AssertionError();
                }
                n10.add(w55);
            }
        }
        if (f45287q || n10.size() == size3 || !i().m2()) {
            return arrayList5;
        }
        throw new AssertionError();
    }
}
