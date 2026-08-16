package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class C6541b80 extends AbstractC7701i6 {

    public final C4798y f46708b;

    public final C4387c4 f46709c;

    public C6541b80(C4798y c4798y, C4387c4 c4387c4) {
        this.f46708b = c4798y;
        this.f46709c = c4387c4;
    }

    @Override
    public final void a(Consumer consumer, Object obj) {
        com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
        C4387c4 c4387c4 = this.f46709c;
        c4387c4.getClass();
        c4387c4.a(EnumC6871d70.f47286b, consumer, h22);
        ((List) this.f46709c.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)).forEach(consumer);
    }

    @Override
    public final void a(Consumer consumer) {
        ((C4514j) this.f46708b.f()).d().forEach(consumer);
    }
}
