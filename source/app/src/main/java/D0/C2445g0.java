package D0;

import B0.C2318c;
import G0.AbstractC2564f;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.C11894a;
import java.util.Map;
import java.util.Set;

public final class C2445g0 implements AbstractC2564f.c, A0 {

    public final C11894a.f f4651a;

    public final C2436c f4652b;

    @Nullable
    public G0.r f4653c = null;

    @Nullable
    public Set f4654d = null;

    public boolean f4655e = false;

    public final com.google.android.gms.common.api.internal.d f4656f;

    public C2445g0(com.google.android.gms.common.api.internal.d dVar, C11894a.f fVar, C2436c c2436c) {
        this.f4656f = dVar;
        this.f4651a = fVar;
        this.f4652b = c2436c;
    }

    @Override
    @WorkerThread
    public final void a(@Nullable G0.r rVar, @Nullable Set set) {
        if (rVar == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            c(new C2318c(4));
        } else {
            this.f4653c = rVar;
            this.f4654d = set;
            i();
        }
    }

    @Override
    public final void b(@NonNull C2318c c2318c) {
        Handler handler;
        handler = this.f4656f.f61145p;
        handler.post(new RunnableC2443f0(this, c2318c));
    }

    @Override
    @WorkerThread
    public final void c(C2318c c2318c) {
        Map map;
        map = this.f4656f.f61141l;
        com.google.android.gms.common.api.internal.u uVar = (com.google.android.gms.common.api.internal.u) map.get(this.f4652b);
        if (uVar != null) {
            uVar.J(c2318c);
        }
    }

    @Override
    @WorkerThread
    public final void d(int i10) {
        Map map;
        boolean z10;
        map = this.f4656f.f61141l;
        com.google.android.gms.common.api.internal.u uVar = (com.google.android.gms.common.api.internal.u) map.get(this.f4652b);
        if (uVar != null) {
            z10 = uVar.f61256m;
            if (z10) {
                uVar.J(new C2318c(17));
            } else {
                uVar.k(i10);
            }
        }
    }

    @WorkerThread
    public final void i() {
        G0.r rVar;
        if (!this.f4655e || (rVar = this.f4653c) == null) {
            return;
        }
        this.f4651a.t(rVar, this.f4654d);
    }
}
