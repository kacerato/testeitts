package T2;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class x implements X2.d, X2.c {

    @GuardedBy("this")
    public final Map<Class<?>, ConcurrentHashMap<X2.b<Object>, Executor>> f24035a = new HashMap();

    @GuardedBy("this")
    public Queue<X2.a<?>> f24036b = new ArrayDeque();

    public final Executor f24037c;

    public x(Executor executor) {
        this.f24037c = executor;
    }

    public static void h(Map.Entry entry, X2.a aVar) {
        ((X2.b) entry.getKey()).a(aVar);
    }

    @Override
    public <T> void a(Class<T> cls, X2.b<? super T> bVar) {
        b(cls, this.f24037c, bVar);
    }

    @Override
    public synchronized <T> void b(Class<T> cls, Executor executor, X2.b<? super T> bVar) {
        try {
            E.b(cls);
            E.b(bVar);
            E.b(executor);
            if (!this.f24035a.containsKey(cls)) {
                this.f24035a.put(cls, new ConcurrentHashMap<>());
            }
            this.f24035a.get(cls).put(bVar, executor);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void c(final X2.a<?> aVar) {
        E.b(aVar);
        synchronized (this) {
            try {
                Queue<X2.a<?>> queue = this.f24036b;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (final Map.Entry<X2.b<Object>, Executor> entry : g(aVar)) {
                    entry.getValue().execute(new Runnable() {
                        @Override
                        public final void run() {
                            x.h(Map.Entry.this, aVar);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public synchronized <T> void d(Class<T> cls, X2.b<? super T> bVar) {
        E.b(cls);
        E.b(bVar);
        if (this.f24035a.containsKey(cls)) {
            ConcurrentHashMap<X2.b<Object>, Executor> concurrentHashMap = this.f24035a.get(cls);
            concurrentHashMap.remove(bVar);
            if (concurrentHashMap.isEmpty()) {
                this.f24035a.remove(cls);
            }
        }
    }

    public void f() {
        Queue<X2.a<?>> queue;
        synchronized (this) {
            try {
                queue = this.f24036b;
                if (queue != null) {
                    this.f24036b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (queue != null) {
            Iterator<X2.a<?>> it = queue.iterator();
            while (it.hasNext()) {
                c(it.next());
            }
        }
    }

    public final synchronized Set<Map.Entry<X2.b<Object>, Executor>> g(X2.a<?> aVar) {
        ConcurrentHashMap<X2.b<Object>, Executor> concurrentHashMap;
        try {
            concurrentHashMap = this.f24035a.get(aVar.b());
        } catch (Throwable th2) {
            throw th2;
        }
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }
}
