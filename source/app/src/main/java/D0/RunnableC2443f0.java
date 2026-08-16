package D0;

import B0.C2318c;
import android.util.Log;
import com.google.android.gms.common.api.C11894a;
import java.util.Map;

public final class RunnableC2443f0 implements Runnable {

    public final C2318c f4646b;

    public final C2445g0 f4647c;

    public RunnableC2443f0(C2445g0 c2445g0, C2318c c2318c) {
        this.f4647c = c2445g0;
        this.f4646b = c2318c;
    }

    @Override
    public final void run() {
        Map map;
        C2436c c2436c;
        C11894a.f fVar;
        C11894a.f fVar2;
        C11894a.f fVar3;
        C11894a.f fVar4;
        C2445g0 c2445g0 = this.f4647c;
        map = c2445g0.f4656f.f61141l;
        c2436c = c2445g0.f4652b;
        com.google.android.gms.common.api.internal.u uVar = (com.google.android.gms.common.api.internal.u) map.get(c2436c);
        if (uVar == null) {
            return;
        }
        if (!this.f4646b.u0()) {
            uVar.I(this.f4646b, null);
            return;
        }
        this.f4647c.f4655e = true;
        fVar = this.f4647c.f4651a;
        if (fVar.g()) {
            this.f4647c.i();
            return;
        }
        try {
            C2445g0 c2445g02 = this.f4647c;
            fVar3 = c2445g02.f4651a;
            fVar4 = c2445g02.f4651a;
            fVar3.t(null, fVar4.i());
        } catch (SecurityException e10) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
            fVar2 = this.f4647c.f4651a;
            fVar2.e("Failed to get service from broker.");
            uVar.I(new C2318c(10), null);
        }
    }
}
