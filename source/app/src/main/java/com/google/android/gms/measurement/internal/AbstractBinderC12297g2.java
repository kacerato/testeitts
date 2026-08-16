package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public abstract class AbstractBinderC12297g2 extends com.google.android.gms.internal.measurement.P implements InterfaceC12313i2 {
    public AbstractBinderC12297g2() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        InterfaceC12361o2 interfaceC12361o2 = null;
        InterfaceC12337l2 interfaceC12337l2 = null;
        switch (i10) {
            case 1:
                I i12 = (I) com.google.android.gms.internal.measurement.Q.b(parcel, I.CREATOR);
                o7 o7Var = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                F(i12, o7Var);
                parcel2.writeNoException();
                return true;
            case 2:
                i7 i7Var = (i7) com.google.android.gms.internal.measurement.Q.b(parcel, i7.CREATOR);
                o7 o7Var2 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                W0(i7Var, o7Var2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case 23:
            case 28:
            default:
                return false;
            case 4:
                o7 o7Var3 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                Z0(o7Var3);
                parcel2.writeNoException();
                return true;
            case 5:
                I i13 = (I) com.google.android.gms.internal.measurement.Q.b(parcel, I.CREATOR);
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                com.google.android.gms.internal.measurement.Q.f(parcel);
                V(i13, readString, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                o7 o7Var4 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                G(o7Var4);
                parcel2.writeNoException();
                return true;
            case 7:
                o7 o7Var5 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                boolean a10 = com.google.android.gms.internal.measurement.Q.a(parcel);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List P10 = P(o7Var5, a10);
                parcel2.writeNoException();
                parcel2.writeTypedList(P10);
                return true;
            case 9:
                I i14 = (I) com.google.android.gms.internal.measurement.Q.b(parcel, I.CREATOR);
                String readString3 = parcel.readString();
                com.google.android.gms.internal.measurement.Q.f(parcel);
                byte[] H10 = H(i14, readString3);
                parcel2.writeNoException();
                parcel2.writeByteArray(H10);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                com.google.android.gms.internal.measurement.Q.f(parcel);
                W(readLong, readString4, readString5, readString6);
                parcel2.writeNoException();
                return true;
            case 11:
                o7 o7Var6 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                String O10 = O(o7Var6);
                parcel2.writeNoException();
                parcel2.writeString(O10);
                return true;
            case 12:
                C12310i c12310i = (C12310i) com.google.android.gms.internal.measurement.Q.b(parcel, C12310i.CREATOR);
                o7 o7Var7 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                w(c12310i, o7Var7);
                parcel2.writeNoException();
                return true;
            case 13:
                C12310i c12310i2 = (C12310i) com.google.android.gms.internal.measurement.Q.b(parcel, C12310i.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                J0(c12310i2);
                parcel2.writeNoException();
                return true;
            case 14:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean a11 = com.google.android.gms.internal.measurement.Q.a(parcel);
                o7 o7Var8 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List r02 = r0(readString7, readString8, a11, o7Var8);
                parcel2.writeNoException();
                parcel2.writeTypedList(r02);
                return true;
            case 15:
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                boolean a12 = com.google.android.gms.internal.measurement.Q.a(parcel);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List y02 = y0(readString9, readString10, readString11, a12);
                parcel2.writeNoException();
                parcel2.writeTypedList(y02);
                return true;
            case 16:
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                o7 o7Var9 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List u02 = u0(readString12, readString13, o7Var9);
                parcel2.writeNoException();
                parcel2.writeTypedList(u02);
                return true;
            case 17:
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List C02 = C0(readString14, readString15, readString16);
                parcel2.writeNoException();
                parcel2.writeTypedList(C02);
                return true;
            case 18:
                o7 o7Var10 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                X(o7Var10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) com.google.android.gms.internal.measurement.Q.b(parcel, Bundle.CREATOR);
                o7 o7Var11 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                m0(bundle, o7Var11);
                parcel2.writeNoException();
                return true;
            case 20:
                o7 o7Var12 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                w0(o7Var12);
                parcel2.writeNoException();
                return true;
            case 21:
                o7 o7Var13 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                C12366p k02 = k0(o7Var13);
                parcel2.writeNoException();
                if (k02 == null) {
                    parcel2.writeInt(0);
                } else {
                    parcel2.writeInt(1);
                    k02.writeToParcel(parcel2, 1);
                }
                return true;
            case 24:
                o7 o7Var14 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.measurement.Q.b(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                List G02 = G0(o7Var14, bundle2);
                parcel2.writeNoException();
                parcel2.writeTypedList(G02);
                return true;
            case 25:
                o7 o7Var15 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                D0(o7Var15);
                parcel2.writeNoException();
                return true;
            case 26:
                o7 o7Var16 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                H0(o7Var16);
                parcel2.writeNoException();
                return true;
            case 27:
                o7 o7Var17 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                b1(o7Var17);
                parcel2.writeNoException();
                return true;
            case 29:
                o7 o7Var18 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                J6 j62 = (J6) com.google.android.gms.internal.measurement.Q.b(parcel, J6.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    interfaceC12361o2 = queryLocalInterface instanceof InterfaceC12361o2 ? (InterfaceC12361o2) queryLocalInterface : new C12345m2(readStrongBinder);
                }
                com.google.android.gms.internal.measurement.Q.f(parcel);
                P0(o7Var18, j62, interfaceC12361o2);
                parcel2.writeNoException();
                return true;
            case 30:
                o7 o7Var19 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                C12294g c12294g = (C12294g) com.google.android.gms.internal.measurement.Q.b(parcel, C12294g.CREATOR);
                com.google.android.gms.internal.measurement.Q.f(parcel);
                i0(o7Var19, c12294g);
                parcel2.writeNoException();
                return true;
            case 31:
                o7 o7Var20 = (o7) com.google.android.gms.internal.measurement.Q.b(parcel, o7.CREATOR);
                Bundle bundle3 = (Bundle) com.google.android.gms.internal.measurement.Q.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    interfaceC12337l2 = queryLocalInterface2 instanceof InterfaceC12337l2 ? (InterfaceC12337l2) queryLocalInterface2 : new C12321j2(readStrongBinder2);
                }
                com.google.android.gms.internal.measurement.Q.f(parcel);
                U0(o7Var20, bundle3, interfaceC12337l2);
                parcel2.writeNoException();
                return true;
        }
    }
}
