package z0;

import android.os.Parcel;
import android.os.RemoteException;
import e1.BinderC12976B;

public abstract class AbstractBinderC16234s extends BinderC12976B implements InterfaceC16235t {
    public AbstractBinderC16234s() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            x();
        } else {
            if (i10 != 2) {
                return false;
            }
            z();
        }
        return true;
    }
}
