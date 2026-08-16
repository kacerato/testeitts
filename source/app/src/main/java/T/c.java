package T;

import Q.g;
import Y.j;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.r;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

public class c {

    public static final r<?, ?, ?> f23795c = new r<>(Object.class, Object.class, Object.class, Collections.singletonList(new h(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    public final ArrayMap<j, r<?, ?, ?>> f23796a = new ArrayMap<>();

    public final AtomicReference<j> f23797b = new AtomicReference<>();

    @Nullable
    public <Data, TResource, Transcode> r<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        r<Data, TResource, Transcode> rVar;
        j b10 = b(cls, cls2, cls3);
        synchronized (this.f23796a) {
            rVar = (r) this.f23796a.get(b10);
        }
        this.f23797b.set(b10);
        return rVar;
    }

    public final j b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        j andSet = this.f23797b.getAndSet(null);
        if (andSet == null) {
            andSet = new j();
        }
        andSet.b(cls, cls2, cls3);
        return andSet;
    }

    public boolean c(@Nullable r<?, ?, ?> rVar) {
        return f23795c.equals(rVar);
    }

    public void d(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable r<?, ?, ?> rVar) {
        synchronized (this.f23796a) {
            ArrayMap<j, r<?, ?, ?>> arrayMap = this.f23796a;
            j jVar = new j(cls, cls2, cls3);
            if (rVar == null) {
                rVar = f23795c;
            }
            arrayMap.put(jVar, rVar);
        }
    }
}
