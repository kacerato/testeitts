package Se;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class n extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, De.c {

    public static final long f23146c = -6120223772001106981L;

    public static final Object f23147d = new Object();

    public static final Object f23148e = new Object();

    public static final Object f23149f = new Object();

    public static final Object f23150g = new Object();

    public static final int f23151h = 0;

    public static final int f23152i = 1;

    public static final int f23153j = 2;

    public final Runnable f23154b;

    public n(Runnable runnable, Ge.c cVar) {
        super(3);
        this.f23154b = runnable;
        lazySet(0, cVar);
    }

    public void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f23150g) {
                return;
            }
            if (obj == f23148e) {
                future.cancel(false);
                return;
            } else if (obj == f23149f) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override
    public Object call() {
        run();
        return null;
    }

    @Override
    public boolean d() {
        Object obj = get(0);
        return obj == f23147d || obj == f23150g;
    }

    @Override
    public void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == f23150g || obj5 == (obj3 = f23148e) || obj5 == (obj4 = f23149f)) {
                break;
            }
            boolean z10 = get(2) != Thread.currentThread();
            if (z10) {
                obj3 = obj4;
            }
            if (compareAndSet(1, obj5, obj3)) {
                if (obj5 != null) {
                    ((Future) obj5).cancel(z10);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f23150g || obj == (obj2 = f23147d) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((Ge.c) obj).b(this);
    }

    @Override
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        boolean compareAndSet;
        Object obj4;
        Object obj5;
        lazySet(2, Thread.currentThread());
        try {
            this.f23154b.run();
        } finally {
            try {
                lazySet(2, null);
                obj4 = get(0);
                if (obj4 != f23147d) {
                    ((Ge.c) obj4).b(this);
                }
                do {
                    obj5 = get(1);
                    if (obj5 != f23148e) {
                        return;
                    } else {
                        return;
                    }
                } while (!compareAndSet(1, obj5, f23150g));
            } catch (Throwable th2) {
                do {
                    if (obj == obj2) {
                        break;
                    } else if (obj == obj3) {
                        break;
                    }
                } while (!compareAndSet);
            }
        }
        lazySet(2, null);
        obj4 = get(0);
        if (obj4 != f23147d && compareAndSet(0, obj4, f23150g) && obj4 != null) {
            ((Ge.c) obj4).b(this);
        }
        do {
            obj5 = get(1);
            if (obj5 != f23148e || obj5 == f23149f) {
                return;
            }
        } while (!compareAndSet(1, obj5, f23150g));
    }
}
