package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC6255Yi;

public final class S50 {

    public static final boolean f44081f = true;

    public final C4798y f44082a;

    public final C7215fB f44083b;

    public final C5939Sw f44084c;

    public final C6598bX f44085d;

    public AbstractC6255Yi.a f44086e;

    public S50(C4798y c4798y, C7215fB c7215fB, C5939Sw c5939Sw, C6598bX c6598bX) {
        this.f44082a = c4798y;
        this.f44083b = c7215fB;
        this.f44084c = c5939Sw;
        this.f44085d = c6598bX;
    }

    public final O50 a(W5 w52) {
        if (this.f44086e == null) {
            AbstractC6255Yi.a a10 = new N50(this.f44082a, this.f44083b, this.f44084c, this.f44085d).d(this.f44083b.k()).a();
            this.f44086e = a10;
            if (!f44081f && a10 == null) {
                throw new AssertionError();
            }
        }
        return (O50) this.f44086e.a(w52);
    }
}
