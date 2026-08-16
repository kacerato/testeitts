package J;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class p {

    public final r f10130a;

    public final a f10131b;

    public static class a {

        public final Map<Class<?>, C0245a<?>> f10132a = new HashMap();

        public static class C0245a<Model> {

            public final List<n<Model, ?>> f10133a;

            public C0245a(List<n<Model, ?>> list) {
                this.f10133a = list;
            }
        }

        public void a() {
            this.f10132a.clear();
        }

        @Nullable
        public <Model> List<n<Model, ?>> b(Class<Model> cls) {
            C0245a<?> c0245a = this.f10132a.get(cls);
            if (c0245a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0245a.f10133a;
        }

        public <Model> void c(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f10132a.put(cls, new C0245a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + ((Object) cls));
        }
    }

    public p(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new r(pool));
    }

    @NonNull
    public static <A> Class<A> c(@NonNull A a10) {
        return (Class<A>) a10.getClass();
    }

    public synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f10130a.b(cls, cls2, oVar);
        this.f10131b.a();
    }

    public synchronized <Model, Data> n<Model, Data> b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.f10130a.d(cls, cls2);
    }

    @NonNull
    public synchronized List<Class<?>> d(@NonNull Class<?> cls) {
        return this.f10130a.g(cls);
    }

    @NonNull
    public <A> List<n<A, ?>> e(@NonNull A a10) {
        List<n<A, ?>> f10 = f(c(a10));
        if (f10.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(a10);
        }
        int size = f10.size();
        List<n<A, ?>> emptyList = Collections.emptyList();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            n<A, ?> nVar = f10.get(i10);
            if (nVar.a(a10)) {
                if (z10) {
                    emptyList = new ArrayList<>(size - i10);
                    z10 = false;
                }
                emptyList.add(nVar);
            }
        }
        if (emptyList.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(a10, f10);
        }
        return emptyList;
    }

    @NonNull
    public final synchronized <A> List<n<A, ?>> f(@NonNull Class<A> cls) {
        List<n<A, ?>> b10;
        b10 = this.f10131b.b(cls);
        if (b10 == null) {
            b10 = Collections.unmodifiableList(this.f10130a.e(cls));
            this.f10131b.c(cls, b10);
        }
        return b10;
    }

    public synchronized <Model, Data> void g(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f10130a.i(cls, cls2, oVar);
        this.f10131b.a();
    }

    public synchronized <Model, Data> void h(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        j(this.f10130a.j(cls, cls2));
        this.f10131b.a();
    }

    public synchronized <Model, Data> void i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        j(this.f10130a.k(cls, cls2, oVar));
        this.f10131b.a();
    }

    public final <Model, Data> void j(@NonNull List<o<? extends Model, ? extends Data>> list) {
        Iterator<o<? extends Model, ? extends Data>> it = list.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    public p(@NonNull r rVar) {
        this.f10131b = new a();
        this.f10130a = rVar;
    }
}
