package com.android.tools.r8.synthesis;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.origin.Origin;
import java.util.Comparator;
import java.util.function.Function;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C11579l implements Comparable {

    public static final boolean f58272f = true;

    public final M2 f58273b;

    public final M2 f58274c;

    public final Origin f58275d;

    public final FeatureSplit f58276e;

    public C11579l(M2 m22, M2 m23, Origin origin, FeatureSplit featureSplit) {
        this.f58273b = m22;
        this.f58274c = m23;
        this.f58275d = origin;
        this.f58276e = featureSplit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C11579l a(InterfaceC4440f0 interfaceC4440f0) {
        AbstractC4365b1 abstractC4365b1 = (AbstractC4365b1) interfaceC4440f0;
        return new C11579l(abstractC4365b1.S(), abstractC4365b1.S(), ((com.android.tools.r8.graph.E0) interfaceC4440f0).f36244d, FeatureSplit.BASE);
    }

    public final String toString() {
        String str;
        M2 m22 = this.f58273b;
        if (this.f58276e.isBase()) {
            str = "";
        } else {
            str = ", feature:" + ((Object) this.f58276e);
        }
        return "SynthesizingContext{" + ((Object) m22) + str + VectorFormat.DEFAULT_SUFFIX;
    }

    public final M2 b() {
        return this.f58273b;
    }

    @Override
    public final int compareTo(C11579l c11579l) {
        return Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C11579l) obj).b();
            }
        }).thenComparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((C11579l) obj).f58274c;
                return m22;
            }
        }).compare(this, c11579l);
    }

    public final FeatureSplit a() {
        return this.f58276e;
    }

    public final void a(C4798y c4798y, M2 m22) {
        if (c4798y.E().x().f45396a.f53764a) {
            if (!f58272f && !m22.j0().startsWith(this.f58273b.j0())) {
                throw new AssertionError();
            }
            M2 b10 = c4798y.E().x().b().b(this.f58273b);
            if (b10 == null) {
                return;
            }
            String f10 = C4932Bl.f(this.f58273b.V0());
            String f11 = C4932Bl.f(b10.V0());
            String substring = C4932Bl.f(m22.V0()).substring(f10.length());
            c4798y.E().x().b().a(m22, c4798y.b().d(C4932Bl.k(f11 + substring)));
        }
    }
}
