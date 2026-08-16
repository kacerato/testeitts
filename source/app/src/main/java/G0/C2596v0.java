package G0;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;

public final class C2596v0 implements InterfaceC2593u {

    public final IBinder f7484e;

    public C2596v0(IBinder iBinder) {
        this.f7484e = iBinder;
    }

    @Override
    public final void T0(InterfaceC2591t interfaceC2591t, @Nullable C2578m c2578m) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(interfaceC2591t != null ? interfaceC2591t.asBinder() : null);
            if (c2578m != null) {
                obtain.writeInt(1);
                Q0.a(c2578m, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f7484e.transact(46, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th2) {
            obtain2.recycle();
            obtain.recycle();
            throw th2;
        }
    }

    @Override
    public final IBinder asBinder() {
        return this.f7484e;
    }
}
