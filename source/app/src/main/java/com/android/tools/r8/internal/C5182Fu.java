package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C5182Fu {

    public static final boolean f40337e = true;

    public final com.android.tools.r8.graph.H2 f40338a;

    public final C9093qU f40339b;

    public final Set f40340c = C4875Al0.a();

    public final QC f40341d;

    public C5182Fu(C4798y c4798y, com.android.tools.r8.graph.H2 h22, QC qc2, AbstractC5308Hz abstractC5308Hz) {
        this.f40341d = null;
        if (!f40337e && c4798y.v() != abstractC5308Hz) {
            throw new AssertionError();
        }
        this.f40338a = h22;
        this.f40341d = qc2;
        this.f40339b = C9093qU.a(abstractC5308Hz);
    }
}
