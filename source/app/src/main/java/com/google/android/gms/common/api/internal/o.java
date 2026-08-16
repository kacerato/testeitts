package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2324i;
import D0.F;
import D0.G;
import D0.J;
import D0.K;
import D0.X;
import G0.C2570i;
import G0.C2579m0;
import G0.S;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.C11904b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public final class o implements r {

    public final s f61186a;

    public final Lock f61187b;

    public final Context f61188c;

    public final C2324i f61189d;

    @Nullable
    public C2318c f61190e;

    public int f61191f;

    public int f61193h;

    @Nullable
    public s1.f f61196k;

    public boolean f61197l;

    public boolean f61198m;

    public boolean f61199n;

    @Nullable
    public G0.r f61200o;

    public boolean f61201p;

    public boolean f61202q;

    @Nullable
    public final C2570i f61203r;

    public final Map f61204s;

    @Nullable
    public final C11894a.AbstractC0948a f61205t;

    public int f61192g = 0;

    public final Bundle f61194i = new Bundle();

    public final Set f61195j = new HashSet();

    public final ArrayList f61206u = new ArrayList();

    public o(s sVar, @Nullable C2570i c2570i, Map map, C2324i c2324i, @Nullable C11894a.AbstractC0948a abstractC0948a, Lock lock, Context context) {
        this.f61186a = sVar;
        this.f61203r = c2570i;
        this.f61204s = map;
        this.f61189d = c2324i;
        this.f61205t = abstractC0948a;
        this.f61187b = lock;
        this.f61188c = context;
    }

    public static void B(o oVar, t1.l lVar) {
        if (oVar.o(0)) {
            C2318c n10 = lVar.n();
            if (!n10.u0()) {
                if (!oVar.q(n10)) {
                    oVar.l(n10);
                    return;
                } else {
                    oVar.i();
                    oVar.n();
                    return;
                }
            }
            C2579m0 c2579m0 = (C2579m0) G0.A.r(lVar.t());
            C2318c n11 = c2579m0.n();
            if (!n11.u0()) {
                String valueOf = String.valueOf(n11);
                Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                oVar.l(n11);
                return;
            }
            oVar.f61199n = true;
            oVar.f61200o = (G0.r) G0.A.r(c2579m0.t());
            oVar.f61201p = c2579m0.b0();
            oVar.f61202q = c2579m0.n0();
            oVar.n();
        }
    }

    public static final String r(int i10) {
        return i10 != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    public static Set y(o oVar) {
        C2570i c2570i = oVar.f61203r;
        if (c2570i == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(c2570i.i());
        Map n10 = oVar.f61203r.n();
        for (C11894a c11894a : n10.o()) {
            s sVar = oVar.f61186a;
            if (!sVar.f61238k.containsKey(c11894a.b())) {
                hashSet.addAll(((S) n10.get(c11894a)).f7315a);
            }
        }
        return hashSet;
    }

    public final void J() {
        ArrayList arrayList = this.f61206u;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((Future) arrayList.get(i10)).cancel(true);
        }
        this.f61206u.clear();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.common.api.a$f, s1.f] */
    @Override
    @J2.a("lock")
    public final void a() {
        this.f61186a.f61238k.clear();
        this.f61198m = false;
        J j10 = null;
        this.f61190e = null;
        this.f61192g = 0;
        this.f61197l = true;
        this.f61199n = false;
        this.f61201p = false;
        HashMap hashMap = new HashMap();
        boolean z10 = false;
        for (C11894a c11894a : this.f61204s.o()) {
            C11894a.f fVar = (C11894a.f) G0.A.r((C11894a.f) this.f61186a.f61237j.get(c11894a.b()));
            z10 |= c11894a.c().b() == 1;
            boolean booleanValue = ((Boolean) this.f61204s.get(c11894a)).booleanValue();
            if (fVar.g()) {
                this.f61198m = true;
                if (booleanValue) {
                    this.f61195j.add(c11894a.b());
                } else {
                    this.f61197l = false;
                }
            }
            hashMap.put(fVar, new D0.C(this, c11894a, booleanValue));
        }
        if (z10) {
            this.f61198m = false;
        }
        if (this.f61198m) {
            G0.A.r(this.f61203r);
            G0.A.r(this.f61205t);
            this.f61203r.o(Integer.valueOf(System.identityHashCode(this.f61186a.f61245r)));
            K k10 = new K(this, j10);
            C11894a.AbstractC0948a abstractC0948a = this.f61205t;
            Context context = this.f61188c;
            s sVar = this.f61186a;
            C2570i c2570i = this.f61203r;
            this.f61196k = abstractC0948a.d(context, sVar.f61245r.r(), c2570i, c2570i.k(), k10, k10);
        }
        this.f61193h = this.f61186a.f61237j.size();
        this.f61206u.add(X.a().submit(new F(this, hashMap)));
    }

    @Override
    public final void b() {
    }

    @Override
    @J2.a("lock")
    public final void c(C2318c c2318c, C11894a c11894a, boolean z10) {
        if (o(1)) {
            m(c2318c, c11894a, z10);
            if (p()) {
                k();
            }
        }
    }

    @Override
    @J2.a("lock")
    public final void d(int i10) {
        l(new C2318c(8, null));
    }

    @Override
    public final C11904b.a e(C11904b.a aVar) {
        this.f61186a.f61245r.f61216k.add(aVar);
        return aVar;
    }

    @Override
    @J2.a("lock")
    public final boolean f() {
        J();
        j(true);
        this.f61186a.t(null);
        return true;
    }

    @Override
    public final C11904b.a g(C11904b.a aVar) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override
    @J2.a("lock")
    public final void h(@Nullable Bundle bundle) {
        if (o(1)) {
            if (bundle != null) {
                this.f61194i.putAll(bundle);
            }
            if (p()) {
                k();
            }
        }
    }

    @J2.a("lock")
    public final void i() {
        this.f61198m = false;
        this.f61186a.f61245r.f61224s = Collections.emptySet();
        for (C11894a.c cVar : this.f61195j) {
            if (!this.f61186a.f61238k.containsKey(cVar)) {
                s sVar = this.f61186a;
                sVar.f61238k.put(cVar, new C2318c(17, null));
            }
        }
    }

    @J2.a("lock")
    public final void j(boolean z10) {
        s1.f fVar = this.f61196k;
        if (fVar != null) {
            if (fVar.isConnected() && z10) {
                fVar.c();
            }
            fVar.j();
            this.f61200o = null;
        }
    }

    @J2.a("lock")
    public final void k() {
        this.f61186a.c();
        X.a().execute(new D0.B(this));
        s1.f fVar = this.f61196k;
        if (fVar != null) {
            if (this.f61201p) {
                fVar.u((G0.r) G0.A.r(this.f61200o), this.f61202q);
            }
            j(false);
        }
        Iterator it = this.f61186a.f61238k.o().iterator();
        while (it.hasNext()) {
            ((C11894a.f) G0.A.r((C11894a.f) this.f61186a.f61237j.get((C11894a.c) it.next()))).j();
        }
        this.f61186a.f61246s.c(this.f61194i.isEmpty() ? null : this.f61194i);
    }

    @J2.a("lock")
    public final void l(C2318c c2318c) {
        J();
        j(!c2318c.n0());
        this.f61186a.t(c2318c);
        this.f61186a.f61246s.b(c2318c);
    }

    @J2.a("lock")
    public final void m(C2318c c2318c, C11894a c11894a, boolean z10) {
        int b10 = c11894a.c().b();
        if ((!z10 || c2318c.n0() || this.f61189d.d(c2318c.n()) != null) && (this.f61190e == null || b10 < this.f61191f)) {
            this.f61190e = c2318c;
            this.f61191f = b10;
        }
        s sVar = this.f61186a;
        sVar.f61238k.put(c11894a.b(), c2318c);
    }

    @J2.a("lock")
    public final void n() {
        if (this.f61193h != 0) {
            return;
        }
        if (!this.f61198m || this.f61199n) {
            ArrayList arrayList = new ArrayList();
            this.f61192g = 1;
            this.f61193h = this.f61186a.f61237j.size();
            for (C11894a.c cVar : this.f61186a.f61237j.o()) {
                if (!this.f61186a.f61238k.containsKey(cVar)) {
                    arrayList.add((C11894a.f) this.f61186a.f61237j.get(cVar));
                } else if (p()) {
                    k();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f61206u.add(X.a().submit(new G(this, arrayList)));
        }
    }

    @J2.a("lock")
    public final boolean o(int i10) {
        if (this.f61192g == i10) {
            return true;
        }
        Log.w("GACConnecting", this.f61186a.f61245r.M());
        Log.w("GACConnecting", "Unexpected callback in ".concat(toString()));
        Log.w("GACConnecting", "mRemainingConnections=" + this.f61193h);
        Log.e("GACConnecting", "GoogleApiClient connecting is in step " + r(this.f61192g) + " but received callback for step " + r(i10), new Exception());
        l(new C2318c(8, null));
        return false;
    }

    @J2.a("lock")
    public final boolean p() {
        int i10 = this.f61193h - 1;
        this.f61193h = i10;
        if (i10 > 0) {
            return false;
        }
        if (i10 < 0) {
            Log.w("GACConnecting", this.f61186a.f61245r.M());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            l(new C2318c(8, null));
            return false;
        }
        C2318c c2318c = this.f61190e;
        if (c2318c == null) {
            return true;
        }
        this.f61186a.f61244q = this.f61191f;
        l(c2318c);
        return false;
    }

    @J2.a("lock")
    public final boolean q(C2318c c2318c) {
        return this.f61197l && !c2318c.n0();
    }
}
