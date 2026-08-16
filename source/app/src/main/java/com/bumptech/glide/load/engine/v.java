package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import org.eclipse.jdt.internal.core.JavaElement;

public final class v implements C.e {

    public static final Y.h<Class<?>, byte[]> f59287k = new Y.h<>(50);

    public final F.b f59288c;

    public final C.e f59289d;

    public final C.e f59290e;

    public final int f59291f;

    public final int f59292g;

    public final Class<?> f59293h;

    public final C.h f59294i;

    public final C.l<?> f59295j;

    public v(F.b bVar, C.e eVar, C.e eVar2, int i10, int i11, C.l<?> lVar, Class<?> cls, C.h hVar) {
        this.f59288c = bVar;
        this.f59289d = eVar;
        this.f59290e = eVar2;
        this.f59291f = i10;
        this.f59292g = i11;
        this.f59295j = lVar;
        this.f59293h = cls;
        this.f59294i = hVar;
    }

    public final byte[] a() {
        Y.h<Class<?>, byte[]> hVar = f59287k;
        byte[] j10 = hVar.j(this.f59293h);
        if (j10 != null) {
            return j10;
        }
        byte[] bytes = this.f59293h.getName().getBytes(C.e.f1956b);
        hVar.n(this.f59293h, bytes);
        return bytes;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f59292g == vVar.f59292g && this.f59291f == vVar.f59291f && Y.m.d(this.f59295j, vVar.f59295j) && this.f59293h.equals(vVar.f59293h) && this.f59289d.equals(vVar.f59289d) && this.f59290e.equals(vVar.f59290e) && this.f59294i.equals(vVar.f59294i);
    }

    @Override
    public int hashCode() {
        int hashCode = (((((this.f59289d.hashCode() * 31) + this.f59290e.hashCode()) * 31) + this.f59291f) * 31) + this.f59292g;
        C.l<?> lVar = this.f59295j;
        if (lVar != null) {
            hashCode = (hashCode * 31) + lVar.hashCode();
        }
        return (((hashCode * 31) + this.f59293h.hashCode()) * 31) + this.f59294i.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + ((Object) this.f59289d) + ", signature=" + ((Object) this.f59290e) + ", width=" + this.f59291f + ", height=" + this.f59292g + ", decodedResourceClass=" + ((Object) this.f59293h) + ", transformation='" + ((Object) this.f59295j) + JavaElement.JEM_MODULAR_CLASSFILE + ", options=" + ((Object) this.f59294i) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f59288c.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f59291f).putInt(this.f59292g).array();
        this.f59290e.updateDiskCacheKey(messageDigest);
        this.f59289d.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        C.l<?> lVar = this.f59295j;
        if (lVar != null) {
            lVar.updateDiskCacheKey(messageDigest);
        }
        this.f59294i.updateDiskCacheKey(messageDigest);
        messageDigest.update(a());
        this.f59288c.put(bArr);
    }
}
