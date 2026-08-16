package e1;

import android.app.PendingIntent;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public interface d0 extends IInterface {
    void j(Status status, PendingIntent pendingIntent) throws RemoteException;
}
