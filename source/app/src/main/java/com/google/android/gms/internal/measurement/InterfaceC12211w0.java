package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Map;

public interface InterfaceC12211w0 extends IInterface {
    void beginAdUnitExposure(String str, long j10) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j10) throws RemoteException;

    void endAdUnitExposure(String str, long j10) throws RemoteException;

    void generateEventId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getCachedAppInstanceId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getCurrentScreenClass(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getCurrentScreenName(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getGmpAppId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getMaxUserProperties(String str, InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getSessionId(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void getTestFlag(InterfaceC12238z0 interfaceC12238z0, int i10) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z10, InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(W0.d dVar, I0 i02, long j10) throws RemoteException;

    void isDataCollectionEnabled(InterfaceC12238z0 interfaceC12238z0) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException;

    void logHealthData(int i10, String str, W0.d dVar, W0.d dVar2, W0.d dVar3) throws RemoteException;

    void onActivityCreated(W0.d dVar, Bundle bundle, long j10) throws RemoteException;

    void onActivityCreatedByScionActivityInfo(K0 k02, Bundle bundle, long j10) throws RemoteException;

    void onActivityDestroyed(W0.d dVar, long j10) throws RemoteException;

    void onActivityDestroyedByScionActivityInfo(K0 k02, long j10) throws RemoteException;

    void onActivityPaused(W0.d dVar, long j10) throws RemoteException;

    void onActivityPausedByScionActivityInfo(K0 k02, long j10) throws RemoteException;

    void onActivityResumed(W0.d dVar, long j10) throws RemoteException;

    void onActivityResumedByScionActivityInfo(K0 k02, long j10) throws RemoteException;

    void onActivitySaveInstanceState(W0.d dVar, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException;

    void onActivitySaveInstanceStateByScionActivityInfo(K0 k02, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException;

    void onActivityStarted(W0.d dVar, long j10) throws RemoteException;

    void onActivityStartedByScionActivityInfo(K0 k02, long j10) throws RemoteException;

    void onActivityStopped(W0.d dVar, long j10) throws RemoteException;

    void onActivityStoppedByScionActivityInfo(K0 k02, long j10) throws RemoteException;

    void performAction(Bundle bundle, InterfaceC12238z0 interfaceC12238z0, long j10) throws RemoteException;

    void registerOnMeasurementEventListener(F0 f02) throws RemoteException;

    void resetAnalyticsData(long j10) throws RemoteException;

    void retrieveAndUploadBatches(C0 c02) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException;

    void setConsent(Bundle bundle, long j10) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException;

    void setCurrentScreen(W0.d dVar, String str, String str2, long j10) throws RemoteException;

    void setCurrentScreenByScionActivityInfo(K0 k02, String str, String str2, long j10) throws RemoteException;

    void setDataCollectionEnabled(boolean z10) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(F0 f02) throws RemoteException;

    void setInstanceIdProvider(H0 h02) throws RemoteException;

    void setMeasurementEnabled(boolean z10, long j10) throws RemoteException;

    void setMinimumSessionDuration(long j10) throws RemoteException;

    void setSessionTimeoutDuration(long j10) throws RemoteException;

    void setSgtmDebugInfo(Intent intent) throws RemoteException;

    void setUserId(String str, long j10) throws RemoteException;

    void setUserProperty(String str, String str2, W0.d dVar, boolean z10, long j10) throws RemoteException;

    void unregisterOnMeasurementEventListener(F0 f02) throws RemoteException;
}
