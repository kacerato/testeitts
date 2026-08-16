package com.android.tools.r8.dex;

import com.android.tools.r8.dex.C4321v;
import com.android.tools.r8.dex.C4322w;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.InterfaceC4424e3;
import com.android.tools.r8.graph.InterfaceC4443f3;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6447ad0;
import com.android.tools.r8.internal.C6614bd0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.InterfaceC6244Yd0;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import u.P0;

public class C4322w extends Y {

    public static final boolean f35973d = true;

    public final C4798y f35974b;

    public final J f35975c;

    public C4322w(C4798y c4798y, J j10) {
        this.f35974b = c4798y;
        this.f35975c = j10;
    }

    @Override
    public Collection a() {
        return this.f35975c.f35729h.o();
    }

    @Override
    public Collection b() {
        return this.f35975c.f35726e.o();
    }

    @Override
    public Collection c() {
        return this.f35975c.f35727f.o();
    }

    @Override
    public Collection d() {
        return this.f35975c.f35728g.o();
    }

    @Override
    public Collection e() {
        return this.f35975c.f35730i.o();
    }

    @Override
    public Collection f() {
        return a(this.f35975c.f35730i.o());
    }

    @Override
    public Collection g() {
        return this.f35975c.f35731j.o();
    }

    @Override
    public Collection h() {
        return this.f35975c.f35725d.o();
    }

    @Override
    public Collection i() {
        return this.f35975c.f35724c.o();
    }

    public final ArrayList a(InterfaceC6244Yd0 interfaceC6244Yd0) {
        final C7541h80 k10 = C7541h80.k();
        final ArrayList arrayList = new ArrayList();
        final C4321v c4321v = new C4321v(this.f35974b);
        C6447ad0 c6447ad0 = new C6447ad0(((C6614bd0) interfaceC6244Yd0).f46807b);
        while (c6447ad0.hasNext()) {
            ((H2) c6447ad0.f46566g.f48308c[c6447ad0.b()]).h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4322w.this.a(c4321v, arrayList, k10, (H5) obj);
                }
            }, new P0());
        }
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (String) C7541h80.this.a((H5) obj);
            }
        });
        C8570nJ E10 = this.f35974b.E();
        E10.getClass();
        if (E10.c(C2.S)) {
            arrayList.sort(Comparator.comparingInt(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    return C4321v.this.a((H5) obj);
                }
            }).thenComparing(comparing));
            return arrayList;
        }
        arrayList.sort(comparing);
        return arrayList;
    }

    public final void a(C4321v c4321v, List list, C7541h80 c7541h80, H5 h52) {
        InterfaceC4443f3 R02 = h52.d().R0();
        if (!f35973d && R02 == null && !h52.d().v1()) {
            throw new AssertionError();
        }
        if (R02 != null) {
            C8570nJ E10 = this.f35974b.E();
            E10.getClass();
            C2 c22 = C2.S;
            if (E10.c(c22)) {
                if (!C4321v.f35970c) {
                    C8570nJ E11 = c4321v.f35972b.E();
                    E11.getClass();
                    if (!E11.c(c22)) {
                        throw new AssertionError();
                    }
                }
                if (c4321v.f35971a == null) {
                    c4321v.f35971a = new HashMap();
                }
                InterfaceC4424e3 a10 = R02.a(h52, c4321v.f35972b.b());
                if (!c4321v.f35971a.containsKey(a10)) {
                    c4321v.f35971a.put(a10, 1);
                } else {
                    HashMap hashMap = c4321v.f35971a;
                    hashMap.put(a10, Integer.valueOf(((Integer) hashMap.get(a10)).intValue() + 1));
                }
            }
            list.add(h52);
            String a11 = a(h52, this.f35974b.e().g());
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), a11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.tools.r8.naming.V$c] */
    public static String a(H5 h52, C10912b c10912b) {
        V.b a10;
        String j02;
        com.android.tools.r8.naming.V a11;
        if (c10912b != null) {
            A2 reference = h52.getReference();
            String b10 = C4932Bl.b(reference.f38297f.f36592f.toString());
            M2[] m2Arr = reference.f36127i.f36441f.f36675b;
            String[] strArr = new String[m2Arr.length];
            for (int i10 = 0; i10 < m2Arr.length; i10++) {
                strArr[i10] = C4932Bl.a(m2Arr[i10].V0(), c10912b);
            }
            V.b bVar = new V.b(reference.f38298g.toString(), C4932Bl.a(reference.f36127i.f36440e.V0(), c10912b), strArr);
            ?? r02 = (V.c) c10912b.f55827c.get(bVar);
            if (r02 != 0) {
                bVar = r02;
            } else {
                c10912b.f55827c.put(bVar, bVar);
            }
            a10 = bVar;
            C10957k b11 = c10912b.b(b10);
            if (b11 != null && (a11 = b11.a(a10)) != null) {
                a10 = a11.a().b();
            }
            j02 = c10912b.a(h52.p());
        } else {
            a10 = V.b.a(h52.getReference());
            j02 = h52.p().j0();
        }
        return j02 + ((Object) a10);
    }
}
