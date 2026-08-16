package com.android.tools.r8.internal;

import java.util.function.ObjIntConsumer;
import java.util.function.Predicate;

public final class C7708i80 {

    public final C5038Dg f48851a;

    public C7708i80(C5038Dg c5038Dg) {
        this.f48851a = c5038Dg;
    }

    public final void a(final ObjIntConsumer objIntConsumer) {
        this.f48851a.a(new ObjIntConsumer() {
            @Override
            public final void accept(Object obj, int i10) {
                C7708i80.a(ObjIntConsumer.this, (C7333fv) obj, i10);
            }
        });
    }

    public final void a(final Predicate predicate) {
        this.f48851a.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7708i80.a(Predicate.this, (C7333fv) obj);
            }
        });
    }

    public static void a(ObjIntConsumer objIntConsumer, C7333fv c7333fv, int i10) {
        objIntConsumer.accept((com.android.tools.r8.graph.H5) c7333fv.f48136c, i10);
    }

    public static boolean a(Predicate predicate, C7333fv c7333fv) {
        return predicate.test((com.android.tools.r8.graph.H5) c7333fv.f48136c);
    }
}
