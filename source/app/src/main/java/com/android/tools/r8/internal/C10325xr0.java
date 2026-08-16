package com.android.tools.r8.internal;

import com.android.tools.r8.threading.ThreadingModule;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C10325xr0 {

    public final ThreadingModule f53859a;

    public final ExecutorService f53860b;

    public final ArrayList f53861c;

    public C10325xr0(ThreadingModule threadingModule, ExecutorService executorService, int i10) {
        this.f53859a = threadingModule;
        this.f53860b = executorService;
        this.f53861c = i10 > 0 ? new ArrayList(i10) : new ArrayList();
    }

    public final void a(Collection collection, final Function function, Consumer consumer) {
        if (this.f53859a.isSingleThreaded()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                try {
                    consumer.accept(function.apply(it.next()));
                } catch (Exception e10) {
                    throw new ExecutionException(e10);
                }
            }
            return;
        }
        for (final Object obj : collection) {
            a(new Callable() {
                @Override
                public final Object call() {
                    Object apply;
                    apply = Function.this.apply(obj);
                    return apply;
                }
            });
        }
        this.f53859a.forEach(this.f53861c, consumer);
        this.f53861c.clear();
    }

    public final void b(final InterfaceC5930Sr0 interfaceC5930Sr0) {
        a(new Callable() {
            @Override
            public final Object call() {
                return C10325xr0.a(InterfaceC5930Sr0.this);
            }
        });
    }

    public void a(Callable callable) {
        this.f53861c.add(this.f53859a.submit(callable, this.f53860b));
    }

    public void a(Consumer consumer) {
        this.f53859a.awaitFutures(this.f53861c);
        if (consumer != null) {
            ArrayList arrayList = this.f53861c;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                consumer.accept(AbstractC5595My.a((Future) obj));
            }
        }
        this.f53861c.clear();
    }

    public static Object a(InterfaceC5930Sr0 interfaceC5930Sr0) {
        interfaceC5930Sr0.a();
        return null;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList(this.f53861c.size());
        a(new HU0(arrayList));
        return arrayList;
    }

    public final ArrayList a(final Predicate predicate) {
        if (predicate == null) {
            return a();
        }
        final ArrayList arrayList = new ArrayList();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10325xr0.a(Predicate.this, arrayList, obj);
            }
        });
        return arrayList;
    }

    public static void a(Predicate predicate, List list, Object obj) {
        if (predicate.test(obj)) {
            list.add(obj);
        }
    }
}
