package W0;

import W0.d;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface c extends IInterface {

    public static abstract class a extends h1.p implements c {
        public a() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        @NonNull
        public static c k(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return queryLocalInterface instanceof c ? (c) queryLocalInterface : new q(iBinder);
        }

        @Override
        public final boolean h(int i10, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i11) throws RemoteException {
            switch (i10) {
                case 2:
                    d T12 = T1();
                    parcel2.writeNoException();
                    h1.q.e(parcel2, T12);
                    return true;
                case 3:
                    Bundle Q12 = Q1();
                    parcel2.writeNoException();
                    h1.q.d(parcel2, Q12);
                    return true;
                case 4:
                    int O12 = O1();
                    parcel2.writeNoException();
                    parcel2.writeInt(O12);
                    return true;
                case 5:
                    c R12 = R1();
                    parcel2.writeNoException();
                    h1.q.e(parcel2, R12);
                    return true;
                case 6:
                    d c10 = c();
                    parcel2.writeNoException();
                    h1.q.e(parcel2, c10);
                    return true;
                case 7:
                    boolean n10 = n();
                    parcel2.writeNoException();
                    int i12 = h1.q.f90209b;
                    parcel2.writeInt(n10 ? 1 : 0);
                    return true;
                case 8:
                    String d10 = d();
                    parcel2.writeNoException();
                    parcel2.writeString(d10);
                    return true;
                case 9:
                    c a10 = a();
                    parcel2.writeNoException();
                    h1.q.e(parcel2, a10);
                    return true;
                case 10:
                    int P12 = P1();
                    parcel2.writeNoException();
                    parcel2.writeInt(P12);
                    return true;
                case 11:
                    boolean g10 = g();
                    parcel2.writeNoException();
                    int i13 = h1.q.f90209b;
                    parcel2.writeInt(g10 ? 1 : 0);
                    return true;
                case 12:
                    d b10 = b();
                    parcel2.writeNoException();
                    h1.q.e(parcel2, b10);
                    return true;
                case 13:
                    boolean i14 = i();
                    parcel2.writeNoException();
                    int i15 = h1.q.f90209b;
                    parcel2.writeInt(i14 ? 1 : 0);
                    return true;
                case 14:
                    boolean m10 = m();
                    parcel2.writeNoException();
                    int i16 = h1.q.f90209b;
                    parcel2.writeInt(m10 ? 1 : 0);
                    return true;
                case 15:
                    boolean q10 = q();
                    parcel2.writeNoException();
                    int i17 = h1.q.f90209b;
                    parcel2.writeInt(q10 ? 1 : 0);
                    return true;
                case 16:
                    boolean r10 = r();
                    parcel2.writeNoException();
                    int i18 = h1.q.f90209b;
                    parcel2.writeInt(r10 ? 1 : 0);
                    return true;
                case 17:
                    boolean o10 = o();
                    parcel2.writeNoException();
                    int i19 = h1.q.f90209b;
                    parcel2.writeInt(o10 ? 1 : 0);
                    return true;
                case 18:
                    boolean p10 = p();
                    parcel2.writeNoException();
                    int i20 = h1.q.f90209b;
                    parcel2.writeInt(p10 ? 1 : 0);
                    return true;
                case 19:
                    boolean u10 = u();
                    parcel2.writeNoException();
                    int i21 = h1.q.f90209b;
                    parcel2.writeInt(u10 ? 1 : 0);
                    return true;
                case 20:
                    d k10 = d.a.k(parcel.readStrongBinder());
                    h1.q.b(parcel);
                    A(k10);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    boolean f10 = h1.q.f(parcel);
                    h1.q.b(parcel);
                    R(f10);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    boolean f11 = h1.q.f(parcel);
                    h1.q.b(parcel);
                    U(f11);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    boolean f12 = h1.q.f(parcel);
                    h1.q.b(parcel);
                    Y(f12);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    boolean f13 = h1.q.f(parcel);
                    h1.q.b(parcel);
                    t0(f13);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    Intent intent = (Intent) h1.q.a(parcel, Intent.CREATOR);
                    h1.q.b(parcel);
                    b0(intent);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    Intent intent2 = (Intent) h1.q.a(parcel, Intent.CREATOR);
                    int readInt = parcel.readInt();
                    h1.q.b(parcel);
                    e0(intent2, readInt);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    d k11 = d.a.k(parcel.readStrongBinder());
                    h1.q.b(parcel);
                    a1(k11);
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    void A(@NonNull d dVar) throws RemoteException;

    int O1() throws RemoteException;

    int P1() throws RemoteException;

    @Nullable
    Bundle Q1() throws RemoteException;

    void R(boolean z10) throws RemoteException;

    @Nullable
    c R1() throws RemoteException;

    @NonNull
    d T1() throws RemoteException;

    void U(boolean z10) throws RemoteException;

    void Y(boolean z10) throws RemoteException;

    @Nullable
    c a() throws RemoteException;

    void a1(@NonNull d dVar) throws RemoteException;

    @NonNull
    d b() throws RemoteException;

    void b0(@NonNull Intent intent) throws RemoteException;

    @NonNull
    d c() throws RemoteException;

    @Nullable
    String d() throws RemoteException;

    void e0(@NonNull Intent intent, int i10) throws RemoteException;

    boolean g() throws RemoteException;

    boolean i() throws RemoteException;

    boolean m() throws RemoteException;

    boolean n() throws RemoteException;

    boolean o() throws RemoteException;

    boolean p() throws RemoteException;

    boolean q() throws RemoteException;

    boolean r() throws RemoteException;

    void t0(boolean z10) throws RemoteException;

    boolean u() throws RemoteException;
}
