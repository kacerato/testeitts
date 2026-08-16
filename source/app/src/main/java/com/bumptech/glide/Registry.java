package com.bumptech.glide;

import D.e;
import J.n;
import J.o;
import J.p;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.r;
import com.bumptech.glide.load.engine.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class Registry {

    public static final String f58801k = "Gif";

    public static final String f58802l = "Bitmap";

    public static final String f58803m = "BitmapDrawable";

    public static final String f58804n = "legacy_prepend_all";

    public static final String f58805o = "legacy_append";

    public final p f58806a;

    public final T.a f58807b;

    public final T.e f58808c;

    public final T.f f58809d;

    public final D.f f58810e;

    public final Q.f f58811f;

    public final T.b f58812g;

    public final T.d f58813h = new T.d();

    public final T.c f58814i = new T.c();

    public final Pools.Pool<List<Throwable>> f58815j;

    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + ((Object) obj.getClass()));
        }

        public <M> NoModelLoaderAvailableException(@NonNull M m10, @NonNull List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + ((Object) list) + ", but none that handle this specific model instance: " + ((Object) m10));
        }

        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + ((Object) cls) + " and data: " + ((Object) cls2));
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + ((Object) cls) + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + ((Object) cls));
        }
    }

    public Registry() {
        Pools.Pool<List<Throwable>> f10 = Z.a.f();
        this.f58815j = f10;
        this.f58806a = new p(f10);
        this.f58807b = new T.a();
        this.f58808c = new T.e();
        this.f58809d = new T.f();
        this.f58810e = new D.f();
        this.f58811f = new Q.f();
        this.f58812g = new T.b();
        z(Arrays.asList(f58801k, f58802l, f58803m));
    }

    @NonNull
    public <Data> Registry a(@NonNull Class<Data> cls, @NonNull C.d<Data> dVar) {
        this.f58807b.a(cls, dVar);
        return this;
    }

    @NonNull
    public <TResource> Registry b(@NonNull Class<TResource> cls, @NonNull C.k<TResource> kVar) {
        this.f58809d.a(cls, kVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry c(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull C.j<Data, TResource> jVar) {
        e(f58805o, cls, cls2, jVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.f58806a.a(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry e(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull C.j<Data, TResource> jVar) {
        this.f58808c.a(str, jVar, cls, cls2);
        return this;
    }

    @NonNull
    public final <Data, TResource, Transcode> List<com.bumptech.glide.load.engine.h<Data, TResource, Transcode>> f(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f58808c.d(cls, cls2)) {
            for (Class cls5 : this.f58811f.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.engine.h(cls, cls4, cls5, this.f58808c.b(cls, cls4), this.f58811f.a(cls4, cls5), this.f58815j));
            }
        }
        return arrayList;
    }

    @NonNull
    public List<ImageHeaderParser> g() {
        List<ImageHeaderParser> b10 = this.f58812g.b();
        if (b10.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return b10;
    }

    @Nullable
    public <Data, TResource, Transcode> r<Data, TResource, Transcode> h(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        r<Data, TResource, Transcode> a10 = this.f58814i.a(cls, cls2, cls3);
        if (this.f58814i.c(a10)) {
            return null;
        }
        if (a10 == null) {
            List<com.bumptech.glide.load.engine.h<Data, TResource, Transcode>> f10 = f(cls, cls2, cls3);
            a10 = f10.isEmpty() ? null : new r<>(cls, cls2, cls3, f10, this.f58815j);
            this.f58814i.d(cls, cls2, cls3, a10);
        }
        return a10;
    }

    @NonNull
    public <Model> List<n<Model, ?>> i(@NonNull Model model) {
        return this.f58806a.e(model);
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> j(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> b10 = this.f58813h.b(cls, cls2, cls3);
        if (b10 == null) {
            b10 = new ArrayList<>();
            Iterator<Class<?>> it = this.f58806a.d(cls).iterator();
            while (it.hasNext()) {
                for (Class<?> cls4 : this.f58808c.d(it.next(), cls2)) {
                    if (!this.f58811f.b(cls4, cls3).isEmpty() && !b10.contains(cls4)) {
                        b10.add(cls4);
                    }
                }
            }
            this.f58813h.c(cls, cls2, cls3, Collections.unmodifiableList(b10));
        }
        return b10;
    }

    @NonNull
    public <X> C.k<X> k(@NonNull t<X> tVar) throws NoResultEncoderAvailableException {
        C.k<X> b10 = this.f58809d.b(tVar.a());
        if (b10 != null) {
            return b10;
        }
        throw new NoResultEncoderAvailableException(tVar.a());
    }

    @NonNull
    public <X> D.e<X> l(@NonNull X x10) {
        return this.f58810e.a(x10);
    }

    @NonNull
    public <X> C.d<X> m(@NonNull X x10) throws NoSourceEncoderAvailableException {
        C.d<X> b10 = this.f58807b.b(x10.getClass());
        if (b10 != null) {
            return b10;
        }
        throw new NoSourceEncoderAvailableException(x10.getClass());
    }

    public boolean n(@NonNull t<?> tVar) {
        return this.f58809d.b(tVar.a()) != null;
    }

    @NonNull
    public <Data> Registry o(@NonNull Class<Data> cls, @NonNull C.d<Data> dVar) {
        this.f58807b.c(cls, dVar);
        return this;
    }

    @NonNull
    public <TResource> Registry p(@NonNull Class<TResource> cls, @NonNull C.k<TResource> kVar) {
        this.f58809d.c(cls, kVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry q(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull C.j<Data, TResource> jVar) {
        s(f58804n, cls, cls2, jVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry r(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.f58806a.g(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry s(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull C.j<Data, TResource> jVar) {
        this.f58808c.e(str, jVar, cls, cls2);
        return this;
    }

    @NonNull
    public Registry t(@NonNull e.a<?> aVar) {
        this.f58810e.b(aVar);
        return this;
    }

    @NonNull
    public Registry u(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f58812g.a(imageHeaderParser);
        return this;
    }

    @NonNull
    @Deprecated
    public <Data> Registry v(@NonNull Class<Data> cls, @NonNull C.d<Data> dVar) {
        return a(cls, dVar);
    }

    @NonNull
    @Deprecated
    public <TResource> Registry w(@NonNull Class<TResource> cls, @NonNull C.k<TResource> kVar) {
        return b(cls, kVar);
    }

    @NonNull
    public <TResource, Transcode> Registry x(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull Q.e<TResource, Transcode> eVar) {
        this.f58811f.c(cls, cls2, eVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry y(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f58806a.i(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public final Registry z(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, f58804n);
        arrayList.add(f58805o);
        this.f58808c.f(arrayList);
        return this;
    }
}
