package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AT;
import java.util.Collection;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC4350a5 extends Z4.a {

    public final List f37047c;

    public AbstractC4350a5(List list) {
        super(AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4516j1) obj).B0();
            }
        }));
        this.f37047c = list;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        super.a((Consumer<M2>) consumer, (Consumer<? super C4516j1>) consumer2);
        this.f37047c.forEach(consumer2);
    }

    @Override
    public final boolean y() {
        return this.f37047c.size() > 0;
    }
}
