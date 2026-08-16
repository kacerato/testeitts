package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class r<Data, ResourceType, Transcode> {

    public final Class<Data> f59268a;

    public final Pools.Pool<List<Throwable>> f59269b;

    public final List<? extends h<Data, ResourceType, Transcode>> f59270c;

    public final String f59271d;

    public r(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<h<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f59268a = cls;
        this.f59269b = pool;
        this.f59270c = (List) Y.k.c(list);
        this.f59271d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + VectorFormat.DEFAULT_SUFFIX;
    }

    public Class<Data> a() {
        return this.f59268a;
    }

    public t<Transcode> b(D.e<Data> eVar, @NonNull C.h hVar, int i10, int i11, h.a<ResourceType> aVar) throws GlideException {
        List<Throwable> list = (List) Y.k.d(this.f59269b.acquire());
        try {
            return c(eVar, hVar, i10, i11, aVar, list);
        } finally {
            this.f59269b.release(list);
        }
    }

    public final t<Transcode> c(D.e<Data> eVar, @NonNull C.h hVar, int i10, int i11, h.a<ResourceType> aVar, List<Throwable> list) throws GlideException {
        int size = this.f59270c.size();
        t<Transcode> tVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            try {
                tVar = this.f59270c.get(i12).a(eVar, i10, i11, hVar, aVar);
            } catch (GlideException e10) {
                list.add(e10);
            }
            if (tVar != null) {
                break;
            }
        }
        if (tVar != null) {
            return tVar;
        }
        throw new GlideException(this.f59271d, new ArrayList(list));
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f59270c.toArray()) + JavaElement.JEM_ANNOTATION;
    }
}
