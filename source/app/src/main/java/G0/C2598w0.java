package G0;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;

public final class C2598w0 extends C13407a implements InterfaceC2602y0 {
    public C2598w0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override
    public final boolean T1() throws RemoteException {
        Parcel h10 = h(9, l0());
        boolean f10 = h1.q.f(h10);
        h10.recycle();
        return f10;
    }

    @Override
    public final B0.T U1(B0.Q q10) throws RemoteException {
        Parcel l02 = l0();
        h1.q.c(l02, q10);
        Parcel h10 = h(6, l02);
        B0.T t10 = (B0.T) h1.q.a(h10, B0.T.CREATOR);
        h10.recycle();
        return t10;
    }

    @Override
    public final B0.T V1(B0.Q q10) throws RemoteException {
        Parcel l02 = l0();
        h1.q.c(l02, q10);
        Parcel h10 = h(8, l02);
        B0.T t10 = (B0.T) h1.q.a(h10, B0.T.CREATOR);
        h10.recycle();
        return t10;
    }

    @Override
    public final boolean W1(B0.V v10, W0.d dVar) throws RemoteException {
        Parcel l02 = l0();
        h1.q.c(l02, v10);
        h1.q.e(l02, dVar);
        Parcel h10 = h(5, l02);
        boolean f10 = h1.q.f(h10);
        h10.recycle();
        return f10;
    }

    @Override
    public final boolean b() throws RemoteException {
        Parcel h10 = h(7, l0());
        boolean f10 = h1.q.f(h10);
        h10.recycle();
        return f10;
    }
}
