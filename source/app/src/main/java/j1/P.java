package j1;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public interface P extends IInterface {
    void C(boolean z10) throws RemoteException;

    void f(Status status) throws RemoteException;
}
