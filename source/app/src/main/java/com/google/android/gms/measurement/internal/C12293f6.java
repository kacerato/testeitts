package com.google.android.gms.measurement.internal;

import B0.C2326k;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

public final class C12293f6 extends AbstractC12305h2 {

    public final Z5 f63281c;

    public InterfaceC12313i2 f63282d;

    public volatile Boolean f63283e;

    public final AbstractC12445z f63284f;

    public ScheduledExecutorService f63285g;

    public final B6 f63286h;

    public final List f63287i;

    public final AbstractC12445z f63288j;

    public C12293f6(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63287i = new ArrayList();
        this.f63286h = new B6(c12370p3.e());
        this.f63281c = new Z5(this);
        this.f63284f = new F5(this, c12370p3);
        this.f63288j = new J5(this, c12370p3);
    }

    @WorkerThread
    public final void J() {
        h();
        this.f63286h.a();
        this.f62917a.w();
        this.f63284f.b(((Long) C12281e2.f63186Z.b(null)).longValue());
    }

    @WorkerThread
    public final void A() {
        h();
        j();
        Z5 z52 = this.f63281c;
        z52.b();
        try {
            S0.b.b().c(this.f62917a.d(), z52);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f63282d = null;
    }

    @WorkerThread
    public final void B(InterfaceC12238z0 interfaceC12238z0, I i10, String str) {
        h();
        j();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.C().X(C2326k.f1252a) == 0) {
            T(new I5(this, i10, str, interfaceC12238z0));
        } else {
            c12370p3.a().r().a("Not bundling data. Service unavailable or out of date");
            c12370p3.C().d0(interfaceC12238z0, new byte[0]);
        }
    }

    @WorkerThread
    public final boolean C() {
        h();
        j();
        return !y() || this.f62917a.C().W() >= ((Integer) C12281e2.f63157K0.b(null)).intValue();
    }

    @WorkerThread
    public final boolean D() {
        h();
        j();
        return !y() || this.f62917a.C().W() >= 241200;
    }

    public final void E() {
        InterfaceC12313i2 interfaceC12313i2 = this.f63282d;
        if (interfaceC12313i2 == null) {
            this.f62917a.a().o().a("Failed to send storage consent settings to service");
            return;
        }
        try {
            o7 V10 = V(false);
            G0.A.r(V10);
            interfaceC12313i2.D0(V10);
            J();
        } catch (RemoteException e10) {
            this.f62917a.a().o().b("Failed to send storage consent settings to the service", e10);
        }
    }

    public final void F() {
        InterfaceC12313i2 interfaceC12313i2 = this.f63282d;
        if (interfaceC12313i2 == null) {
            this.f62917a.a().o().a("Failed to send Dma consent settings to service");
            return;
        }
        try {
            o7 V10 = V(false);
            G0.A.r(V10);
            interfaceC12313i2.H0(V10);
            J();
        } catch (RemoteException e10) {
            this.f62917a.a().o().b("Failed to send Dma consent settings to the service", e10);
        }
    }

    public final void G(AtomicReference atomicReference, o7 o7Var, Bundle bundle) {
        InterfaceC12313i2 interfaceC12313i2;
        synchronized (atomicReference) {
            try {
                interfaceC12313i2 = this.f63282d;
            } catch (RemoteException e10) {
                this.f62917a.a().o().b("Failed to request trigger URIs; remote exception", e10);
                atomicReference.notifyAll();
            }
            if (interfaceC12313i2 == null) {
                this.f62917a.a().o().a("Failed to request trigger URIs; not connected to service");
                return;
            }
            G0.A.r(o7Var);
            interfaceC12313i2.U0(o7Var, bundle, new BinderC12435x5(this, atomicReference));
            J();
        }
    }

    public final void H(AtomicReference atomicReference, o7 o7Var, J6 j62) {
        InterfaceC12313i2 interfaceC12313i2;
        synchronized (atomicReference) {
            try {
                interfaceC12313i2 = this.f63282d;
            } catch (RemoteException e10) {
                this.f62917a.a().o().b("[sgtm] Failed to get upload batches; remote exception", e10);
                atomicReference.notifyAll();
            }
            if (interfaceC12313i2 == null) {
                this.f62917a.a().o().a("[sgtm] Failed to get upload batches; not connected to service");
                return;
            }
            G0.A.r(o7Var);
            interfaceC12313i2.P0(o7Var, j62, new BinderC12443y5(this, atomicReference));
            J();
        }
    }

    public final void I(o7 o7Var, C12294g c12294g) {
        InterfaceC12313i2 interfaceC12313i2 = this.f63282d;
        if (interfaceC12313i2 == null) {
            this.f62917a.a().o().a("[sgtm] Discarding data. Failed to update batch upload status.");
            return;
        }
        try {
            interfaceC12313i2.i0(o7Var, c12294g);
            J();
        } catch (RemoteException e10) {
            this.f62917a.a().o().c("[sgtm] Failed to update batch upload status, rowId, exception", Long.valueOf(c12294g.f63298b), e10);
        }
    }

    public final void K(ComponentName componentName) {
        h();
        if (this.f63282d != null) {
            this.f63282d = null;
            this.f62917a.a().w().b("Disconnected from device MeasurementService", componentName);
            h();
            w();
        }
    }

    public final Z5 M() {
        return this.f63281c;
    }

    public final InterfaceC12313i2 N() {
        return this.f63282d;
    }

    public final void O(InterfaceC12313i2 interfaceC12313i2) {
        this.f63282d = null;
    }

    public final ScheduledExecutorService P() {
        return this.f63285g;
    }

    public final void Q(ScheduledExecutorService scheduledExecutorService) {
        this.f63285g = scheduledExecutorService;
    }

    public final boolean R() {
        this.f62917a.c();
        return true;
    }

    @WorkerThread
    public final void T(Runnable runnable) throws IllegalStateException {
        h();
        if (W()) {
            runnable.run();
            return;
        }
        List list = this.f63287i;
        long size = list.size();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.w();
        if (size >= 1000) {
            c12370p3.a().o().a("Discarding data. Max runnable queue size reached");
            return;
        }
        list.add(runnable);
        this.f63288j.b(60000L);
        w();
    }

    @WorkerThread
    public final void L() {
        h();
        C12448z2 w10 = this.f62917a.a().w();
        List list = this.f63287i;
        w10.b("Processing queued up service tasks", Integer.valueOf(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e10) {
                this.f62917a.a().o().b("Task exception while flushing queue", e10);
            }
        }
        this.f63287i.clear();
        this.f63288j.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final o7 V(boolean z10) {
        Pair b10;
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.c();
        C12369p2 L10 = this.f62917a.L();
        String str = null;
        if (z10) {
            C12370p3 c12370p32 = c12370p3.a().f62917a;
            if (c12370p32.x().f62850e != null && (b10 = c12370p32.x().f62850e.b()) != null && b10 != P2.f62847A) {
                String valueOf = String.valueOf(b10.second);
                String str2 = (String) b10.first;
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length());
                sb2.append(valueOf);
                sb2.append(b3.s.f32937c);
                sb2.append(str2);
                str = sb2.toString();
            }
        }
        return L10.o(str);
    }

    @WorkerThread
    public final boolean W() {
        h();
        j();
        return this.f63282d != null;
    }

    @WorkerThread
    public final void X() {
        h();
        j();
        T(new K5(this, V(true)));
    }

    @WorkerThread
    public final void Y(boolean z10) {
        h();
        j();
        if (C()) {
            T(new L5(this, V(false)));
        }
    }

    @WorkerThread
    public final void Z(boolean z10) {
        h();
        j();
        T(new Runnable() {
            @Override
            public final void run() {
                C12293f6.this.E();
            }
        });
    }

    @WorkerThread
    public final void a0() {
        h();
        j();
        T(new Runnable() {
            @Override
            public final void run() {
                C12293f6.this.F();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a7  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b0(InterfaceC12313i2 interfaceC12313i2, I0.a aVar, o7 o7Var) {
        int i10;
        String str;
        long j10;
        long j11;
        long j12;
        h();
        j();
        R();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.w();
        o7 o7Var2 = o7Var;
        int i11 = 100;
        int i12 = 0;
        for (int i13 = 100; i12 < 1001 && i11 == i13; i13 = 100) {
            C12370p3 c12370p32 = this.f62917a;
            ArrayList arrayList = new ArrayList();
            List t10 = c12370p32.E().t(i13);
            if (t10 != null) {
                arrayList.addAll(t10);
                i11 = t10.size();
            } else {
                i11 = 0;
            }
            if (aVar != null && i11 < i13) {
                arrayList.add(new C12384r2(aVar, o7Var2.f63446d, o7Var2.f63453k));
            }
            String str2 = null;
            boolean H10 = c12370p3.w().H(null, C12281e2.f63167P0);
            int size = arrayList.size();
            int i14 = 0;
            while (i14 < size) {
                C12384r2 c12384r2 = (C12384r2) arrayList.get(i14);
                I0.a aVar2 = c12384r2.f63541a;
                C12342m w10 = c12370p3.w();
                C12273d2 c12273d2 = C12281e2.f63199d1;
                if (w10.H(str2, c12273d2)) {
                    String str3 = c12384r2.f63542b;
                    if (!TextUtils.isEmpty(str3)) {
                        i10 = i14;
                        o7Var2 = new o7(o7Var2.f63444b, o7Var2.f63445c, str3, c12384r2.f63543c, o7Var2.f63447e, o7Var2.f63448f, o7Var2.f63449g, o7Var2.f63450h, o7Var2.f63451i, o7Var2.f63452j, o7Var2.f63454l, o7Var2.f63455m, o7Var2.f63456n, o7Var2.f63457o, o7Var2.f63458p, o7Var2.f63459q, o7Var2.f63460r, o7Var2.f63461s, o7Var2.f63462t, o7Var2.f63463u, o7Var2.f63464v, o7Var2.f63465w, o7Var2.f63466x, o7Var2.f63467y, o7Var2.f63468z, o7Var2.f63438A, o7Var2.f63439B, o7Var2.f63440C, o7Var2.f63441D, o7Var2.f63442E, o7Var2.f63443F);
                        o7 o7Var3 = o7Var2;
                        if (!(aVar2 instanceof I)) {
                            if (H10) {
                                try {
                                    C12370p3 c12370p33 = this.f62917a;
                                    long a10 = c12370p33.e().a();
                                    try {
                                        j12 = a10;
                                        j11 = c12370p33.e().c();
                                    } catch (RemoteException e10) {
                                        e = e10;
                                        j11 = 0;
                                        j10 = a10;
                                        this.f62917a.a().o().b("Failed to send event to the service", e);
                                        if (H10 && j10 != 0) {
                                            C12370p3 c12370p34 = this.f62917a;
                                            C12432x2.a(c12370p34).b(36301, 13, j10, c12370p34.e().a(), (int) (c12370p34.e().c() - j11));
                                        }
                                        str = null;
                                        str2 = str;
                                        i14 = i10 + 1;
                                        o7Var2 = o7Var3;
                                    }
                                } catch (RemoteException e11) {
                                    e = e11;
                                    j10 = 0;
                                    j11 = 0;
                                }
                            } else {
                                j12 = 0;
                                j11 = 0;
                            }
                            try {
                                interfaceC12313i2.F((I) aVar2, o7Var3);
                                if (H10) {
                                    c12370p3.a().w().a("Logging telemetry for logEvent from database");
                                    C12370p3 c12370p35 = this.f62917a;
                                    C12432x2.a(c12370p35).b(36301, 0, j12, c12370p35.e().a(), (int) (c12370p35.e().c() - j11));
                                }
                            } catch (RemoteException e12) {
                                e = e12;
                                j10 = j12;
                                this.f62917a.a().o().b("Failed to send event to the service", e);
                                if (H10) {
                                    C12370p3 c12370p342 = this.f62917a;
                                    C12432x2.a(c12370p342).b(36301, 13, j10, c12370p342.e().a(), (int) (c12370p342.e().c() - j11));
                                }
                                str = null;
                                str2 = str;
                                i14 = i10 + 1;
                                o7Var2 = o7Var3;
                            }
                        } else if (aVar2 instanceof i7) {
                            try {
                                interfaceC12313i2.W0((i7) aVar2, o7Var3);
                            } catch (RemoteException e13) {
                                this.f62917a.a().o().b("Failed to send user property to the service", e13);
                            }
                        } else if (aVar2 instanceof C12310i) {
                            try {
                                interfaceC12313i2.w((C12310i) aVar2, o7Var3);
                            } catch (RemoteException e14) {
                                this.f62917a.a().o().b("Failed to send conditional user property to the service", e14);
                            }
                        } else {
                            C12370p3 c12370p36 = this.f62917a;
                            str = null;
                            if (c12370p36.w().H(null, c12273d2) && (aVar2 instanceof G)) {
                                try {
                                    interfaceC12313i2.m0(((G) aVar2).n0(), o7Var3);
                                } catch (RemoteException e15) {
                                    this.f62917a.a().o().b("Failed to send default event parameters to the service", e15);
                                }
                            } else {
                                c12370p36.a().o().a("Discarding data. Unrecognized parcel type.");
                            }
                            str2 = str;
                            i14 = i10 + 1;
                            o7Var2 = o7Var3;
                        }
                        str = null;
                        str2 = str;
                        i14 = i10 + 1;
                        o7Var2 = o7Var3;
                    }
                }
                i10 = i14;
                o7 o7Var32 = o7Var2;
                if (!(aVar2 instanceof I)) {
                }
                str = null;
                str2 = str;
                i14 = i10 + 1;
                o7Var2 = o7Var32;
            }
            i12++;
        }
    }

    @WorkerThread
    public final void c0(I i10, String str) {
        G0.A.r(i10);
        h();
        j();
        R();
        T(new M5(this, true, V(true), this.f62917a.E().p(i10), i10, str));
    }

    @WorkerThread
    public final void d0(C12310i c12310i) {
        G0.A.r(c12310i);
        h();
        j();
        this.f62917a.c();
        T(new N5(this, true, V(true), this.f62917a.E().r(c12310i), new C12310i(c12310i), c12310i));
    }

    @WorkerThread
    public final void e0(AtomicReference atomicReference, String str, String str2, String str3) {
        h();
        j();
        T(new O5(this, atomicReference, null, str2, str3, V(false)));
    }

    @WorkerThread
    public final void f0(InterfaceC12238z0 interfaceC12238z0, String str, String str2) {
        h();
        j();
        T(new P5(this, str, str2, V(false), interfaceC12238z0));
    }

    @WorkerThread
    public final void g0(AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        h();
        j();
        T(new Q5(this, atomicReference, null, str2, str3, V(false), z10));
    }

    @WorkerThread
    public final void h0(InterfaceC12238z0 interfaceC12238z0, String str, String str2, boolean z10) {
        h();
        j();
        T(new RunnableC12419v5(this, str, str2, V(false), z10, interfaceC12238z0));
    }

    @WorkerThread
    public final void i0(AtomicReference atomicReference, boolean z10) {
        h();
        j();
        T(new RunnableC12427w5(this, atomicReference, V(false), z10));
    }

    @WorkerThread
    public final void j0(final AtomicReference atomicReference, final Bundle bundle) {
        h();
        j();
        final o7 V10 = V(false);
        T(new Runnable() {
            @Override
            public final void run() {
                C12293f6.this.G(atomicReference, V10, bundle);
            }
        });
    }

    @WorkerThread
    public final void k0(final AtomicReference atomicReference, final J6 j62) {
        h();
        j();
        final o7 V10 = V(false);
        T(new Runnable() {
            @Override
            public final void run() {
                C12293f6.this.H(atomicReference, V10, j62);
            }
        });
    }

    @WorkerThread
    public final void l0(final C12294g c12294g) {
        h();
        j();
        final o7 V10 = V(true);
        G0.A.r(V10);
        T(new Runnable() {
            @Override
            public final void run() {
                C12293f6.this.I(V10, c12294g);
            }
        });
    }

    @Override
    public final boolean m() {
        return false;
    }

    @WorkerThread
    public final C12366p m0() {
        h();
        j();
        InterfaceC12313i2 interfaceC12313i2 = this.f63282d;
        if (interfaceC12313i2 == null) {
            w();
            this.f62917a.a().v().a("Failed to get consents; not connected to service yet.");
            return null;
        }
        o7 V10 = V(false);
        G0.A.r(V10);
        try {
            C12366p k02 = interfaceC12313i2.k0(V10);
            J();
            return k02;
        } catch (RemoteException e10) {
            this.f62917a.a().o().b("Failed to get consents; remote exception", e10);
            return null;
        }
    }

    @WorkerThread
    public final void o(i7 i7Var) {
        h();
        j();
        R();
        T(new RunnableC12451z5(this, V(true), this.f62917a.E().q(i7Var), i7Var));
    }

    @WorkerThread
    public final void p() {
        h();
        j();
        o7 V10 = V(false);
        R();
        this.f62917a.E().o();
        T(new A5(this, V10));
    }

    @WorkerThread
    public final void q(AtomicReference atomicReference) {
        h();
        j();
        T(new B5(this, atomicReference, V(false)));
    }

    @WorkerThread
    public final void r(InterfaceC12238z0 interfaceC12238z0) {
        h();
        j();
        T(new C5(this, V(false), interfaceC12238z0));
    }

    @WorkerThread
    public final void s() {
        h();
        j();
        o7 V10 = V(true);
        R();
        this.f62917a.w().H(null, C12281e2.f63199d1);
        this.f62917a.E().u();
        T(new D5(this, V10, true));
    }

    @WorkerThread
    public final void t() {
        h();
        j();
        T(new E5(this, V(true)));
    }

    @WorkerThread
    public final void u(C12348m5 c12348m5) {
        h();
        j();
        T(new G5(this, c12348m5));
    }

    @WorkerThread
    public final void v(Bundle bundle) {
        h();
        j();
        G g10 = new G(bundle);
        R();
        T(new H5(this, true, V(false), this.f62917a.w().H(null, C12281e2.f63199d1) && this.f62917a.E().s(g10), g10, bundle));
    }

    @WorkerThread
    public final void w() {
        h();
        j();
        if (W()) {
            return;
        }
        if (y()) {
            this.f63281c.c();
            return;
        }
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.w().m()) {
            return;
        }
        c12370p3.c();
        List<ResolveInfo> queryIntentServices = c12370p3.d().getPackageManager().queryIntentServices(new Intent().setClassName(c12370p3.d(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            c12370p3.a().o().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context d10 = c12370p3.d();
        c12370p3.c();
        intent.setComponent(new ComponentName(d10, "com.google.android.gms.measurement.AppMeasurementService"));
        this.f63281c.a(intent);
    }

    public final Boolean x() {
        return this.f63283e;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0114  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean y() {
        h();
        j();
        if (this.f63283e == null) {
            h();
            j();
            C12370p3 c12370p3 = this.f62917a;
            P2 x10 = c12370p3.x();
            x10.h();
            boolean z10 = false;
            Boolean valueOf = !x10.p().contains("use_service") ? null : Boolean.valueOf(x10.p().getBoolean("use_service", false));
            if (valueOf == null || !valueOf.booleanValue()) {
                c12370p3.c();
                if (this.f62917a.L().v() != 1) {
                    c12370p3.a().w().a("Checking service availability");
                    int X10 = c12370p3.C().X(C2326k.f1252a);
                    if (X10 != 0) {
                        if (X10 == 1) {
                            c12370p3.a().w().a("Service missing");
                        } else if (X10 != 2) {
                            if (X10 == 3) {
                                c12370p3.a().r().a("Service disabled");
                            } else if (X10 == 9) {
                                c12370p3.a().r().a("Service invalid");
                            } else if (X10 != 18) {
                                c12370p3.a().r().b("Unexpected service status", Integer.valueOf(X10));
                            } else {
                                c12370p3.a().r().a("Service updating");
                            }
                            r2 = false;
                        } else {
                            c12370p3.a().v().a("Service container out of date");
                            if (c12370p3.C().W() >= 17443) {
                                z10 = valueOf == null;
                                r2 = false;
                            }
                        }
                        if (z10 && c12370p3.w().m()) {
                            c12370p3.a().o().a("No way to upload. Consider using the full version of Analytics");
                        } else if (r2) {
                            P2 x11 = c12370p3.x();
                            x11.h();
                            SharedPreferences.Editor edit = x11.p().edit();
                            edit.putBoolean("use_service", z10);
                            edit.apply();
                        }
                        r2 = z10;
                    } else {
                        c12370p3.a().w().a("Service available");
                    }
                }
                z10 = true;
                if (z10) {
                }
                if (r2) {
                }
                r2 = z10;
            }
            this.f63283e = Boolean.valueOf(r2);
        }
        return this.f63283e.booleanValue();
    }

    @WorkerThread
    public final void z(InterfaceC12313i2 interfaceC12313i2) {
        h();
        G0.A.r(interfaceC12313i2);
        this.f63282d = interfaceC12313i2;
        J();
        L();
    }
}
