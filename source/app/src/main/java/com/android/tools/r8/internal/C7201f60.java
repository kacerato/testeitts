package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C7201f60 extends C10340xw0 implements FE {

    public static final boolean f47861u = true;

    public W5 f47862p;

    public final ArrayList f47863q;

    public a f47864r;

    public boolean f47865s;

    public ArrayList f47866t;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f47867b = new a(0, "NORMAL");

        public static final a f47868c = new a(1, "DEBUG");

        public a(int i10, String str) {
        }
    }

    public C7201f60(int i10, W5 w52, AbstractC8999pu0 abstractC8999pu0, C4515j0 c4515j0, a aVar) {
        super(i10, abstractC8999pu0, c4515j0);
        this.f47863q = new ArrayList();
        this.f47866t = new ArrayList();
        this.f47862p = w52;
        this.f47864r = aVar;
        w52.f45295h.add(this);
    }

    @Override
    public final boolean M() {
        return false;
    }

    @Override
    public final boolean Q() {
        if (!f47861u) {
            b(AbstractC5513Ll0.c());
        }
        return this.f47865s;
    }

    @Override
    public final void S() {
        this.f47864r = a.f47867b;
    }

    @Override
    public final boolean T() {
        return !Q();
    }

    @Override
    public final void a(EnumC5592Mw0 enumC5592Mw0, com.android.tools.r8.graph.H5 h52, C5094Ef0 c5094Ef0) {
        if (this.f47864r == a.f47868c) {
            b(enumC5592Mw0);
        }
        super.a(enumC5592Mw0, h52, c5094Ef0);
    }

    @Override
    public final AbstractC8999pu0 b(C4798y c4798y) {
        Set c10 = AbstractC5513Ll0.c();
        c10.add(this);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(this);
        while (!arrayDeque.isEmpty()) {
            C7201f60 c7201f60 = (C7201f60) arrayDeque.removeFirst();
            if (!f47861u && !c10.contains(c7201f60)) {
                throw new AssertionError();
            }
            Iterator<C10340xw0> it = c7201f60.c0().iterator();
            while (it.hasNext()) {
                C7201f60 l10 = it.next().i().l();
                if (l10 != null && c10.add(l10)) {
                    arrayDeque.addLast(l10);
                }
            }
        }
        Set c11 = AbstractC5513Ll0.c();
        AbstractC8999pu0 f10 = AbstractC8999pu0.f();
        Iterator it2 = c10.iterator();
        while (it2.hasNext()) {
            for (C10340xw0 c10340xw0 : ((C7201f60) it2.next()).c0()) {
                if (!c10340xw0.i().j() && c11.add(c10340xw0)) {
                    f10 = f10.a(c4798y, c10340xw0.b(c4798y));
                }
            }
        }
        return (u().y() && u().t()) ? f10.d().D() : f10;
    }

    public List<C10340xw0> c0() {
        return this.f47863q;
    }

    @Override
    public final boolean d(Predicate predicate) {
        return false;
    }

    public boolean d0() {
        ArrayList arrayList = this.f47863q;
        int size = arrayList.size();
        C10340xw0 c10340xw0 = null;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw02 = (C10340xw0) obj;
            if (c10340xw02 != c10340xw0 && c10340xw02 != this) {
                if (c10340xw0 != null) {
                    return false;
                }
                c10340xw0 = c10340xw02;
            }
        }
        return true;
    }

    public final boolean e(Predicate predicate) {
        ArrayList arrayList = this.f47863q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (predicate.test((C10340xw0) obj)) {
                return true;
            }
        }
        return false;
    }

    public final String e0() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("v");
        sb2.append(this.f53885b);
        if (z()) {
            sb2.append("(");
            sb2.append((Object) s());
            sb2.append(")");
        }
        sb2.append(" <- phi");
        C10656zq0.a(sb2, AT.a((Collection) this.f47863q, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C10340xw0) obj).toString();
            }
        }));
        sb2.append(" : ");
        sb2.append((Object) u());
        return sb2.toString();
    }

    public final void f0() {
        if (!f47861u && D()) {
            throw new AssertionError();
        }
        for (C10340xw0 c10340xw0 : c0()) {
            c10340xw0.f53889f.remove(this);
            c10340xw0.f53890g = null;
        }
        W5 w52 = this.f47862p;
        w52.getClass();
        w52.a(this, (C10696a) null, C6628bi.b());
    }

    public final void g(C10340xw0 c10340xw0) {
        this.f47863q.add(c10340xw0);
        c10340xw0.f53889f.add(this);
        c10340xw0.f53890g = null;
    }

    public final void g0() {
        a((C6382aB) null, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
    }

    @Override
    public final boolean j() {
        return true;
    }

    @Override
    public final C7201f60 l() {
        return this;
    }

    @Override
    public final boolean x() {
        return this.f47862p != null;
    }

    public AbstractC8999pu0 d(C4798y c4798y) {
        AbstractC8999pu0 f10 = AbstractC8999pu0.f();
        Iterator<C10340xw0> it = c0().iterator();
        while (it.hasNext()) {
            f10 = f10.a(c4798y, it.next().u());
        }
        return f10;
    }

    public final void a(int i10, C6382aB c6382aB) {
        if (!f47861u && !this.f47863q.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f47862p.u().size() != 0) {
            AbstractC8999pu0 abstractC8999pu0 = this.f53896m;
            abstractC8999pu0.getClass();
            EnumC5592Mw0 a10 = abstractC8999pu0 instanceof C10540z7 ? EnumC5592Mw0.f42461b : EnumC5592Mw0.a(abstractC8999pu0);
            ArrayList arrayList = new ArrayList(this.f47862p.u().size());
            Iterator<W5> it = this.f47862p.u().iterator();
            while (true) {
                C10340xw0 c10340xw0 = null;
                if (it.hasNext()) {
                    W5 next = it.next();
                    W5 w52 = this.f47862p;
                    if (!W5.f45287q && next.f45289b.indexOf(w52) < 0) {
                        throw new AssertionError();
                    }
                    U5 u52 = next.b(w52) ? U5.f44669d : U5.f44668c;
                    a aVar = this.f47864r;
                    c6382aB.e(i10);
                    C10340xw0 c10340xw02 = u52 == U5.f44669d ? (C10340xw0) next.f45302o.get(Integer.valueOf(-(i10 + 1))) : null;
                    if (c10340xw02 != null) {
                        if (c10340xw02 != C10340xw0.f53883n) {
                            c10340xw0 = c10340xw02;
                        }
                    } else {
                        c10340xw0 = (C10340xw0) next.f45302o.get(Integer.valueOf(i10));
                    }
                    if (c10340xw0 == null) {
                        c10340xw0 = c6382aB.a(i10, next, u52, a10, aVar);
                    }
                    arrayList.add(c10340xw0);
                } else {
                    int i11 = 0;
                    if (this.f47864r == a.f47868c) {
                        int size = arrayList.size();
                        int i12 = 0;
                        while (i12 < size) {
                            Object obj = arrayList.get(i12);
                            i12++;
                            AbstractC8999pu0 u10 = ((C10340xw0) obj).u();
                            u10.getClass();
                            b(u10 instanceof C10540z7 ? EnumC5592Mw0.f42461b : EnumC5592Mw0.a(u10));
                        }
                    }
                    int size2 = arrayList.size();
                    while (i11 < size2) {
                        Object obj2 = arrayList.get(i11);
                        i11++;
                        C10340xw0 c10340xw03 = (C10340xw0) obj2;
                        c10340xw03.a(a10, c6382aB.f46455n, c6382aB.f46457p.E().f50691j);
                        g(c10340xw03);
                    }
                    a(c6382aB, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                    return;
                }
            }
        } else {
            throw new C5325If("Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use.");
        }
    }

    @Override
    public final W5 b() {
        return this.f47862p;
    }

    public final void b(EnumC5592Mw0 enumC5592Mw0) {
        if (a(enumC5592Mw0) != null) {
            return;
        }
        throw new IJ("Type information in locals-table is inconsistent. Cannot constrain type: " + ((Object) this.f53896m) + " for value: " + ((Object) this) + " by constraint " + ((Object) enumC5592Mw0) + ".");
    }

    public final void b(final Set set) {
        set.add(this);
        this.f47863q.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7201f60.this.a(set, (C10340xw0) obj);
            }
        });
    }

    public void a(List<C10340xw0> list) {
        a((List) list, true);
    }

    public final void a(List list, boolean z10) {
        if (!f47861u && !this.f47863q.isEmpty()) {
            throw new AssertionError();
        }
        if (list.size() != 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g((C10340xw0) it.next());
            }
            if (z10) {
                a((C6382aB) null, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                return;
            }
            return;
        }
        throw new C5325If("Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use.");
    }

    public final void a(int i10, C10696a c10696a, Predicate predicate) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f47863q.get(i10);
        c10340xw0.f53889f.remove(this);
        c10340xw0.f53890g = null;
        this.f47863q.remove(i10);
        if (c10696a == null || predicate.test(this.f47862p)) {
            return;
        }
        c10696a.f54829b.add(this);
    }

    public final void a(int i10, C10340xw0 c10340xw0, C10696a c10696a) {
        C10340xw0 c10340xw02 = (C10340xw0) this.f47863q.get(i10);
        this.f47863q.set(i10, c10340xw0);
        c10340xw0.f53889f.add(this);
        c10340xw0.f53890g = null;
        c10340xw02.f53889f.remove(this);
        c10340xw02.f53890g = null;
        if (c10696a != null) {
            c10696a.f54829b.add(this);
        }
    }

    public final void a(C10340xw0 c10340xw0, C10340xw0 c10340xw02, Set set) {
        for (int i10 = 0; i10 < this.f47863q.size(); i10++) {
            if (this.f47863q.get(i10) == c10340xw0) {
                this.f47863q.set(i10, c10340xw02);
                c10340xw02.f53889f.add(this);
                c10340xw02.f53890g = null;
            }
        }
        if (set != null) {
            set.add(this);
        }
    }

    public final boolean a(C6382aB c6382aB, C10696a c10696a, Consumer consumer, Predicate predicate) {
        ArrayList arrayList = this.f47863q;
        int size = arrayList.size();
        int i10 = 0;
        C10340xw0 c10340xw0 = null;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C10340xw0 c10340xw02 = (C10340xw0) obj;
            if (c10340xw02 != c10340xw0 && c10340xw02 != this) {
                if (c10340xw0 != null) {
                    if (f47861u || !d0()) {
                        return false;
                    }
                    throw new AssertionError();
                }
                c10340xw0 = c10340xw02;
            }
        }
        boolean z10 = f47861u;
        if (!z10 && !d0()) {
            throw new AssertionError();
        }
        if (c10340xw0 == null) {
            return false;
        }
        if (s() != c10340xw0.s() && s() != null) {
            if (c10340xw0.s() == null) {
                c10340xw0.a(s());
            } else {
                if (z10 || (z() && c10340xw0.z())) {
                    return false;
                }
                throw new AssertionError();
            }
        }
        if (c6382aB != null && this.f53896m.w()) {
            AbstractC8999pu0 abstractC8999pu0 = this.f53896m;
            abstractC8999pu0.getClass();
            if (!(abstractC8999pu0 instanceof C10540z7)) {
                c10340xw0.a(EnumC5592Mw0.a(this.f53896m), c6382aB.f46455n, c6382aB.f46457p.E().f50691j);
            }
        }
        if (c10696a != null) {
            c10696a.a(predicate, this);
        }
        ArrayList arrayList2 = this.f47863q;
        int size2 = arrayList2.size();
        int i12 = 0;
        while (i12 < size2) {
            Object obj2 = arrayList2.get(i12);
            i12++;
            C10340xw0 c10340xw03 = (C10340xw0) obj2;
            c10340xw03.f53889f.remove(this);
            c10340xw03.f53890g = null;
        }
        ArrayList arrayList3 = this.f47866t;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            while (i10 < size3) {
                Object obj3 = arrayList3.get(i10);
                i10++;
                Map map = (Map) obj3;
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getValue() == this) {
                        entry.setValue(c10340xw0);
                        if (c10340xw0.j()) {
                            c10340xw0.l().f47866t.add(map);
                        }
                    }
                }
            }
        }
        Set a02 = a0();
        f(c10340xw0);
        Iterator it = a02.iterator();
        while (it.hasNext()) {
            ((C7201f60) it.next()).a(c6382aB, c10696a, consumer, predicate);
        }
        this.f47862p.a(this, c10696a, consumer);
        return true;
    }

    public final void a(Set set, C10340xw0 c10340xw0) {
        if (c10340xw0.j()) {
            if (f47861u || set.contains(c10340xw0)) {
                return;
            }
            c10340xw0.l().b(set);
            return;
        }
        if (!f47861u && c10340xw0.Q() != this.f47865s) {
            throw new AssertionError();
        }
    }

    public com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        if (!f47861u && !EnumC5477Kw0.a(this.f53896m).a()) {
            throw new AssertionError();
        }
        HashSet hashSet = new HashSet(this.f47863q.size());
        ArrayList arrayList = this.f47863q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.M2 a10 = c5473Ku0.a((C10340xw0) obj);
            if (a10 != null) {
                hashSet.add(a10);
            }
        }
        return c5473Ku0.a(hashSet);
    }
}
