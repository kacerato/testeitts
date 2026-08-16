package J0;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;

public final class e extends b {

    public final C11904b.InterfaceC0952b f10176e;

    public e(C11904b.InterfaceC0952b interfaceC0952b) {
        this.f10176e = interfaceC0952b;
    }

    @Override
    public final void f0(int i10) throws RemoteException {
        this.f10176e.a(new Status(i10));
    }
}
