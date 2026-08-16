package j1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fido.u2f.api.common.RegisterRequestParams;
import com.google.android.gms.fido.u2f.api.common.SignRequestParams;

public final class i0 extends C13777a implements IInterface {
    public i0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fido.u2f.internal.regular.IU2fAppService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l0(h0 h0Var, SignRequestParams signRequestParams) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(h0Var);
        N.d(h10, signRequestParams);
        k(2, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(h0 h0Var, RegisterRequestParams registerRequestParams) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(h0Var);
        N.d(h10, registerRequestParams);
        k(1, h10);
    }
}
