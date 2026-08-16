package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

public final class C12411u5 extends AbstractC12305h2 {

    public volatile C12348m5 f63619c;

    public volatile C12348m5 f63620d;

    @VisibleForTesting
    public C12348m5 f63621e;

    public final Map f63622f;

    @GuardedBy("activityLock")
    public com.google.android.gms.internal.measurement.K0 f63623g;

    @GuardedBy("activityLock")
    public volatile boolean f63624h;

    public volatile C12348m5 f63625i;

    public C12348m5 f63626j;

    @GuardedBy("activityLock")
    public boolean f63627k;

    public final Object f63628l;

    public C12411u5(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63628l = new Object();
        this.f63622f = new ConcurrentHashMap();
    }

    public final void A(Bundle bundle, C12348m5 c12348m5, C12348m5 c12348m52, long j10) {
        bundle.remove(FirebaseAnalytics.d.f67718p0);
        bundle.remove(FirebaseAnalytics.d.f67716o0);
        G(c12348m5, c12348m52, j10, true, this.f62917a.C().t(null, FirebaseAnalytics.c.f67626A, bundle, null, false));
    }

    public final void B(C12348m5 c12348m5, C12348m5 c12348m52, long j10, boolean z10, Bundle bundle) {
        G(c12348m5, c12348m52, j10, z10, null);
    }

    public final void C(C12348m5 c12348m5, boolean z10, long j10) {
        o(c12348m5, false, j10);
    }

    public final C12348m5 D() {
        return this.f63626j;
    }

    public final void E(C12348m5 c12348m5) {
        this.f63626j = null;
    }

    @MainThread
    public final void F(String str, C12348m5 c12348m5, boolean z10) {
        C12348m5 c12348m52;
        C12348m5 c12348m53 = this.f63619c == null ? this.f63620d : this.f63619c;
        if (c12348m5.f63397b == null) {
            c12348m52 = new C12348m5(c12348m5.f63396a, str != null ? r(str, "Activity") : null, c12348m5.f63398c, c12348m5.f63400e, c12348m5.f63401f);
        } else {
            c12348m52 = c12348m5;
        }
        this.f63620d = this.f63619c;
        this.f63619c = c12348m52;
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.b().t(new RunnableC12364o5(this, c12348m52, c12348m53, c12370p3.e().c(), z10));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d1  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void G(C12348m5 c12348m5, C12348m5 c12348m52, long j10, boolean z10, Bundle bundle) {
        boolean z11;
        long j11;
        long j12;
        h();
        boolean z12 = false;
        if (c12348m52 != null) {
            if (c12348m52.f63398c == c12348m5.f63398c && Objects.equals(c12348m52.f63397b, c12348m5.f63397b) && Objects.equals(c12348m52.f63396a, c12348m5.f63396a)) {
                z11 = false;
                if (z10 && this.f63621e != null) {
                    z12 = true;
                }
                if (z11) {
                    Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
                    m7.k0(c12348m5, bundle2, true);
                    if (c12348m52 != null) {
                        String str = c12348m52.f63396a;
                        if (str != null) {
                            bundle2.putString("_pn", str);
                        }
                        String str2 = c12348m52.f63397b;
                        if (str2 != null) {
                            bundle2.putString("_pc", str2);
                        }
                        bundle2.putLong("_pi", c12348m52.f63398c);
                    }
                    if (z12) {
                        C12412u6 c12412u6 = this.f62917a.z().f63704f;
                        long j13 = j10 - c12412u6.f63630b;
                        c12412u6.f63630b = j10;
                        if (j13 > 0) {
                            this.f62917a.C().Z(bundle2, j13);
                        }
                    }
                    C12370p3 c12370p3 = this.f62917a;
                    if (!c12370p3.w().N()) {
                        bundle2.putLong("_mst", 1L);
                    }
                    boolean z13 = c12348m5.f63400e;
                    String str3 = true != z13 ? "auto" : "app";
                    long a10 = c12370p3.e().a();
                    if (z13) {
                        j11 = a10;
                        long j14 = c12348m5.f63401f;
                        if (j14 != 0) {
                            j12 = j14;
                            this.f62917a.B().u(str3, "_vs", j12, bundle2);
                        }
                    } else {
                        j11 = a10;
                    }
                    j12 = j11;
                    this.f62917a.B().u(str3, "_vs", j12, bundle2);
                }
                if (z12) {
                    o(this.f63621e, true, j10);
                }
                this.f63621e = c12348m5;
                if (c12348m5.f63400e) {
                    this.f63626j = c12348m5;
                }
                this.f62917a.J().u(c12348m5);
            }
        }
        z11 = true;
        if (z10) {
            z12 = true;
        }
        if (z11) {
        }
        if (z12) {
        }
        this.f63621e = c12348m5;
        if (c12348m5.f63400e) {
        }
        this.f62917a.J().u(c12348m5);
    }

    @Override
    public final boolean m() {
        return false;
    }

    @WorkerThread
    public final void o(C12348m5 c12348m5, boolean z10, long j10) {
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.M().k(c12370p3.e().c());
        if (!c12370p3.z().f63704f.d(c12348m5 != null && c12348m5.f63399d, z10, j10) || c12348m5 == null) {
            return;
        }
        c12348m5.f63399d = false;
    }

    @MainThread
    public final C12348m5 p(@NonNull com.google.android.gms.internal.measurement.K0 k02) {
        G0.A.r(k02);
        Integer valueOf = Integer.valueOf(k02.f61969b);
        Map map = this.f63622f;
        C12348m5 c12348m5 = (C12348m5) map.get(valueOf);
        if (c12348m5 == null) {
            C12348m5 c12348m52 = new C12348m5(null, r(k02.f61970c, "Activity"), this.f62917a.C().p0());
            map.put(valueOf, c12348m52);
            c12348m5 = c12348m52;
        }
        return this.f63625i != null ? this.f63625i : c12348m5;
    }

    @WorkerThread
    public final C12348m5 q(boolean z10) {
        j();
        h();
        if (!z10) {
            return this.f63621e;
        }
        C12348m5 c12348m5 = this.f63621e;
        return c12348m5 != null ? c12348m5 : this.f63626j;
    }

    @VisibleForTesting
    public final String r(String str, String str2) {
        if (str == null) {
            return "Activity";
        }
        String[] split = str.split("\\.");
        int length = split.length;
        String str3 = length > 0 ? split[length - 1] : "";
        C12370p3 c12370p3 = this.f62917a;
        return str3.length() > c12370p3.w().x(null, false) ? str3.substring(0, c12370p3.w().x(null, false)) : str3;
    }

    public final void s(Bundle bundle, long j10) {
        synchronized (this.f63628l) {
            try {
                if (!this.f63627k) {
                    this.f62917a.a().t().a("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle.getString(FirebaseAnalytics.d.f67718p0);
                if (string != null && (string.length() <= 0 || string.length() > this.f62917a.w().x(null, false))) {
                    this.f62917a.a().t().b("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                    return;
                }
                String string2 = bundle.getString(FirebaseAnalytics.d.f67716o0);
                if (string2 != null && (string2.length() <= 0 || string2.length() > this.f62917a.w().x(null, false))) {
                    this.f62917a.a().t().b("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                    return;
                }
                if (string2 == null) {
                    com.google.android.gms.internal.measurement.K0 k02 = this.f63623g;
                    string2 = k02 != null ? r(k02.f61970c, "Activity") : "Activity";
                }
                C12348m5 c12348m5 = this.f63619c;
                if (this.f63624h && c12348m5 != null) {
                    this.f63624h = false;
                    boolean equals = Objects.equals(c12348m5.f63397b, string2);
                    boolean equals2 = Objects.equals(c12348m5.f63396a, string);
                    if (equals && equals2) {
                        this.f62917a.a().t().a("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                C12370p3 c12370p3 = this.f62917a;
                c12370p3.a().w().c("Logging screen view with name, class", string == null ? "null" : string, string2 == null ? "null" : string2);
                C12348m5 c12348m52 = this.f63619c == null ? this.f63620d : this.f63619c;
                C12348m5 c12348m53 = new C12348m5(string, string2, c12370p3.C().p0(), true, j10);
                this.f63619c = c12348m53;
                this.f63620d = c12348m52;
                this.f63625i = c12348m53;
                c12370p3.b().t(new RunnableC12356n5(this, bundle, c12348m53, c12348m52, c12370p3.e().c()));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public final void t(@NonNull com.google.android.gms.internal.measurement.K0 k02, @Size(max = 36, min = 1) String str, @Size(max = 36, min = 1) String str2) {
        C12370p3 c12370p3 = this.f62917a;
        if (!c12370p3.w().N()) {
            c12370p3.a().t().a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        C12348m5 c12348m5 = this.f63619c;
        if (c12348m5 == null) {
            c12370p3.a().t().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        Map map = this.f63622f;
        Integer valueOf = Integer.valueOf(k02.f61969b);
        if (map.get(valueOf) == null) {
            c12370p3.a().t().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = r(k02.f61970c, "Activity");
        }
        String str3 = c12348m5.f63397b;
        String str4 = c12348m5.f63396a;
        boolean equals = Objects.equals(str3, str2);
        boolean equals2 = Objects.equals(str4, str);
        if (equals && equals2) {
            c12370p3.a().t().a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > c12370p3.w().x(null, false))) {
            c12370p3.a().t().b("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > c12370p3.w().x(null, false))) {
            c12370p3.a().t().b("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        c12370p3.a().w().c("Setting current screen to name, class", str == null ? "null" : str, str2);
        C12348m5 c12348m52 = new C12348m5(str, str2, c12370p3.C().p0());
        map.put(valueOf, c12348m52);
        F(k02.f61970c, c12348m52, true);
    }

    public final C12348m5 u() {
        return this.f63619c;
    }

    @MainThread
    public final void v(com.google.android.gms.internal.measurement.K0 k02, Bundle bundle) {
        Bundle bundle2;
        if (!this.f62917a.w().N() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f63622f.put(Integer.valueOf(k02.f61969b), new C12348m5(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void w(com.google.android.gms.internal.measurement.K0 k02) {
        Object obj = this.f63628l;
        synchronized (obj) {
            this.f63627k = true;
            if (!Objects.equals(k02, this.f63623g)) {
                synchronized (obj) {
                    this.f63623g = k02;
                    this.f63624h = false;
                    C12370p3 c12370p3 = this.f62917a;
                    if (c12370p3.w().N()) {
                        this.f63625i = null;
                        c12370p3.b().t(new RunnableC12395s5(this));
                    }
                }
            }
        }
        C12370p3 c12370p32 = this.f62917a;
        if (!c12370p32.w().N()) {
            this.f63619c = this.f63625i;
            c12370p32.b().t(new RunnableC12372p5(this));
            return;
        }
        F(k02.f61970c, p(k02), false);
        E0 M10 = this.f62917a.M();
        C12370p3 c12370p33 = M10.f62917a;
        c12370p33.b().t(new RunnableC12271d0(M10, c12370p33.e().c()));
    }

    @MainThread
    public final void x(com.google.android.gms.internal.measurement.K0 k02) {
        synchronized (this.f63628l) {
            this.f63627k = false;
            this.f63624h = true;
        }
        C12370p3 c12370p3 = this.f62917a;
        long c10 = c12370p3.e().c();
        if (!c12370p3.w().N()) {
            this.f63619c = null;
            c12370p3.b().t(new RunnableC12380q5(this, c10));
        } else {
            C12348m5 p10 = p(k02);
            this.f63620d = this.f63619c;
            this.f63619c = null;
            c12370p3.b().t(new RunnableC12387r5(this, p10, c10));
        }
    }

    @MainThread
    public final void y(com.google.android.gms.internal.measurement.K0 k02, Bundle bundle) {
        C12348m5 c12348m5;
        if (!this.f62917a.w().N() || bundle == null || (c12348m5 = (C12348m5) this.f63622f.get(Integer.valueOf(k02.f61969b))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c12348m5.f63398c);
        bundle2.putString("name", c12348m5.f63396a);
        bundle2.putString("referrer_name", c12348m5.f63397b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @MainThread
    public final void z(com.google.android.gms.internal.measurement.K0 k02) {
        synchronized (this.f63628l) {
            try {
                if (Objects.equals(this.f63623g, k02)) {
                    this.f63623g = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (this.f62917a.w().N()) {
            this.f63622f.remove(Integer.valueOf(k02.f61969b));
        }
    }
}
