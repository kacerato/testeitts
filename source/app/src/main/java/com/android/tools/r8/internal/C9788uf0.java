package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4798y;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;

public class C9788uf0 extends C8268lZ {

    public static final boolean f52910p = true;

    public final InterfaceC9368s6 f52911n;

    public final Map f52912o;

    public C9788uf0(C4798y c4798y, InterfaceC9368s6 interfaceC9368s6, InterfaceC9368s6 interfaceC9368s62, InterfaceC9368s6 interfaceC9368s63, Map map) {
        super(c4798y, interfaceC9368s6, interfaceC9368s62.e(), interfaceC9368s63, interfaceC9368s62);
        this.f52911n = interfaceC9368s63;
        this.f52912o = map;
    }

    @Override
    public final String a(String str) {
        String a10 = this.f43777d.a(str);
        return (String) this.f52912o.getOrDefault(a10, a10);
    }

    @Override
    public final boolean m() {
        return true;
    }

    public boolean o() {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.graph.J2 j23) {
        if (j22 == j23) {
            if (f52910p) {
                return false;
            }
            throw new AssertionError((Object) "The from and to references should not be equal");
        }
        super.a(j22, j23);
        return ((Boolean) com.android.tools.r8.graph.J2.a(j22, j23, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(C9788uf0.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2));
            }
        }, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(C9788uf0.this.a((AbstractC4744v2) obj, (AbstractC4744v2) obj2));
            }
        }, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(C9788uf0.this.a((AbstractC4744v2) obj, (AbstractC4744v2) obj2));
            }
        })).booleanValue();
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return m22 == m23 || this.f52911n.get(m22) == m23;
    }

    public final boolean a(AbstractC4744v2 abstractC4744v2, AbstractC4744v2 abstractC4744v22) {
        if (a(abstractC4744v2.s0(), abstractC4744v22.s0())) {
            return C9073qK.a(new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return C9788uf0.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
                }
            }, abstractC4744v2.a(this.f43776c), abstractC4744v22.a(this.f43776c));
        }
        return false;
    }
}
