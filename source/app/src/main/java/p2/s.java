package p2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

public final class s implements ServiceConnection {

    public final t f103433c;

    public s(t tVar, r rVar) {
        this.f103433c = tVar;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        i iVar;
        iVar = this.f103433c.f103436b;
        iVar.d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        t tVar = this.f103433c;
        tVar.c().post(new p(this, iBinder));
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        i iVar;
        iVar = this.f103433c.f103436b;
        iVar.d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        t tVar = this.f103433c;
        tVar.c().post(new q(this));
    }
}
