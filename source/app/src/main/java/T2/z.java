package T2;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class z<T> implements a3.b<Set<T>> {

    public volatile Set<T> f24042b = null;

    public volatile Set<a3.b<T>> f24041a = Collections.newSetFromMap(new ConcurrentHashMap());

    public z(Collection<a3.b<T>> collection) {
        this.f24041a.addAll(collection);
    }

    public static z<?> b(Collection<a3.b<?>> collection) {
        return new z<>((Set) collection);
    }

    public synchronized void a(a3.b<T> bVar) {
        try {
            if (this.f24042b == null) {
                this.f24041a.add(bVar);
            } else {
                this.f24042b.add(bVar.get());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public Set<T> get() {
        if (this.f24042b == null) {
            synchronized (this) {
                try {
                    if (this.f24042b == null) {
                        this.f24042b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f24042b);
    }

    public final synchronized void d() {
        try {
            Iterator<a3.b<T>> it = this.f24041a.iterator();
            while (it.hasNext()) {
                this.f24042b.add(it.next().get());
            }
            this.f24041a = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
