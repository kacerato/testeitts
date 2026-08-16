package j1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C13777a implements IInterface {

    public final IBinder f92522e;

    public final String f92523f;

    public C13777a(IBinder iBinder, String str) {
        this.f92522e = iBinder;
        this.f92523f = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.f92522e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f92523f);
        return obtain;
    }

    public final void k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f92522e.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
