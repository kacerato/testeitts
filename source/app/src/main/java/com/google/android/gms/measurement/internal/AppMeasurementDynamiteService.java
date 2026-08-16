package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.AbstractBinderC12202v0;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Map;
import vm.InterfaceC15866d;

@DynamiteApi
public class AppMeasurementDynamiteService extends AbstractBinderC12202v0 {

    @VisibleForTesting
    public C12370p3 f62541e = null;

    @GuardedBy("listenerMap")
    public final Map f62542f = new ArrayMap();

    @Override
    public void beginAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        k();
        this.f62541e.M().i(str, j10);
    }

    @Override
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        k();
        this.f62541e.B().P(str, str2, bundle);
    }

    @Override
    public void clearMeasurementEnabled(long j10) throws RemoteException {
        k();
        this.f62541e.B().n0(null);
    }

    @Override
    public void endAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        k();
        this.f62541e.M().j(str, j10);
    }

    @Override
    public void generateEventId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        long p02 = this.f62541e.C().p0();
        k();
        this.f62541e.C().b0(interfaceC12238z0, p02);
    }

    @Override
    public void getAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        this.f62541e.b().t(new RunnableC12322j3(this, interfaceC12238z0));
    }

    @Override
    public void getCachedAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        t(interfaceC12238z0, this.f62541e.B().E());
    }

    @Override
    public void getConditionalUserProperties(String str, String str2, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        this.f62541e.b().t(new RunnableC12403t5(this, interfaceC12238z0, str, str2));
    }

    @Override
    public void getCurrentScreenClass(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        t(interfaceC12238z0, this.f62541e.B().S());
    }

    @Override
    public void getCurrentScreenName(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        t(interfaceC12238z0, this.f62541e.B().R());
    }

    @Override
    public void getGmpAppId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        String str;
        k();
        C12260b5 B10 = this.f62541e.B();
        try {
            str = C12340l5.a(B10.f62917a.d(), K2.p.f10763i, B10.f62917a.H());
        } catch (IllegalStateException e10) {
            B10.f62917a.a().o().b("getGoogleAppId failed with exception", e10);
            str = null;
        }
        t(interfaceC12238z0, str);
    }

    @Override
    public void getMaxUserProperties(String str, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        this.f62541e.B().M(str);
        k();
        this.f62541e.C().c0(interfaceC12238z0, 25);
    }

    @Override
    public void getSessionId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        C12260b5 B10 = this.f62541e.B();
        B10.f62917a.b().t(new B4(B10, interfaceC12238z0));
    }

    @Override
    public void getTestFlag(InterfaceC12238z0 interfaceC12238z0, int i10) throws RemoteException {
        k();
        if (i10 == 0) {
            this.f62541e.C().a0(interfaceC12238z0, this.f62541e.B().j0());
            return;
        }
        if (i10 == 1) {
            this.f62541e.C().b0(interfaceC12238z0, this.f62541e.B().k0().longValue());
            return;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                this.f62541e.C().c0(interfaceC12238z0, this.f62541e.B().l0().intValue());
                return;
            } else {
                if (i10 != 4) {
                    return;
                }
                this.f62541e.C().e0(interfaceC12238z0, this.f62541e.B().i0().booleanValue());
                return;
            }
        }
        m7 C10 = this.f62541e.C();
        double doubleValue = this.f62541e.B().m0().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, doubleValue);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            C10.f62917a.a().r().b("Error returning double value to wrapper", e10);
        }
    }

    @Override
    public void getUserProperties(String str, String str2, boolean z10, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        this.f62541e.b().t(new RunnableC12371p4(this, interfaceC12238z0, str, str2, z10));
    }

    @Override
    public void initForTests(@NonNull Map map) throws RemoteException {
        k();
    }

    @Override
    public void initialize(W0.d dVar, com.google.android.gms.internal.measurement.I0 i02, long j10) throws RemoteException {
        C12370p3 c12370p3 = this.f62541e;
        if (c12370p3 == null) {
            this.f62541e = C12370p3.O((Context) G0.A.r((Context) W0.f.t(dVar)), i02, Long.valueOf(j10));
        } else {
            c12370p3.a().r().a("Attempting to initialize multiple times");
        }
    }

    @Override
    public void isDataCollectionEnabled(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        k();
        this.f62541e.b().t(new U5(this, interfaceC12238z0));
    }

    @InterfaceC15866d({"scion"})
    public final void k() {
        if (this.f62541e == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        k();
        this.f62541e.B().q(str, str2, bundle, z10, z11, j10);
    }

    @Override
    public void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        k();
        G0.A.l(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f62541e.b().t(new O3(this, interfaceC12238z0, new I(str2, new G(bundle), "app", j10), str));
    }

    @Override
    public void logHealthData(int i10, @NonNull String str, @NonNull W0.d dVar, @NonNull W0.d dVar2, @NonNull W0.d dVar3) throws RemoteException {
        k();
        this.f62541e.a().y(i10, true, false, str, dVar == null ? null : W0.f.t(dVar), dVar2 == null ? null : W0.f.t(dVar2), dVar3 != null ? W0.f.t(dVar3) : null);
    }

    @Override
    public void onActivityCreated(@NonNull W0.d dVar, @NonNull Bundle bundle, long j10) throws RemoteException {
        k();
        onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), bundle, j10);
    }

    @Override
    public void onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, Bundle bundle, long j10) {
        k();
        N4 n42 = this.f62541e.B().f63024c;
        if (n42 != null) {
            this.f62541e.B().h0();
            n42.b(k02, bundle);
        }
    }

    @Override
    public void onActivityDestroyed(@NonNull W0.d dVar, long j10) throws RemoteException {
        k();
        onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), j10);
    }

    @Override
    public void onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, long j10) throws RemoteException {
        k();
        N4 n42 = this.f62541e.B().f63024c;
        if (n42 != null) {
            this.f62541e.B().h0();
            n42.d(k02);
        }
    }

    @Override
    public void onActivityPaused(@NonNull W0.d dVar, long j10) throws RemoteException {
        k();
        onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), j10);
    }

    @Override
    public void onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, long j10) throws RemoteException {
        k();
        N4 n42 = this.f62541e.B().f63024c;
        if (n42 != null) {
            this.f62541e.B().h0();
            n42.c(k02);
        }
    }

    @Override
    public void onActivityResumed(@NonNull W0.d dVar, long j10) throws RemoteException {
        k();
        onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), j10);
    }

    @Override
    public void onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, long j10) throws RemoteException {
        k();
        N4 n42 = this.f62541e.B().f63024c;
        if (n42 != null) {
            this.f62541e.B().h0();
            n42.e(k02);
        }
    }

    @Override
    public void onActivitySaveInstanceState(W0.d dVar, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        k();
        onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), interfaceC12238z0, j10);
    }

    @Override
    public void onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        k();
        N4 n42 = this.f62541e.B().f63024c;
        Bundle bundle = new Bundle();
        if (n42 != null) {
            this.f62541e.B().h0();
            n42.a(k02, bundle);
        }
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62541e.a().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    @Override
    public void onActivityStarted(@NonNull W0.d dVar, long j10) throws RemoteException {
        k();
        onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), j10);
    }

    @Override
    public void onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, long j10) throws RemoteException {
        k();
        if (this.f62541e.B().f63024c != null) {
            this.f62541e.B().h0();
        }
    }

    @Override
    public void onActivityStopped(@NonNull W0.d dVar, long j10) throws RemoteException {
        k();
        onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), j10);
    }

    @Override
    public void onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, long j10) throws RemoteException {
        k();
        if (this.f62541e.B().f63024c != null) {
            this.f62541e.B().h0();
        }
    }

    @Override
    public void performAction(Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        k();
        interfaceC12238z0.l(null);
    }

    @Override
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.F0 f02) throws RemoteException {
        InterfaceC12283e4 interfaceC12283e4;
        k();
        Map map = this.f62542f;
        synchronized (map) {
            try {
                interfaceC12283e4 = (InterfaceC12283e4) map.get(Integer.valueOf(f02.a()));
                if (interfaceC12283e4 == null) {
                    interfaceC12283e4 = new n7(this, f02);
                    map.put(Integer.valueOf(f02.a()), interfaceC12283e4);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f62541e.B().K(interfaceC12283e4);
    }

    @Override
    public void resetAnalyticsData(long j10) throws RemoteException {
        k();
        this.f62541e.B().H(j10);
    }

    @Override
    public void retrieveAndUploadBatches(final com.google.android.gms.internal.measurement.C0 c02) {
        k();
        this.f62541e.B().r0(new Runnable() {
            @Override
            public final void run() {
                try {
                    c02.R1();
                } catch (RemoteException e10) {
                    ((C12370p3) G0.A.r(AppMeasurementDynamiteService.this.f62541e)).a().r().b("Failed to call IDynamiteUploadBatchesCallback", e10);
                }
            }
        });
    }

    @Override
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j10) throws RemoteException {
        k();
        if (bundle == null) {
            this.f62541e.a().o().a("Conditional user property must not be null");
        } else {
            this.f62541e.B().O(bundle, j10);
        }
    }

    @Override
    public void setConsent(@NonNull Bundle bundle, long j10) throws RemoteException {
    }

    @Override
    public void setConsentThirdParty(@NonNull Bundle bundle, long j10) throws RemoteException {
        k();
        this.f62541e.B().o0(bundle, -20, j10);
    }

    @Override
    public void setCurrentScreen(@NonNull W0.d dVar, @NonNull String str, @NonNull String str2, long j10) throws RemoteException {
        k();
        setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.K0.b((Activity) G0.A.r((Activity) W0.f.t(dVar))), str, str2, j10);
    }

    @Override
    public void setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.K0 k02, String str, String str2, long j10) throws RemoteException {
        k();
        this.f62541e.I().t(k02, str, str2);
    }

    @Override
    public void setDataCollectionEnabled(boolean z10) throws RemoteException {
        k();
        C12260b5 B10 = this.f62541e.B();
        B10.j();
        B10.f62917a.b().t(new RunnableC12347m4(B10, z10));
    }

    @Override
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        k();
        final C12260b5 B10 = this.f62541e.B();
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        B10.f62917a.b().t(new Runnable() {
            @Override
            public final void run() {
                C12260b5.this.U(bundle2);
            }
        });
    }

    @Override
    public void setEventInterceptor(com.google.android.gms.internal.measurement.F0 f02) throws RemoteException {
        k();
        W6 w62 = new W6(this, f02);
        if (this.f62541e.b().p()) {
            this.f62541e.B().J(w62);
        } else {
            this.f62541e.b().t(new Q4(this, w62));
        }
    }

    @Override
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.H0 h02) throws RemoteException {
        k();
    }

    @Override
    public void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        k();
        this.f62541e.B().n0(Boolean.valueOf(z10));
    }

    @Override
    public void setMinimumSessionDuration(long j10) throws RemoteException {
        k();
    }

    @Override
    public void setSessionTimeoutDuration(long j10) throws RemoteException {
        k();
        C12260b5 B10 = this.f62541e.B();
        B10.f62917a.b().t(new RunnableC12363o4(B10, j10));
    }

    @Override
    public void setSgtmDebugInfo(@NonNull Intent intent) throws RemoteException {
        k();
        C12260b5 B10 = this.f62541e.B();
        Uri data = intent.getData();
        if (data == null) {
            B10.f62917a.a().u().a("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            C12370p3 c12370p3 = B10.f62917a;
            c12370p3.a().u().a("[sgtm] Preview Mode was not enabled.");
            c12370p3.w().Q(null);
        } else {
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (TextUtils.isEmpty(queryParameter2)) {
                return;
            }
            C12370p3 c12370p32 = B10.f62917a;
            c12370p32.a().u().b("[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
            c12370p32.w().Q(queryParameter2);
        }
    }

    @Override
    public void setUserId(@NonNull final String str, long j10) throws RemoteException {
        k();
        final C12260b5 B10 = this.f62541e.B();
        if (str != null && TextUtils.isEmpty(str)) {
            B10.f62917a.a().r().a("User ID must be non-empty or null");
        } else {
            B10.f62917a.b().t(new Runnable() {
                @Override
                public final void run() {
                    C12370p3 c12370p3 = C12260b5.this.f62917a;
                    if (c12370p3.L().x(str)) {
                        c12370p3.L().p();
                    }
                }
            });
            B10.z(null, "_id", str, true, j10);
        }
    }

    @Override
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull W0.d dVar, boolean z10, long j10) throws RemoteException {
        k();
        this.f62541e.B().z(str, str2, W0.f.t(dVar), z10, j10);
    }

    public final void t(InterfaceC12238z0 interfaceC12238z0, String str) {
        k();
        this.f62541e.C().a0(interfaceC12238z0, str);
    }

    @Override
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.F0 f02) throws RemoteException {
        InterfaceC12283e4 interfaceC12283e4;
        k();
        Map map = this.f62542f;
        synchronized (map) {
            interfaceC12283e4 = (InterfaceC12283e4) map.remove(Integer.valueOf(f02.a()));
        }
        if (interfaceC12283e4 == null) {
            interfaceC12283e4 = new n7(this, f02);
        }
        this.f62541e.B().L(interfaceC12283e4);
    }
}
