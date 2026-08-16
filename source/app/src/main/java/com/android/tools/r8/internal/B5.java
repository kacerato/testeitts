package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Collection;

public interface B5 {
    W9 a(C9942vb c9942vb, C4724u1 c4724u1);

    default Collection a(C9942vb c9942vb, C4724u1 c4724u1, QT qt) {
        W9 a10 = a(c9942vb, c4724u1);
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(a10);
    }
}
