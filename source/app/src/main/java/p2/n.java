package p2;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;

public final class n extends j {

    public final t f103429c;

    public n(t tVar) {
        this.f103429c = tVar;
    }

    @Override
    public final void a() {
        IInterface iInterface;
        i iVar;
        Context context;
        ServiceConnection serviceConnection;
        t tVar = this.f103429c;
        iInterface = tVar.f103447m;
        if (iInterface != null) {
            iVar = tVar.f103436b;
            iVar.d("Unbind from service.", new Object[0]);
            t tVar2 = this.f103429c;
            context = tVar2.f103435a;
            serviceConnection = tVar2.f103446l;
            context.unbindService(serviceConnection);
            this.f103429c.f103441g = false;
            this.f103429c.f103447m = null;
            this.f103429c.f103446l = null;
        }
        this.f103429c.t();
    }
}
