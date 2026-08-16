package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11416s2;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public final class AV {

    public static final AV f38624c = new AV(C11416s2.f57793b, Collections.EMPTY_LIST);

    public final C11416s2 f38625a;

    public final List f38626b;

    public AV(C11416s2 c11416s2, List list) {
        this.f38625a = c11416s2;
        this.f38626b = list;
    }

    public static boolean a(com.android.tools.r8.graph.O5 o52, C10597zV c10597zV) {
        c10597zV.f54394b.a(o52);
        return c10597zV.f54394b.f57795a.isEmpty();
    }

    public final AbstractC7024e3 a() {
        if (this.f38625a.f57795a.isEmpty() && this.f38626b.isEmpty()) {
            return C6858d3.f47261a;
        }
        return new C7191f3(this.f38625a, AT.a((Collection) this.f38626b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C10597zV) obj).a();
            }
        }));
    }

    public final void a(final com.android.tools.r8.graph.O5 o52) {
        this.f38625a.a(o52);
        this.f38626b.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AV.a(com.android.tools.r8.graph.O5.this, (C10597zV) obj);
            }
        });
    }
}
