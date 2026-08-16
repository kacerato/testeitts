package com.google.android.gms.measurement.internal;

import B0.C2318c;
import G0.AbstractC2564f;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class Z5 implements ServiceConnection, AbstractC2564f.a, AbstractC2564f.b {

    public volatile boolean f62992c;

    public volatile C12416v2 f62993d;

    public final C12293f6 f62994e;

    public Z5(C12293f6 c12293f6) {
        Objects.requireNonNull(c12293f6);
        this.f62994e = c12293f6;
    }

    @WorkerThread
    public final void a(Intent intent) {
        C12293f6 c12293f6 = this.f62994e;
        c12293f6.h();
        Context d10 = c12293f6.f62917a.d();
        S0.b b10 = S0.b.b();
        synchronized (this) {
            try {
                if (this.f62992c) {
                    this.f62994e.f62917a.a().w().a("Connection attempt already in progress");
                    return;
                }
                C12293f6 c12293f62 = this.f62994e;
                c12293f62.f62917a.a().w().a("Using local app measurement service");
                this.f62992c = true;
                b10.a(d10, intent, c12293f62.M(), 129);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @WorkerThread
    public final void b() {
        if (this.f62993d != null && (this.f62993d.isConnected() || this.f62993d.f())) {
            this.f62993d.j();
        }
        this.f62993d = null;
    }

    @WorkerThread
    public final void c() {
        C12293f6 c12293f6 = this.f62994e;
        c12293f6.h();
        Context d10 = c12293f6.f62917a.d();
        synchronized (this) {
            try {
                if (this.f62992c) {
                    this.f62994e.f62917a.a().w().a("Connection attempt already in progress");
                    return;
                }
                if (this.f62993d != null && (this.f62993d.f() || this.f62993d.isConnected())) {
                    this.f62994e.f62917a.a().w().a("Already awaiting connection attempt");
                    return;
                }
                this.f62993d = new C12416v2(d10, Looper.getMainLooper(), this, this);
                this.f62994e.f62917a.a().w().a("Connecting to remote service");
                this.f62992c = true;
                G0.A.r(this.f62993d);
                this.f62993d.x();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d(boolean z10) {
        this.f62992c = false;
    }

    @Override
    @MainThread
    public final void h(Bundle bundle) {
        this.f62994e.f62917a.b().o();
        synchronized (this) {
            try {
                G0.A.r(this.f62993d);
                this.f62994e.f62917a.b().t(new T5(this, (InterfaceC12313i2) this.f62993d.M()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f62993d = null;
                this.f62992c = false;
            }
        }
    }

    @Override
    @MainThread
    public final void k(int i10) {
        C12370p3 c12370p3 = this.f62994e.f62917a;
        c12370p3.b().o();
        c12370p3.a().v().a("Service connection suspended");
        c12370p3.b().t(new V5(this));
    }

    @Override
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f62994e.f62917a.b().o();
        synchronized (this) {
            if (iBinder == null) {
                this.f62992c = false;
                this.f62994e.f62917a.a().o().a("Service connected with null binder");
                return;
            }
            InterfaceC12313i2 interfaceC12313i2 = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    interfaceC12313i2 = queryLocalInterface instanceof InterfaceC12313i2 ? (InterfaceC12313i2) queryLocalInterface : new C12289f2(iBinder);
                    this.f62994e.f62917a.a().w().a("Bound to IMeasurementService interface");
                } else {
                    this.f62994e.f62917a.a().o().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f62994e.f62917a.a().o().a("Service connect failed to get IMeasurementService");
            }
            if (interfaceC12313i2 == null) {
                this.f62992c = false;
                try {
                    S0.b b10 = S0.b.b();
                    C12293f6 c12293f6 = this.f62994e;
                    b10.c(c12293f6.f62917a.d(), c12293f6.M());
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f62994e.f62917a.b().t(new R5(this, interfaceC12313i2));
            }
        }
    }

    @Override
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        C12370p3 c12370p3 = this.f62994e.f62917a;
        c12370p3.b().o();
        c12370p3.a().v().a("Service disconnected");
        c12370p3.b().t(new S5(this, componentName));
    }

    @Override
    @MainThread
    public final void t(@NonNull C2318c c2318c) {
        C12293f6 c12293f6 = this.f62994e;
        c12293f6.f62917a.b().o();
        B2 y10 = c12293f6.f62917a.y();
        if (y10 != null) {
            y10.w().b("Service connection failed", c2318c);
        }
        synchronized (this) {
            this.f62992c = false;
            this.f62993d = null;
        }
        this.f62994e.f62917a.b().t(new Y5(this, c2318c));
    }
}
