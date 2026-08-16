package z0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import e1.C12977a;
import e1.O;

public final class C16238w extends C12977a implements IInterface {
    public C16238w(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void e1(InterfaceC16237v interfaceC16237v, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, interfaceC16237v);
        O.b(h10, googleSignInOptions);
        k(103, h10);
    }

    public final void l0(InterfaceC16237v interfaceC16237v, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, interfaceC16237v);
        O.b(h10, googleSignInOptions);
        k(102, h10);
    }

    public final void t(InterfaceC16237v interfaceC16237v, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, interfaceC16237v);
        O.b(h10, googleSignInOptions);
        k(101, h10);
    }
}
