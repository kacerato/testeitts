package D0;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import v1.C15791l;

public abstract class I0 extends AbstractC2453k0 {

    public final C15791l f4564b;

    public I0(int i10, C15791l c15791l) {
        super(i10);
        this.f4564b = c15791l;
    }

    @Override
    public final void a(@NonNull Status status) {
        this.f4564b.d(new ApiException(status));
    }

    @Override
    public final void b(@NonNull Exception exc) {
        this.f4564b.d(exc);
    }

    @Override
    public final void c(com.google.android.gms.common.api.internal.u uVar) throws DeadObjectException {
        try {
            h(uVar);
        } catch (DeadObjectException e10) {
            a(N0.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(N0.e(e11));
        } catch (RuntimeException e12) {
            this.f4564b.d(e12);
        }
    }

    @Override
    public void d(@NonNull C2475w c2475w, boolean z10) {
    }

    public abstract void h(com.google.android.gms.common.api.internal.u uVar) throws RemoteException;
}
