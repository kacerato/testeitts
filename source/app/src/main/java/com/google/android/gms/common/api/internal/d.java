package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2323h;
import D0.C2436c;
import D0.C2441e0;
import D0.C2459n0;
import D0.C2461o0;
import D0.C2466r0;
import D0.C2468s0;
import D0.C2477x;
import D0.C2479y;
import D0.InterfaceC2462p;
import D0.M0;
import D0.Q0;
import G0.AbstractC2582o;
import G0.C2559c0;
import G0.C2599x;
import G0.D;
import G0.F;
import G0.H;
import G0.I;
import G0.J;
import T0.C3042l;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import com.google.android.gms.common.api.internal.f;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import sm.InterfaceC15358c;
import v1.AbstractC15790k;
import v1.C15791l;

@F
@C0.a
public class d implements Handler.Callback {

    @NonNull
    public static final Status f61128r = new Status(4, "Sign-out occurred while this API call was in progress.");

    public static final Status f61129s = new Status(4, "The user must be signed in to make this API call.");

    public static final Object f61130t = new Object();

    @Nullable
    @J2.a("lock")
    public static d f61131u;

    @Nullable
    public H f61134e;

    @Nullable
    public J f61135f;

    public final Context f61136g;

    public final C2323h f61137h;

    public final C2559c0 f61138i;

    @InterfaceC15358c
    public final Handler f61145p;

    public volatile boolean f61146q;

    public long f61132c = FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER;

    public boolean f61133d = false;

    public final AtomicInteger f61139j = new AtomicInteger(1);

    public final AtomicInteger f61140k = new AtomicInteger(0);

    public final Map f61141l = new ConcurrentHashMap(5, 0.75f, 1);

    @Nullable
    @J2.a("lock")
    public C2477x f61142m = null;

    @J2.a("lock")
    public final Set f61143n = new ArraySet();

    public final Set f61144o = new ArraySet();

    @C0.a
    public d(Context context, Looper looper, C2323h c2323h) {
        this.f61146q = true;
        this.f61136g = context;
        g1.u uVar = new g1.u(looper, this);
        this.f61145p = uVar;
        this.f61137h = c2323h;
        this.f61138i = new C2559c0(c2323h);
        if (C3042l.a(context)) {
            this.f61146q = false;
        }
        uVar.sendMessage(uVar.obtainMessage(6));
    }

    @C0.a
    public static void a() {
        synchronized (f61130t) {
            try {
                d dVar = f61131u;
                if (dVar != null) {
                    dVar.f61140k.incrementAndGet();
                    Handler handler = dVar.f61145p;
                    handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Status g(C2436c c2436c, C2318c c2318c) {
        return new Status(c2318c, "API: " + c2436c.b() + " is not available on this device. Connection failed with: " + String.valueOf(c2318c));
    }

    @NonNull
    public static d u() {
        d dVar;
        synchronized (f61130t) {
            G0.A.s(f61131u, "Must guarantee manager is non-null before using getInstance");
            dVar = f61131u;
        }
        return dVar;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public static d v(@NonNull Context context) {
        d dVar;
        synchronized (f61130t) {
            try {
                if (f61131u == null) {
                    f61131u = new d(context.getApplicationContext(), AbstractC2582o.f().getLooper(), C2323h.x());
                }
                dVar = f61131u;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVar;
    }

    @NonNull
    public final AbstractC15790k A(@NonNull AbstractC11907k abstractC11907k, @NonNull f.a aVar, int i10) {
        C15791l c15791l = new C15791l();
        k(c15791l, i10, abstractC11907k);
        this.f61145p.sendMessage(this.f61145p.obtainMessage(13, new C2466r0(new C(aVar, c15791l), this.f61140k.get(), abstractC11907k)));
        return c15791l.a();
    }

    public final void F(@NonNull AbstractC11907k abstractC11907k, int i10, @NonNull C11904b.a aVar) {
        this.f61145p.sendMessage(this.f61145p.obtainMessage(4, new C2466r0(new A(i10, aVar), this.f61140k.get(), abstractC11907k)));
    }

    public final void G(@NonNull AbstractC11907k abstractC11907k, int i10, @NonNull D0.r rVar, @NonNull C15791l c15791l, @NonNull InterfaceC2462p interfaceC2462p) {
        k(c15791l, rVar.d(), abstractC11907k);
        this.f61145p.sendMessage(this.f61145p.obtainMessage(4, new C2466r0(new M0(i10, rVar, c15791l, interfaceC2462p), this.f61140k.get(), abstractC11907k)));
    }

    public final void H(C2599x c2599x, int i10, long j10, int i11) {
        this.f61145p.sendMessage(this.f61145p.obtainMessage(18, new C2461o0(c2599x, i10, j10, i11)));
    }

    public final void I(@NonNull C2318c c2318c, int i10) {
        if (f(c2318c, i10)) {
            return;
        }
        Handler handler = this.f61145p;
        handler.sendMessage(handler.obtainMessage(5, i10, 0, c2318c));
    }

    public final void J() {
        Handler handler = this.f61145p;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void K(@NonNull AbstractC11907k abstractC11907k) {
        Handler handler = this.f61145p;
        handler.sendMessage(handler.obtainMessage(7, abstractC11907k));
    }

    public final void b(@NonNull C2477x c2477x) {
        synchronized (f61130t) {
            try {
                if (this.f61142m != c2477x) {
                    this.f61142m = c2477x;
                    this.f61143n.clear();
                }
                this.f61143n.addAll(c2477x.u());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c(@NonNull C2477x c2477x) {
        synchronized (f61130t) {
            try {
                if (this.f61142m == c2477x) {
                    this.f61142m = null;
                    this.f61143n.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @WorkerThread
    public final boolean e() {
        if (this.f61133d) {
            return false;
        }
        D a10 = G0.C.b().a();
        if (a10 != null && !a10.b0()) {
            return false;
        }
        int a11 = this.f61138i.a(this.f61136g, 203400000);
        return a11 == -1 || a11 == 0;
    }

    @ResultIgnorabilityUnspecified
    public final boolean f(C2318c c2318c, int i10) {
        return this.f61137h.M(this.f61136g, c2318c, i10);
    }

    @ResultIgnorabilityUnspecified
    @WorkerThread
    public final u h(AbstractC11907k abstractC11907k) {
        Map map = this.f61141l;
        C2436c G10 = abstractC11907k.G();
        u uVar = (u) map.get(G10);
        if (uVar == null) {
            uVar = new u(this, abstractC11907k);
            this.f61141l.put(G10, uVar);
        }
        if (uVar.a()) {
            this.f61144o.add(G10);
        }
        uVar.F();
        return uVar;
    }

    @Override
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        int i10 = message.what;
        u uVar = null;
        switch (i10) {
            case 1:
                this.f61132c = true == ((Boolean) message.obj).booleanValue() ? FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER : 300000L;
                this.f61145p.removeMessages(12);
                for (C2436c c2436c : this.f61141l.o()) {
                    Handler handler = this.f61145p;
                    handler.sendMessageDelayed(handler.obtainMessage(12, c2436c), this.f61132c);
                }
                return true;
            case 2:
                Q0 q02 = (Q0) message.obj;
                Iterator it = q02.b().iterator();
                while (true) {
                    if (it.hasNext()) {
                        C2436c c2436c2 = (C2436c) it.next();
                        u uVar2 = (u) this.f61141l.get(c2436c2);
                        if (uVar2 == null) {
                            q02.c(c2436c2, new C2318c(13), null);
                        } else if (uVar2.Q()) {
                            q02.c(c2436c2, C2318c.f1201E, uVar2.w().n());
                        } else {
                            C2318c u10 = uVar2.u();
                            if (u10 != null) {
                                q02.c(c2436c2, u10, null);
                            } else {
                                uVar2.K(q02);
                                uVar2.F();
                            }
                        }
                    }
                }
                return true;
            case 3:
                for (u uVar3 : this.f61141l.values()) {
                    uVar3.E();
                    uVar3.F();
                }
                return true;
            case 4:
            case 8:
            case 13:
                C2466r0 c2466r0 = (C2466r0) message.obj;
                u uVar4 = (u) this.f61141l.get(c2466r0.f4705c.G());
                if (uVar4 == null) {
                    uVar4 = h(c2466r0.f4705c);
                }
                if (!uVar4.a() || this.f61140k.get() == c2466r0.f4704b) {
                    uVar4.G(c2466r0.f4703a);
                } else {
                    c2466r0.f4703a.a(f61128r);
                    uVar4.M();
                }
                return true;
            case 5:
                int i11 = message.arg1;
                C2318c c2318c = (C2318c) message.obj;
                Iterator it2 = this.f61141l.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        u uVar5 = (u) it2.next();
                        if (uVar5.r() == i11) {
                            uVar = uVar5;
                        }
                    }
                }
                if (uVar == null) {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i11 + " while trying to fail enqueued calls.", new Exception());
                } else if (c2318c.n() == 13) {
                    u.z(uVar, new Status(17, "Error resolution was canceled by the user, original error message: " + this.f61137h.h(c2318c.n()) + ": " + c2318c.t()));
                } else {
                    u.z(uVar, g(u.x(uVar), c2318c));
                }
                return true;
            case 6:
                if (this.f61136g.getApplicationContext() instanceof Application) {
                    ComponentCallbacks2C11903a.c((Application) this.f61136g.getApplicationContext());
                    ComponentCallbacks2C11903a.b().a(new t(this));
                    if (!ComponentCallbacks2C11903a.b().e(true)) {
                        this.f61132c = 300000L;
                    }
                }
                return true;
            case 7:
                h((AbstractC11907k) message.obj);
                return true;
            case 9:
                if (this.f61141l.containsKey(message.obj)) {
                    ((u) this.f61141l.get(message.obj)).L();
                }
                return true;
            case 10:
                Iterator it3 = this.f61144o.iterator();
                while (it3.hasNext()) {
                    u uVar6 = (u) this.f61141l.remove((C2436c) it3.next());
                    if (uVar6 != null) {
                        uVar6.M();
                    }
                }
                this.f61144o.clear();
                return true;
            case 11:
                if (this.f61141l.containsKey(message.obj)) {
                    ((u) this.f61141l.get(message.obj)).N();
                }
                return true;
            case 12:
                if (this.f61141l.containsKey(message.obj)) {
                    ((u) this.f61141l.get(message.obj)).b();
                }
                return true;
            case 14:
                C2479y c2479y = (C2479y) message.obj;
                C2436c a10 = c2479y.a();
                if (this.f61141l.containsKey(a10)) {
                    c2479y.b().c(Boolean.valueOf(u.P((u) this.f61141l.get(a10), false)));
                } else {
                    c2479y.b().c(Boolean.FALSE);
                }
                return true;
            case 15:
                C2441e0 c2441e0 = (C2441e0) message.obj;
                if (this.f61141l.containsKey(C2441e0.b(c2441e0))) {
                    u.C((u) this.f61141l.get(C2441e0.b(c2441e0)), c2441e0);
                }
                return true;
            case 16:
                C2441e0 c2441e02 = (C2441e0) message.obj;
                if (this.f61141l.containsKey(C2441e0.b(c2441e02))) {
                    u.D((u) this.f61141l.get(C2441e0.b(c2441e02)), c2441e02);
                }
                return true;
            case 17:
                j();
                return true;
            case 18:
                C2461o0 c2461o0 = (C2461o0) message.obj;
                if (c2461o0.f4691c == 0) {
                    i().t(new H(c2461o0.f4690b, Arrays.asList(c2461o0.f4689a)));
                } else {
                    H h10 = this.f61134e;
                    if (h10 != null) {
                        List n10 = h10.n();
                        if (h10.c() != c2461o0.f4690b || (n10 != null && n10.size() >= c2461o0.f4692d)) {
                            this.f61145p.removeMessages(17);
                            j();
                        } else {
                            this.f61134e.p(c2461o0.f4689a);
                        }
                    }
                    if (this.f61134e == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(c2461o0.f4689a);
                        this.f61134e = new H(c2461o0.f4690b, arrayList);
                        Handler handler2 = this.f61145p;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), c2461o0.f4691c);
                    }
                }
                return true;
            case 19:
                this.f61133d = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i10);
                return false;
        }
    }

    @WorkerThread
    public final J i() {
        if (this.f61135f == null) {
            this.f61135f = I.a(this.f61136g);
        }
        return this.f61135f;
    }

    @WorkerThread
    public final void j() {
        H h10 = this.f61134e;
        if (h10 != null) {
            if (h10.c() > 0 || e()) {
                i().t(h10);
            }
            this.f61134e = null;
        }
    }

    public final void k(C15791l c15791l, int i10, AbstractC11907k abstractC11907k) {
        C2459n0 b10;
        if (i10 == 0 || (b10 = C2459n0.b(this, i10, abstractC11907k.G())) == null) {
            return;
        }
        AbstractC15790k a10 = c15791l.a();
        final Handler handler = this.f61145p;
        handler.getClass();
        a10.e(new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                Handler.this.post(runnable);
            }
        }, b10);
    }

    public final int l() {
        return this.f61139j.getAndIncrement();
    }

    @Nullable
    public final u t(C2436c c2436c) {
        return (u) this.f61141l.get(c2436c);
    }

    @NonNull
    public final AbstractC15790k x(@NonNull Iterable iterable) {
        Q0 q02 = new Q0(iterable);
        this.f61145p.sendMessage(this.f61145p.obtainMessage(2, q02));
        return q02.a();
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public final AbstractC15790k y(@NonNull AbstractC11907k abstractC11907k) {
        C2479y c2479y = new C2479y(abstractC11907k.G());
        this.f61145p.sendMessage(this.f61145p.obtainMessage(14, c2479y));
        return c2479y.b().a();
    }

    @NonNull
    public final AbstractC15790k z(@NonNull AbstractC11907k abstractC11907k, @NonNull h hVar, @NonNull k kVar, @NonNull Runnable runnable) {
        C15791l c15791l = new C15791l();
        k(c15791l, hVar.e(), abstractC11907k);
        this.f61145p.sendMessage(this.f61145p.obtainMessage(8, new C2466r0(new B(new C2468s0(hVar, kVar, runnable), c15791l), this.f61140k.get(), abstractC11907k)));
        return c15791l.a();
    }
}
