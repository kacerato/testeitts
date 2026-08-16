package com.google.android.gms.measurement.internal;

import T0.C3038h;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.EnumC12242z4;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12564r1;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import n1.C14345a;
import org.openjdk.tools.doclint.DocLint;

public final class C12260b5 extends AbstractC12305h2 {

    @VisibleForTesting
    public N4 f63024c;

    public InterfaceC12275d4 f63025d;

    public final Set f63026e;

    public boolean f63027f;

    public final AtomicReference f63028g;

    public final Object f63029h;

    public boolean f63030i;

    public int f63031j;

    public AbstractC12445z f63032k;

    public AbstractC12445z f63033l;

    public PriorityQueue f63034m;

    public boolean f63035n;

    @GuardedBy("consentLock")
    public Z3 f63036o;

    public final AtomicLong f63037p;

    public long f63038q;

    public final u7 f63039r;

    @VisibleForTesting
    public boolean f63040s;

    public AbstractC12445z f63041t;

    public SharedPreferences.OnSharedPreferenceChangeListener f63042u;

    public AbstractC12445z f63043v;

    public final l7 f63044w;

    public C12260b5(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63026e = new CopyOnWriteArraySet();
        this.f63029h = new Object();
        this.f63030i = false;
        this.f63031j = 1;
        this.f63040s = true;
        this.f63044w = new C4(this);
        this.f63028g = new AtomicReference();
        this.f63036o = Z3.f62987c;
        this.f63038q = -1L;
        this.f63037p = new AtomicLong(0L);
        this.f63039r = new u7(c12370p3);
    }

    public final void A(String str, String str2, long j10, Object obj) {
        this.f62917a.b().t(new RunnableC12394s4(this, str, str2, obj, j10));
    }

    @WorkerThread
    public final void B(String str, String str2, Object obj, long j10) {
        G0.A.l(str);
        G0.A.l(str2);
        h();
        j();
        Object obj2 = obj;
        if (FirebaseAnalytics.e.f67731b.equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    long j11 = true != "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 0L : 1L;
                    C12370p3 c12370p3 = this.f62917a;
                    Long valueOf = Long.valueOf(j11);
                    c12370p3.x().f62859n.b(valueOf.longValue() == 1 ? "true" : "false");
                    obj = valueOf;
                    str2 = "_npa";
                    this.f62917a.a().w().c("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
                    obj2 = obj;
                }
            }
            if (obj == null) {
                this.f62917a.x().f62859n.b("unset");
                obj = obj;
                str2 = "_npa";
            }
            this.f62917a.a().w().c("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
            obj2 = obj;
        }
        String str4 = str2;
        Object obj3 = obj2;
        C12370p3 c12370p32 = this.f62917a;
        if (!c12370p32.g()) {
            this.f62917a.a().w().a("User property not set since app measurement is disabled");
        } else if (c12370p32.m()) {
            this.f62917a.J().o(new i7(str4, j10, obj3, str));
        }
    }

    public final List C(boolean z10) {
        j();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().a("Getting user properties (FE)");
        if (c12370p3.b().p()) {
            c12370p3.a().o().a("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        c12370p3.c();
        if (C12286f.a()) {
            c12370p3.a().o().a("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f62917a.b().u(atomicReference, 5000L, "get user properties", new RunnableC12410u4(this, atomicReference, z10));
        List list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        c12370p3.a().o().b("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z10));
        return Collections.emptyList();
    }

    public final Map D(String str, String str2, boolean z10) {
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.b().p()) {
            c12370p3.a().o().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        c12370p3.c();
        if (C12286f.a()) {
            c12370p3.a().o().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f62917a.b().u(atomicReference, 5000L, "get user properties", new A4(this, atomicReference, null, str, str2, z10));
        List<i7> list = (List) atomicReference.get();
        if (list == null) {
            c12370p3.a().o().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z10));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (i7 i7Var : list) {
            Object n10 = i7Var.n();
            if (n10 != null) {
                arrayMap.put(i7Var.f63358c, n10);
            }
        }
        return arrayMap;
    }

    public final String E() {
        return (String) this.f63028g.get();
    }

    public final void F(String str) {
        this.f63028g.set(str);
    }

    @WorkerThread
    public final void G() {
        h();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.x().f62866u.a()) {
            c12370p3.a().v().a("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long a10 = c12370p3.x().f62867v.a();
        c12370p3.x().f62867v.b(1 + a10);
        c12370p3.w();
        if (a10 >= 5) {
            c12370p3.a().r().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            c12370p3.x().f62866u.b(true);
        } else {
            if (this.f63041t == null) {
                this.f63041t = new C12418v4(this, this.f62917a);
            }
            this.f63041t.b(0L);
        }
    }

    public final void H(long j10) {
        this.f63028g.set(null);
        this.f62917a.b().t(new RunnableC12426w4(this, j10));
    }

    @WorkerThread
    public final void I() {
        h();
        j();
        if (this.f62917a.m()) {
            C12370p3 c12370p3 = this.f62917a;
            C12342m w10 = c12370p3.w();
            w10.f62917a.c();
            Boolean J10 = w10.J("google_analytics_deferred_deep_link_enabled");
            if (J10 != null && J10.booleanValue()) {
                c12370p3.a().v().a("Deferred Deep Link feature enabled.");
                c12370p3.b().t(new Runnable() {
                    @Override
                    public final void run() {
                        C12260b5.this.G();
                    }
                });
            }
            this.f62917a.J().s();
            this.f63040s = false;
            P2 x10 = c12370p3.x();
            x10.h();
            String string = x10.p().getString("previous_os_version", null);
            x10.f62917a.K().l();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = x10.p().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            c12370p3.K().l();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            t("auto", "_ou", bundle);
        }
    }

    @WorkerThread
    public final void J(InterfaceC12275d4 interfaceC12275d4) {
        InterfaceC12275d4 interfaceC12275d42;
        h();
        j();
        if (interfaceC12275d4 != null && interfaceC12275d4 != (interfaceC12275d42 = this.f63025d)) {
            G0.A.y(interfaceC12275d42 == null, "EventInterceptor already set.");
        }
        this.f63025d = interfaceC12275d4;
    }

    public final void K(InterfaceC12283e4 interfaceC12283e4) {
        j();
        G0.A.r(interfaceC12283e4);
        if (this.f63026e.add(interfaceC12283e4)) {
            return;
        }
        this.f62917a.a().r().a("OnEventListener already registered");
    }

    public final void L(InterfaceC12283e4 interfaceC12283e4) {
        j();
        G0.A.r(interfaceC12283e4);
        if (this.f63026e.remove(interfaceC12283e4)) {
            return;
        }
        this.f62917a.a().r().a("OnEventListener had not been registered");
    }

    public final int M(String str) {
        G0.A.l(str);
        this.f62917a.w();
        return 25;
    }

    public final void N(Bundle bundle) {
        O(bundle, this.f62917a.e().a());
    }

    public final void O(Bundle bundle, long j10) {
        G0.A.r(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.f62917a.a().r().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        G0.A.r(bundle2);
        V3.b(bundle2, "app_id", String.class, null);
        V3.b(bundle2, "origin", String.class, null);
        V3.b(bundle2, "name", String.class, null);
        V3.b(bundle2, "value", Object.class, null);
        V3.b(bundle2, C14345a.C1879a.f97704d, String.class, null);
        V3.b(bundle2, C14345a.C1879a.f97705e, Long.class, 0L);
        V3.b(bundle2, C14345a.C1879a.f97706f, String.class, null);
        V3.b(bundle2, C14345a.C1879a.f97707g, Bundle.class, null);
        V3.b(bundle2, C14345a.C1879a.f97708h, String.class, null);
        V3.b(bundle2, C14345a.C1879a.f97709i, Bundle.class, null);
        V3.b(bundle2, C14345a.C1879a.f97710j, Long.class, 0L);
        V3.b(bundle2, C14345a.C1879a.f97711k, String.class, null);
        V3.b(bundle2, C14345a.C1879a.f97712l, Bundle.class, null);
        G0.A.l(bundle2.getString("name"));
        G0.A.l(bundle2.getString("origin"));
        G0.A.r(bundle2.get("value"));
        bundle2.putLong(C14345a.C1879a.f97713m, j10);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.C().y0(string) != 0) {
            c12370p3.a().o().b("Invalid conditional user property name", c12370p3.D().c(string));
            return;
        }
        if (c12370p3.C().y(string, obj) != 0) {
            c12370p3.a().o().c("Invalid conditional user property value", c12370p3.D().c(string), obj);
            return;
        }
        Object z10 = c12370p3.C().z(string, obj);
        if (z10 == null) {
            c12370p3.a().o().c("Unable to normalize conditional user property value", c12370p3.D().c(string), obj);
            return;
        }
        V3.a(bundle2, z10);
        long j11 = bundle2.getLong(C14345a.C1879a.f97705e);
        if (!TextUtils.isEmpty(bundle2.getString(C14345a.C1879a.f97704d))) {
            c12370p3.w();
            if (j11 > 15552000000L || j11 < 1) {
                c12370p3.a().o().c("Invalid conditional user property timeout", c12370p3.D().c(string), Long.valueOf(j11));
                return;
            }
        }
        long j12 = bundle2.getLong(C14345a.C1879a.f97710j);
        c12370p3.w();
        if (j12 > 15552000000L || j12 < 1) {
            c12370p3.a().o().c("Invalid conditional user property time to live", c12370p3.D().c(string), Long.valueOf(j12));
        } else {
            c12370p3.b().t(new RunnableC12434x4(this, bundle2));
        }
    }

    public final void P(String str, String str2, Bundle bundle) {
        C12370p3 c12370p3 = this.f62917a;
        long a10 = c12370p3.e().a();
        G0.A.l(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(C14345a.C1879a.f97713m, a10);
        if (str2 != null) {
            bundle2.putString(C14345a.C1879a.f97711k, str2);
            bundle2.putBundle(C14345a.C1879a.f97712l, bundle);
        }
        c12370p3.b().t(new RunnableC12442y4(this, bundle2));
    }

    public final ArrayList Q(String str, String str2) {
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.b().p()) {
            c12370p3.a().o().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        c12370p3.c();
        if (C12286f.a()) {
            c12370p3.a().o().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f62917a.b().u(atomicReference, 5000L, "get conditional user properties", new RunnableC12450z4(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return m7.h0(list);
        }
        c12370p3.a().o().b("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final String R() {
        C12348m5 u10 = this.f62917a.I().u();
        if (u10 != null) {
            return u10.f63396a;
        }
        return null;
    }

    public final String S() {
        C12348m5 u10 = this.f62917a.I().u();
        if (u10 != null) {
            return u10.f63397b;
        }
        return null;
    }

    public final void T(SharedPreferences sharedPreferences, String str) {
        C12370p3 c12370p3 = this.f62917a;
        if (!c12370p3.w().H(null, C12281e2.f63190a1)) {
            if (Objects.equals(str, "IABTCF_TCString")) {
                c12370p3.a().w().a("IABTCF_TCString change picked up in listener.");
                ((AbstractC12445z) G0.A.r(this.f63043v)).b(500L);
                return;
            }
            return;
        }
        if (Objects.equals(str, "IABTCF_TCString") || Objects.equals(str, "IABTCF_gdprApplies") || Objects.equals(str, "IABTCF_EnableAdvertiserConsentMode")) {
            c12370p3.a().w().a("IABTCF_TCString change picked up in listener.");
            ((AbstractC12445z) G0.A.r(this.f63043v)).b(500L);
        }
    }

    public final void U(Bundle bundle) {
        Bundle bundle2;
        int i10;
        if (bundle.isEmpty()) {
            bundle2 = bundle;
        } else {
            C12370p3 c12370p3 = this.f62917a;
            bundle2 = new Bundle(c12370p3.x().f62871z.a());
            Iterator<String> it = bundle.keySet().iterator();
            while (true) {
                i10 = 0;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Object obj = bundle.get(next);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    if (c12370p3.C().B0(obj)) {
                        c12370p3.C().B(this.f63044w, null, 27, null, null, 0);
                    }
                    c12370p3.a().t().c("Invalid default event parameter type. Name, value", next, obj);
                } else if (m7.N(next)) {
                    c12370p3.a().t().b("Invalid default event parameter name. Name", next);
                } else if (obj == null) {
                    bundle2.remove(next);
                } else if (c12370p3.C().C0("param", next, c12370p3.w().x(null, false), obj)) {
                    c12370p3.C().A(bundle2, next, obj);
                }
            }
            c12370p3.C();
            int v10 = c12370p3.w().v();
            if (bundle2.size() > v10) {
                for (String str : new TreeSet(bundle2.keySet())) {
                    i10++;
                    if (i10 > v10) {
                        bundle2.remove(str);
                    }
                }
                c12370p3.C().B(this.f63044w, null, 26, null, null, 0);
                c12370p3.a().t().a("Too many default event parameters set. Discarding beyond event parameter limit");
            }
        }
        C12370p3 c12370p32 = this.f62917a;
        c12370p32.x().f62871z.b(bundle2);
        if (!bundle.isEmpty() || c12370p32.w().H(null, C12281e2.f63183X0)) {
            this.f62917a.J().v(bundle2);
        }
    }

    public final void V(int i10) {
        if (this.f63032k == null) {
            this.f63032k = new C12339l4(this, this.f62917a);
        }
        this.f63032k.b(i10 * 1000);
    }

    public final void W(Boolean bool, boolean z10) {
        f0(bool, true);
    }

    public final void X(Z3 z32, long j10, boolean z10, boolean z11) {
        h();
        j();
        C12370p3 c12370p3 = this.f62917a;
        Z3 w10 = c12370p3.x().w();
        if (j10 <= this.f63038q && Z3.u(w10.b(), z32.b())) {
            c12370p3.a().u().b("Dropped out-of-date consent setting, proposed settings", z32);
            return;
        }
        P2 x10 = c12370p3.x();
        C12370p3 c12370p32 = x10.f62917a;
        x10.h();
        int b10 = z32.b();
        if (!x10.v(b10)) {
            c12370p3.a().u().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(z32.b()));
            return;
        }
        C12370p3 c12370p33 = this.f62917a;
        SharedPreferences.Editor edit = x10.p().edit();
        edit.putString("consent_settings", z32.l());
        edit.putInt("consent_source", b10);
        edit.apply();
        c12370p3.a().w().b("Setting storage consent(FE)", z32);
        this.f63038q = j10;
        if (c12370p33.J().D()) {
            c12370p33.J().Z(z10);
        } else {
            c12370p33.J().Y(z10);
        }
        if (z11) {
            c12370p33.J().q(new AtomicReference());
        }
    }

    public final void Z(boolean z10) {
        this.f63030i = false;
    }

    public final int a0() {
        return this.f63031j;
    }

    public final void b0(int i10) {
        this.f63031j = i10;
    }

    public final AbstractC12445z c0() {
        return this.f63041t;
    }

    public final int d0(Throwable th2) {
        String message = th2.getMessage();
        this.f63035n = false;
        int i10 = 2;
        if (message != null) {
            if ((th2 instanceof IllegalStateException) || message.contains("garbage collected") || th2.getClass().getSimpleName().equals("ServiceUnavailableException")) {
                i10 = 1;
                if (message.contains("Background")) {
                    this.f63035n = true;
                    return 1;
                }
            } else if ((th2 instanceof SecurityException) && !message.endsWith("READ_DEVICE_CONFIG")) {
                return 3;
            }
        }
        return i10;
    }

    public final EnumC12324j5 e0(final H6 h62) {
        try {
            URL url = new URI(h62.f62674d).toURL();
            final AtomicReference atomicReference = new AtomicReference();
            String s10 = this.f62917a.L().s();
            C12370p3 c12370p3 = this.f62917a;
            C12448z2 w10 = c12370p3.a().w();
            Long valueOf = Long.valueOf(h62.f62672b);
            w10.d("[sgtm] Uploading data from app. row_id, url, uncompressed size", valueOf, h62.f62674d, Integer.valueOf(h62.f62673c.length));
            if (!TextUtils.isEmpty(h62.f62678h)) {
                c12370p3.a().w().c("[sgtm] Uploading data from app. row_id", valueOf, h62.f62678h);
            }
            HashMap hashMap = new HashMap();
            Bundle bundle = h62.f62675e;
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put(str, string);
                }
            }
            C12300g5 F10 = c12370p3.F();
            byte[] bArr = h62.f62673c;
            InterfaceC12276d5 interfaceC12276d5 = new InterfaceC12276d5() {
                /* JADX WARN: Removed duplicated region for block: B:10:0x0064  */
                /* JADX WARN: Removed duplicated region for block: B:13:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
                @Override
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void a(String str2, int i10, Throwable th2, byte[] bArr2, Map map) {
                    EnumC12324j5 enumC12324j5;
                    AtomicReference atomicReference2;
                    C12260b5 c12260b5 = C12260b5.this;
                    c12260b5.h();
                    H6 h63 = h62;
                    if (i10 != 200 && i10 != 204) {
                        if (i10 == 304) {
                            i10 = 304;
                        }
                        c12260b5.f62917a.a().r().d("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(h63.f62672b), Integer.valueOf(i10), th2);
                        enumC12324j5 = !Arrays.asList(((String) C12281e2.f63239u.b(null)).split(DocLint.SEPARATOR)).contains(String.valueOf(i10)) ? EnumC12324j5.BACKOFF : EnumC12324j5.FAILURE;
                        atomicReference2 = atomicReference;
                        C12293f6 J10 = c12260b5.f62917a.J();
                        long j10 = h63.f62672b;
                        J10.l0(new C12294g(j10, enumC12324j5.N1(), h63.f62677g));
                        c12260b5.f62917a.a().w().c("[sgtm] Updated status for row_id", Long.valueOf(j10), enumC12324j5);
                        synchronized (atomicReference2) {
                            atomicReference2.set(enumC12324j5);
                            atomicReference2.notifyAll();
                        }
                        return;
                    }
                    if (th2 == null) {
                        c12260b5.f62917a.a().w().b("[sgtm] Upload succeeded for row_id", Long.valueOf(h63.f62672b));
                        enumC12324j5 = EnumC12324j5.SUCCESS;
                        atomicReference2 = atomicReference;
                        C12293f6 J102 = c12260b5.f62917a.J();
                        long j102 = h63.f62672b;
                        J102.l0(new C12294g(j102, enumC12324j5.N1(), h63.f62677g));
                        c12260b5.f62917a.a().w().c("[sgtm] Updated status for row_id", Long.valueOf(j102), enumC12324j5);
                        synchronized (atomicReference2) {
                        }
                    }
                    c12260b5.f62917a.a().r().d("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(h63.f62672b), Integer.valueOf(i10), th2);
                    if (!Arrays.asList(((String) C12281e2.f63239u.b(null)).split(DocLint.SEPARATOR)).contains(String.valueOf(i10))) {
                    }
                    atomicReference2 = atomicReference;
                    C12293f6 J1022 = c12260b5.f62917a.J();
                    long j1022 = h63.f62672b;
                    J1022.l0(new C12294g(j1022, enumC12324j5.N1(), h63.f62677g));
                    c12260b5.f62917a.a().w().c("[sgtm] Updated status for row_id", Long.valueOf(j1022), enumC12324j5);
                    synchronized (atomicReference2) {
                    }
                }
            };
            F10.l();
            G0.A.r(url);
            G0.A.r(bArr);
            G0.A.r(interfaceC12276d5);
            F10.f62917a.b().w(new RunnableC12292f5(F10, s10, url, bArr, hashMap, interfaceC12276d5));
            try {
                C12370p3 c12370p32 = c12370p3.C().f62917a;
                long a10 = c12370p32.e().a() + 60000;
                synchronized (atomicReference) {
                    for (long j10 = 60000; atomicReference.get() == null && j10 > 0; j10 = a10 - c12370p32.e().a()) {
                        try {
                            atomicReference.wait(j10);
                        } finally {
                        }
                    }
                }
            } catch (InterruptedException unused) {
                this.f62917a.a().r().a("[sgtm] Interrupted waiting for uploading batch");
            }
            return atomicReference.get() == null ? EnumC12324j5.UNKNOWN : (EnumC12324j5) atomicReference.get();
        } catch (MalformedURLException | URISyntaxException e10) {
            this.f62917a.a().o().d("[sgtm] Bad upload url for row_id", h62.f62674d, Long.valueOf(h62.f62672b), e10);
            return EnumC12324j5.FAILURE;
        }
    }

    @WorkerThread
    public final void f0(Boolean bool, boolean z10) {
        h();
        j();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().v().b("Setting app measurement enabled (FE)", bool);
        c12370p3.x().s(bool);
        if (z10) {
            P2 x10 = c12370p3.x();
            C12370p3 c12370p32 = x10.f62917a;
            x10.h();
            SharedPreferences.Editor edit = x10.p().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (this.f62917a.j() || !(bool == null || bool.booleanValue())) {
            Y();
        }
    }

    @WorkerThread
    public final void Y() {
        h();
        C12370p3 c12370p3 = this.f62917a;
        String a10 = c12370p3.x().f62859n.a();
        if (a10 != null) {
            if ("unset".equals(a10)) {
                B("app", "_npa", null, c12370p3.e().a());
            } else {
                B("app", "_npa", Long.valueOf(true != "true".equals(a10) ? 0L : 1L), c12370p3.e().a());
            }
        }
        if (!this.f62917a.g() || !this.f63040s) {
            c12370p3.a().v().a("Updating Scion state (FE)");
            this.f62917a.J().X();
        } else {
            c12370p3.a().v().a("Recording app launch after enabling measurement for the first time (FE)");
            I();
            this.f62917a.z().f63703e.a();
            c12370p3.b().t(new RunnableC12355n4(this));
        }
    }

    public final void h0() {
        C12370p3 c12370p3 = this.f62917a;
        if (!(c12370p3.d().getApplicationContext() instanceof Application) || this.f63024c == null) {
            return;
        }
        ((Application) c12370p3.d().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f63024c);
    }

    public final Boolean i0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f62917a.b().u(atomicReference, 15000L, "boolean test flag value", new RunnableC12402t4(this, atomicReference));
    }

    public final String j0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f62917a.b().u(atomicReference, 15000L, "String test flag value", new D4(this, atomicReference));
    }

    public final Long k0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f62917a.b().u(atomicReference, 15000L, "long test flag value", new E4(this, atomicReference));
    }

    public final Integer l0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f62917a.b().u(atomicReference, 15000L, "int test flag value", new F4(this, atomicReference));
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final Double m0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f62917a.b().u(atomicReference, 15000L, "double test flag value", new G4(this, atomicReference));
    }

    public final void n0(Boolean bool) {
        j();
        this.f62917a.b().t(new H4(this, bool));
    }

    @WorkerThread
    public final void o(Z3 z32) {
        h();
        boolean z10 = (z32.o(Y3.ANALYTICS_STORAGE) && z32.o(Y3.AD_STORAGE)) || this.f62917a.J().C();
        C12370p3 c12370p3 = this.f62917a;
        if (z10 != c12370p3.j()) {
            c12370p3.i(z10);
            P2 x10 = this.f62917a.x();
            C12370p3 c12370p32 = x10.f62917a;
            x10.h();
            Boolean valueOf = x10.p().contains("measurement_enabled_from_api") ? Boolean.valueOf(x10.p().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z10 || valueOf == null || valueOf.booleanValue()) {
                f0(Boolean.valueOf(z10), false);
            }
        }
    }

    @VisibleForTesting
    public final void o0(Bundle bundle, int i10, long j10) {
        Object obj;
        String string;
        j();
        Z3 z32 = Z3.f62987c;
        Y3[] b10 = X3.STORAGE.b();
        int length = b10.length;
        int i11 = 0;
        while (true) {
            obj = null;
            if (i11 >= length) {
                break;
            }
            String str = b10[i11].zze;
            if (bundle.containsKey(str) && (string = bundle.getString(str)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i11++;
        }
        if (obj != null) {
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().t().b("Ignoring invalid consent setting", obj);
            c12370p3.a().t().a("Valid consent values are 'granted', 'denied'");
        }
        boolean p10 = this.f62917a.b().p();
        Z3 e10 = Z3.e(bundle, i10);
        if (e10.c()) {
            q0(e10, p10);
        }
        A h10 = A.h(bundle, i10);
        if (h10.d()) {
            p0(h10, p10);
        }
        Boolean i12 = A.i(bundle);
        if (i12 != null) {
            String str2 = i10 == -30 ? "tcf" : "app";
            if (p10) {
                B(str2, FirebaseAnalytics.e.f67731b, i12.toString(), j10);
            } else {
                z(str2, FirebaseAnalytics.e.f67731b, i12.toString(), false, j10);
            }
        }
    }

    public final void p(String str, String str2, Bundle bundle) {
        q(str, str2, bundle, true, true, this.f62917a.e().a());
    }

    public final void p0(A a10, boolean z10) {
        I4 i42 = new I4(this, a10);
        if (!z10) {
            this.f62917a.b().t(i42);
        } else {
            h();
            i42.run();
        }
    }

    public final void q(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (Objects.equals(str2, FirebaseAnalytics.c.f67626A)) {
            this.f62917a.I().s(bundle2, j10);
            return;
        }
        boolean z12 = true;
        if (z11 && this.f63025d != null && !m7.N(str2)) {
            z12 = false;
        }
        x(str == null ? "app" : str, str2, j10, bundle2, z11, z12, z10, null);
    }

    public final void q0(Z3 z32, boolean z10) {
        boolean z11;
        Z3 z33;
        boolean z12;
        boolean z13;
        j();
        int b10 = z32.b();
        if (b10 != -10) {
            W3 p10 = z32.p();
            W3 w32 = W3.UNINITIALIZED;
            if (p10 == w32 && z32.q() == w32) {
                this.f62917a.a().t().a("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.f63029h) {
            try {
                z11 = false;
                if (Z3.u(b10, this.f63036o.b())) {
                    z12 = z32.r(this.f63036o);
                    Y3 y32 = Y3.ANALYTICS_STORAGE;
                    if (z32.o(y32) && !this.f63036o.o(y32)) {
                        z11 = true;
                    }
                    Z3 t10 = z32.t(this.f63036o);
                    this.f63036o = t10;
                    z33 = t10;
                    z13 = z11;
                    z11 = true;
                } else {
                    z33 = z32;
                    z12 = false;
                    z13 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z11) {
            this.f62917a.a().u().b("Ignoring lower-priority consent settings, proposed settings", z33);
            return;
        }
        long andIncrement = this.f63037p.getAndIncrement();
        if (z12) {
            this.f63028g.set(null);
            J4 j42 = new J4(this, z33, andIncrement, z13);
            if (!z10) {
                this.f62917a.b().v(j42);
                return;
            } else {
                h();
                j42.run();
                return;
            }
        }
        K4 k42 = new K4(this, z33, andIncrement, z13);
        if (z10) {
            h();
            k42.run();
        } else if (b10 == 30 || b10 == -10) {
            this.f62917a.b().v(k42);
        } else {
            this.f62917a.b().t(k42);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final void r() {
        C12370p3 c12370p3;
        C12273d2 c12273d2;
        C12444y6 c12444y6;
        C12444y6 c12444y62;
        int i10;
        C12260b5 c12260b5;
        com.google.android.gms.internal.measurement.A4 a42;
        h();
        C12370p3 c12370p32 = this.f62917a;
        c12370p32.a().v().a("Handle tcf update.");
        SharedPreferences q10 = c12370p32.x().q();
        HashMap hashMap = new HashMap();
        C12273d2 c12273d22 = C12281e2.f63190a1;
        if (((Boolean) c12273d22.b(null)).booleanValue()) {
            int i11 = A6.f62540b;
            EnumC12242z4 enumC12242z4 = EnumC12242z4.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
            EnumC12452z6 enumC12452z6 = EnumC12452z6.CONSENT;
            Map.Entry a10 = C12252a5.a(enumC12242z4, enumC12452z6);
            EnumC12242z4 enumC12242z42 = EnumC12242z4.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
            EnumC12452z6 enumC12452z62 = EnumC12452z6.FLEXIBLE_LEGITIMATE_INTEREST;
            c12273d2 = c12273d22;
            c12370p3 = c12370p32;
            AbstractC12529i1 K10 = AbstractC12529i1.K(a10, C12252a5.a(enumC12242z42, enumC12452z62), C12252a5.a(EnumC12242z4.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE, enumC12452z6), C12252a5.a(EnumC12242z4.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS, enumC12452z6), C12252a5.a(EnumC12242z4.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE, enumC12452z62), C12252a5.a(EnumC12242z4.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS, enumC12452z62), C12252a5.a(EnumC12242z4.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS, enumC12452z62));
            AbstractC12564r1 A10 = AbstractC12564r1.A("CH");
            char[] cArr = new char[5];
            boolean contains = q10.contains("IABTCF_TCString");
            int b10 = A6.b(q10, "IABTCF_CmpSdkID");
            int b11 = A6.b(q10, "IABTCF_PolicyVersion");
            int b12 = A6.b(q10, "IABTCF_gdprApplies");
            int b13 = A6.b(q10, "IABTCF_PurposeOneTreatment");
            int b14 = A6.b(q10, "IABTCF_EnableAdvertiserConsentMode");
            String a11 = A6.a(q10, "IABTCF_PublisherCC");
            AbstractC12529i1.b i12 = AbstractC12529i1.i();
            com.google.common.collect.e3 it = K10.o().iterator();
            while (it.hasNext()) {
                EnumC12242z4 enumC12242z43 = (EnumC12242z4) it.next();
                int N12 = enumC12242z43.N1();
                StringBuilder sb2 = new StringBuilder(String.valueOf(N12).length() + 28);
                sb2.append("IABTCF_PublisherRestrictions");
                sb2.append(N12);
                String a12 = A6.a(q10, sb2.toString());
                if (TextUtils.isEmpty(a12) || a12.length() < 755) {
                    a42 = com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED;
                } else {
                    int digit = Character.digit(a12.charAt(754), 10);
                    a42 = (digit < 0 || digit > com.google.android.gms.internal.measurement.A4.values().length || digit == 0) ? com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_NOT_ALLOWED : digit != 1 ? digit != 2 ? com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                }
                i12.i(enumC12242z43, a42);
            }
            AbstractC12529i1 d10 = i12.d();
            String a13 = A6.a(q10, "IABTCF_PurposeConsents");
            String a14 = A6.a(q10, "IABTCF_VendorConsents");
            boolean z10 = !TextUtils.isEmpty(a14) && a14.length() >= 755 && a14.charAt(754) == '1';
            String a15 = A6.a(q10, "IABTCF_PurposeLegitimateInterests");
            String a16 = A6.a(q10, "IABTCF_VendorLegitimateInterests");
            boolean z11 = !TextUtils.isEmpty(a16) && a16.length() >= 755 && a16.charAt(754) == '1';
            cArr[0] = '2';
            c12444y6 = new C12444y6(A6.d(K10, d10, A10, cArr, b10, b14, b12, b11, b13, a11, a13, a15, z10, z11, contains));
        } else {
            c12370p3 = c12370p32;
            c12273d2 = c12273d22;
            String a17 = A6.a(q10, "IABTCF_VendorConsents");
            if (!"".equals(a17) && a17.length() > 754) {
                hashMap.put("GoogleConsent", String.valueOf(a17.charAt(754)));
            }
            int b15 = A6.b(q10, "IABTCF_gdprApplies");
            if (b15 != -1) {
                hashMap.put("gdprApplies", String.valueOf(b15));
            }
            int b16 = A6.b(q10, "IABTCF_EnableAdvertiserConsentMode");
            if (b16 != -1) {
                hashMap.put("EnableAdvertiserConsentMode", String.valueOf(b16));
            }
            int b17 = A6.b(q10, "IABTCF_PolicyVersion");
            if (b17 != -1) {
                hashMap.put("PolicyVersion", String.valueOf(b17));
            }
            String a18 = A6.a(q10, "IABTCF_PurposeConsents");
            if (!"".equals(a18)) {
                hashMap.put("PurposeConsents", a18);
            }
            int b18 = A6.b(q10, "IABTCF_CmpSdkID");
            if (b18 != -1) {
                hashMap.put("CmpSdkID", String.valueOf(b18));
            }
            c12444y6 = new C12444y6(hashMap);
        }
        c12370p3.a().w().b("Tcf preferences read", c12444y6);
        if (!c12370p3.w().H(null, c12273d2)) {
            if (c12370p3.x().x(c12444y6)) {
                Bundle b19 = c12444y6.b();
                c12370p3.a().w().b("Consent generated from Tcf", b19);
                if (b19 != Bundle.EMPTY) {
                    o0(b19, -30, c12370p3.e().a());
                }
                Bundle bundle = new Bundle();
                bundle.putString("_tcfd", c12444y6.e());
                t("auto", "_tcf", bundle);
                return;
            }
            return;
        }
        P2 x10 = c12370p3.x();
        x10.h();
        String string = x10.p().getString("stored_tcf_param", "");
        HashMap hashMap2 = new HashMap();
        if (TextUtils.isEmpty(string)) {
            c12444y62 = new C12444y6(hashMap2);
        } else {
            String[] split = string.split(";");
            int length = split.length;
            int i13 = 0;
            while (i13 < length) {
                String[] split2 = split[i13].split("=");
                if (split2.length < 2 || !A6.f62539a.contains(split2[0])) {
                    i10 = 1;
                } else {
                    i10 = 1;
                    hashMap2.put(split2[0], split2[1]);
                }
                i13 += i10;
            }
            c12444y62 = new C12444y6(hashMap2);
        }
        if (c12370p3.x().x(c12444y6)) {
            Bundle b20 = c12444y6.b();
            c12370p3.a().w().b("Consent generated from Tcf", b20);
            if (b20 != Bundle.EMPTY) {
                c12260b5 = this;
                c12260b5.o0(b20, -30, c12370p3.e().a());
            } else {
                c12260b5 = this;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_tcfm", c12444y6.d(c12444y62));
            bundle2.putString("_tcfd2", c12444y6.c());
            bundle2.putString("_tcfd", c12444y6.e());
            c12260b5.t("auto", "_tcf", bundle2);
        }
    }

    public final void r0(Runnable runnable) {
        j();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.b().p()) {
            c12370p3.a().o().a("Cannot retrieve and upload batches from analytics worker thread");
            return;
        }
        if (c12370p3.b().q()) {
            c12370p3.a().o().a("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        c12370p3.c();
        if (C12286f.a()) {
            c12370p3.a().o().a("Cannot retrieve and upload batches from main thread");
            return;
        }
        c12370p3.a().w().a("[sgtm] Started client-side batch upload work.");
        boolean z10 = false;
        int i10 = 0;
        int i11 = 0;
        while (!z10) {
            c12370p3.a().w().a("[sgtm] Getting upload batches from service (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            c12370p3.b().u(atomicReference, FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, "[sgtm] Getting upload batches", new Runnable() {
                @Override
                public final void run() {
                    C12260b5.this.f62917a.J().k0(atomicReference, J6.b(EnumC12332k5.SGTM_CLIENT));
                }
            });
            L6 l62 = (L6) atomicReference.get();
            if (l62 == null) {
                break;
            }
            List list = l62.f62783b;
            if (!list.isEmpty()) {
                c12370p3.a().w().b("[sgtm] Retrieved upload batches. count", Integer.valueOf(list.size()));
                i10 += list.size();
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    }
                    EnumC12324j5 e02 = e0((H6) it.next());
                    if (e02 == EnumC12324j5.SUCCESS) {
                        i11++;
                    } else if (e02 == EnumC12324j5.BACKOFF) {
                        z10 = true;
                        break;
                    }
                }
            } else {
                break;
            }
        }
        c12370p3.a().w().c("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(i10), Integer.valueOf(i11));
        runnable.run();
    }

    @WorkerThread
    public final void s() {
        h();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().v().a("Register tcfPrefChangeListener.");
        if (this.f63042u == null) {
            this.f63043v = new C12379q4(this, this.f62917a);
            this.f63042u = new SharedPreferences.OnSharedPreferenceChangeListener() {
                @Override
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    C12260b5.this.T(sharedPreferences, str);
                }
            };
        }
        c12370p3.x().q().registerOnSharedPreferenceChangeListener(this.f63042u);
    }

    @WorkerThread
    public final void s0(long j10) {
        h();
        if (this.f63033l == null) {
            this.f63033l = new C12315i4(this, this.f62917a);
        }
        this.f63033l.b(j10);
    }

    @WorkerThread
    public final void t(String str, String str2, Bundle bundle) {
        h();
        u(str, str2, this.f62917a.e().a(), bundle);
    }

    @WorkerThread
    public final void t0() {
        h();
        AbstractC12445z abstractC12445z = this.f63033l;
        if (abstractC12445z != null) {
            abstractC12445z.d();
        }
    }

    @WorkerThread
    public final void u(String str, String str2, long j10, Bundle bundle) {
        h();
        v(str, str2, j10, bundle, true, this.f63025d == null || m7.N(str2), true, null);
    }

    public final void u0() {
        C12227x7.a();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.w().H(null, C12281e2.f63171R0)) {
            if (c12370p3.b().p()) {
                c12370p3.a().o().a("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            c12370p3.c();
            if (C12286f.a()) {
                c12370p3.a().o().a("Cannot get trigger URIs from main thread");
                return;
            }
            j();
            c12370p3.a().w().a("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            c12370p3.b().u(atomicReference, FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, "get trigger URIs", new Runnable() {
                @Override
                public final void run() {
                    C12260b5 c12260b5 = C12260b5.this;
                    c12260b5.f62917a.J().j0(atomicReference, c12260b5.f62917a.x().f62860o.a());
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                c12370p3.a().q().a("Timed out waiting for get trigger URIs");
            } else {
                c12370p3.b().t(new Runnable() {
                    @Override
                    public final void run() {
                        boolean contains;
                        C12260b5 c12260b5 = C12260b5.this;
                        c12260b5.h();
                        if (Build.VERSION.SDK_INT < 30) {
                            return;
                        }
                        List<C6> list2 = list;
                        SparseArray r10 = c12260b5.f62917a.x().r();
                        for (C6 c62 : list2) {
                            int i10 = c62.f62585d;
                            contains = r10.contains(i10);
                            if (!contains || ((Long) r10.get(i10)).longValue() < c62.f62584c) {
                                c12260b5.w0().add(c62);
                            }
                        }
                        c12260b5.x0();
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012c  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        boolean z13;
        Bundle bundle2;
        String str4;
        long j11;
        String str5;
        String str6;
        Bundle[] bundleArr;
        int i10;
        G0.A.l(str);
        G0.A.r(bundle);
        h();
        j();
        C12370p3 c12370p3 = this.f62917a;
        if (!c12370p3.g()) {
            this.f62917a.a().v().a("Event not sent since app measurement is disabled");
            return;
        }
        List w10 = this.f62917a.L().w();
        if (w10 != null && !w10.contains(str2)) {
            this.f62917a.a().v().c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f63027f) {
            this.f63027f = true;
            try {
                try {
                    (!c12370p3.G() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.f62917a.d().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod(ContentResolver.SYNC_EXTRAS_INITIALIZE, Context.class).invoke(null, this.f62917a.d());
                } catch (Exception e10) {
                    this.f62917a.a().r().b("Failed to invoke Tag Manager's initialize() method", e10);
                }
            } catch (ClassNotFoundException unused) {
                this.f62917a.a().u().a("Tag Manager is not found and thus will not be used");
            }
        }
        C12370p3 c12370p32 = this.f62917a;
        if (!c12370p32.w().H(null, C12281e2.f63211h1) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            c12370p32.c();
            B("auto", "_lgclid", bundle.getString("gclid"), c12370p32.e().a());
        }
        c12370p32.c();
        if (z10 && m7.U(str2)) {
            c12370p32.C().w(bundle, c12370p32.x().f62871z.a());
        }
        if (!z12) {
            c12370p32.c();
            if (!"_iap".equals(str2)) {
                C12370p3 c12370p33 = this.f62917a;
                m7 C10 = c12370p33.C();
                if (C10.t0("event", str2)) {
                    if (C10.v0("event", C12251a4.f63005a, C12251a4.f63006b, str2)) {
                        C10.f62917a.w();
                        if (C10.w0("event", 40, str2)) {
                            i10 = 0;
                        }
                    } else {
                        i10 = 13;
                    }
                    if (i10 != 0) {
                        c12370p32.a().q().b("Invalid public event name. Event will not be logged (FE)", c12370p32.D().a(str2));
                        m7 C11 = c12370p33.C();
                        c12370p33.w();
                        c12370p33.C().B(this.f63044w, null, i10, "_ev", C11.q(str2, 40, true), str2 != null ? str2.length() : 0);
                        return;
                    }
                }
                i10 = 2;
                if (i10 != 0) {
                }
            }
        }
        c12370p32.c();
        C12370p3 c12370p34 = this.f62917a;
        C12348m5 q10 = c12370p34.I().q(false);
        if (q10 != null && !bundle.containsKey("_sc")) {
            q10.f63399d = true;
        }
        m7.k0(q10, bundle, z10 && !z12);
        boolean equals = "am".equals(str);
        boolean N10 = m7.N(str2);
        if (!z10 || this.f63025d == null || N10) {
            z13 = equals;
        } else {
            if (!equals) {
                c12370p32.a().v().c("Passing event to registered event handler (FE)", c12370p32.D().a(str2), c12370p32.D().e(bundle));
                G0.A.r(this.f63025d);
                this.f63025d.a(str, str2, bundle, j10);
                return;
            }
            z13 = true;
        }
        C12370p3 c12370p35 = this.f62917a;
        if (c12370p35.m()) {
            int x02 = c12370p32.C().x0(str2);
            if (x02 != 0) {
                c12370p32.a().q().b("Invalid event name. Event will not be logged (FE)", c12370p32.D().a(str2));
                m7 C12 = c12370p32.C();
                c12370p32.w();
                c12370p35.C().B(this.f63044w, str3, x02, "_ev", C12.q(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            String str7 = "_o";
            Bundle t10 = c12370p32.C().t(str3, str2, bundle, C3038h.d("_o", "_sn", "_sc", "_si"), z12);
            G0.A.r(t10);
            c12370p32.c();
            if (c12370p34.I().q(false) != null && "_ae".equals(str2)) {
                C12412u6 c12412u6 = c12370p34.z().f63704f;
                long c10 = c12412u6.f63632d.f62917a.e().c();
                long j12 = c10 - c12412u6.f63630b;
                c12412u6.f63630b = c10;
                if (j12 > 0) {
                    c12370p32.C().Z(t10, j12);
                }
            }
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                m7 C13 = c12370p32.C();
                String string = t10.getString("_ffr");
                if (T0.D.b(string)) {
                    string = null;
                } else if (string != null) {
                    string = string.trim();
                }
                C12370p3 c12370p36 = C13.f62917a;
                if (Objects.equals(string, c12370p36.x().f62868w.a())) {
                    c12370p36.a().v().a("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                c12370p36.x().f62868w.b(string);
            } else if ("_ae".equals(str2)) {
                String a10 = c12370p32.C().f62917a.x().f62868w.a();
                if (!TextUtils.isEmpty(a10)) {
                    t10.putString("_ffr", a10);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(t10);
            boolean p10 = c12370p32.w().H(null, C12281e2.f63179V0) ? c12370p34.z().p() : c12370p32.x().f62865t.a();
            if (c12370p32.x().f62862q.a() > 0 && c12370p32.x().A(j10) && p10) {
                c12370p32.a().w().a("Current session is expired, remove the session number, ID, and engagement time");
                j11 = 0;
                bundle2 = t10;
                str4 = "_ae";
                B("auto", "_sid", null, c12370p32.e().a());
                B("auto", "_sno", null, c12370p32.e().a());
                B("auto", "_se", null, c12370p32.e().a());
                c12370p32.x().f62863r.b(0L);
            } else {
                bundle2 = t10;
                str4 = "_ae";
                j11 = 0;
            }
            if (bundle2.getLong(FirebaseAnalytics.d.f67711m, j11) == 1) {
                c12370p32.a().w().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                c12370p35.z().f63703e.b(j10, true);
            }
            ArrayList arrayList2 = new ArrayList(bundle2.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                String str8 = (String) arrayList2.get(i11);
                if (str8 != null) {
                    c12370p32.C();
                    Object obj = bundle2.get(str8);
                    if (obj instanceof Bundle) {
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList3 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                    } else {
                        bundleArr = null;
                    }
                    if (bundleArr != null) {
                        bundle2.putParcelableArray(str8, bundleArr);
                    }
                }
            }
            int i12 = 0;
            while (i12 < arrayList.size()) {
                Bundle bundle3 = (Bundle) arrayList.get(i12);
                if (i12 != 0) {
                    str6 = "_ep";
                    str5 = str;
                } else {
                    str5 = str;
                    str6 = str2;
                }
                String str9 = str7;
                bundle3.putString(str9, str5);
                if (z11) {
                    bundle3 = c12370p32.C().Q(bundle3, null);
                }
                Bundle bundle4 = bundle3;
                c12370p34.J().c0(new I(str6, new G(bundle4), str, j10), str3);
                if (!z13) {
                    Iterator it = this.f63026e.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC12283e4) it.next()).a(str, str2, new Bundle(bundle4), j10);
                    }
                }
                i12++;
                str7 = str9;
            }
            c12370p32.c();
            if (c12370p34.I().q(false) == null || !str4.equals(str2)) {
                return;
            }
            c12370p34.z().f63704f.d(true, true, c12370p32.e().c());
        }
    }

    public final boolean v0() {
        return this.f63035n;
    }

    public final void w(String str, String str2, Bundle bundle, String str3) {
        C12370p3.q();
        x("auto", str2, this.f62917a.e().a(), bundle, false, true, true, str3);
    }

    @TargetApi(30)
    public final PriorityQueue w0() {
        if (this.f63034m == null) {
            this.f63034m = new PriorityQueue(Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Long.valueOf(((C6) obj).f62584c);
                }
            }, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
                }
            }));
        }
        return this.f63034m;
    }

    public final void x(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        int i10 = m7.f63408k;
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i11 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i11 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i11];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i11] = new Bundle((Bundle) parcelable);
                        }
                        i11++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i11 < list.size()) {
                        Object obj2 = list.get(i11);
                        if (obj2 instanceof Bundle) {
                            list.set(i11, new Bundle((Bundle) obj2));
                        }
                        i11++;
                    }
                }
            }
        }
        this.f62917a.b().t(new RunnableC12386r4(this, str, str2, j10, bundle2, z10, z11, z12, str3));
    }

    @TargetApi(30)
    @WorkerThread
    public final void x0() {
        C6 c62;
        h();
        this.f63035n = false;
        if (w0().isEmpty() || this.f63030i || (c62 = (C6) w0().poll()) == null) {
            return;
        }
        C12370p3 c12370p3 = this.f62917a;
        MeasurementManagerFutures H10 = c12370p3.C().H();
        if (H10 != null) {
            this.f63030i = true;
            C12448z2 w10 = c12370p3.a().w();
            String str = c62.f62583b;
            w10.b("Registering trigger URI", str);
            com.google.common.util.concurrent.Z<nf.P0> registerTriggerAsync = H10.registerTriggerAsync(Uri.parse(str));
            if (registerTriggerAsync != null) {
                com.google.common.util.concurrent.Q.a(registerTriggerAsync, new C12331k4(this, c62), new ExecutorC12323j4(this));
            } else {
                this.f63030i = false;
                w0().add(c62);
            }
        }
    }

    public final void y(String str, String str2, Object obj, boolean z10) {
        z("auto", "_ldl", obj, true, this.f62917a.e().a());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(String str, String str2, Object obj, boolean z10, long j10) {
        int i10;
        int i11;
        if (z10) {
            i11 = this.f62917a.C().y0(str2);
        } else {
            m7 C10 = this.f62917a.C();
            if (C10.t0("user property", str2)) {
                if (C10.v0("user property", C12267c4.f63070a, null, str2)) {
                    C10.f62917a.w();
                    if (C10.w0("user property", 24, str2)) {
                        i10 = 0;
                        if (i10 != 0) {
                            C12370p3 c12370p3 = this.f62917a;
                            m7 C11 = c12370p3.C();
                            c12370p3.w();
                            this.f62917a.C().B(this.f63044w, null, i10, "_ev", C11.q(str2, 24, true), str2 != null ? str2.length() : 0);
                            return;
                        }
                        String str3 = str == null ? "app" : str;
                        if (obj == null) {
                            A(str3, str2, j10, null);
                            return;
                        }
                        C12370p3 c12370p32 = this.f62917a;
                        int y10 = c12370p32.C().y(str2, obj);
                        if (y10 == 0) {
                            Object z11 = c12370p32.C().z(str2, obj);
                            if (z11 != null) {
                                A(str3, str2, j10, z11);
                                return;
                            }
                            return;
                        }
                        m7 C12 = c12370p32.C();
                        c12370p32.w();
                        this.f62917a.C().B(this.f63044w, null, y10, "_ev", C12.q(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0);
                        return;
                    }
                } else {
                    i11 = 15;
                }
            }
            i10 = 6;
            if (i10 != 0) {
            }
        }
        i10 = i11;
        if (i10 != 0) {
        }
    }
}
