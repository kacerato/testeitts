package com.android.tools.r8.graph;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.WB;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public class C4552l {

    public static final boolean f37439d = true;

    public final C4798y f37440a;

    public final AbstractC5308Hz f37441b;

    public final Object f37442c;

    public static class a {

        public final C4798y f37443a;

        public final C8570nJ f37444b;

        public final LinkedHashMap f37445c = new LinkedHashMap();

        public a(C4798y c4798y) {
            this.f37443a = c4798y;
            this.f37444b = c4798y.E();
        }

        public C4552l a() {
            AbstractC4895Av0 it = this.f37443a.f().a().f38363a.iterator();
            while (it.hasNext()) {
                try {
                    ((DataResourceProvider) it.next()).accept(new C4533k(this, FeatureSplit.BASE));
                } catch (ResourceException e10) {
                    throw new C5325If(e10.getMessage(), e10);
                }
            }
            if (this.f37444b.I()) {
                ArrayList arrayList = this.f37444b.f50718s.f43761a;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    FeatureSplit featureSplit = (FeatureSplit) obj;
                    Iterator<ProgramResourceProvider> it2 = featureSplit.getProgramResourceProviders().iterator();
                    while (it2.hasNext()) {
                        DataResourceProvider dataResourceProvider = it2.next().getDataResourceProvider();
                        if (dataResourceProvider != null) {
                            try {
                                dataResourceProvider.accept(new C4533k(this, featureSplit));
                            } catch (ResourceException e11) {
                                throw new C5325If(e11.getMessage(), e11);
                            }
                        }
                    }
                }
            }
            return new C4552l(this.f37443a, this.f37445c);
        }
    }

    public C4552l(C4798y c4798y, Map map) {
        this.f37440a = c4798y;
        this.f37441b = c4798y.v();
        this.f37442c = map;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    public final Set a() {
        if (!f37439d) {
            b();
        }
        final Set c10 = AbstractC5513Ll0.c();
        this.f37442c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Map) obj2).forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        Set.this.addAll((List) obj4);
                    }
                });
            }
        });
        return c10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void b() {
        for (Map.Entry entry : this.f37442c.entrySet()) {
            if (!f37439d) {
                if (entry.getKey() != this.f37440a.v().d(this.f37441b, (M2) entry.getKey())) {
                    throw new AssertionError();
                }
            }
            Iterator it = ((Map) entry.getValue()).entrySet().iterator();
            while (it.hasNext()) {
                for (M2 m22 : (List) ((Map.Entry) it.next()).getValue()) {
                    if (!f37439d && m22 != this.f37440a.v().d(this.f37441b, m22)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map, java.lang.Object] */
    public final AbstractC7552hC a(M2 m22) {
        if (!f37439d) {
            b();
        }
        Map map = (Map) this.f37442c.get(m22);
        if (map == null) {
            int i10 = AbstractC7552hC.f48487c;
            return C6190Xe0.f45779e;
        }
        int i11 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            c7051eC.b((Iterable) it.next());
        }
        return c7051eC.a();
    }

    public final C4552l a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (C4552l) c8659ns0.a("Rewrite AppServices", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4552l.this.a(abstractC5308Hz);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map, java.lang.Object] */
    public final C4552l a(O5 o52, C8659ns0 c8659ns0) {
        c8659ns0.b("Prune AppServices");
        C8051kC c8051kC = new C8051kC(4);
        for (Map.Entry entry : this.f37442c.entrySet()) {
            if (!o52.f36682e.contains(entry.getKey())) {
                C8051kC c8051kC2 = new C8051kC(4);
                for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                    int i10 = AbstractC7552hC.f48487c;
                    Object[] objArr = new Object[4];
                    int i11 = 0;
                    for (M2 m22 : (List) entry2.getValue()) {
                        if (!o52.f36682e.contains(m22)) {
                            m22.getClass();
                            int i12 = i11 + 1;
                            if (objArr.length < i12) {
                                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                            }
                            objArr[i11] = m22;
                            i11 = i12;
                        }
                    }
                    if (AbstractC7552hC.b(i11, objArr).size() > 0) {
                        c8051kC2.a((FeatureSplit) entry2.getKey(), AbstractC7552hC.b(i11, objArr));
                    }
                }
                AbstractC8552nC b10 = c8051kC2.b();
                if (b10.size() > 0) {
                    c8051kC.a((M2) entry.getKey(), b10);
                }
            }
        }
        C4552l c4552l = new C4552l(this.f37440a, c8051kC.b());
        c8659ns0.d();
        return c4552l;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void a(final FeatureSplit featureSplit, final BiConsumer biConsumer) {
        this.f37442c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4552l.a(FeatureSplit.this, biConsumer, (M2) obj, (Map) obj2);
            }
        });
    }

    public static void a(FeatureSplit featureSplit, BiConsumer biConsumer, M2 m22, Map map) {
        List list = (List) map.get(featureSplit);
        if (list != null) {
            biConsumer.accept(m22, list);
        }
    }

    public static a a(C4798y<?> c4798y) {
        return new a(c4798y);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map, java.lang.Object] */
    public final C4552l a(AbstractC5308Hz abstractC5308Hz) {
        C8051kC c8051kC = new C8051kC(4);
        for (Map.Entry entry : this.f37442c.entrySet()) {
            M2 d10 = abstractC5308Hz.d(this.f37441b, (M2) entry.getKey());
            C8051kC c8051kC2 = new C8051kC(4);
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                int i10 = AbstractC7552hC.f48487c;
                Object[] objArr = new Object[4];
                Iterator it = ((List) entry2.getValue()).iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    M2 d11 = abstractC5308Hz.d(this.f37441b, (M2) it.next());
                    d11.getClass();
                    int i12 = i11 + 1;
                    if (objArr.length < i12) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                    }
                    objArr[i11] = d11;
                    i11 = i12;
                }
                c8051kC2.a((FeatureSplit) entry2.getKey(), AbstractC7552hC.b(i11, objArr));
            }
            c8051kC.a(d10, c8051kC2.b());
        }
        return new C4552l(this.f37440a, c8051kC.b());
    }
}
