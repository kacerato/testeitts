package G0;

import B0.C2318c;
import G0.AbstractC2564f;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;

public final class I0 extends AbstractC2588r0 {

    @Nullable
    public final IBinder f7298g;

    public final AbstractC2564f f7299h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public I0(AbstractC2564f abstractC2564f, @Nullable int i10, @Nullable IBinder iBinder, Bundle bundle) {
        super(abstractC2564f, i10, bundle);
        this.f7299h = abstractC2564f;
        this.f7298g = iBinder;
    }

    @Override
    public final void f(C2318c c2318c) {
        if (this.f7299h.f7397x != null) {
            this.f7299h.f7397x.t(c2318c);
        }
        this.f7299h.U(c2318c);
    }

    @Override
    public final boolean g() {
        AbstractC2564f.a aVar;
        AbstractC2564f.a aVar2;
        try {
            IBinder iBinder = this.f7298g;
            A.r(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f7299h.N().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + this.f7299h.N() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface z10 = this.f7299h.z(this.f7298g);
            if (z10 == null || !(AbstractC2564f.p0(this.f7299h, 2, 4, z10) || AbstractC2564f.p0(this.f7299h, 3, 4, z10))) {
                return false;
            }
            this.f7299h.f7372C = null;
            AbstractC2564f abstractC2564f = this.f7299h;
            Bundle F10 = abstractC2564f.F();
            aVar = abstractC2564f.f7396w;
            if (aVar == null) {
                return true;
            }
            aVar2 = this.f7299h.f7396w;
            aVar2.h(F10);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
