package T;

import Y.j;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class d {

    public final AtomicReference<j> f23798a = new AtomicReference<>();

    public final ArrayMap<j, List<Class<?>>> f23799b = new ArrayMap<>();

    public void a() {
        synchronized (this.f23799b) {
            this.f23799b.clear();
        }
    }

    @Nullable
    public List<Class<?>> b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        j andSet = this.f23798a.getAndSet(null);
        if (andSet == null) {
            andSet = new j(cls, cls2, cls3);
        } else {
            andSet.b(cls, cls2, cls3);
        }
        synchronized (this.f23799b) {
            list = this.f23799b.get(andSet);
        }
        this.f23798a.set(andSet);
        return list;
    }

    public void c(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f23799b) {
            this.f23799b.put(new j(cls, cls2, cls3), list);
        }
    }
}
