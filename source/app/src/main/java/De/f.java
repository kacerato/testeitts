package De;

import java.util.concurrent.atomic.AtomicReference;

public abstract class f<T> extends AtomicReference<T> implements c {

    public static final long f5161b = 6537757548749041217L;

    public f(T t10) {
        super(He.b.g(t10, "value is null"));
    }

    public abstract void a(@Ce.f T t10);

    @Override
    public final boolean d() {
        return get() == null;
    }

    @Override
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }
}
