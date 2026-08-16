package com.android.tools.r8.synthesis;

import com.android.tools.r8.SyntheticInfoConsumerData;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;

public final class H implements SyntheticInfoConsumerData {

    public final M2 f58065a;

    public final M2 f58066b;

    public H(M2 m22, M2 m23) {
        this.f58065a = m22;
        this.f58066b = m23;
    }

    @Override
    public final ClassReference getSynthesizingContextClass() {
        return Reference.classFromDescriptor(this.f58066b.V0());
    }

    @Override
    public final ClassReference getSyntheticClass() {
        return Reference.classFromDescriptor(this.f58065a.V0());
    }
}
