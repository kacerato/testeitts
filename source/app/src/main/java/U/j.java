package U;

import V.o;
import V.p;
import Y.m;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.engine.t;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public final class j<R> implements d, o, i {

    public static final String f25618E = "Glide";

    @GuardedBy("requestLock")
    public int f25620A;

    @GuardedBy("requestLock")
    public boolean f25621B;

    @Nullable
    public RuntimeException f25622C;

    @Nullable
    public final String f25623a;

    public final Z.c f25624b;

    public final Object f25625c;

    @Nullable
    public final g<R> f25626d;

    public final e f25627e;

    public final Context f25628f;

    public final com.bumptech.glide.d f25629g;

    @Nullable
    public final Object f25630h;

    public final Class<R> f25631i;

    public final U.a<?> f25632j;

    public final int f25633k;

    public final int f25634l;

    public final com.bumptech.glide.h f25635m;

    public final p<R> f25636n;

    @Nullable
    public final List<g<R>> f25637o;

    public final W.g<? super R> f25638p;

    public final Executor f25639q;

    @GuardedBy("requestLock")
    public t<R> f25640r;

    @GuardedBy("requestLock")
    public j.d f25641s;

    @GuardedBy("requestLock")
    public long f25642t;

    public volatile com.bumptech.glide.load.engine.j f25643u;

    @GuardedBy("requestLock")
    public a f25644v;

    @Nullable
    @GuardedBy("requestLock")
    public Drawable f25645w;

    @Nullable
    @GuardedBy("requestLock")
    public Drawable f25646x;

    @Nullable
    @GuardedBy("requestLock")
    public Drawable f25647y;

    @GuardedBy("requestLock")
    public int f25648z;

    public static final String f25617D = "Request";

    public static final boolean f25619F = Log.isLoggable(f25617D, 2);

    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public j(Context context, com.bumptech.glide.d dVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, U.a<?> aVar, int i10, int i11, com.bumptech.glide.h hVar, p<R> pVar, @Nullable g<R> gVar, @Nullable List<g<R>> list, e eVar, com.bumptech.glide.load.engine.j jVar, W.g<? super R> gVar2, Executor executor) {
        this.f25623a = f25619F ? String.valueOf(super.hashCode()) : null;
        this.f25624b = Z.c.a();
        this.f25625c = obj;
        this.f25628f = context;
        this.f25629g = dVar;
        this.f25630h = obj2;
        this.f25631i = cls;
        this.f25632j = aVar;
        this.f25633k = i10;
        this.f25634l = i11;
        this.f25635m = hVar;
        this.f25636n = pVar;
        this.f25626d = gVar;
        this.f25637o = list;
        this.f25627e = eVar;
        this.f25643u = jVar;
        this.f25638p = gVar2;
        this.f25639q = executor;
        this.f25644v = a.PENDING;
        if (this.f25622C == null && dVar.i()) {
            this.f25622C = new RuntimeException("Glide request origin trace");
        }
    }

    public static int u(int i10, float f10) {
        return i10 == Integer.MIN_VALUE ? i10 : Math.round(f10 * i10);
    }

    public static <R> j<R> x(Context context, com.bumptech.glide.d dVar, Object obj, Object obj2, Class<R> cls, U.a<?> aVar, int i10, int i11, com.bumptech.glide.h hVar, p<R> pVar, g<R> gVar, @Nullable List<g<R>> list, e eVar, com.bumptech.glide.load.engine.j jVar, W.g<? super R> gVar2, Executor executor) {
        return new j<>(context, dVar, obj, obj2, cls, aVar, i10, i11, hVar, pVar, gVar, list, eVar, jVar, gVar2, executor);
    }

    @GuardedBy("requestLock")
    public final void A() {
        if (l()) {
            Drawable p10 = this.f25630h == null ? p() : null;
            if (p10 == null) {
                p10 = o();
            }
            if (p10 == null) {
                p10 = q();
            }
            this.f25636n.m(p10);
        }
    }

    @Override
    public boolean a() {
        boolean z10;
        synchronized (this.f25625c) {
            z10 = this.f25644v == a.COMPLETE;
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(t<?> tVar, C.a aVar) {
        this.f25624b.c();
        t<?> tVar2 = null;
        try {
            synchronized (this.f25625c) {
                try {
                    this.f25641s = null;
                    if (tVar == null) {
                        c(new GlideException("Expected to receive a Resource<R> with an object of " + ((Object) this.f25631i) + " inside, but instead got null."));
                        return;
                    }
                    Object obj = tVar.get();
                    try {
                        if (obj != null && this.f25631i.isAssignableFrom(obj.getClass())) {
                            if (m()) {
                                z(tVar, obj, aVar);
                                return;
                            }
                            this.f25640r = null;
                            this.f25644v = a.COMPLETE;
                            this.f25643u.l(tVar);
                            return;
                        }
                        this.f25640r = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append((Object) this.f25631i);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append((Object) tVar);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        c(new GlideException(sb2.toString()));
                        this.f25643u.l(tVar);
                    } catch (Throwable th2) {
                        tVar2 = tVar;
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            if (tVar2 != null) {
                this.f25643u.l(tVar2);
            }
            throw th4;
        }
    }

    @Override
    public void c(GlideException glideException) {
        y(glideException, 5);
    }

    @Override
    public void clear() {
        synchronized (this.f25625c) {
            try {
                i();
                this.f25624b.c();
                a aVar = this.f25644v;
                a aVar2 = a.CLEARED;
                if (aVar == aVar2) {
                    return;
                }
                n();
                t<R> tVar = this.f25640r;
                if (tVar != null) {
                    this.f25640r = null;
                } else {
                    tVar = null;
                }
                if (k()) {
                    this.f25636n.f(q());
                }
                this.f25644v = aVar2;
                if (tVar != null) {
                    this.f25643u.l(tVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void d(int i10, int i11) {
        Object obj;
        this.f25624b.c();
        Object obj2 = this.f25625c;
        synchronized (obj2) {
            try {
                try {
                    boolean z10 = f25619F;
                    if (z10) {
                        t("Got onSizeReady in " + Y.g.a(this.f25642t));
                    }
                    if (this.f25644v == a.WAITING_FOR_SIZE) {
                        a aVar = a.RUNNING;
                        this.f25644v = aVar;
                        float P10 = this.f25632j.P();
                        this.f25648z = u(i10, P10);
                        this.f25620A = u(i11, P10);
                        if (z10) {
                            t("finished setup for calling load in " + Y.g.a(this.f25642t));
                        }
                        obj = obj2;
                        try {
                            this.f25641s = this.f25643u.g(this.f25629g, this.f25630h, this.f25632j.O(), this.f25648z, this.f25620A, this.f25632j.N(), this.f25631i, this.f25635m, this.f25632j.B(), this.f25632j.R(), this.f25632j.g0(), this.f25632j.Z(), this.f25632j.H(), this.f25632j.X(), this.f25632j.T(), this.f25632j.S(), this.f25632j.G(), this, this.f25639q);
                            if (this.f25644v != aVar) {
                                this.f25641s = null;
                            }
                            if (z10) {
                                t("finished onSizeReady in " + Y.g.a(this.f25642t));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    @Override
    public boolean e() {
        boolean z10;
        synchronized (this.f25625c) {
            z10 = this.f25644v == a.CLEARED;
        }
        return z10;
    }

    @Override
    public boolean f() {
        boolean z10;
        synchronized (this.f25625c) {
            z10 = this.f25644v == a.COMPLETE;
        }
        return z10;
    }

    @Override
    public Object g() {
        this.f25624b.c();
        return this.f25625c;
    }

    @Override
    public boolean h(d dVar) {
        int i10;
        int i11;
        Object obj;
        Class<R> cls;
        U.a<?> aVar;
        com.bumptech.glide.h hVar;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class<R> cls2;
        U.a<?> aVar2;
        com.bumptech.glide.h hVar2;
        int size2;
        if (!(dVar instanceof j)) {
            return false;
        }
        synchronized (this.f25625c) {
            try {
                i10 = this.f25633k;
                i11 = this.f25634l;
                obj = this.f25630h;
                cls = this.f25631i;
                aVar = this.f25632j;
                hVar = this.f25635m;
                List<g<R>> list = this.f25637o;
                size = list != null ? list.size() : 0;
            } finally {
            }
        }
        j jVar = (j) dVar;
        synchronized (jVar.f25625c) {
            try {
                i12 = jVar.f25633k;
                i13 = jVar.f25634l;
                obj2 = jVar.f25630h;
                cls2 = jVar.f25631i;
                aVar2 = jVar.f25632j;
                hVar2 = jVar.f25635m;
                List<g<R>> list2 = jVar.f25637o;
                size2 = list2 != null ? list2.size() : 0;
            } finally {
            }
        }
        return i10 == i12 && i11 == i13 && m.c(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && hVar == hVar2 && size == size2;
    }

    @GuardedBy("requestLock")
    public final void i() {
        if (this.f25621B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @Override
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f25625c) {
            try {
                a aVar = this.f25644v;
                z10 = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public void j() {
        synchronized (this.f25625c) {
            try {
                i();
                this.f25624b.c();
                this.f25642t = Y.g.b();
                if (this.f25630h == null) {
                    if (m.v(this.f25633k, this.f25634l)) {
                        this.f25648z = this.f25633k;
                        this.f25620A = this.f25634l;
                    }
                    y(new GlideException("Received null model"), p() == null ? 5 : 3);
                    return;
                }
                a aVar = this.f25644v;
                a aVar2 = a.RUNNING;
                if (aVar == aVar2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (aVar == a.COMPLETE) {
                    b(this.f25640r, C.a.MEMORY_CACHE);
                    return;
                }
                a aVar3 = a.WAITING_FOR_SIZE;
                this.f25644v = aVar3;
                if (m.v(this.f25633k, this.f25634l)) {
                    d(this.f25633k, this.f25634l);
                } else {
                    this.f25636n.i(this);
                }
                a aVar4 = this.f25644v;
                if ((aVar4 == aVar2 || aVar4 == aVar3) && l()) {
                    this.f25636n.k(q());
                }
                if (f25619F) {
                    t("finished run method in " + Y.g.a(this.f25642t));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("requestLock")
    public final boolean k() {
        e eVar = this.f25627e;
        return eVar == null || eVar.c(this);
    }

    @GuardedBy("requestLock")
    public final boolean l() {
        e eVar = this.f25627e;
        return eVar == null || eVar.b(this);
    }

    @GuardedBy("requestLock")
    public final boolean m() {
        e eVar = this.f25627e;
        return eVar == null || eVar.g(this);
    }

    @GuardedBy("requestLock")
    public final void n() {
        i();
        this.f25624b.c();
        this.f25636n.a(this);
        j.d dVar = this.f25641s;
        if (dVar != null) {
            dVar.a();
            this.f25641s = null;
        }
    }

    @GuardedBy("requestLock")
    public final Drawable o() {
        if (this.f25645w == null) {
            Drawable D10 = this.f25632j.D();
            this.f25645w = D10;
            if (D10 == null && this.f25632j.C() > 0) {
                this.f25645w = s(this.f25632j.C());
            }
        }
        return this.f25645w;
    }

    @GuardedBy("requestLock")
    public final Drawable p() {
        if (this.f25647y == null) {
            Drawable E10 = this.f25632j.E();
            this.f25647y = E10;
            if (E10 == null && this.f25632j.F() > 0) {
                this.f25647y = s(this.f25632j.F());
            }
        }
        return this.f25647y;
    }

    @Override
    public void pause() {
        synchronized (this.f25625c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("requestLock")
    public final Drawable q() {
        if (this.f25646x == null) {
            Drawable K10 = this.f25632j.K();
            this.f25646x = K10;
            if (K10 == null && this.f25632j.L() > 0) {
                this.f25646x = s(this.f25632j.L());
            }
        }
        return this.f25646x;
    }

    @GuardedBy("requestLock")
    public final boolean r() {
        e eVar = this.f25627e;
        return eVar == null || !eVar.getRoot().a();
    }

    @GuardedBy("requestLock")
    public final Drawable s(@DrawableRes int i10) {
        return N.a.a(this.f25629g, i10, this.f25632j.Q() != null ? this.f25632j.Q() : this.f25628f.getTheme());
    }

    public final void t(String str) {
        Log.v(f25617D, str + " this: " + this.f25623a);
    }

    @GuardedBy("requestLock")
    public final void v() {
        e eVar = this.f25627e;
        if (eVar != null) {
            eVar.d(this);
        }
    }

    @GuardedBy("requestLock")
    public final void w() {
        e eVar = this.f25627e;
        if (eVar != null) {
            eVar.i(this);
        }
    }

    public final void y(GlideException glideException, int i10) {
        boolean z10;
        this.f25624b.c();
        synchronized (this.f25625c) {
            try {
                glideException.setOrigin(this.f25622C);
                int g10 = this.f25629g.g();
                if (g10 <= i10) {
                    Log.w("Glide", "Load failed for " + this.f25630h + " with size [" + this.f25648z + "x" + this.f25620A + "]", glideException);
                    if (g10 <= 4) {
                        glideException.logRootCauses("Glide");
                    }
                }
                this.f25641s = null;
                this.f25644v = a.FAILED;
                boolean z11 = true;
                this.f25621B = true;
                try {
                    List<g<R>> list = this.f25637o;
                    if (list != null) {
                        Iterator<g<R>> it = list.iterator();
                        z10 = false;
                        while (it.hasNext()) {
                            z10 |= it.next().d(glideException, this.f25630h, this.f25636n, r());
                        }
                    } else {
                        z10 = false;
                    }
                    g<R> gVar = this.f25626d;
                    if (gVar == null || !gVar.d(glideException, this.f25630h, this.f25636n, r())) {
                        z11 = false;
                    }
                    if (!(z10 | z11)) {
                        A();
                    }
                    this.f25621B = false;
                    v();
                } catch (Throwable th2) {
                    this.f25621B = false;
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @GuardedBy("requestLock")
    public final void z(t<R> tVar, R r10, C.a aVar) {
        boolean z10;
        boolean r11 = r();
        this.f25644v = a.COMPLETE;
        this.f25640r = tVar;
        if (this.f25629g.g() <= 3) {
            Log.d("Glide", "Finished loading " + r10.getClass().getSimpleName() + " from " + ((Object) aVar) + " for " + this.f25630h + " with size [" + this.f25648z + "x" + this.f25620A + "] in " + Y.g.a(this.f25642t) + " ms");
        }
        boolean z11 = true;
        this.f25621B = true;
        try {
            List<g<R>> list = this.f25637o;
            if (list != null) {
                Iterator<g<R>> it = list.iterator();
                z10 = false;
                while (it.hasNext()) {
                    z10 |= it.next().e(r10, this.f25630h, this.f25636n, aVar, r11);
                }
            } else {
                z10 = false;
            }
            g<R> gVar = this.f25626d;
            if (gVar == null || !gVar.e(r10, this.f25630h, this.f25636n, aVar, r11)) {
                z11 = false;
            }
            if (!(z11 | z10)) {
                this.f25636n.h(r10, this.f25638p.a(aVar, r11));
            }
            this.f25621B = false;
            w();
        } catch (Throwable th2) {
            this.f25621B = false;
            throw th2;
        }
    }
}
