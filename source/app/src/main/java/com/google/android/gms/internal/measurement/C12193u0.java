package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;

public final class C12193u0 extends O implements InterfaceC12211w0 {
    public C12193u0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override
    public final void beginAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        t(23, k10);
    }

    @Override
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        Q.c(k10, bundle);
        t(9, k10);
    }

    @Override
    public final void clearMeasurementEnabled(long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void endAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        t(24, k10);
    }

    @Override
    public final void generateEventId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(22, k10);
    }

    @Override
    public final void getAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(20, k10);
    }

    @Override
    public final void getCachedAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(19, k10);
    }

    @Override
    public final void getConditionalUserProperties(String str, String str2, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        Q.d(k10, interfaceC12238z0);
        t(10, k10);
    }

    @Override
    public final void getCurrentScreenClass(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(17, k10);
    }

    @Override
    public final void getCurrentScreenName(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(16, k10);
    }

    @Override
    public final void getGmpAppId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(21, k10);
    }

    @Override
    public final void getMaxUserProperties(String str, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        Q.d(k10, interfaceC12238z0);
        t(6, k10);
    }

    @Override
    public final void getSessionId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        t(46, k10);
    }

    @Override
    public final void getTestFlag(InterfaceC12238z0 interfaceC12238z0, int i10) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, interfaceC12238z0);
        k10.writeInt(i10);
        t(38, k10);
    }

    @Override
    public final void getUserProperties(String str, String str2, boolean z10, InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        int i10 = Q.f62089b;
        k10.writeInt(z10 ? 1 : 0);
        Q.d(k10, interfaceC12238z0);
        t(5, k10);
    }

    @Override
    public final void initForTests(Map map) throws RemoteException {
        throw null;
    }

    @Override
    public final void initialize(W0.d dVar, I0 i02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, dVar);
        Q.c(k10, i02);
        k10.writeLong(j10);
        t(1, k10);
    }

    @Override
    public final void isDataCollectionEnabled(InterfaceC12238z0 interfaceC12238z0) throws RemoteException {
        throw null;
    }

    @Override
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        Q.c(k10, bundle);
        k10.writeInt(z10 ? 1 : 0);
        k10.writeInt(z11 ? 1 : 0);
        k10.writeLong(j10);
        t(2, k10);
    }

    @Override
    public final void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void logHealthData(int i10, String str, W0.d dVar, W0.d dVar2, W0.d dVar3) throws RemoteException {
        Parcel k10 = k();
        k10.writeInt(5);
        k10.writeString(str);
        Q.d(k10, dVar);
        Q.d(k10, dVar2);
        Q.d(k10, dVar3);
        t(33, k10);
    }

    @Override
    public final void onActivityCreated(W0.d dVar, Bundle bundle, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityCreatedByScionActivityInfo(K0 k02, Bundle bundle, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        Q.c(k10, bundle);
        k10.writeLong(j10);
        t(53, k10);
    }

    @Override
    public final void onActivityDestroyed(W0.d dVar, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityDestroyedByScionActivityInfo(K0 k02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeLong(j10);
        t(54, k10);
    }

    @Override
    public final void onActivityPaused(W0.d dVar, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityPausedByScionActivityInfo(K0 k02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeLong(j10);
        t(55, k10);
    }

    @Override
    public final void onActivityResumed(W0.d dVar, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityResumedByScionActivityInfo(K0 k02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeLong(j10);
        t(56, k10);
    }

    @Override
    public final void onActivitySaveInstanceState(W0.d dVar, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivitySaveInstanceStateByScionActivityInfo(K0 k02, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        Q.d(k10, interfaceC12238z0);
        k10.writeLong(j10);
        t(57, k10);
    }

    @Override
    public final void onActivityStarted(W0.d dVar, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityStartedByScionActivityInfo(K0 k02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeLong(j10);
        t(51, k10);
    }

    @Override
    public final void onActivityStopped(W0.d dVar, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void onActivityStoppedByScionActivityInfo(K0 k02, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeLong(j10);
        t(52, k10);
    }

    @Override
    public final void performAction(Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        Q.d(k10, interfaceC12238z0);
        k10.writeLong(j10);
        t(32, k10);
    }

    @Override
    public final void registerOnMeasurementEventListener(F0 f02) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, f02);
        t(35, k10);
    }

    @Override
    public final void resetAnalyticsData(long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeLong(j10);
        t(12, k10);
    }

    @Override
    public final void retrieveAndUploadBatches(C0 c02) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, c02);
        t(58, k10);
    }

    @Override
    public final void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        k10.writeLong(j10);
        t(8, k10);
    }

    @Override
    public final void setConsent(Bundle bundle, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        k10.writeLong(j10);
        t(45, k10);
    }

    @Override
    public final void setCurrentScreen(W0.d dVar, String str, String str2, long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void setCurrentScreenByScionActivityInfo(K0 k02, String str, String str2, long j10) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, k02);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeLong(j10);
        t(50, k10);
    }

    @Override
    public final void setDataCollectionEnabled(boolean z10) throws RemoteException {
        Parcel k10 = k();
        int i10 = Q.f62089b;
        k10.writeInt(z10 ? 1 : 0);
        t(39, k10);
    }

    @Override
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        t(42, k10);
    }

    @Override
    public final void setEventInterceptor(F0 f02) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, f02);
        t(34, k10);
    }

    @Override
    public final void setInstanceIdProvider(H0 h02) throws RemoteException {
        throw null;
    }

    @Override
    public final void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        Parcel k10 = k();
        int i10 = Q.f62089b;
        k10.writeInt(z10 ? 1 : 0);
        k10.writeLong(j10);
        t(11, k10);
    }

    @Override
    public final void setMinimumSessionDuration(long j10) throws RemoteException {
        throw null;
    }

    @Override
    public final void setSessionTimeoutDuration(long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeLong(j10);
        t(14, k10);
    }

    @Override
    public final void setSgtmDebugInfo(Intent intent) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, intent);
        t(48, k10);
    }

    @Override
    public final void setUserId(String str, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        t(7, k10);
    }

    @Override
    public final void setUserProperty(String str, String str2, W0.d dVar, boolean z10, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        Q.d(k10, dVar);
        k10.writeInt(z10 ? 1 : 0);
        k10.writeLong(j10);
        t(4, k10);
    }

    @Override
    public final void unregisterOnMeasurementEventListener(F0 f02) throws RemoteException {
        Parcel k10 = k();
        Q.d(k10, f02);
        t(36, k10);
    }
}
