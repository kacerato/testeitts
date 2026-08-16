package g1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C13279a implements IInterface {

    public final IBinder f88002e;

    public final String f88003f;

    public C13279a(IBinder iBinder, String str) {
        this.f88002e = iBinder;
        this.f88003f = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.f88002e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f88003f);
        return obtain;
    }

    public final Parcel k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f88002e.transact(2, parcel, obtain, 0);
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

    public final void l0(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f88002e.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final void t(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f88002e.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
