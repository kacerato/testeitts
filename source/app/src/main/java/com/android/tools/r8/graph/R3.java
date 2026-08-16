package com.android.tools.r8.graph;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.M3;
import com.android.tools.r8.graph.R3;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.shaking.C11297l1;
import com.android.tools.r8.shaking.C11382q1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class R3 {

    public static final boolean f36760d = true;

    public final C4798y f36761a;

    public final int f36762b;

    public final M3 f36763c;

    public enum a {
        f36764b,
        EF1,
        f36765c,
        f36766d,
        f36767e,
        f36768f;


        public static final boolean f36770h = true;

        a() {
        }

        public final boolean a() {
            return this != f36768f;
        }
    }

    public R3(C4798y c4798y, M3 m32, int i10) {
        this.f36761a = c4798y;
        this.f36763c = m32;
        this.f36762b = i10;
    }

    public static R3 a(C4798y<?> c4798y, M3 m32) {
        return new R3(c4798y, m32, 2);
    }

    public static R3 b(C4798y<?> c4798y, M3 m32) {
        return new R3(c4798y, m32, 1);
    }

    public a a(Collection<H2> collection) {
        this.f36761a.E().getClass();
        this.f36761a.E().getClass();
        a aVar = a.f36768f;
        Iterator<H2> it = collection.iterator();
        while (it.hasNext()) {
            a a10 = a(it.next());
            if (!aVar.a()) {
                aVar = a10;
            }
        }
        return aVar;
    }

    public a a(final H2 h22) {
        a aVar;
        this.f36761a.E().getClass();
        this.f36761a.E().getClass();
        final M3.a a10 = this.f36763c.a(this.f36761a, (J2) h22.f36245e, (Predicate) EnumC6871d70.f47287c);
        C4798y c4798y = this.f36761a;
        int i10 = this.f36762b;
        final P3 p32 = new P3(i10, c4798y, h22);
        H3.b bVar = h22.f36259s;
        if (!bVar.a()) {
            aVar = p32.a(bVar.c(), a10);
            if (!aVar.a()) {
                C4724u1 b10 = c4798y.b();
                H3.c cVar = bVar.f36382b;
                if (cVar == null) {
                    cVar = new H3.c(b10.f38068i2);
                }
                if (h22.f36247g != cVar.f36385b) {
                    if (!P3.f36696d && !Q3.a(i10)) {
                        throw new AssertionError((Object) "Super type inconsistency in generic signature");
                    }
                    aVar = a.f36764b;
                } else {
                    aVar = p32.a(cVar.r(), h22.f36247g, a10);
                    if (!aVar.a()) {
                        List<H3.c> e10 = bVar.e();
                        if (h22.f36248h.size() != e10.size()) {
                            if (!P3.f36696d && !Q3.a(i10)) {
                                throw new AssertionError();
                            }
                            aVar = a.f36765c;
                        } else {
                            M2[] m2Arr = h22.f36248h.f36675b;
                            int i11 = 0;
                            while (true) {
                                if (i11 < m2Arr.length) {
                                    aVar = p32.a(e10.get(i11).r(), m2Arr[i11], a10);
                                    if (aVar.a()) {
                                        break;
                                    }
                                    i11++;
                                } else {
                                    aVar = a.f36768f;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            aVar = a.f36768f;
        }
        if (aVar.a() && Q3.a(this.f36762b)) {
            C11297l1 a11 = this.f36761a.r().a(h22);
            if (this.f36761a.f().i() && !a11.e(this.f36761a.E()) && !a11.f(this.f36761a.E())) {
                C5094Ef0 c5094Ef0 = this.f36761a.E().f50691j;
                C4349a4 a12 = C4349a4.a(h22.N0().toString(), "class", h22.b1(), h22.f36244d, aVar);
                synchronized (c5094Ef0) {
                    c5094Ef0.a(DiagnosticsLevel.INFO, a12);
                }
            }
            h22.f36259s = H3.b.f();
        }
        for (final C4516j1 c4516j1 : h22.z1()) {
            Objects.requireNonNull(c4516j1);
            a a13 = a(new Supplier() {
                @Override
                public final Object get() {
                    return C4516j1.this.A0();
                }
            }, new Function() {
                @Override
                public final Object apply(Object obj) {
                    R3.a a14;
                    a14 = P3.this.a((H3.g) obj, a10);
                    return a14;
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R3.this.a(c4516j1, h22, (R3.a) obj);
                }
            });
            if (!aVar.a()) {
                aVar = a13;
            }
        }
        for (final C4460g1 c4460g1 : h22.I0()) {
            Objects.requireNonNull(c4460g1);
            a a14 = a(new Supplier() {
                @Override
                public final Object get() {
                    return C4460g1.this.A0();
                }
            }, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return R3.a(P3.this, a10, (H3.e) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R3.this.a(c4460g1, h22, (R3.a) obj);
                }
            });
            if (!aVar.a()) {
                aVar = a14;
            }
        }
        return aVar;
    }

    public final void a(C4516j1 c4516j1, H2 h22, a aVar) {
        com.android.tools.r8.shaking.I1 a10 = this.f36761a.r().a(h22, c4516j1);
        if (this.f36761a.f().i() && !a10.e(this.f36761a.E()) && !a10.f(this.f36761a.E())) {
            C5094Ef0 c5094Ef0 = this.f36761a.E().f50691j;
            C4349a4 a11 = C4349a4.a(c4516j1.A0().toString(), "method", c4516j1.j0(), h22.f36244d, aVar);
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, a11);
            }
        }
        c4516j1.f37324q = H3.g.d();
    }

    public final void a(C4460g1 c4460g1, H2 h22, a aVar) {
        C11382q1 a10 = this.f36761a.r().a(c4460g1, h22);
        if (this.f36761a.f().i() && !a10.e(this.f36761a.E()) && !a10.f(this.f36761a.E())) {
            C5094Ef0 c5094Ef0 = this.f36761a.E().f50691j;
            C4349a4 a11 = C4349a4.a(c4460g1.A0().toString(), "field", c4460g1.j0(), h22.f36244d, aVar);
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, a11);
            }
        }
        c4460g1.f37206k = H3.e.p();
    }

    public final a a(Supplier supplier, Function function, Consumer consumer) {
        H3.d dVar = (H3.d) supplier.get();
        if (!dVar.a()) {
            a aVar = (a) function.apply(dVar);
            if (!f36760d) {
                aVar.getClass();
                if (aVar != a.f36768f && !Q3.a(this.f36762b)) {
                    throw new AssertionError();
                }
            }
            if (aVar.a() && Q3.a(this.f36762b)) {
                consumer.accept(aVar);
            }
            return aVar;
        }
        return a.f36768f;
    }

    public static a a(P3 p32, M3.a aVar, H3.e eVar) {
        p32.f36698b.f36259s.getClass();
        return p32.a(eVar, aVar);
    }
}
