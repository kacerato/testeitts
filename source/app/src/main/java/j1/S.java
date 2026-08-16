package j1;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.List;

public interface S extends IInterface {
    void M0(List list) throws RemoteException;

    void f(Status status) throws RemoteException;
}
