package e1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C12977a implements IInterface {

    public final IBinder f84953e;

    public final String f84954f;

    public C12977a(IBinder iBinder, String str) {
        this.f84953e = iBinder;
        this.f84954f = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.f84953e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f84954f);
        return obtain;
    }

    public final void k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f84953e.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
