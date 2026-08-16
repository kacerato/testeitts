package Q;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class f {

    public final List<a<?, ?>> f21867a = new ArrayList();

    public static final class a<Z, R> {

        public final Class<Z> f21868a;

        public final Class<R> f21869b;

        public final e<Z, R> f21870c;

        public a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
            this.f21868a = cls;
            this.f21869b = cls2;
            this.f21870c = eVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f21868a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f21869b);
        }
    }

    @NonNull
    public synchronized <Z, R> e<Z, R> a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.b();
        }
        for (a<?, ?> aVar : this.f21867a) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.f21870c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + ((Object) cls) + " to " + ((Object) cls2));
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> b(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<a<?, ?>> it = this.f21867a.iterator();
        while (it.hasNext()) {
            if (it.next().a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
        this.f21867a.add(new a<>(cls, cls2, eVar));
    }
}
