package D0;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

public abstract class N0 {

    public final int f4584a;

    public N0(int i10) {
        this.f4584a = i10;
    }

    public static Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(@NonNull Status status);

    public abstract void b(@NonNull Exception exc);

    public abstract void c(com.google.android.gms.common.api.internal.u uVar) throws DeadObjectException;

    public abstract void d(@NonNull C2475w c2475w, boolean z10);
}
