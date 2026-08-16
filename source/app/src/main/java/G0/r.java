package G0;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;

public interface r extends IInterface {

    public static abstract class a extends h1.p implements r {
        public a() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        @NonNull
        public static r k(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof r ? (r) queryLocalInterface : new Z0(iBinder);
        }

        @Override
        public final boolean h(int i10, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 2) {
                return false;
            }
            Account O12 = O1();
            parcel2.writeNoException();
            h1.q.d(parcel2, O12);
            return true;
        }
    }

    @NonNull
    Account O1() throws RemoteException;
}
