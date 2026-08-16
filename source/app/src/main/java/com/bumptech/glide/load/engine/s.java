package com.bumptech.glide.load.engine;

import Z.a;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;

public final class s<Z> implements t<Z>, a.f {

    public static final Pools.Pool<s<?>> f59272f = Z.a.e(20, new a());

    public final Z.c f59273b = Z.c.a();

    public t<Z> f59274c;

    public boolean f59275d;

    public boolean f59276e;

    public class a implements a.d<s<?>> {
        @Override
        public s<?> create() {
            return new s<>();
        }
    }

    @NonNull
    public static <Z> s<Z> c(t<Z> tVar) {
        s<Z> sVar = (s) Y.k.d(f59272f.acquire());
        sVar.b(tVar);
        return sVar;
    }

    private void e() {
        this.f59274c = null;
        f59272f.release(this);
    }

    @Override
    @NonNull
    public Class<Z> a() {
        return this.f59274c.a();
    }

    public final void b(t<Z> tVar) {
        this.f59276e = false;
        this.f59275d = true;
        this.f59274c = tVar;
    }

    @Override
    @NonNull
    public Z.c d() {
        return this.f59273b;
    }

    public synchronized void f() {
        this.f59273b.c();
        if (!this.f59275d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f59275d = false;
        if (this.f59276e) {
            recycle();
        }
    }

    @Override
    @NonNull
    public Z get() {
        return this.f59274c.get();
    }

    @Override
    public int getSize() {
        return this.f59274c.getSize();
    }

    @Override
    public synchronized void recycle() {
        this.f59273b.c();
        this.f59276e = true;
        if (!this.f59275d) {
            this.f59274c.recycle();
            e();
        }
    }
}
