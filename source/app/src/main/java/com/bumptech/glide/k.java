package com.bumptech.glide;

import R.c;
import R.m;
import R.n;
import R.p;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.math3.geometry.VectorFormat;

public class k implements ComponentCallbacks2, R.i, g<j<Drawable>> {

    public static final U.h f59058n = U.h.V0(Bitmap.class).j0();

    public static final U.h f59059o = U.h.V0(P.c.class).j0();

    public static final U.h f59060p = U.h.W0(com.bumptech.glide.load.engine.i.f59187c).x0(h.LOW).F0(true);

    public final com.bumptech.glide.b f59061b;

    public final Context f59062c;

    public final R.h f59063d;

    @GuardedBy("this")
    public final n f59064e;

    @GuardedBy("this")
    public final m f59065f;

    @GuardedBy("this")
    public final p f59066g;

    public final Runnable f59067h;

    public final Handler f59068i;

    public final R.c f59069j;

    public final CopyOnWriteArrayList<U.g<Object>> f59070k;

    @GuardedBy("this")
    public U.h f59071l;

    public boolean f59072m;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            k kVar = k.this;
            kVar.f59063d.a(kVar);
        }
    }

    public static class b extends V.f<View, Object> {
        public b(@NonNull View view) {
            super(view);
        }

        @Override
        public void h(@NonNull Object obj, @Nullable W.f<? super Object> fVar) {
        }

        @Override
        public void m(@Nullable Drawable drawable) {
        }

        @Override
        public void o(@Nullable Drawable drawable) {
        }
    }

    public class c implements c.a {

        @GuardedBy("RequestManager.this")
        public final n f59074a;

        public c(@NonNull n nVar) {
            this.f59074a = nVar;
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                synchronized (k.this) {
                    this.f59074a.g();
                }
            }
        }
    }

    public k(@NonNull com.bumptech.glide.b bVar, @NonNull R.h hVar, @NonNull m mVar, @NonNull Context context) {
        this(bVar, hVar, mVar, new n(), bVar.h(), context);
    }

    public List<U.g<Object>> A() {
        return this.f59070k;
    }

    public synchronized U.h B() {
        return this.f59071l;
    }

    @NonNull
    public <T> l<?, T> C(Class<T> cls) {
        return this.f59061b.j().e(cls);
    }

    public synchronized boolean D() {
        return this.f59064e.d();
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> l(@Nullable Bitmap bitmap) {
        return t().l(bitmap);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> d(@Nullable Drawable drawable) {
        return t().d(drawable);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> j(@Nullable Uri uri) {
        return t().j(uri);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> load(@Nullable File file) {
        return t().load(file);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> n(@Nullable @DrawableRes @RawRes Integer num) {
        return t().n(num);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> e(@Nullable Object obj) {
        return t().e(obj);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> o(@Nullable String str) {
        return t().o(str);
    }

    @Override
    @CheckResult
    @Deprecated
    public j<Drawable> load(@Nullable URL url) {
        return t().load(url);
    }

    @Override
    @NonNull
    @CheckResult
    public j<Drawable> load(@Nullable byte[] bArr) {
        return t().load(bArr);
    }

    public synchronized void N() {
        this.f59064e.e();
    }

    public synchronized void O() {
        N();
        Iterator<k> it = this.f59065f.a().iterator();
        while (it.hasNext()) {
            it.next().N();
        }
    }

    public synchronized void P() {
        this.f59064e.f();
    }

    public synchronized void Q() {
        P();
        Iterator<k> it = this.f59065f.a().iterator();
        while (it.hasNext()) {
            it.next().P();
        }
    }

    public synchronized void R() {
        this.f59064e.h();
    }

    public synchronized void S() {
        Y.m.b();
        R();
        Iterator<k> it = this.f59065f.a().iterator();
        while (it.hasNext()) {
            it.next().R();
        }
    }

    @NonNull
    public synchronized k T(@NonNull U.h hVar) {
        V(hVar);
        return this;
    }

    public void U(boolean z10) {
        this.f59072m = z10;
    }

    public synchronized void V(@NonNull U.h hVar) {
        this.f59071l = hVar.h().b();
    }

    public synchronized void W(@NonNull V.p<?> pVar, @NonNull U.d dVar) {
        this.f59066g.j(pVar);
        this.f59064e.i(dVar);
    }

    public synchronized boolean X(@NonNull V.p<?> pVar) {
        U.d request = pVar.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f59064e.b(request)) {
            return false;
        }
        this.f59066g.l(pVar);
        pVar.g(null);
        return true;
    }

    public final void Y(@NonNull V.p<?> pVar) {
        boolean X10 = X(pVar);
        U.d request = pVar.getRequest();
        if (X10 || this.f59061b.v(pVar) || request == null) {
            return;
        }
        pVar.g(null);
        request.clear();
    }

    public final synchronized void Z(@NonNull U.h hVar) {
        this.f59071l = this.f59071l.a(hVar);
    }

    @Override
    public synchronized void b() {
        try {
            this.f59066g.b();
            Iterator<V.p<?>> it = this.f59066g.e().iterator();
            while (it.hasNext()) {
                w(it.next());
            }
            this.f59066g.d();
            this.f59064e.c();
            this.f59063d.b(this);
            this.f59063d.b(this.f59069j);
            this.f59068i.removeCallbacks(this.f59067h);
            this.f59061b.A(this);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void c() {
        P();
        this.f59066g.c();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override
    public void onLowMemory() {
    }

    @Override
    public synchronized void onStart() {
        R();
        this.f59066g.onStart();
    }

    @Override
    public void onTrimMemory(int i10) {
        if (i10 == 60 && this.f59072m) {
            O();
        }
    }

    public k p(U.g<Object> gVar) {
        this.f59070k.add(gVar);
        return this;
    }

    @NonNull
    public synchronized k q(@NonNull U.h hVar) {
        Z(hVar);
        return this;
    }

    @NonNull
    @CheckResult
    public <ResourceType> j<ResourceType> r(@NonNull Class<ResourceType> cls) {
        return new j<>(this.f59061b, this, cls, this.f59062c);
    }

    @NonNull
    @CheckResult
    public j<Bitmap> s() {
        return r(Bitmap.class).a(f59058n);
    }

    @NonNull
    @CheckResult
    public j<Drawable> t() {
        return r(Drawable.class);
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + ((Object) this.f59064e) + ", treeNode=" + ((Object) this.f59065f) + VectorFormat.DEFAULT_SUFFIX;
    }

    @NonNull
    @CheckResult
    public j<File> u() {
        return r(File.class).a(U.h.p1(true));
    }

    @NonNull
    @CheckResult
    public j<P.c> v() {
        return r(P.c.class).a(f59059o);
    }

    public void w(@Nullable V.p<?> pVar) {
        if (pVar == null) {
            return;
        }
        Y(pVar);
    }

    public void x(@NonNull View view) {
        w(new b(view));
    }

    @NonNull
    @CheckResult
    public j<File> y(@Nullable Object obj) {
        return z().e(obj);
    }

    @NonNull
    @CheckResult
    public j<File> z() {
        return r(File.class).a(f59060p);
    }

    public k(com.bumptech.glide.b bVar, R.h hVar, m mVar, n nVar, R.d dVar, Context context) {
        this.f59066g = new p();
        a aVar = new a();
        this.f59067h = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f59068i = handler;
        this.f59061b = bVar;
        this.f59063d = hVar;
        this.f59065f = mVar;
        this.f59064e = nVar;
        this.f59062c = context;
        R.c a10 = dVar.a(context.getApplicationContext(), new c(nVar));
        this.f59069j = a10;
        if (Y.m.s()) {
            handler.post(aVar);
        } else {
            hVar.a(this);
        }
        hVar.a(a10);
        this.f59070k = new CopyOnWriteArrayList<>(bVar.j().c());
        V(bVar.j().d());
        bVar.u(this);
    }
}
