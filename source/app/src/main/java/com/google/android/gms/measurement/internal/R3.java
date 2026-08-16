package com.google.android.gms.measurement.internal;

import B0.C2326k;
import B0.C2327l;
import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.measurement.C12022b;
import com.google.android.gms.internal.measurement.C12050e0;
import com.google.android.gms.internal.measurement.C12089i3;
import com.google.android.gms.internal.measurement.C12116l3;
import com.google.android.gms.internal.measurement.C12125m3;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzmq;
import com.tonyodev.fetch2.util.FetchDefaults;
import eg.C13143u0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class R3 extends AbstractBinderC12297g2 {

    public final c7 f62905e;

    public Boolean f62906f;

    public String f62907g;

    public R3(c7 c7Var, String str) {
        G0.A.r(c7Var);
        this.f62905e = c7Var;
        this.f62907g = null;
    }

    @Override
    @BinderThread
    public final List C0(String str, String str2, String str3) {
        l1(str, true);
        try {
            return (List) this.f62905e.b().r(new CallableC12449z3(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f62905e.a().o().b("Failed to get conditional user properties as", e10);
            return Collections.emptyList();
        }
    }

    @Override
    @BinderThread
    public final void D0(final o7 o7Var) {
        G0.A.l(o7Var.f63444b);
        G0.A.r(o7Var.f63462t);
        k(new Runnable() {
            @Override
            public final void run() {
                R3.this.t(o7Var);
            }
        });
    }

    @Override
    @BinderThread
    public final void F(I i10, o7 o7Var) {
        G0.A.r(i10);
        k1(o7Var, false);
        o1(new E3(this, i10, o7Var));
    }

    @Override
    @BinderThread
    public final void G(o7 o7Var) {
        k1(o7Var, false);
        o1(new A3(this, o7Var));
    }

    @Override
    @BinderThread
    public final List G0(o7 o7Var, Bundle bundle) {
        k1(o7Var, false);
        G0.A.r(o7Var.f63444b);
        c7 c7Var = this.f62905e;
        if (!c7Var.B0().H(null, C12281e2.f63187Z0)) {
            try {
                return (List) this.f62905e.b().r(new J3(this, o7Var, bundle)).get();
            } catch (InterruptedException | ExecutionException e10) {
                this.f62905e.a().o().c("Failed to get trigger URIs. appId", B2.x(o7Var.f63444b), e10);
                return Collections.emptyList();
            }
        }
        try {
            return (List) c7Var.b().s(new I3(this, o7Var, bundle)).get(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e11) {
            this.f62905e.a().o().c("Failed to get trigger URIs. appId", B2.x(o7Var.f63444b), e11);
            return Collections.emptyList();
        }
    }

    @Override
    @BinderThread
    public final byte[] H(I i10, String str) {
        G0.A.l(str);
        G0.A.r(i10);
        l1(str, true);
        c7 c7Var = this.f62905e;
        C12448z2 v10 = c7Var.a().v();
        C12408u2 M02 = c7Var.M0();
        String str2 = i10.f62679b;
        v10.b("Log and bundle. event", M02.a(str2));
        long d10 = c7Var.e().d() / C13143u0.f85788e;
        try {
            byte[] bArr = (byte[]) c7Var.b().s(new G3(this, i10, str)).get();
            if (bArr == null) {
                c7Var.a().o().b("Log and bundle returned null. appId", B2.x(str));
                bArr = new byte[0];
            }
            c7Var.a().v().d("Log and bundle processed. event, size, time_ms", c7Var.M0().a(str2), Integer.valueOf(bArr.length), Long.valueOf((c7Var.e().d() / C13143u0.f85788e) - d10));
            return bArr;
        } catch (InterruptedException e10) {
            e = e10;
            c7 c7Var2 = this.f62905e;
            c7Var2.a().o().d("Failed to log and bundle. appId, event, error", B2.x(str), c7Var2.M0().a(i10.f62679b), e);
            return null;
        } catch (ExecutionException e11) {
            e = e11;
            c7 c7Var22 = this.f62905e;
            c7Var22.a().o().d("Failed to log and bundle. appId, event, error", B2.x(str), c7Var22.M0().a(i10.f62679b), e);
            return null;
        }
    }

    @Override
    @BinderThread
    public final void H0(final o7 o7Var) {
        G0.A.l(o7Var.f63444b);
        G0.A.r(o7Var.f63462t);
        k(new Runnable() {
            @Override
            public final void run() {
                R3.this.l0(o7Var);
            }
        });
    }

    @Override
    @BinderThread
    public final void J0(C12310i c12310i) {
        G0.A.r(c12310i);
        G0.A.r(c12310i.f63340d);
        G0.A.l(c12310i.f63338b);
        l1(c12310i.f63338b, true);
        o1(new RunnableC12417v3(this, new C12310i(c12310i)));
    }

    @Override
    @BinderThread
    public final String O(o7 o7Var) {
        k1(o7Var, false);
        return this.f62905e.o0(o7Var);
    }

    @Override
    @BinderThread
    public final List P(o7 o7Var, boolean z10) {
        k1(o7Var, false);
        String str = o7Var.f63444b;
        G0.A.r(str);
        try {
            List<k7> list = (List) this.f62905e.b().r(new CallableC12378q3(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (k7 k7Var : list) {
                if (!z10 && m7.N(k7Var.f63380c)) {
                }
                arrayList.add(new i7(k7Var));
            }
            return arrayList;
        } catch (InterruptedException e10) {
            e = e10;
            this.f62905e.a().o().c("Failed to get user properties. appId", B2.x(o7Var.f63444b), e);
            return null;
        } catch (ExecutionException e11) {
            e = e11;
            this.f62905e.a().o().c("Failed to get user properties. appId", B2.x(o7Var.f63444b), e);
            return null;
        }
    }

    @Override
    @BinderThread
    public final void P0(o7 o7Var, final J6 j62, final InterfaceC12361o2 interfaceC12361o2) {
        k1(o7Var, false);
        final String str = (String) G0.A.r(o7Var.f63444b);
        this.f62905e.b().t(new Runnable() {
            @Override
            public final void run() {
                R3.this.f1(str, j62, interfaceC12361o2);
            }
        });
    }

    @Override
    @BinderThread
    public final void U0(final o7 o7Var, final Bundle bundle, final InterfaceC12337l2 interfaceC12337l2) {
        k1(o7Var, false);
        final String str = (String) G0.A.r(o7Var.f63444b);
        this.f62905e.b().t(new Runnable() {
            @Override
            public final void run() {
                R3.this.e1(o7Var, bundle, interfaceC12337l2, str);
            }
        });
    }

    @Override
    @BinderThread
    public final void V(I i10, String str, String str2) {
        G0.A.r(i10);
        G0.A.l(str);
        l1(str, true);
        o1(new F3(this, i10, str));
    }

    @Override
    @BinderThread
    public final void W(long j10, String str, String str2, String str3) {
        o1(new RunnableC12401t3(this, str2, str3, str, j10));
    }

    @Override
    @BinderThread
    public final void W0(i7 i7Var, o7 o7Var) {
        G0.A.r(i7Var);
        k1(o7Var, false);
        o1(new H3(this, i7Var, o7Var));
    }

    @Override
    @BinderThread
    public final void X(o7 o7Var) {
        String str = o7Var.f63444b;
        G0.A.l(str);
        l1(str, false);
        o1(new B3(this, o7Var));
    }

    @Override
    @BinderThread
    public final void Z0(o7 o7Var) {
        k1(o7Var, false);
        o1(new RunnableC12385r3(this, o7Var));
    }

    @Override
    @BinderThread
    public final void b1(o7 o7Var) {
        k1(o7Var, false);
        o1(new RunnableC12393s3(this, o7Var));
    }

    public final void e1(o7 o7Var, Bundle bundle, InterfaceC12337l2 interfaceC12337l2, String str) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        try {
            interfaceC12337l2.Q0(c7Var.p0(o7Var, bundle));
        } catch (RemoteException e10) {
            this.f62905e.a().o().c("Failed to return trigger URIs for app", str, e10);
        }
    }

    public final void f1(String str, J6 j62, InterfaceC12361o2 interfaceC12361o2) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        c7Var.b().h();
        c7Var.O0();
        List<f7> o10 = c7Var.F0().o(str, j62, ((Integer) C12281e2.f63138B.b(null)).intValue());
        ArrayList arrayList = new ArrayList();
        for (f7 f7Var : o10) {
            if (c7Var.t(str, f7Var.e())) {
                int i10 = f7Var.i();
                if (i10 > 0) {
                    if (i10 <= ((Integer) C12281e2.f63249z.b(null)).intValue()) {
                        if (c7Var.e().a() >= f7Var.h() + Math.min(((Long) C12281e2.f63245x.b(null)).longValue() * (1 << (i10 - 1)), ((Long) C12281e2.f63247y.b(null)).longValue())) {
                        }
                    }
                    c7Var.a().w().d("[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis", str, Long.valueOf(f7Var.c()), Long.valueOf(f7Var.h()));
                }
                H6 b10 = f7Var.b();
                try {
                    C12089i3 c12089i3 = (C12089i3) h7.W(C12116l3.L(), b10.f62673c);
                    for (int i11 = 0; i11 < c12089i3.u(); i11++) {
                        C12125m3 c12125m3 = (C12125m3) c12089i3.v(i11).q();
                        c12125m3.e1(c7Var.e().a());
                        c12089i3.w(i11, c12125m3);
                    }
                    b10.f62673c = ((C12116l3) c12089i3.q()).g();
                    if (Log.isLoggable(c7Var.a().z(), 2)) {
                        b10.f62678h = c7Var.K0().K((C12116l3) c12089i3.q());
                    }
                    arrayList.add(b10);
                } catch (zzmq unused) {
                    c7Var.a().r().b("Failed to parse queued batch. appId", str);
                }
            } else {
                c7Var.a().w().d("[sgtm] batch skipped due to destination in backoff. appId, rowId, url", str, Long.valueOf(f7Var.c()), f7Var.e());
            }
        }
        L6 l62 = new L6(arrayList);
        try {
            interfaceC12361o2.c1(l62);
            this.f62905e.a().w().c("[sgtm] Sending queued upload batches to client. appId, count", str, Integer.valueOf(l62.f62783b.size()));
        } catch (RemoteException e10) {
            this.f62905e.a().o().c("[sgtm] Failed to return upload batches for app", str, e10);
        }
    }

    public final void g1(o7 o7Var, C12294g c12294g) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        c7Var.q0((String) G0.A.r(o7Var.f63444b), c12294g);
    }

    public final void h1(Bundle bundle, String str, o7 o7Var) {
        c7 c7Var = this.f62905e;
        boolean H10 = c7Var.B0().H(null, C12281e2.f63181W0);
        if (bundle.isEmpty() && H10) {
            C12421w F02 = this.f62905e.F0();
            F02.h();
            F02.j();
            try {
                F02.w0().execSQL("delete from default_event_params where app_id=?", new String[]{str});
                return;
            } catch (SQLiteException e10) {
                F02.f62917a.a().o().b("Error clearing default event params", e10);
                return;
            }
        }
        C12421w F03 = c7Var.F0();
        F03.h();
        F03.j();
        byte[] g10 = F03.f62657b.K0().J(new D(F03.f62917a, "", str, "dep", 0L, 0L, bundle)).g();
        C12370p3 c12370p3 = F03.f62917a;
        c12370p3.a().w().c("Saving default event parameters, appId, data size", str, Integer.valueOf(g10.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", g10);
        try {
            if (F03.w0().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                c12370p3.a().o().b("Failed to insert default event parameters (got -1). appId", B2.x(str));
            }
        } catch (SQLiteException e11) {
            F03.f62917a.a().o().c("Error storing default event parameters. appId", B2.x(str), e11);
        }
        c7 c7Var2 = this.f62905e;
        C12421w F04 = c7Var2.F0();
        long j10 = o7Var.f63442E;
        if (F04.J(str, j10)) {
            c7Var2.F0().K(str, Long.valueOf(j10), null, bundle);
        }
    }

    @Override
    @BinderThread
    public final void i0(final o7 o7Var, final C12294g c12294g) {
        k1(o7Var, false);
        o1(new Runnable() {
            @Override
            public final void run() {
                R3.this.g1(o7Var, c12294g);
            }
        });
    }

    public final c7 i1() {
        return this.f62905e;
    }

    public final void j1(I i10, o7 o7Var) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        c7Var.k(i10, o7Var);
    }

    @VisibleForTesting
    public final void k(Runnable runnable) {
        G0.A.r(runnable);
        c7 c7Var = this.f62905e;
        if (c7Var.b().p()) {
            runnable.run();
        } else {
            c7Var.b().v(runnable);
        }
    }

    @Override
    @BinderThread
    public final C12366p k0(o7 o7Var) {
        k1(o7Var, false);
        G0.A.l(o7Var.f63444b);
        try {
            return (C12366p) this.f62905e.b().s(new D3(this, o7Var)).get(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            this.f62905e.a().o().c("Failed to get consent. appId", B2.x(o7Var.f63444b), e10);
            return new C12366p(null);
        }
    }

    @BinderThread
    public final void k1(o7 o7Var, boolean z10) {
        G0.A.r(o7Var);
        String str = o7Var.f63444b;
        G0.A.l(str);
        l1(str, false);
        this.f62905e.N0().o(o7Var.f63445c);
    }

    public final void l0(o7 o7Var) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        c7Var.Q0(o7Var);
    }

    @BinderThread
    public final void l1(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            this.f62905e.a().o().a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z10) {
            try {
                if (this.f62906f == null) {
                    boolean z11 = true;
                    if (!"com.google.android.gms".equals(this.f62907g)) {
                        c7 c7Var = this.f62905e;
                        if (!T0.E.a(c7Var.d(), Binder.getCallingUid()) && !C2327l.a(c7Var.d()).d(Binder.getCallingUid())) {
                            z11 = false;
                        }
                    }
                    this.f62906f = Boolean.valueOf(z11);
                }
                if (this.f62906f.booleanValue()) {
                    return;
                }
            } catch (SecurityException e10) {
                this.f62905e.a().o().b("Measurement Service called with invalid calling package. appId", B2.x(str));
                throw e10;
            }
        }
        if (this.f62907g == null && C2326k.t(this.f62905e.d(), Binder.getCallingUid(), str)) {
            this.f62907g = str;
        }
        if (str.equals(this.f62907g)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @Override
    @BinderThread
    public final void m0(final Bundle bundle, final o7 o7Var) {
        k1(o7Var, false);
        final String str = o7Var.f63444b;
        G0.A.r(str);
        o1(new Runnable() {
            @Override
            public final void run() {
                R3.this.h1(bundle, str, o7Var);
            }
        });
    }

    public final void m1(I i10, o7 o7Var) {
        c7 c7Var = this.f62905e;
        C12266c3 D02 = c7Var.D0();
        String str = o7Var.f63444b;
        C12050e0 c12050e0 = TextUtils.isEmpty(str) ? null : (C12050e0) D02.f63065j.get(str);
        if (c12050e0 == null) {
            this.f62905e.a().w().b("EES not loaded for", o7Var.f63444b);
            j1(i10, o7Var);
            return;
        }
        try {
            Map Z10 = c7Var.K0().Z(i10.f62680c.n0(), true);
            String str2 = i10.f62679b;
            String a10 = C12251a4.a(str2);
            if (a10 != null) {
                str2 = a10;
            }
            if (c12050e0.b(new C12022b(str2, i10.f62682e, Z10))) {
                if (c12050e0.c()) {
                    c7 c7Var2 = this.f62905e;
                    c7Var2.a().w().b("EES edited event", i10.f62679b);
                    j1(c7Var2.K0().m(c12050e0.e().c()), o7Var);
                } else {
                    j1(i10, o7Var);
                }
                if (c12050e0.d()) {
                    for (C12022b c12022b : c12050e0.e().f()) {
                        c7 c7Var3 = this.f62905e;
                        c7Var3.a().w().b("EES logging created event", c12022b.b());
                        j1(c7Var3.K0().m(c12022b), o7Var);
                    }
                    return;
                }
                return;
            }
        } catch (zzd unused) {
            this.f62905e.a().o().c("EES error. appId, eventName", o7Var.f63445c, i10.f62679b);
        }
        this.f62905e.a().w().b("EES was not applied to event", i10.f62679b);
        j1(i10, o7Var);
    }

    @VisibleForTesting
    public final I n1(I i10, o7 o7Var) {
        G g10;
        if ("_cmp".equals(i10.f62679b) && (g10 = i10.f62680c) != null && g10.b0() != 0) {
            String t10 = g10.t("_cis");
            if ("referrer broadcast".equals(t10) || "referrer API".equals(t10)) {
                this.f62905e.a().u().b("Event has been filtered ", i10.toString());
                return new I("_cmpx", g10, i10.f62681d, i10.f62682e);
            }
        }
        return i10;
    }

    @VisibleForTesting
    public final void o1(Runnable runnable) {
        G0.A.r(runnable);
        c7 c7Var = this.f62905e;
        if (c7Var.b().p()) {
            runnable.run();
        } else {
            c7Var.b().t(runnable);
        }
    }

    @Override
    @BinderThread
    public final List r0(String str, String str2, boolean z10, o7 o7Var) {
        k1(o7Var, false);
        String str3 = o7Var.f63444b;
        G0.A.r(str3);
        try {
            List<k7> list = (List) this.f62905e.b().r(new CallableC12425w3(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (k7 k7Var : list) {
                if (!z10 && m7.N(k7Var.f63380c)) {
                }
                arrayList.add(new i7(k7Var));
            }
            return arrayList;
        } catch (InterruptedException e10) {
            e = e10;
            this.f62905e.a().o().c("Failed to query user properties. appId", B2.x(o7Var.f63444b), e);
            return Collections.emptyList();
        } catch (ExecutionException e11) {
            e = e11;
            this.f62905e.a().o().c("Failed to query user properties. appId", B2.x(o7Var.f63444b), e);
            return Collections.emptyList();
        }
    }

    public final void t(o7 o7Var) {
        c7 c7Var = this.f62905e;
        c7Var.D();
        c7Var.P0(o7Var);
    }

    @Override
    @BinderThread
    public final List u0(String str, String str2, o7 o7Var) {
        k1(o7Var, false);
        String str3 = o7Var.f63444b;
        G0.A.r(str3);
        try {
            return (List) this.f62905e.b().r(new CallableC12441y3(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f62905e.a().o().b("Failed to get conditional user properties", e10);
            return Collections.emptyList();
        }
    }

    @Override
    @BinderThread
    public final void w(C12310i c12310i, o7 o7Var) {
        G0.A.r(c12310i);
        G0.A.r(c12310i.f63340d);
        k1(o7Var, false);
        C12310i c12310i2 = new C12310i(c12310i);
        c12310i2.f63338b = o7Var.f63444b;
        o1(new RunnableC12409u3(this, c12310i2, o7Var));
    }

    @Override
    @BinderThread
    public final void w0(o7 o7Var) {
        G0.A.l(o7Var.f63444b);
        G0.A.r(o7Var.f63462t);
        k(new C3(this, o7Var));
    }

    @Override
    @BinderThread
    public final List y0(String str, String str2, String str3, boolean z10) {
        l1(str, true);
        try {
            List<k7> list = (List) this.f62905e.b().r(new CallableC12433x3(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (k7 k7Var : list) {
                if (!z10 && m7.N(k7Var.f63380c)) {
                }
                arrayList.add(new i7(k7Var));
            }
            return arrayList;
        } catch (InterruptedException e10) {
            e = e10;
            this.f62905e.a().o().c("Failed to get user properties as. appId", B2.x(str), e);
            return Collections.emptyList();
        } catch (ExecutionException e11) {
            e = e11;
            this.f62905e.a().o().c("Failed to get user properties as. appId", B2.x(str), e);
            return Collections.emptyList();
        }
    }
}
