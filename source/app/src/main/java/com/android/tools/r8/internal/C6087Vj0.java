package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.retrace.RetraceMethodElement;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.OptionalInt;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;

public final class C6087Vj0 implements RetraceMethodResult {

    public static final boolean f45138e = true;

    public final JW f45139a;

    public final List f45140b;

    public final C10137wk0 f45141c;

    public AbstractC9530t40 f45142d = AbstractC9530t40.f52519c;

    public C6087Vj0(C5624Nj0 c5624Nj0, List list, JW jw, C10137wk0 c10137wk0) {
        this.f45140b = list;
        this.f45139a = jw;
        this.f45141c = c10137wk0;
        boolean z10 = f45138e;
        if (!z10 && c5624Nj0 == null) {
            throw new AssertionError();
        }
        if (!z10 && list.isEmpty()) {
            throw new AssertionError();
        }
    }

    public static List a(int i10, JV jv) {
        return jv.f41409a.a(i10, false);
    }

    public static Function b() {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((JV) obj).a();
            }
        };
    }

    @Override
    public final boolean isAmbiguous() {
        if (!this.f45142d.e()) {
            return this.f45142d.d();
        }
        if (this.f45140b.size() > 1) {
            this.f45142d = AbstractC9530t40.f52517a;
            return true;
        }
        List list = (List) ((C8699o50) this.f45140b.get(0)).b();
        if (list == null || list.size() < 2) {
            this.f45142d = AbstractC9530t40.f52518b;
            return false;
        }
        V.b b10 = ((C10957k.b) AT.b(((JV) list.get(0)).f41409a.a())).f55970c.b();
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (!b10.equals(((C10957k.b) AT.b(((JV) list.get(i10)).f41409a.a())).f55970c.b())) {
                this.f45142d = AbstractC9530t40.f52517a;
                return true;
            }
        }
        this.f45142d = AbstractC9530t40.f52518b;
        return false;
    }

    @Override
    public final boolean isEmpty() {
        List list = (List) ((C8699o50) this.f45140b.get(0)).b();
        return list == null || list.isEmpty();
    }

    @Override
    public final Stream<RetraceMethodElement> stream() {
        return this.f45140b.stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6087Vj0.this.a((C8699o50) obj);
            }
        });
    }

    @Override
    public final C5972Tj0 narrowByPosition(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt) {
        ArrayList arrayList = new ArrayList();
        C6315Zj0 c6315Zj0 = retraceStackTraceContext instanceof C6315Zj0 ? (C6315Zj0) retraceStackTraceContext : null;
        boolean z10 = optionalInt.isPresent() && optionalInt.getAsInt() > 0;
        Function a10 = z10 ? a(optionalInt.getAsInt()) : b();
        Iterator it = this.f45140b.iterator();
        while (it.hasNext()) {
            a((C8699o50) it.next(), a10, optionalInt, c6315Zj0, arrayList);
        }
        if (z10 && arrayList.isEmpty()) {
            Iterator it2 = this.f45140b.iterator();
            while (it2.hasNext()) {
                a((C8699o50) it2.next(), a(), optionalInt, c6315Zj0, arrayList);
            }
        }
        if (arrayList.isEmpty()) {
            boolean z11 = DX0.a(optionalInt) || optionalInt.getAsInt() <= 0;
            for (C8699o50 c8699o50 : this.f45140b) {
                List arrayList2 = new ArrayList();
                if (c8699o50.b() != null && z11) {
                    arrayList2 = AT.a((Collection) c8699o50.b(), new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C6087Vj0.a((JV) obj);
                        }
                    });
                }
                arrayList.add(new C5798Qj0((C5566Mj0) c8699o50.a(), arrayList2, optionalInt));
            }
        }
        return new C5972Tj0(arrayList, this.f45139a, this.f45141c, (C6315Zj0) retraceStackTraceContext);
    }

    public static JV a(JV jv) {
        com.android.tools.r8.naming.M0 m02;
        return (jv.f41409a.a().size() == 1 && (m02 = ((C10957k.b) AT.a(jv.f41409a.a())).f55969b) != null && m02.f55702a == 0 && m02.f55703b == 65535) ? jv : new JV(jv.f41410b, C10957k.c.f55977b);
    }

    public final void a(Set set, C5566Mj0 c5566Mj0, List list, JV jv) {
        V.b b10;
        com.android.tools.r8.naming.V v10 = jv.f41410b;
        if (v10 != null && !isAmbiguous()) {
            b10 = v10.a().b();
        } else {
            b10 = ((C10957k.b) AT.b(jv.f41409a.a())).f55970c.b();
        }
        if (set.add(b10)) {
            list.add(new C6030Uj0(this, c5566Mj0, AbstractC9302rk0.a(C8134kk0.a(b10, c5566Mj0.f42356b.f50088a)), jv));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(C8699o50 c8699o50, Function function, OptionalInt optionalInt, C6315Zj0 c6315Zj0, ArrayList arrayList) {
        List<JV> list = (List) c8699o50.b();
        if (list == null) {
            arrayList.add(new C5798Qj0((C5566Mj0) c8699o50.a(), null, optionalInt));
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (JV jv : list) {
            List list2 = (List) function.apply(jv);
            if (list2 != null && !list2.isEmpty()) {
                if (c6315Zj0 != null && c6315Zj0.f46333b.isPresent()) {
                    AbstractC7552hC d10 = ((C10957k.b) AT.b(list2)).d();
                    if (!d10.isEmpty()) {
                        if (!f45138e && d10.size() != 1) {
                            throw new AssertionError((Object) "There can only be one outline entry for a line");
                        }
                        M40 m40 = (M40) d10.get(0);
                        int asInt = c6315Zj0.f46333b.getAsInt();
                        int intValue = ((Integer) m40.f42156a.getOrDefault(Integer.valueOf(asInt), Integer.valueOf(asInt))).intValue();
                        Function a10 = a(intValue);
                        OptionalInt of2 = OptionalInt.of(intValue);
                        OptionalInt.empty();
                        a(c8699o50, a10, of2, new C6315Zj0(c6315Zj0.f46332a, OptionalInt.empty()), arrayList);
                        return;
                    }
                }
                arrayList2.add(new JV(jv.f41410b, new C10957k.c(list2)));
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        arrayList.add(new C5798Qj0((C5566Mj0) c8699o50.a(), arrayList2, optionalInt));
    }

    public static Function a(final int i10) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6087Vj0.a(i10, (JV) obj);
            }
        };
    }

    public static Function a() {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((JV) obj).b();
            }
        };
    }

    public final Stream a(C8699o50 c8699o50) {
        AbstractC9302rk0 c9136qk0;
        final C5566Mj0 c5566Mj0 = (C5566Mj0) c8699o50.a();
        List list = (List) c8699o50.b();
        if (list != null && !list.isEmpty()) {
            final HashSet hashSet = new HashSet();
            final ArrayList arrayList = new ArrayList(list.size());
            list.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6087Vj0.this.a(hashSet, c5566Mj0, arrayList, (JV) obj);
                }
            });
            return arrayList.stream();
        }
        JW a10 = this.f45139a.a(c5566Mj0.f42356b.f50088a);
        Comparator comparator = AbstractC9302rk0.f52122c;
        if (a10 instanceof IW) {
            c9136qk0 = new C8969pk0(a10.a().f41114a, OptionalInt.empty());
        } else {
            c9136qk0 = new C9136qk0(a10, OptionalInt.empty());
        }
        return Stream.of(new C6030Uj0(this, c5566Mj0, c9136qk0, null));
    }
}
