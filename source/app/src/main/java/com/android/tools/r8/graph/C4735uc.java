package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8374m80;
import java.util.function.Consumer;

public final class C4735uc implements Consumer {

    public final AbstractC8374m80 f38283b;

    public C4735uc(AbstractC8374m80 abstractC8374m80) {
        this.f38283b = abstractC8374m80;
    }

    @Override
    public final void accept(Object obj) {
        this.f38283b.add((AbstractC8374m80) obj);
    }
}
