package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

public class m implements C.e {

    public final Object f59250c;

    public final int f59251d;

    public final int f59252e;

    public final Class<?> f59253f;

    public final Class<?> f59254g;

    public final C.e f59255h;

    public final Map<Class<?>, C.l<?>> f59256i;

    public final C.h f59257j;

    public int f59258k;

    public m(Object obj, C.e eVar, int i10, int i11, Map<Class<?>, C.l<?>> map, Class<?> cls, Class<?> cls2, C.h hVar) {
        this.f59250c = Y.k.d(obj);
        this.f59255h = (C.e) Y.k.e(eVar, "Signature must not be null");
        this.f59251d = i10;
        this.f59252e = i11;
        this.f59256i = (Map) Y.k.d(map);
        this.f59253f = (Class) Y.k.e(cls, "Resource class must not be null");
        this.f59254g = (Class) Y.k.e(cls2, "Transcode class must not be null");
        this.f59257j = (C.h) Y.k.d(hVar);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f59250c.equals(mVar.f59250c) && this.f59255h.equals(mVar.f59255h) && this.f59252e == mVar.f59252e && this.f59251d == mVar.f59251d && this.f59256i.equals(mVar.f59256i) && this.f59253f.equals(mVar.f59253f) && this.f59254g.equals(mVar.f59254g) && this.f59257j.equals(mVar.f59257j);
    }

    @Override
    public int hashCode() {
        if (this.f59258k == 0) {
            int hashCode = this.f59250c.hashCode();
            this.f59258k = hashCode;
            int hashCode2 = (((((hashCode * 31) + this.f59255h.hashCode()) * 31) + this.f59251d) * 31) + this.f59252e;
            this.f59258k = hashCode2;
            int hashCode3 = (hashCode2 * 31) + this.f59256i.hashCode();
            this.f59258k = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f59253f.hashCode();
            this.f59258k = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f59254g.hashCode();
            this.f59258k = hashCode5;
            this.f59258k = (hashCode5 * 31) + this.f59257j.hashCode();
        }
        return this.f59258k;
    }

    public String toString() {
        return "EngineKey{model=" + this.f59250c + ", width=" + this.f59251d + ", height=" + this.f59252e + ", resourceClass=" + ((Object) this.f59253f) + ", transcodeClass=" + ((Object) this.f59254g) + ", signature=" + ((Object) this.f59255h) + ", hashCode=" + this.f59258k + ", transformations=" + ((Object) this.f59256i) + ", options=" + ((Object) this.f59257j) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
