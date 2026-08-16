package com.android.tools.r8.naming;

import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.kotlin.C10776f0;
import com.android.tools.r8.kotlin.InterfaceC10835p;
import java.util.HashMap;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

public final class N {

    public static final boolean f55710b = true;

    public final C4798y f55711a;

    public N(C4798y c4798y) {
        this.f55711a = c4798y;
    }

    public final AbstractC7552hC a() {
        com.android.tools.r8.graph.M2 a10;
        String str;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (com.android.tools.r8.graph.H2 h22 : this.f55711a.e().e()) {
            InterfaceC10835p interfaceC10835p = h22.f36369x;
            if (interfaceC10835p.o()) {
                ((M) hashMap.computeIfAbsent(interfaceC10835p.k().f55069b.f55314a, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return N.this.a((String) obj);
                    }
                })).a(h22);
            } else if (interfaceC10835p.t()) {
                final C10776f0 m10 = interfaceC10835p.m();
                hashMap2.computeIfAbsent(m10.f55298a.f42591c, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return N.a(C10776f0.this, (String) obj);
                    }
                });
                ((M) hashMap.computeIfAbsent(m10.f55299b.f55314a, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return N.this.b((String) obj);
                    }
                })).a(h22);
            }
        }
        for (com.android.tools.r8.graph.H2 h23 : this.f55711a.e().e()) {
            if (h23.f36369x.n() && (a10 = this.f55711a.v().a(h23.getType())) != null && (str = (String) hashMap2.get(a10.U0())) != null) {
                M m11 = (M) hashMap.get(str);
                if (!f55710b && m11 == null) {
                    throw new AssertionError();
                }
                m11.a(h23);
            }
        }
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        hashMap.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.a(C7051eC.this, (M) obj);
            }
        });
        return c7051eC.a();
    }

    public final M b(String str) {
        return new M(str, this.f55711a);
    }

    public final M a(String str) {
        return new M(str, this.f55711a);
    }

    public static String a(C10776f0 c10776f0, String str) {
        return c10776f0.f55299b.f55314a;
    }

    public static void a(final C7051eC c7051eC, M m10) {
        Optional a10 = m10.a();
        Objects.requireNonNull(c7051eC);
        a10.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((DataEntryResource) obj);
            }
        });
    }
}
