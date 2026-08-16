package j1;

import android.app.PendingIntent;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;

public interface Y extends IInterface {
    void e(Status status, @Nullable PendingIntent pendingIntent) throws RemoteException;
}
