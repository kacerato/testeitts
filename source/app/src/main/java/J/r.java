package J;

import J.n;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class r {

    public static final c f10143e = new c();

    public static final n<Object, Object> f10144f = new a();

    public final List<b<?, ?>> f10145a;

    public final c f10146b;

    public final Set<b<?, ?>> f10147c;

    public final Pools.Pool<List<Throwable>> f10148d;

    public static class a implements n<Object, Object> {
        @Override
        public boolean a(@NonNull Object obj) {
            return false;
        }

        @Override
        @Nullable
        public n.a<Object> b(@NonNull Object obj, int i10, int i11, @NonNull C.h hVar) {
            return null;
        }
    }

    public static class b<Model, Data> {

        public final Class<Model> f10149a;

        public final Class<Data> f10150b;

        public final o<? extends Model, ? extends Data> f10151c;

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
            this.f10149a = cls;
            this.f10150b = cls2;
            this.f10151c = oVar;
        }

        public boolean a(@NonNull Class<?> cls) {
            return this.f10149a.isAssignableFrom(cls);
        }

        public boolean b(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return a(cls) && this.f10150b.isAssignableFrom(cls2);
        }
    }

    public static class c {
        @NonNull
        public <Model, Data> q<Model, Data> a(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new q<>(list, pool);
        }
    }

    public r(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f10143e);
    }

    @NonNull
    public static <Model, Data> n<Model, Data> f() {
        return (n<Model, Data>) f10144f;
    }

    public final <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar, boolean z10) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.f10145a;
        list.add(z10 ? list.size() : 0, bVar);
    }

    public synchronized <Model, Data> void b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    @NonNull
    public final <Model, Data> n<Model, Data> c(@NonNull b<?, ?> bVar) {
        return (n) Y.k.d(bVar.f10151c.a(this));
    }

    @NonNull
    public synchronized <Model, Data> n<Model, Data> d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            for (b<?, ?> bVar : this.f10145a) {
                if (this.f10147c.contains(bVar)) {
                    z10 = true;
                } else if (bVar.b(cls, cls2)) {
                    this.f10147c.add(bVar);
                    arrayList.add(c(bVar));
                    this.f10147c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return this.f10146b.a(arrayList, this.f10148d);
            }
            if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            }
            if (!z10) {
                throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
            return f();
        } catch (Throwable th2) {
            this.f10147c.clear();
            throw th2;
        }
    }

    @NonNull
    public synchronized <Model> List<n<Model, ?>> e(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f10145a) {
                if (!this.f10147c.contains(bVar) && bVar.a(cls)) {
                    this.f10147c.add(bVar);
                    arrayList.add(c(bVar));
                    this.f10147c.remove(bVar);
                }
            }
        } catch (Throwable th2) {
            this.f10147c.clear();
            throw th2;
        }
        return arrayList;
    }

    @NonNull
    public synchronized List<Class<?>> g(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f10145a) {
            if (!arrayList.contains(bVar.f10150b) && bVar.a(cls)) {
                arrayList.add(bVar.f10150b);
            }
        }
        return arrayList;
    }

    @NonNull
    public final <Model, Data> o<Model, Data> h(@NonNull b<?, ?> bVar) {
        return (o<Model, Data>) bVar.f10151c;
    }

    public synchronized <Model, Data> void i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, false);
    }

    @NonNull
    public synchronized <Model, Data> List<o<? extends Model, ? extends Data>> j(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.f10145a.iterator();
        while (it.hasNext()) {
            b<?, ?> next = it.next();
            if (next.b(cls, cls2)) {
                it.remove();
                arrayList.add(h(next));
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model, Data> List<o<? extends Model, ? extends Data>> k(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        List<o<? extends Model, ? extends Data>> j10;
        j10 = j(cls, cls2);
        b(cls, cls2, oVar);
        return j10;
    }

    @VisibleForTesting
    public r(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull c cVar) {
        this.f10145a = new ArrayList();
        this.f10147c = new HashSet();
        this.f10148d = pool;
        this.f10146b = cVar;
    }
}
