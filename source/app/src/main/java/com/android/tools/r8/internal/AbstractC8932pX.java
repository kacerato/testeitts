package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public abstract class AbstractC8932pX {
    public static void a(final C4798y c4798y, ExecutorService executorService, O60 o60) {
        final C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        ArrayList a11 = new C6541b80(c4798y, a10).a();
        C9265rX c9265rX = C9265rX.f52055b;
        final C9099qX c9099qX = new C9099qX();
        C5467Kr0.a(a11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                new C8431mX(C4798y.this, c9099qX, a10).a((Set) obj);
            }
        }, c4798y.E().G(), executorService);
        IdentityHashMap identityHashMap = new IdentityHashMap(c9099qX.f51798a);
        c4798y.f38422o = new C9265rX(identityHashMap);
        if (identityHashMap.isEmpty()) {
            return;
        }
        C9599tX c9599tX = new C9599tX(c4798y);
        o60.a(c4798y);
        c9599tX.a(o60, executorService);
    }
}
