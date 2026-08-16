package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface InterfaceC3909a extends IInterface {

    public static final String f33533b = "android.support.v4.os.IResultReceiver";

    public static class C0893a implements InterfaceC3909a {
        @Override
        public void Q(int i10, Bundle bundle) throws RemoteException {
        }

        @Override
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class b extends Binder implements InterfaceC3909a {

        public static final int f33534e = 1;

        public static class C0894a implements InterfaceC3909a {

            public IBinder f33535e;

            public C0894a(IBinder iBinder) {
                this.f33535e = iBinder;
            }

            @Override
            public void Q(int i10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC3909a.f33533b);
                    obtain.writeInt(i10);
                    c.d(obtain, bundle, 0);
                    this.f33535e.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f33535e;
            }

            public String h() {
                return InterfaceC3909a.f33533b;
            }
        }

        public b() {
            attachInterface(this, InterfaceC3909a.f33533b);
        }

        public static InterfaceC3909a h(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(InterfaceC3909a.f33533b);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC3909a)) ? new C0894a(iBinder) : (InterfaceC3909a) queryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(InterfaceC3909a.f33533b);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(InterfaceC3909a.f33533b);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            Q(parcel.readInt(), (Bundle) c.c(parcel, Bundle.CREATOR));
            return true;
        }
    }

    public static class c {
        public static <T> T c(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static <T extends Parcelable> void d(Parcel parcel, T t10, int i10) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
            }
        }
    }

    void Q(int i10, Bundle bundle) throws RemoteException;
}
