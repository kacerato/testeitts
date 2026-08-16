package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import org.eclipse.jdt.internal.core.JavaElement;

public final class c implements C.e {

    public final C.e f59113c;

    public final C.e f59114d;

    public c(C.e eVar, C.e eVar2) {
        this.f59113c = eVar;
        this.f59114d = eVar2;
    }

    public C.e a() {
        return this.f59113c;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f59113c.equals(cVar.f59113c) && this.f59114d.equals(cVar.f59114d);
    }

    @Override
    public int hashCode() {
        return (this.f59113c.hashCode() * 31) + this.f59114d.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + ((Object) this.f59113c) + ", signature=" + ((Object) this.f59114d) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f59113c.updateDiskCacheKey(messageDigest);
        this.f59114d.updateDiskCacheKey(messageDigest);
    }
}
