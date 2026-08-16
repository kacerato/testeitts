package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class YX extends AbstractC10176wx0 {
    public YX(C4798y c4798y, C4387c4 c4387c4) {
        super(c4798y, c4387c4);
    }

    public static C7873j80 a(final C4798y c4798y, final C4387c4 c4387c4, ArrayList arrayList, ExecutorService executorService) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        final C7873j80 c7873j80 = new C7873j80();
        C5467Kr0.a(arrayList, new Consumer() {
            @Override
            public final void accept(Object obj) {
                YX.a(C4798y.this, c4387c4, c7873j80, (Set) obj);
            }
        }, c4798y.E().G(), executorService);
        return c7873j80;
    }

    public static void a(C4798y c4798y, C4387c4 c4387c4, AbstractC8374m80 abstractC8374m80, Set set) {
        YX yx = new YX(c4798y, c4387c4);
        yx.a(set);
        abstractC8374m80.f45165b.putAll(yx.f53646g.f45165b);
    }
}
