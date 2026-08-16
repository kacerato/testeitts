package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface a extends IInterface {

    public static final String f32496a = "android.support.v4.app.INotificationSideChannel";

    public static class C0864a implements a {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void cancel(String str, int i10, String str2) throws RemoteException {
        }

        @Override
        public void cancelAll(String str) throws RemoteException {
        }

        @Override
        public void notify(String str, int i10, String str2, Notification notification) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements a {
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        public static class C0865a implements a {

            public IBinder f32497e;

            public C0865a(IBinder iBinder) {
                this.f32497e = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f32497e;
            }

            @Override
            public void cancel(String str, int i10, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f32496a);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    obtain.writeString(str2);
                    this.f32497e.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override
            public void cancelAll(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f32496a);
                    obtain.writeString(str);
                    this.f32497e.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public String h() {
                return a.f32496a;
            }

            @Override
            public void notify(String str, int i10, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f32496a);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    obtain.writeString(str2);
                    c.d(obtain, notification, 0);
                    this.f32497e.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, a.f32496a);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(a.f32496a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0865a(iBinder) : (a) queryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(a.f32496a);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(a.f32496a);
                return true;
            }
            if (i10 == 1) {
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), (Notification) c.c(parcel, Notification.CREATOR));
            } else if (i10 == 2) {
                cancel(parcel.readString(), parcel.readInt(), parcel.readString());
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                cancelAll(parcel.readString());
            }
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

    void cancel(String str, int i10, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i10, String str2, Notification notification) throws RemoteException;
}
