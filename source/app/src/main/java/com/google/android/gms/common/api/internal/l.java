package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2324i;
import D0.InterfaceC2460o;
import D0.Y0;
import D0.a1;
import D0.c1;
import D0.e1;
import G0.C2570i;
import G0.C2601y;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

public final class l implements x {

    public final Context f61169e;

    public final q f61170f;

    public final Looper f61171g;

    public final s f61172h;

    public final s f61173i;

    public final Map f61174j;

    @Nullable
    public final C11894a.f f61176l;

    @Nullable
    public Bundle f61177m;

    public final Lock f61181q;

    public final Set f61175k = Collections.newSetFromMap(new WeakHashMap());

    @Nullable
    public C2318c f61178n = null;

    @Nullable
    public C2318c f61179o = null;

    public boolean f61180p = false;

    @J2.a("lock")
    public int f61182r = 0;

    public l(Context context, q qVar, Lock lock, Looper looper, C2324i c2324i, Map map, Map map2, C2570i c2570i, C11894a.AbstractC0948a abstractC0948a, @Nullable C11894a.f fVar, ArrayList arrayList, ArrayList arrayList2, Map map3, Map map4) {
        this.f61169e = context;
        this.f61170f = qVar;
        this.f61181q = lock;
        this.f61171g = looper;
        this.f61176l = fVar;
        this.f61172h = new s(context, qVar, lock, looper, c2324i, map2, null, map4, null, arrayList2, new c1(this, null));
        this.f61173i = new s(context, qVar, lock, looper, c2324i, map, c2570i, map3, abstractC0948a, arrayList, new e1(this, null));
        ArrayMap arrayMap = new ArrayMap();
        Iterator it = map2.o().iterator();
        while (it.hasNext()) {
            arrayMap.put((C11894a.c) it.next(), this.f61172h);
        }
        Iterator it2 = map.o().iterator();
        while (it2.hasNext()) {
            arrayMap.put((C11894a.c) it2.next(), this.f61173i);
        }
        this.f61174j = Collections.unmodifiableMap(arrayMap);
    }

    public static void A(l lVar, int i10, boolean z10) {
        lVar.f61170f.a(i10, z10);
        lVar.f61179o = null;
        lVar.f61178n = null;
    }

    public static void B(l lVar, Bundle bundle) {
        Bundle bundle2 = lVar.f61177m;
        if (bundle2 == null) {
            lVar.f61177m = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    public static void C(l lVar) {
        C2318c c2318c;
        if (!k(lVar.f61178n)) {
            if (lVar.f61178n != null && k(lVar.f61179o)) {
                lVar.f61173i.m();
                lVar.a((C2318c) G0.A.r(lVar.f61178n));
                return;
            }
            C2318c c2318c2 = lVar.f61178n;
            if (c2318c2 == null || (c2318c = lVar.f61179o) == null) {
                return;
            }
            if (lVar.f61173i.f61244q < lVar.f61172h.f61244q) {
                c2318c2 = c2318c;
            }
            lVar.a(c2318c2);
            return;
        }
        if (!k(lVar.f61179o) && !lVar.c()) {
            C2318c c2318c3 = lVar.f61179o;
            if (c2318c3 != null) {
                if (lVar.f61182r == 1) {
                    lVar.b();
                    return;
                } else {
                    lVar.a(c2318c3);
                    lVar.f61172h.m();
                    return;
                }
            }
            return;
        }
        int i10 = lVar.f61182r;
        if (i10 != 1) {
            if (i10 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                lVar.f61182r = 0;
            }
            ((q) G0.A.r(lVar.f61170f)).c(lVar.f61177m);
        }
        lVar.b();
        lVar.f61182r = 0;
    }

    public static boolean k(@Nullable C2318c c2318c) {
        return c2318c != null && c2318c.u0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static l t(Context context, q qVar, Lock lock, Looper looper, C2324i c2324i, Map map, C2570i c2570i, Map map2, C11894a.AbstractC0948a abstractC0948a, ArrayList arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        C11894a.f fVar = null;
        for (Map.Entry entry : map.entrySet()) {
            C11894a.f fVar2 = (C11894a.f) entry.getValue();
            if (true == fVar2.b()) {
                fVar = fVar2;
            }
            if (fVar2.g()) {
                arrayMap.put((C11894a.c) entry.getKey(), fVar2);
            } else {
                arrayMap2.put((C11894a.c) entry.getKey(), fVar2);
            }
        }
        G0.A.y(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (C11894a c11894a : map2.o()) {
            C11894a.c b10 = c11894a.b();
            if (arrayMap.containsKey(b10)) {
                arrayMap3.put(c11894a, (Boolean) map2.get(c11894a));
            } else {
                if (!arrayMap2.containsKey(b10)) {
                    throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                }
                arrayMap4.put(c11894a, (Boolean) map2.get(c11894a));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Y0 y02 = (Y0) arrayList.get(i10);
            if (arrayMap3.containsKey(y02.f4621e)) {
                arrayList2.add(y02);
            } else {
                if (!arrayMap4.containsKey(y02.f4621e)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                }
                arrayList3.add(y02);
            }
        }
        return new l(context, qVar, lock, looper, c2324i, arrayMap, arrayMap2, c2570i, abstractC0948a, fVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    @Nullable
    public final PendingIntent E() {
        C11894a.f fVar = this.f61176l;
        if (fVar == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f61169e, System.identityHashCode(this.f61170f), fVar.m(), g1.p.f88026a | 134217728);
    }

    @J2.a("lock")
    public final void a(C2318c c2318c) {
        int i10 = this.f61182r;
        if (i10 != 1) {
            if (i10 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f61182r = 0;
            }
            this.f61170f.b(c2318c);
        }
        b();
        this.f61182r = 0;
    }

    @J2.a("lock")
    public final void b() {
        Iterator it = this.f61175k.iterator();
        while (it.hasNext()) {
            ((InterfaceC2460o) it.next()).a();
        }
        this.f61175k.clear();
    }

    @J2.a("lock")
    public final boolean c() {
        C2318c c2318c = this.f61179o;
        return c2318c != null && c2318c.n() == 4;
    }

    @Override
    @J2.a("lock")
    public final C2318c d() {
        throw new UnsupportedOperationException();
    }

    @Override
    @J2.a("lock")
    public final C11904b.a e(@NonNull C11904b.a aVar) {
        if (!h(aVar)) {
            this.f61172h.e(aVar);
            return aVar;
        }
        if (c()) {
            aVar.b(new Status(4, (String) null, E()));
            return aVar;
        }
        this.f61173i.e(aVar);
        return aVar;
    }

    @Override
    @J2.a("lock")
    public final C11904b.a f(@NonNull C11904b.a aVar) {
        if (!h(aVar)) {
            return this.f61172h.f(aVar);
        }
        if (!c()) {
            return this.f61173i.f(aVar);
        }
        aVar.b(new Status(4, (String) null, E()));
        return aVar;
    }

    @Override
    public final boolean g(InterfaceC2460o interfaceC2460o) {
        this.f61181q.lock();
        try {
            boolean z10 = false;
            if (!p()) {
                if (r()) {
                }
                this.f61181q.unlock();
                return z10;
            }
            if (!this.f61173i.r()) {
                this.f61175k.add(interfaceC2460o);
                z10 = true;
                if (this.f61182r == 0) {
                    this.f61182r = 1;
                }
                this.f61179o = null;
                this.f61173i.i();
            }
            this.f61181q.unlock();
            return z10;
        } catch (Throwable th2) {
            this.f61181q.unlock();
            throw th2;
        }
    }

    public final boolean h(C11904b.a aVar) {
        s sVar = (s) this.f61174j.get(aVar.y());
        G0.A.s(sVar, "GoogleApiClient is not configured to use the API required for this call.");
        return sVar.equals(this.f61173i);
    }

    @Override
    @J2.a("lock")
    public final void i() {
        this.f61182r = 2;
        this.f61180p = false;
        this.f61179o = null;
        this.f61178n = null;
        this.f61172h.i();
        this.f61173i.i();
    }

    @Override
    @J2.a("lock")
    public final void j() {
        this.f61172h.j();
        this.f61173i.j();
    }

    @Override
    public final void l() {
        this.f61181q.lock();
        try {
            boolean p10 = p();
            this.f61173i.m();
            this.f61179o = new C2318c(4);
            if (p10) {
                new g1.u(this.f61171g).post(new a1(this));
            } else {
                b();
            }
            this.f61181q.unlock();
        } catch (Throwable th2) {
            this.f61181q.unlock();
            throw th2;
        }
    }

    @Override
    @J2.a("lock")
    public final void m() {
        this.f61179o = null;
        this.f61178n = null;
        this.f61182r = 0;
        this.f61172h.m();
        this.f61173i.m();
        b();
    }

    @Override
    public final void n(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(b3.s.f32937c);
        this.f61173i.n(String.valueOf(str).concat(GlideException.a.f59088e), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(b3.s.f32937c);
        this.f61172h.n(String.valueOf(str).concat(GlideException.a.f59088e), fileDescriptor, printWriter, strArr);
    }

    @Override
    @Nullable
    @J2.a("lock")
    public final C2318c o(@NonNull C11894a c11894a) {
        return C2601y.b(this.f61174j.get(c11894a.b()), this.f61173i) ? c() ? new C2318c(4, E()) : this.f61173i.o(c11894a) : this.f61172h.o(c11894a);
    }

    @Override
    public final boolean p() {
        this.f61181q.lock();
        try {
            return this.f61182r == 2;
        } finally {
            this.f61181q.unlock();
        }
    }

    @Override
    @J2.a("lock")
    public final C2318c q(long j10, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r3.f61182r == 1) goto L11;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean r() {
        this.f61181q.lock();
        try {
            boolean z10 = false;
            if (this.f61172h.r()) {
                if (!this.f61173i.r() && !c()) {
                }
                z10 = true;
            }
            return z10;
        } finally {
            this.f61181q.unlock();
        }
    }
}
