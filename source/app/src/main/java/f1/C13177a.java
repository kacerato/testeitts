package f1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C13177a implements IInterface {

    public final IBinder f85950e;

    public final String f85951f = "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";

    public C13177a(IBinder iBinder, String str) {
        this.f85950e = iBinder;
    }

    @Override
    public final IBinder asBinder() {
        return this.f85950e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f85951f);
        return obtain;
    }

    public final void k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f85950e.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
