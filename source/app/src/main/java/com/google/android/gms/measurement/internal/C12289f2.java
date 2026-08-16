package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public final class C12289f2 extends com.google.android.gms.internal.measurement.O implements InterfaceC12313i2 {
    public C12289f2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override
    public final List C0(String str, String str2, String str3) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(null);
        k10.writeString(str2);
        k10.writeString(str3);
        Parcel h10 = h(17, k10);
        ArrayList createTypedArrayList = h10.createTypedArrayList(C12310i.CREATOR);
        h10.recycle();
        return createTypedArrayList;
    }

    @Override
    public final void D0(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(25, k10);
    }

    @Override
    public final void F(I i10, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, i10);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(1, k10);
    }

    @Override
    public final void G(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(6, k10);
    }

    @Override
    public final List G0(o7 o7Var, Bundle bundle) throws RemoteException {
        throw null;
    }

    @Override
    public final byte[] H(I i10, String str) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, i10);
        k10.writeString(str);
        Parcel h10 = h(9, k10);
        byte[] createByteArray = h10.createByteArray();
        h10.recycle();
        return createByteArray;
    }

    @Override
    public final void H0(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(26, k10);
    }

    @Override
    public final void J0(C12310i c12310i) throws RemoteException {
        throw null;
    }

    @Override
    public final String O(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        Parcel h10 = h(11, k10);
        String readString = h10.readString();
        h10.recycle();
        return readString;
    }

    @Override
    public final List P(o7 o7Var, boolean z10) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        k10.writeInt(z10 ? 1 : 0);
        Parcel h10 = h(7, k10);
        ArrayList createTypedArrayList = h10.createTypedArrayList(i7.CREATOR);
        h10.recycle();
        return createTypedArrayList;
    }

    @Override
    public final void P0(o7 o7Var, J6 j62, InterfaceC12361o2 interfaceC12361o2) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        com.google.android.gms.internal.measurement.Q.c(k10, j62);
        com.google.android.gms.internal.measurement.Q.d(k10, interfaceC12361o2);
        t(29, k10);
    }

    @Override
    public final void U0(o7 o7Var, Bundle bundle, InterfaceC12337l2 interfaceC12337l2) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        com.google.android.gms.internal.measurement.Q.c(k10, bundle);
        com.google.android.gms.internal.measurement.Q.d(k10, interfaceC12337l2);
        t(31, k10);
    }

    @Override
    public final void V(I i10, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override
    public final void W(long j10, String str, String str2, String str3) throws RemoteException {
        Parcel k10 = k();
        k10.writeLong(j10);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        t(10, k10);
    }

    @Override
    public final void W0(i7 i7Var, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, i7Var);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(2, k10);
    }

    @Override
    public final void X(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(18, k10);
    }

    @Override
    public final void Z0(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(4, k10);
    }

    @Override
    public final void b1(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(27, k10);
    }

    @Override
    public final void i0(o7 o7Var, C12294g c12294g) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        com.google.android.gms.internal.measurement.Q.c(k10, c12294g);
        t(30, k10);
    }

    @Override
    public final C12366p k0(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        Parcel h10 = h(21, k10);
        C12366p c12366p = (C12366p) com.google.android.gms.internal.measurement.Q.b(h10, C12366p.CREATOR);
        h10.recycle();
        return c12366p;
    }

    @Override
    public final void m0(Bundle bundle, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, bundle);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(19, k10);
    }

    @Override
    public final List r0(String str, String str2, boolean z10, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        int i10 = com.google.android.gms.internal.measurement.Q.f62089b;
        k10.writeInt(z10 ? 1 : 0);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        Parcel h10 = h(14, k10);
        ArrayList createTypedArrayList = h10.createTypedArrayList(i7.CREATOR);
        h10.recycle();
        return createTypedArrayList;
    }

    @Override
    public final List u0(String str, String str2, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        Parcel h10 = h(16, k10);
        ArrayList createTypedArrayList = h10.createTypedArrayList(C12310i.CREATOR);
        h10.recycle();
        return createTypedArrayList;
    }

    @Override
    public final void w(C12310i c12310i, o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, c12310i);
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(12, k10);
    }

    @Override
    public final void w0(o7 o7Var) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, o7Var);
        t(20, k10);
    }

    @Override
    public final List y0(String str, String str2, String str3, boolean z10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(null);
        k10.writeString(str2);
        k10.writeString(str3);
        int i10 = com.google.android.gms.internal.measurement.Q.f62089b;
        k10.writeInt(z10 ? 1 : 0);
        Parcel h10 = h(15, k10);
        ArrayList createTypedArrayList = h10.createTypedArrayList(i7.CREATOR);
        h10.recycle();
        return createTypedArrayList;
    }
}
