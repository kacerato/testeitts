package androidx.privacysandbox.ads.adservices.signals;

import Af.c;
import Af.d;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.adid.h;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import eg.C13135q;
import f.C13173d;
import f.C13174e;
import kotlin.jvm.internal.M;
import nf.P0;
import yf.f;

@ExperimentalFeatures.Ext12OptIn
public class ProtectedSignalsManagerImpl extends ProtectedSignalsManager {
    private final android.adservices.signals.ProtectedSignalsManager protectedSignalsManager;

    public ProtectedSignalsManagerImpl(android.adservices.signals.ProtectedSignalsManager protectedSignalsManager) {
        M.p(protectedSignalsManager, "protectedSignalsManager");
        this.protectedSignalsManager = protectedSignalsManager;
    }

    public final android.adservices.signals.UpdateSignalsRequest convertUpdateRequest(UpdateSignalsRequest updateSignalsRequest) {
        android.adservices.signals.UpdateSignalsRequest build;
        C13174e.a();
        build = C13173d.a(updateSignalsRequest.getUpdateUri()).build();
        M.o(build, "Builder(request.updateUri).build()");
        return build;
    }

    public static Object updateSignals$suspendImpl(ProtectedSignalsManagerImpl protectedSignalsManagerImpl, UpdateSignalsRequest updateSignalsRequest, f<? super P0> fVar) {
        C13135q c13135q = new C13135q(c.e(fVar), 1);
        c13135q.O();
        protectedSignalsManagerImpl.protectedSignalsManager.updateSignals(protectedSignalsManagerImpl.convertUpdateRequest(updateSignalsRequest), new h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == d.l() ? D10 : P0.f98194a;
    }

    @Override
    public Object updateSignals(UpdateSignalsRequest updateSignalsRequest, f<? super P0> fVar) {
        return updateSignals$suspendImpl(this, updateSignalsRequest, fVar);
    }
}
