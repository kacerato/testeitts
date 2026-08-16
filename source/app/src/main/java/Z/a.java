package Z;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

public final class a {

    public static final String f30651a = "FactoryPools";

    public static final int f30652b = 20;

    public static final g<Object> f30653c = new C0806a();

    public class C0806a implements g<Object> {
        @Override
        public void a(@NonNull Object obj) {
        }
    }

    public class b<T> implements d<List<T>> {
        @Override
        @NonNull
        public List<T> create() {
            return new ArrayList();
        }
    }

    public class c<T> implements g<List<T>> {
        @Override
        public void a(@NonNull List<T> list) {
            list.clear();
        }
    }

    public interface d<T> {
        T create();
    }

    public static final class e<T> implements Pools.Pool<T> {

        public final d<T> f30654a;

        public final g<T> f30655b;

        public final Pools.Pool<T> f30656c;

        public e(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
            this.f30656c = pool;
            this.f30654a = dVar;
            this.f30655b = gVar;
        }

        @Override
        public T acquire() {
            T acquire = this.f30656c.acquire();
            if (acquire == null) {
                acquire = this.f30654a.create();
                if (Log.isLoggable(a.f30651a, 2)) {
                    Log.v(a.f30651a, "Created new " + ((Object) acquire.getClass()));
                }
            }
            if (acquire instanceof f) {
                acquire.d().b(false);
            }
            return (T) acquire;
        }

        @Override
        public boolean release(@NonNull T t10) {
            if (t10 instanceof f) {
                ((f) t10).d().b(true);
            }
            this.f30655b.a(t10);
            return this.f30656c.release(t10);
        }
    }

    public interface f {
        @NonNull
        Z.c d();
    }

    public interface g<T> {
        void a(@NonNull T t10);
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> a(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar) {
        return b(pool, dVar, c());
    }

    @NonNull
    public static <T> Pools.Pool<T> b(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
        return new e(pool, dVar, gVar);
    }

    @NonNull
    public static <T> g<T> c() {
        return (g<T>) f30653c;
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> d(int i10, @NonNull d<T> dVar) {
        return a(new Pools.SimplePool(i10), dVar);
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> e(int i10, @NonNull d<T> dVar) {
        return a(new Pools.SynchronizedPool(i10), dVar);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> f() {
        return g(20);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> g(int i10) {
        return b(new Pools.SynchronizedPool(i10), new b(), new c());
    }
}
