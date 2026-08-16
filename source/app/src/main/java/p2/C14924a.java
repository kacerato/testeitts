package p2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C14924a implements IInterface {

    public final IBinder f103419e;

    public final String f103420f = "com.google.android.play.core.inappreview.protocol.IInAppReviewService";

    public C14924a(IBinder iBinder, String str) {
        this.f103419e = iBinder;
    }

    @Override
    public final IBinder asBinder() {
        return this.f103419e;
    }

    public final Parcel h() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f103420f);
        return obtain;
    }

    public final void k(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f103419e.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
