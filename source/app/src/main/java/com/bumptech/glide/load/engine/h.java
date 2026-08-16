package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class h<DataType, ResourceType, Transcode> {

    public static final String f59179f = "DecodePath";

    public final Class<DataType> f59180a;

    public final List<? extends C.j<DataType, ResourceType>> f59181b;

    public final Q.e<ResourceType, Transcode> f59182c;

    public final Pools.Pool<List<Throwable>> f59183d;

    public final String f59184e;

    public interface a<ResourceType> {
        @NonNull
        t<ResourceType> a(@NonNull t<ResourceType> tVar);
    }

    public h(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends C.j<DataType, ResourceType>> list, Q.e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.f59180a = cls;
        this.f59181b = list;
        this.f59182c = eVar;
        this.f59183d = pool;
        this.f59184e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + VectorFormat.DEFAULT_SUFFIX;
    }

    public t<Transcode> a(D.e<DataType> eVar, int i10, int i11, @NonNull C.h hVar, a<ResourceType> aVar) throws GlideException {
        return this.f59182c.a(aVar.a(b(eVar, i10, i11, hVar)), hVar);
    }

    @NonNull
    public final t<ResourceType> b(D.e<DataType> eVar, int i10, int i11, @NonNull C.h hVar) throws GlideException {
        List<Throwable> list = (List) Y.k.d(this.f59183d.acquire());
        try {
            return c(eVar, i10, i11, hVar, list);
        } finally {
            this.f59183d.release(list);
        }
    }

    @NonNull
    public final t<ResourceType> c(D.e<DataType> eVar, int i10, int i11, @NonNull C.h hVar, List<Throwable> list) throws GlideException {
        int size = this.f59181b.size();
        t<ResourceType> tVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            C.j<DataType, ResourceType> jVar = this.f59181b.get(i12);
            try {
                if (jVar.b(eVar.a(), hVar)) {
                    tVar = jVar.a(eVar.a(), i10, i11, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e10) {
                if (Log.isLoggable(f59179f, 2)) {
                    Log.v(f59179f, "Failed to decode data for " + ((Object) jVar), e10);
                }
                list.add(e10);
            }
            if (tVar != null) {
                break;
            }
        }
        if (tVar != null) {
            return tVar;
        }
        throw new GlideException(this.f59184e, new ArrayList(list));
    }

    public String toString() {
        return "DecodePath{ dataClass=" + ((Object) this.f59180a) + ", decoders=" + ((Object) this.f59181b) + ", transcoder=" + ((Object) this.f59182c) + JavaElement.JEM_ANNOTATION;
    }
}
