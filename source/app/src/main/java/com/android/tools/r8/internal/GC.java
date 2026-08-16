package com.android.tools.r8.internal;

import java.io.Serializable;

public final class GC extends AbstractC9520t1 implements Serializable {

    public static final GC f40427c;

    public static final GC f40428d;

    public final transient AbstractC7552hC f40429b;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f40427c = new GC(C6190Xe0.f45779e);
        f40428d = new GC(new C5920Sm0(C5024Db0.f39560d));
    }

    public GC(AbstractC7552hC abstractC7552hC) {
        this.f40429b = abstractC7552hC;
    }

    public static FC b() {
        return new FC();
    }

    @Override
    public final JC a() {
        if (this.f40429b.isEmpty()) {
            int i10 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        AbstractC7552hC abstractC7552hC = this.f40429b;
        C5024Db0 c5024Db0 = C5024Db0.f39560d;
        return new C7286ff0(abstractC7552hC, C4966Cb0.f39269b);
    }
}
