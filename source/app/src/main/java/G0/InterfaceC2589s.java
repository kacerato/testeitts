package G0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;

public interface InterfaceC2589s extends IInterface {

    public static abstract class a extends h1.p implements InterfaceC2589s {
        public a() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }

        @NonNull
        public static InterfaceC2589s k(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
            return queryLocalInterface instanceof InterfaceC2589s ? (InterfaceC2589s) queryLocalInterface : new a1(iBinder);
        }

        @Override
        public final boolean h(int i10, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 2) {
                return false;
            }
            cancel();
            return true;
        }
    }

    void cancel() throws RemoteException;
}
