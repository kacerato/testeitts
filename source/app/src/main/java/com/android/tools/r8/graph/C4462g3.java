package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XB;
import com.android.tools.r8.naming.C10912b;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C4462g3 extends AbstractC4780x0 {

    public static final boolean f37225m = true;

    public final IdentityHashMap f37226h;

    public final AbstractC8552nC f37227i;

    public final AbstractC8552nC f37228j;

    public final AbstractC7552hC f37229k;

    public final XB f37230l;

    public static class a extends AbstractC4761w0 {

        public static final boolean f37231l = true;

        public XB f37232h;

        public Object f37233i;

        public final ArrayList f37234j;

        public final Set f37235k;

        public a(C4765w4 c4765w4) {
            super(c4765w4);
            this.f37234j = new ArrayList();
            this.f37235k = AbstractC5513Ll0.c();
            C4746v4 c4746v4 = new C4746v4(c4765w4.f38328j, c4765w4.f38327i, c4765w4.f38326h, c4765w4.f38366d);
            this.f37232h = c4746v4.f38303b.values();
            this.f37233i = c4746v4.f38304c;
            a((AbstractCollection) c4746v4.f38302a.values());
        }

        @Override
        public final a a() {
            return this;
        }

        @Override
        public final AbstractC4761w0 c() {
            return this;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map, java.lang.Object] */
        @Override
        public C4462g3 b() {
            if (!this.f37234j.isEmpty()) {
                int i10 = AbstractC7552hC.f48487c;
                this.f37232h = new C7051eC().b((Iterable) this.f37232h).b((Iterable) this.f37234j).a();
                this.f37234j.clear();
            }
            IdentityHashMap identityHashMap = new IdentityHashMap(this.f37232h.size() + this.f38316a.size());
            XB xb2 = this.f37232h;
            if (a(identityHashMap, xb2)) {
                int i11 = AbstractC7552hC.f48487c;
                Object[] objArr = new Object[4];
                AbstractC4895Av0 it = this.f37232h.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    I0 i02 = (I0) it.next();
                    if (!this.f37235k.contains(i02.getType())) {
                        int i13 = i12 + 1;
                        if (objArr.length < i13) {
                            objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
                        }
                        objArr[i12] = i02;
                        i12 = i13;
                    }
                }
                xb2 = AbstractC7552hC.b(i12, objArr);
            }
            XB xb3 = xb2;
            a(identityHashMap, this.f38316a);
            C10912b c10912b = this.f38319d;
            C4818z0 c4818z0 = this.f38321f;
            AbstractC8552nC a10 = AbstractC8552nC.a(identityHashMap);
            ?? r02 = this.f37233i;
            return new C4462g3(c10912b, c4818z0, a10, r02 instanceof AbstractC8552nC ? (AbstractC8552nC) r02 : AbstractC8552nC.a(r02), AbstractC7552hC.a(this.f38316a), xb3, AbstractC7552hC.a(this.f38317b), this.f38318c, this.f38320e);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Map, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Map, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.util.Map, java.lang.Object] */
        @Override
        public final void a(H2 h22) {
            synchronized (this) {
                this.f38316a.add(h22);
            }
            this.f37235k.add(h22.f36245e);
            if (h22.f36245e.a(this.f38318c.m().f38076j2) && this.f37233i.containsKey(h22.f36245e)) {
                if (!(this.f37233i instanceof IdentityHashMap)) {
                    this.f37233i = new IdentityHashMap((Map) this.f37233i);
                }
                this.f37233i.remove(h22.f36245e);
            }
        }

        public final a b(Predicate predicate) {
            int i10 = AbstractC7552hC.f48487c;
            C7051eC c7051eC = new C7051eC();
            AbstractC4895Av0 it = this.f37232h.iterator();
            while (it.hasNext()) {
                I0 i02 = (I0) it.next();
                if (!predicate.test(i02)) {
                    c7051eC.a(i02);
                }
            }
            ArrayList arrayList = this.f37234j;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                I0 i03 = (I0) obj;
                if (!predicate.test(i03)) {
                    c7051eC.a(i03);
                }
            }
            AbstractC7552hC a10 = c7051eC.a();
            if (!f37231l && a10 == null) {
                throw new AssertionError();
            }
            this.f37232h = a10;
            this.f37234j.clear();
            return this;
        }

        public a(C4462g3 c4462g3) {
            super(c4462g3);
            this.f37234j = new ArrayList();
            this.f37235k = AbstractC5513Ll0.c();
            this.f37232h = c4462g3.f37230l;
            this.f37233i = c4462g3.f37228j;
        }

        public final boolean a(IdentityHashMap identityHashMap, Iterable iterable) {
            Iterator it = iterable.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                I5 i52 = (I5) it.next();
                if (i52.e0() || !this.f37235k.contains(i52.getType())) {
                    I5 i53 = (I5) identityHashMap.put(i52.getType(), i52);
                    if (!f37231l && i53 != null) {
                        throw new AssertionError((Object) ("Class " + i53.getType().toString() + " was already present."));
                    }
                } else {
                    z10 = true;
                }
            }
            return z10;
        }

        public a a(Collection<C4725u2> collection) {
            final C8051kC c8051kC = new C8051kC(4);
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8051kC.this.a(r2.f36245e, (C4725u2) obj);
                }
            });
            this.f37233i = c8051kC.b();
            return this;
        }
    }

    public C4462g3(C10912b c10912b, C4818z0 c4818z0, AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, AbstractC7552hC abstractC7552hC, XB xb2, AbstractC7552hC abstractC7552hC2, C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        super(c10912b, c4818z0, abstractC7552hC2, c8570nJ, c8659ns0);
        this.f37226h = new IdentityHashMap();
        this.f37227i = abstractC8552nC;
        this.f37228j = abstractC8552nC2;
        this.f37229k = abstractC7552hC;
        this.f37230l = xb2;
    }

    @Override
    public final C4462g3 a() {
        return this;
    }

    @Override
    public final void b(final Consumer consumer) {
        this.f37229k.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(((H2) obj).f36245e);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final InterfaceC4364b0 f(M2 m22) {
        if (!f37225m && !m22.I0()) {
            throw new AssertionError((Object) ("Cannot lookup definition for type: " + ((Object) m22)));
        }
        C4725u2 c4725u2 = (C4725u2) this.f37228j.get(m22);
        I5 i52 = (I5) this.f37227i.get(m22);
        if (c4725u2 == null && i52 == 0) {
            return Z.f37008b;
        }
        if (c4725u2 != null && i52 == 0) {
            return c4725u2;
        }
        if (c4725u2 == null) {
            E0 e02 = (E0) i52;
            e02.getClass();
            return e02;
        }
        W a10 = new W().a(c4725u2);
        if (!W.f36919c && a10.f36920a != null) {
            throw new AssertionError();
        }
        a10.f36920a = i52;
        return a10.a();
    }

    @Override
    public final E0 g(M2 m22) {
        if (!f37225m && !m22.I0()) {
            throw new AssertionError((Object) ("Cannot lookup definition for type: " + ((Object) m22)));
        }
        S s10 = (I5) this.f37227i.get(m22);
        if (s10 != null && s10.e0()) {
            return (E0) s10;
        }
        C4725u2 c4725u2 = (C4725u2) this.f37228j.get(m22);
        if (c4725u2 != null) {
            return c4725u2;
        }
        if (s10 == null) {
            return null;
        }
        return (E0) s10;
    }

    @Override
    public final Collection h() {
        return this.f37229k;
    }

    @Override
    public final C4462g3 i() {
        return this;
    }

    @Override
    public a c() {
        return new a(this);
    }

    public Collection<C4725u2> k() {
        return this.f37228j.values();
    }

    public final void l() {
        this.f37226h.clear();
        AbstractC4895Av0 it = this.f37229k.iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : ((H2) it.next()).c(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((C4516j1) obj).m1();
                }
            })) {
                AbstractC4497i0 Q02 = c4516j1.Q0();
                boolean z10 = f37225m;
                if (!z10 && Q02 == null) {
                    throw new AssertionError();
                }
                if (Q02.t0()) {
                    Q02 = Q02.V();
                } else if (Q02.B0()) {
                    continue;
                }
                C4516j1 c4516j12 = (C4516j1) this.f37226h.put(Q02, c4516j1);
                if (!z10 && c4516j12 != null) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final String toString() {
        return "DexApplication (direct)";
    }

    @Override
    public final H2 c(M2 m22) {
        I5 i52 = (I5) this.f37227i.get(m22);
        if (i52 == null) {
            return null;
        }
        return i52.d0();
    }

    @Override
    public final void a(final Consumer consumer) {
        this.f37228j.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept((M2) obj);
            }
        });
    }
}
