package Z9;

import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Supplier;

public final class B<T> {

    public final Supplier<T> f31084a;

    public final ThreadLocal<T> f31085b = new ThreadLocal<>();

    public final CopyOnWriteArrayList<T> f31086c = new CopyOnWriteArrayList<>();

    public B(Supplier<T> factory) {
        this.f31084a = factory;
    }

    public T a(int index) {
        return this.f31086c.get(index);
    }

    public T b() {
        T t10 = this.f31085b.get();
        if (t10 != null) {
            return t10;
        }
        T t11 = this.f31084a.get();
        this.f31085b.set(t11);
        this.f31086c.addIfAbsent(t11);
        return t11;
    }

    public T c() {
        return this.f31085b.get();
    }

    public int d() {
        return this.f31086c.size();
    }
}
