package B2;

import java.util.concurrent.atomic.AtomicLong;
import w2.Q;

@k
public final class z {

    public static final Q<y> f1479a;

    public class a implements Q<y> {
        @Override
        public y get() {
            return new A();
        }
    }

    public class b implements Q<y> {
        @Override
        public y get() {
            return new c(null);
        }
    }

    public static final class c extends AtomicLong implements y {
        public c() {
        }

        @Override
        public void M0(long j10) {
            getAndAdd(j10);
        }

        @Override
        public void N0() {
            getAndIncrement();
        }

        @Override
        public long o() {
            return get();
        }

        public c(a aVar) {
            this();
        }
    }

    static {
        Q<y> bVar;
        try {
            new A();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f1479a = bVar;
    }

    public static y a() {
        return f1479a.get();
    }
}
