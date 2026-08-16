package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import org.eclipse.jdt.internal.core.JavaElement;

public class o<Z> implements t<Z> {

    public final boolean f59259b;

    public final boolean f59260c;

    public final t<Z> f59261d;

    public final a f59262e;

    public final C.e f59263f;

    public int f59264g;

    public boolean f59265h;

    public interface a {
        void c(C.e eVar, o<?> oVar);
    }

    public o(t<Z> tVar, boolean z10, boolean z11, C.e eVar, a aVar) {
        this.f59261d = (t) Y.k.d(tVar);
        this.f59259b = z10;
        this.f59260c = z11;
        this.f59263f = eVar;
        this.f59262e = (a) Y.k.d(aVar);
    }

    @Override
    @NonNull
    public Class<Z> a() {
        return this.f59261d.a();
    }

    public synchronized void b() {
        if (this.f59265h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f59264g++;
    }

    public t<Z> c() {
        return this.f59261d;
    }

    public boolean d() {
        return this.f59259b;
    }

    public void e() {
        boolean z10;
        synchronized (this) {
            int i10 = this.f59264g;
            if (i10 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z10 = true;
            int i11 = i10 - 1;
            this.f59264g = i11;
            if (i11 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            this.f59262e.c(this.f59263f, this);
        }
    }

    @Override
    @NonNull
    public Z get() {
        return this.f59261d.get();
    }

    @Override
    public int getSize() {
        return this.f59261d.getSize();
    }

    @Override
    public synchronized void recycle() {
        if (this.f59264g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f59265h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f59265h = true;
        if (this.f59260c) {
            this.f59261d.recycle();
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f59259b + ", listener=" + ((Object) this.f59262e) + ", key=" + ((Object) this.f59263f) + ", acquired=" + this.f59264g + ", isRecycled=" + this.f59265h + ", resource=" + ((Object) this.f59261d) + JavaElement.JEM_ANNOTATION;
    }
}
