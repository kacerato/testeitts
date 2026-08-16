package com.google.android.gms.internal.measurement;

import W0.d;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.HashMap;

public abstract class AbstractBinderC12202v0 extends P implements InterfaceC12211w0 {
    public AbstractBinderC12202v0() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static InterfaceC12211w0 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof InterfaceC12211w0 ? (InterfaceC12211w0) queryLocalInterface : new C12193u0(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        InterfaceC12238z0 c12220x0;
        InterfaceC12238z0 interfaceC12238z0 = null;
        C0 c02 = null;
        InterfaceC12238z0 interfaceC12238z02 = null;
        InterfaceC12238z0 interfaceC12238z03 = null;
        InterfaceC12238z0 interfaceC12238z04 = null;
        InterfaceC12238z0 interfaceC12238z05 = null;
        F0 f02 = null;
        F0 f03 = null;
        F0 f04 = null;
        InterfaceC12238z0 interfaceC12238z06 = null;
        InterfaceC12238z0 interfaceC12238z07 = null;
        InterfaceC12238z0 interfaceC12238z08 = null;
        InterfaceC12238z0 interfaceC12238z09 = null;
        InterfaceC12238z0 interfaceC12238z010 = null;
        InterfaceC12238z0 interfaceC12238z011 = null;
        H0 h02 = null;
        InterfaceC12238z0 interfaceC12238z012 = null;
        InterfaceC12238z0 interfaceC12238z013 = null;
        InterfaceC12238z0 interfaceC12238z014 = null;
        InterfaceC12238z0 interfaceC12238z015 = null;
        switch (i10) {
            case 1:
                W0.d k10 = d.a.k(parcel.readStrongBinder());
                I0 i02 = (I0) Q.b(parcel, I0.CREATOR);
                long readLong = parcel.readLong();
                Q.f(parcel);
                initialize(k10, i02, readLong);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) Q.b(parcel, Bundle.CREATOR);
                boolean a10 = Q.a(parcel);
                boolean a11 = Q.a(parcel);
                long readLong2 = parcel.readLong();
                Q.f(parcel);
                logEvent(readString, readString2, bundle, a10, a11, readLong2);
                parcel2.writeNoException();
                return true;
            case 3:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12220x0 = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c12220x0 = queryLocalInterface instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface : new C12220x0(readStrongBinder);
                }
                long readLong3 = parcel.readLong();
                Q.f(parcel);
                logEventAndBundle(readString3, readString4, bundle2, c12220x0, readLong3);
                parcel2.writeNoException();
                return true;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                W0.d k11 = d.a.k(parcel.readStrongBinder());
                boolean a12 = Q.a(parcel);
                long readLong4 = parcel.readLong();
                Q.f(parcel);
                setUserProperty(readString5, readString6, k11, a12, readLong4);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean a13 = Q.a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z0 = queryLocalInterface2 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface2 : new C12220x0(readStrongBinder2);
                }
                Q.f(parcel);
                getUserProperties(readString7, readString8, a13, interfaceC12238z0);
                parcel2.writeNoException();
                return true;
            case 6:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z015 = queryLocalInterface3 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface3 : new C12220x0(readStrongBinder3);
                }
                Q.f(parcel);
                getMaxUserProperties(readString9, interfaceC12238z015);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                Q.f(parcel);
                setUserId(readString10, readLong5);
                parcel2.writeNoException();
                return true;
            case 8:
                Bundle bundle3 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                Q.f(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                parcel2.writeNoException();
                return true;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                Q.f(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                parcel2.writeNoException();
                return true;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z014 = queryLocalInterface4 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface4 : new C12220x0(readStrongBinder4);
                }
                Q.f(parcel);
                getConditionalUserProperties(readString13, readString14, interfaceC12238z014);
                parcel2.writeNoException();
                return true;
            case 11:
                boolean a14 = Q.a(parcel);
                long readLong7 = parcel.readLong();
                Q.f(parcel);
                setMeasurementEnabled(a14, readLong7);
                parcel2.writeNoException();
                return true;
            case 12:
                long readLong8 = parcel.readLong();
                Q.f(parcel);
                resetAnalyticsData(readLong8);
                parcel2.writeNoException();
                return true;
            case 13:
                long readLong9 = parcel.readLong();
                Q.f(parcel);
                setMinimumSessionDuration(readLong9);
                parcel2.writeNoException();
                return true;
            case 14:
                long readLong10 = parcel.readLong();
                Q.f(parcel);
                setSessionTimeoutDuration(readLong10);
                parcel2.writeNoException();
                return true;
            case 15:
                W0.d k12 = d.a.k(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                Q.f(parcel);
                setCurrentScreen(k12, readString15, readString16, readLong11);
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z013 = queryLocalInterface5 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface5 : new C12220x0(readStrongBinder5);
                }
                Q.f(parcel);
                getCurrentScreenName(interfaceC12238z013);
                parcel2.writeNoException();
                return true;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z012 = queryLocalInterface6 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface6 : new C12220x0(readStrongBinder6);
                }
                Q.f(parcel);
                getCurrentScreenClass(interfaceC12238z012);
                parcel2.writeNoException();
                return true;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    h02 = queryLocalInterface7 instanceof H0 ? (H0) queryLocalInterface7 : new G0(readStrongBinder7);
                }
                Q.f(parcel);
                setInstanceIdProvider(h02);
                parcel2.writeNoException();
                return true;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z011 = queryLocalInterface8 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface8 : new C12220x0(readStrongBinder8);
                }
                Q.f(parcel);
                getCachedAppInstanceId(interfaceC12238z011);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z010 = queryLocalInterface9 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface9 : new C12220x0(readStrongBinder9);
                }
                Q.f(parcel);
                getAppInstanceId(interfaceC12238z010);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z09 = queryLocalInterface10 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface10 : new C12220x0(readStrongBinder10);
                }
                Q.f(parcel);
                getGmpAppId(interfaceC12238z09);
                parcel2.writeNoException();
                return true;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z08 = queryLocalInterface11 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface11 : new C12220x0(readStrongBinder11);
                }
                Q.f(parcel);
                generateEventId(interfaceC12238z08);
                parcel2.writeNoException();
                return true;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                Q.f(parcel);
                beginAdUnitExposure(readString17, readLong12);
                parcel2.writeNoException();
                return true;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                Q.f(parcel);
                endAdUnitExposure(readString18, readLong13);
                parcel2.writeNoException();
                return true;
            case 25:
                W0.d k13 = d.a.k(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                Q.f(parcel);
                onActivityStarted(k13, readLong14);
                parcel2.writeNoException();
                return true;
            case 26:
                W0.d k14 = d.a.k(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                Q.f(parcel);
                onActivityStopped(k14, readLong15);
                parcel2.writeNoException();
                return true;
            case 27:
                W0.d k15 = d.a.k(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                Q.f(parcel);
                onActivityCreated(k15, bundle5, readLong16);
                parcel2.writeNoException();
                return true;
            case 28:
                W0.d k16 = d.a.k(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                Q.f(parcel);
                onActivityDestroyed(k16, readLong17);
                parcel2.writeNoException();
                return true;
            case 29:
                W0.d k17 = d.a.k(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                Q.f(parcel);
                onActivityPaused(k17, readLong18);
                parcel2.writeNoException();
                return true;
            case 30:
                W0.d k18 = d.a.k(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                Q.f(parcel);
                onActivityResumed(k18, readLong19);
                parcel2.writeNoException();
                return true;
            case 31:
                W0.d k19 = d.a.k(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z07 = queryLocalInterface12 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface12 : new C12220x0(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                Q.f(parcel);
                onActivitySaveInstanceState(k19, interfaceC12238z07, readLong20);
                parcel2.writeNoException();
                return true;
            case 32:
                Bundle bundle6 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z06 = queryLocalInterface13 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface13 : new C12220x0(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                Q.f(parcel);
                performAction(bundle6, interfaceC12238z06, readLong21);
                parcel2.writeNoException();
                return true;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                W0.d k20 = d.a.k(parcel.readStrongBinder());
                W0.d k21 = d.a.k(parcel.readStrongBinder());
                W0.d k22 = d.a.k(parcel.readStrongBinder());
                Q.f(parcel);
                logHealthData(readInt, readString19, k20, k21, k22);
                parcel2.writeNoException();
                return true;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    f04 = queryLocalInterface14 instanceof F0 ? (F0) queryLocalInterface14 : new D0(readStrongBinder14);
                }
                Q.f(parcel);
                setEventInterceptor(f04);
                parcel2.writeNoException();
                return true;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    f03 = queryLocalInterface15 instanceof F0 ? (F0) queryLocalInterface15 : new D0(readStrongBinder15);
                }
                Q.f(parcel);
                registerOnMeasurementEventListener(f03);
                parcel2.writeNoException();
                return true;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    f02 = queryLocalInterface16 instanceof F0 ? (F0) queryLocalInterface16 : new D0(readStrongBinder16);
                }
                Q.f(parcel);
                unregisterOnMeasurementEventListener(f02);
                parcel2.writeNoException();
                return true;
            case 37:
                HashMap e10 = Q.e(parcel);
                Q.f(parcel);
                initForTests(e10);
                parcel2.writeNoException();
                return true;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z05 = queryLocalInterface17 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface17 : new C12220x0(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                Q.f(parcel);
                getTestFlag(interfaceC12238z05, readInt2);
                parcel2.writeNoException();
                return true;
            case 39:
                boolean a15 = Q.a(parcel);
                Q.f(parcel);
                setDataCollectionEnabled(a15);
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z04 = queryLocalInterface18 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface18 : new C12220x0(readStrongBinder18);
                }
                Q.f(parcel);
                isDataCollectionEnabled(interfaceC12238z04);
                parcel2.writeNoException();
                return true;
            case 41:
            case 47:
            case 49:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                Q.f(parcel);
                setDefaultEventParameters(bundle7);
                parcel2.writeNoException();
                return true;
            case 43:
                long readLong22 = parcel.readLong();
                Q.f(parcel);
                clearMeasurementEnabled(readLong22);
                parcel2.writeNoException();
                return true;
            case 44:
                Bundle bundle8 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                Q.f(parcel);
                setConsent(bundle8, readLong23);
                parcel2.writeNoException();
                return true;
            case 45:
                Bundle bundle9 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                Q.f(parcel);
                setConsentThirdParty(bundle9, readLong24);
                parcel2.writeNoException();
                return true;
            case 46:
                IBinder readStrongBinder19 = parcel.readStrongBinder();
                if (readStrongBinder19 != null) {
                    IInterface queryLocalInterface19 = readStrongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z03 = queryLocalInterface19 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface19 : new C12220x0(readStrongBinder19);
                }
                Q.f(parcel);
                getSessionId(interfaceC12238z03);
                parcel2.writeNoException();
                return true;
            case 48:
                Intent intent = (Intent) Q.b(parcel, Intent.CREATOR);
                Q.f(parcel);
                setSgtmDebugInfo(intent);
                parcel2.writeNoException();
                return true;
            case 50:
                K0 k02 = (K0) Q.b(parcel, K0.CREATOR);
                String readString20 = parcel.readString();
                String readString21 = parcel.readString();
                long readLong25 = parcel.readLong();
                Q.f(parcel);
                setCurrentScreenByScionActivityInfo(k02, readString20, readString21, readLong25);
                parcel2.writeNoException();
                return true;
            case 51:
                K0 k03 = (K0) Q.b(parcel, K0.CREATOR);
                long readLong26 = parcel.readLong();
                Q.f(parcel);
                onActivityStartedByScionActivityInfo(k03, readLong26);
                parcel2.writeNoException();
                return true;
            case 52:
                K0 k04 = (K0) Q.b(parcel, K0.CREATOR);
                long readLong27 = parcel.readLong();
                Q.f(parcel);
                onActivityStoppedByScionActivityInfo(k04, readLong27);
                parcel2.writeNoException();
                return true;
            case 53:
                K0 k05 = (K0) Q.b(parcel, K0.CREATOR);
                Bundle bundle10 = (Bundle) Q.b(parcel, Bundle.CREATOR);
                long readLong28 = parcel.readLong();
                Q.f(parcel);
                onActivityCreatedByScionActivityInfo(k05, bundle10, readLong28);
                parcel2.writeNoException();
                return true;
            case 54:
                K0 k06 = (K0) Q.b(parcel, K0.CREATOR);
                long readLong29 = parcel.readLong();
                Q.f(parcel);
                onActivityDestroyedByScionActivityInfo(k06, readLong29);
                parcel2.writeNoException();
                return true;
            case 55:
                K0 k07 = (K0) Q.b(parcel, K0.CREATOR);
                long readLong30 = parcel.readLong();
                Q.f(parcel);
                onActivityPausedByScionActivityInfo(k07, readLong30);
                parcel2.writeNoException();
                return true;
            case 56:
                K0 k08 = (K0) Q.b(parcel, K0.CREATOR);
                long readLong31 = parcel.readLong();
                Q.f(parcel);
                onActivityResumedByScionActivityInfo(k08, readLong31);
                parcel2.writeNoException();
                return true;
            case 57:
                K0 k09 = (K0) Q.b(parcel, K0.CREATOR);
                IBinder readStrongBinder20 = parcel.readStrongBinder();
                if (readStrongBinder20 != null) {
                    IInterface queryLocalInterface20 = readStrongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC12238z02 = queryLocalInterface20 instanceof InterfaceC12238z0 ? (InterfaceC12238z0) queryLocalInterface20 : new C12220x0(readStrongBinder20);
                }
                long readLong32 = parcel.readLong();
                Q.f(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(k09, interfaceC12238z02, readLong32);
                parcel2.writeNoException();
                return true;
            case 58:
                IBinder readStrongBinder21 = parcel.readStrongBinder();
                if (readStrongBinder21 != null) {
                    IInterface queryLocalInterface21 = readStrongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    c02 = queryLocalInterface21 instanceof C0 ? (C0) queryLocalInterface21 : new A0(readStrongBinder21);
                }
                Q.f(parcel);
                retrieveAndUploadBatches(c02);
                parcel2.writeNoException();
                return true;
        }
    }
}
