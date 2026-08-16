package d1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C12869a implements IInterface {

    public final IBinder f83856e;

    public final String f83857f = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";

    public C12869a(IBinder iBinder, String str) {
        this.f83856e = iBinder;
    }

    @Override
    public final IBinder asBinder() {
        return this.f83856e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f83857f);
        return obtain;
    }

    public final Parcel k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f83856e.transact(i10, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e10) {
                obtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }
}
