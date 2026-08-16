package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

public final class C8322lr0 extends C10325xr0 {
    public C8322lr0(C8570nJ c8570nJ, ExecutorService executorService) {
        super(c8570nJ.G(), executorService, -1);
    }

    @Override
    public final synchronized void a(Callable callable) {
        super.a(callable);
    }

    public final synchronized ArrayList b() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.f53861c);
        this.f53861c.clear();
        return arrayList;
    }

    @Override
    public final void a(Consumer consumer) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f53861c);
            this.f53861c.clear();
        }
        while (!arrayList.isEmpty()) {
            this.f53859a.awaitFutures(arrayList);
            if (consumer != null) {
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    consumer.accept(AbstractC5595My.a((Future) obj));
                }
            }
            arrayList = b();
        }
    }
}
