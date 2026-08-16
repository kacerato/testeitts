package D0;

import B0.C2320e;
import D0.r;
import android.os.RemoteException;
import com.google.android.gms.common.api.C11894a;
import v1.C15791l;

public final class D0 extends r {

    public final r.a f4552d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D0(r.a aVar, C2320e[] c2320eArr, boolean z10, int i10) {
        super(c2320eArr, z10, i10);
        this.f4552d = aVar;
    }

    @Override
    public final void b(C11894a.b bVar, C15791l c15791l) throws RemoteException {
        InterfaceC2458n interfaceC2458n;
        interfaceC2458n = this.f4552d.f4699a;
        interfaceC2458n.accept(bVar, c15791l);
    }
}
