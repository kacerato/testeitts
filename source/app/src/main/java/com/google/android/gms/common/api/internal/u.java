package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2320e;
import B0.C2323h;
import D0.AbstractC2453k0;
import D0.B0;
import D0.C2436c;
import D0.C2437c0;
import D0.C2441e0;
import D0.C2445g0;
import D0.C2468s0;
import D0.C2475w;
import D0.C2477x;
import D0.N0;
import D0.Q0;
import D0.RunnableC2433a0;
import D0.Z;
import D0.Z0;
import G0.C2559c0;
import G0.C2601y;
import T0.C3032b;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.f;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import sm.InterfaceC15358c;
import v1.C15791l;

public final class u implements AbstractC11908l.b, AbstractC11908l.c, Z0 {

    @InterfaceC15358c
    public final C11894a.f f61249f;

    public final C2436c f61250g;

    public final C2475w f61251h;

    public final int f61254k;

    @Nullable
    public final B0 f61255l;

    public boolean f61256m;

    public final d f61260q;

    public final Queue f61248e = new LinkedList();

    public final Set f61252i = new HashSet();

    public final Map f61253j = new HashMap();

    public final List f61257n = new ArrayList();

    @Nullable
    public C2318c f61258o = null;

    public int f61259p = 0;

    @WorkerThread
    public u(d dVar, AbstractC11907k abstractC11907k) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f61260q = dVar;
        handler = dVar.f61145p;
        C11894a.f c02 = abstractC11907k.c0(handler.getLooper(), this);
        this.f61249f = c02;
        this.f61250g = abstractC11907k.G();
        this.f61251h = new C2475w();
        this.f61254k = abstractC11907k.b0();
        if (!c02.g()) {
            this.f61255l = null;
            return;
        }
        context = dVar.f61136g;
        handler2 = dVar.f61145p;
        this.f61255l = abstractC11907k.d0(context, handler2);
    }

    public static void C(u uVar, C2441e0 c2441e0) {
        if (uVar.f61257n.contains(c2441e0) && !uVar.f61256m) {
            if (uVar.f61249f.isConnected()) {
                uVar.g();
            } else {
                uVar.F();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void D(u uVar, C2441e0 c2441e0) {
        Handler handler;
        Handler handler2;
        C2320e c2320e;
        C2320e[] g10;
        if (uVar.f61257n.remove(c2441e0)) {
            handler = uVar.f61260q.f61145p;
            handler.removeMessages(15, c2441e0);
            handler2 = uVar.f61260q.f61145p;
            handler2.removeMessages(16, c2441e0);
            c2320e = c2441e0.f4638b;
            ArrayList arrayList = new ArrayList(uVar.f61248e.size());
            for (N0 n02 : uVar.f61248e) {
                if ((n02 instanceof AbstractC2453k0) && (g10 = ((AbstractC2453k0) n02).g(uVar)) != null && C3032b.d(g10, c2320e)) {
                    arrayList.add(n02);
                }
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                N0 n03 = (N0) arrayList.get(i10);
                uVar.f61248e.remove(n03);
                n03.b(new UnsupportedApiCallException(c2320e));
            }
        }
    }

    public static boolean P(u uVar, boolean z10) {
        return uVar.q(false);
    }

    public static C2436c x(u uVar) {
        return uVar.f61250g;
    }

    public static void z(u uVar, Status status) {
        uVar.e(status);
    }

    @WorkerThread
    public final void E() {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        this.f61258o = null;
    }

    @WorkerThread
    public final void F() {
        Handler handler;
        C2559c0 c2559c0;
        Context context;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if (this.f61249f.isConnected() || this.f61249f.f()) {
            return;
        }
        try {
            d dVar = this.f61260q;
            c2559c0 = dVar.f61138i;
            context = dVar.f61136g;
            int b10 = c2559c0.b(context, this.f61249f);
            if (b10 == 0) {
                d dVar2 = this.f61260q;
                C11894a.f fVar = this.f61249f;
                C2445g0 c2445g0 = new C2445g0(dVar2, fVar, this.f61250g);
                if (fVar.g()) {
                    ((B0) G0.A.r(this.f61255l)).h1(c2445g0);
                }
                try {
                    this.f61249f.s(c2445g0);
                    return;
                } catch (SecurityException e10) {
                    I(new C2318c(10), e10);
                    return;
                }
            }
            C2318c c2318c = new C2318c(b10, null);
            Log.w("GoogleApiManager", "The service for " + this.f61249f.getClass().getName() + " is not available: " + c2318c.toString());
            I(c2318c, null);
        } catch (IllegalStateException e11) {
            I(new C2318c(10), e11);
        }
    }

    @WorkerThread
    public final void G(N0 n02) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if (this.f61249f.isConnected()) {
            if (o(n02)) {
                l();
                return;
            } else {
                this.f61248e.add(n02);
                return;
            }
        }
        this.f61248e.add(n02);
        C2318c c2318c = this.f61258o;
        if (c2318c == null || !c2318c.n0()) {
            F();
        } else {
            I(this.f61258o, null);
        }
    }

    @WorkerThread
    public final void H() {
        this.f61259p++;
    }

    @WorkerThread
    public final void I(@NonNull C2318c c2318c, @Nullable Exception exc) {
        Handler handler;
        C2559c0 c2559c0;
        boolean z10;
        Status g10;
        Status g11;
        Status g12;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        B0 b02 = this.f61255l;
        if (b02 != null) {
            b02.i1();
        }
        E();
        c2559c0 = this.f61260q.f61138i;
        c2559c0.c();
        d(c2318c);
        if ((this.f61249f instanceof J0.q) && c2318c.n() != 24) {
            this.f61260q.f61133d = true;
            d dVar = this.f61260q;
            handler5 = dVar.f61145p;
            handler6 = dVar.f61145p;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (c2318c.n() == 4) {
            status = d.f61129s;
            e(status);
            return;
        }
        if (this.f61248e.isEmpty()) {
            this.f61258o = c2318c;
            return;
        }
        if (exc != null) {
            handler4 = this.f61260q.f61145p;
            G0.A.h(handler4);
            f(null, exc, false);
            return;
        }
        z10 = this.f61260q.f61146q;
        if (!z10) {
            g10 = d.g(this.f61250g, c2318c);
            e(g10);
            return;
        }
        g11 = d.g(this.f61250g, c2318c);
        f(g11, null, true);
        if (this.f61248e.isEmpty() || p(c2318c) || this.f61260q.f(c2318c, this.f61254k)) {
            return;
        }
        if (c2318c.n() == 18) {
            this.f61256m = true;
        }
        if (!this.f61256m) {
            g12 = d.g(this.f61250g, c2318c);
            e(g12);
            return;
        }
        d dVar2 = this.f61260q;
        C2436c c2436c = this.f61250g;
        handler2 = dVar2.f61145p;
        handler3 = dVar2.f61145p;
        handler2.sendMessageDelayed(Message.obtain(handler3, 9, c2436c), 5000L);
    }

    @WorkerThread
    public final void J(@NonNull C2318c c2318c) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        C11894a.f fVar = this.f61249f;
        fVar.e("onSignInFailed for " + fVar.getClass().getName() + " with " + String.valueOf(c2318c));
        I(c2318c, null);
    }

    @WorkerThread
    public final void K(Q0 q02) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        this.f61252i.add(q02);
    }

    @WorkerThread
    public final void L() {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if (this.f61256m) {
            F();
        }
    }

    @WorkerThread
    public final void M() {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        e(d.f61128r);
        this.f61251h.f();
        for (f.a aVar : (f.a[]) this.f61253j.o().toArray(new f.a[0])) {
            G(new C(aVar, new C15791l()));
        }
        d(new C2318c(4));
        if (this.f61249f.isConnected()) {
            this.f61249f.r(new C2437c0(this));
        }
    }

    @WorkerThread
    public final void N() {
        Handler handler;
        C2323h c2323h;
        Context context;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if (this.f61256m) {
            n();
            d dVar = this.f61260q;
            c2323h = dVar.f61137h;
            context = dVar.f61136g;
            e(c2323h.j(context) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f61249f.e("Timing out connection while resuming.");
        }
    }

    public final boolean Q() {
        return this.f61249f.isConnected();
    }

    public final boolean a() {
        return this.f61249f.g();
    }

    @ResultIgnorabilityUnspecified
    @WorkerThread
    public final boolean b() {
        return q(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @WorkerThread
    public final C2320e c(@Nullable C2320e[] c2320eArr) {
        if (c2320eArr != null && c2320eArr.length != 0) {
            C2320e[] v10 = this.f61249f.v();
            if (v10 == null) {
                v10 = new C2320e[0];
            }
            ArrayMap arrayMap = new ArrayMap(v10.length);
            for (C2320e c2320e : v10) {
                arrayMap.put(c2320e.n(), Long.valueOf(c2320e.t()));
            }
            for (C2320e c2320e2 : c2320eArr) {
                Long l10 = (Long) arrayMap.get(c2320e2.n());
                if (l10 == null || l10.longValue() < c2320e2.t()) {
                    return c2320e2;
                }
            }
        }
        return null;
    }

    @WorkerThread
    public final void d(C2318c c2318c) {
        Iterator it = this.f61252i.iterator();
        while (it.hasNext()) {
            ((Q0) it.next()).c(this.f61250g, c2318c, C2601y.b(c2318c, C2318c.f1201E) ? this.f61249f.n() : null);
        }
        this.f61252i.clear();
    }

    @WorkerThread
    public final void e(Status status) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        f(status, null, false);
    }

    @WorkerThread
    public final void f(@Nullable Status status, @Nullable Exception exc, boolean z10) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator<E> it = this.f61248e.iterator();
        while (it.hasNext()) {
            N0 n02 = (N0) it.next();
            if (!z10 || n02.f4584a == 2) {
                if (status != null) {
                    n02.a(status);
                } else {
                    n02.b(exc);
                }
                it.remove();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final void g() {
        ArrayList arrayList = new ArrayList(this.f61248e);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            N0 n02 = (N0) arrayList.get(i10);
            if (!this.f61249f.isConnected()) {
                return;
            }
            if (o(n02)) {
                this.f61248e.remove(n02);
            }
        }
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        d dVar = this.f61260q;
        Looper myLooper = Looper.myLooper();
        handler = dVar.f61145p;
        if (myLooper == handler.getLooper()) {
            i();
        } else {
            handler2 = this.f61260q.f61145p;
            handler2.post(new Z(this));
        }
    }

    @WorkerThread
    public final void i() {
        E();
        d(C2318c.f1201E);
        n();
        Iterator it = this.f61253j.values().iterator();
        while (it.hasNext()) {
            C2468s0 c2468s0 = (C2468s0) it.next();
            if (c(c2468s0.f4706a.c()) != null) {
                it.remove();
            } else {
                try {
                    c2468s0.f4706a.d(this.f61249f, new C15791l<>());
                } catch (DeadObjectException unused) {
                    k(3);
                    this.f61249f.e("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        g();
        l();
    }

    @WorkerThread
    public final void j(int i10) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        C2559c0 c2559c0;
        E();
        this.f61256m = true;
        this.f61251h.e(i10, this.f61249f.w());
        C2436c c2436c = this.f61250g;
        d dVar = this.f61260q;
        handler = dVar.f61145p;
        handler2 = dVar.f61145p;
        handler.sendMessageDelayed(Message.obtain(handler2, 9, c2436c), 5000L);
        C2436c c2436c2 = this.f61250g;
        d dVar2 = this.f61260q;
        handler3 = dVar2.f61145p;
        handler4 = dVar2.f61145p;
        handler3.sendMessageDelayed(Message.obtain(handler4, 11, c2436c2), 120000L);
        c2559c0 = this.f61260q.f61138i;
        c2559c0.c();
        Iterator it = this.f61253j.values().iterator();
        while (it.hasNext()) {
            ((C2468s0) it.next()).f4708c.run();
        }
    }

    @Override
    public final void k(int i10) {
        Handler handler;
        Handler handler2;
        d dVar = this.f61260q;
        Looper myLooper = Looper.myLooper();
        handler = dVar.f61145p;
        if (myLooper == handler.getLooper()) {
            j(i10);
        } else {
            handler2 = this.f61260q.f61145p;
            handler2.post(new RunnableC2433a0(this, i10));
        }
    }

    public final void l() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j10;
        C2436c c2436c = this.f61250g;
        handler = this.f61260q.f61145p;
        handler.removeMessages(12, c2436c);
        C2436c c2436c2 = this.f61250g;
        d dVar = this.f61260q;
        handler2 = dVar.f61145p;
        handler3 = dVar.f61145p;
        Message obtainMessage = handler3.obtainMessage(12, c2436c2);
        j10 = this.f61260q.f61132c;
        handler2.sendMessageDelayed(obtainMessage, j10);
    }

    @Override
    public final void l0(C2318c c2318c, C11894a c11894a, boolean z10) {
        throw null;
    }

    @WorkerThread
    public final void m(N0 n02) {
        n02.d(this.f61251h, a());
        try {
            n02.c(this);
        } catch (DeadObjectException unused) {
            k(1);
            this.f61249f.e("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    @WorkerThread
    public final void n() {
        Handler handler;
        Handler handler2;
        if (this.f61256m) {
            d dVar = this.f61260q;
            C2436c c2436c = this.f61250g;
            handler = dVar.f61145p;
            handler.removeMessages(11, c2436c);
            d dVar2 = this.f61260q;
            C2436c c2436c2 = this.f61250g;
            handler2 = dVar2.f61145p;
            handler2.removeMessages(9, c2436c2);
            this.f61256m = false;
        }
    }

    @WorkerThread
    public final boolean o(N0 n02) {
        boolean z10;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        if (!(n02 instanceof AbstractC2453k0)) {
            m(n02);
            return true;
        }
        AbstractC2453k0 abstractC2453k0 = (AbstractC2453k0) n02;
        C2320e c10 = c(abstractC2453k0.g(this));
        if (c10 == null) {
            m(n02);
            return true;
        }
        Log.w("GoogleApiManager", this.f61249f.getClass().getName() + " could not execute call because it requires feature (" + c10.n() + ", " + c10.t() + ").");
        z10 = this.f61260q.f61146q;
        if (!z10 || !abstractC2453k0.f(this)) {
            abstractC2453k0.b(new UnsupportedApiCallException(c10));
            return true;
        }
        C2441e0 c2441e0 = new C2441e0(this.f61250g, c10, null);
        int indexOf = this.f61257n.indexOf(c2441e0);
        if (indexOf >= 0) {
            C2441e0 c2441e02 = (C2441e0) this.f61257n.get(indexOf);
            handler5 = this.f61260q.f61145p;
            handler5.removeMessages(15, c2441e02);
            d dVar = this.f61260q;
            handler6 = dVar.f61145p;
            handler7 = dVar.f61145p;
            handler6.sendMessageDelayed(Message.obtain(handler7, 15, c2441e02), 5000L);
            return false;
        }
        this.f61257n.add(c2441e0);
        d dVar2 = this.f61260q;
        handler = dVar2.f61145p;
        handler2 = dVar2.f61145p;
        handler.sendMessageDelayed(Message.obtain(handler2, 15, c2441e0), 5000L);
        d dVar3 = this.f61260q;
        handler3 = dVar3.f61145p;
        handler4 = dVar3.f61145p;
        handler3.sendMessageDelayed(Message.obtain(handler4, 16, c2441e0), 120000L);
        C2318c c2318c = new C2318c(2, null);
        if (p(c2318c)) {
            return false;
        }
        this.f61260q.f(c2318c, this.f61254k);
        return false;
    }

    @WorkerThread
    public final boolean p(@NonNull C2318c c2318c) {
        Object obj;
        C2477x c2477x;
        Set set;
        C2477x c2477x2;
        obj = d.f61130t;
        synchronized (obj) {
            try {
                d dVar = this.f61260q;
                c2477x = dVar.f61142m;
                if (c2477x != null) {
                    set = dVar.f61143n;
                    if (set.contains(this.f61250g)) {
                        c2477x2 = this.f61260q.f61142m;
                        c2477x2.t(c2318c, this.f61254k);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @WorkerThread
    public final boolean q(boolean z10) {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        if (!this.f61249f.isConnected() || !this.f61253j.isEmpty()) {
            return false;
        }
        if (!this.f61251h.g()) {
            this.f61249f.e("Timing out service connection.");
            return true;
        }
        if (!z10) {
            return false;
        }
        l();
        return false;
    }

    public final int r() {
        return this.f61254k;
    }

    @WorkerThread
    public final int s() {
        return this.f61259p;
    }

    @Override
    @WorkerThread
    public final void t(@NonNull C2318c c2318c) {
        I(c2318c, null);
    }

    @Nullable
    @WorkerThread
    public final C2318c u() {
        Handler handler;
        handler = this.f61260q.f61145p;
        G0.A.h(handler);
        return this.f61258o;
    }

    public final C11894a.f w() {
        return this.f61249f;
    }

    public final Map y() {
        return this.f61253j;
    }
}
