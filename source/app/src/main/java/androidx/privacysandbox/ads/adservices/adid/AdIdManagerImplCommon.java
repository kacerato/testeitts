package androidx.privacysandbox.ads.adservices.adid;

import androidx.core.os.OutcomeReceiverKt;
import eg.C13135q;
import kotlin.jvm.internal.M;
import nf.C14418j0;

public class AdIdManagerImplCommon extends AdIdManager {
    private final android.adservices.adid.AdIdManager mAdIdManager;

    public AdIdManagerImplCommon(android.adservices.adid.AdIdManager mAdIdManager) {
        M.p(mAdIdManager, "mAdIdManager");
        this.mAdIdManager = mAdIdManager;
    }

    private final AdId convertResponse(android.adservices.adid.AdId adId) {
        String adId2;
        boolean isLimitAdTrackingEnabled;
        adId2 = adId.getAdId();
        M.o(adId2, "response.adId");
        isLimitAdTrackingEnabled = adId.isLimitAdTrackingEnabled();
        return new AdId(adId2, isLimitAdTrackingEnabled);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object getAdId$suspendImpl(AdIdManagerImplCommon adIdManagerImplCommon, yf.f<? super AdId> fVar) {
        AdIdManagerImplCommon$getAdId$1 adIdManagerImplCommon$getAdId$1;
        int i10;
        if (fVar instanceof AdIdManagerImplCommon$getAdId$1) {
            adIdManagerImplCommon$getAdId$1 = (AdIdManagerImplCommon$getAdId$1) fVar;
            int i11 = adIdManagerImplCommon$getAdId$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adIdManagerImplCommon$getAdId$1.label = i11 - Integer.MIN_VALUE;
                Object obj = adIdManagerImplCommon$getAdId$1.result;
                Object l10 = Af.d.l();
                i10 = adIdManagerImplCommon$getAdId$1.label;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    adIdManagerImplCommon$getAdId$1.L$0 = adIdManagerImplCommon;
                    adIdManagerImplCommon$getAdId$1.label = 1;
                    obj = adIdManagerImplCommon.getAdIdAsyncInternal(adIdManagerImplCommon$getAdId$1);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    adIdManagerImplCommon = (AdIdManagerImplCommon) adIdManagerImplCommon$getAdId$1.L$0;
                    C14418j0.n(obj);
                }
                return adIdManagerImplCommon.convertResponse(d.a(obj));
            }
        }
        adIdManagerImplCommon$getAdId$1 = new AdIdManagerImplCommon$getAdId$1(adIdManagerImplCommon, fVar);
        Object obj2 = adIdManagerImplCommon$getAdId$1.result;
        Object l102 = Af.d.l();
        i10 = adIdManagerImplCommon$getAdId$1.label;
        if (i10 != 0) {
        }
        return adIdManagerImplCommon.convertResponse(d.a(obj2));
    }

    public final Object getAdIdAsyncInternal(yf.f<? super android.adservices.adid.AdId> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        this.mAdIdManager.getAdId(new h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    @Override
    public Object getAdId(yf.f<? super AdId> fVar) {
        return getAdId$suspendImpl(this, fVar);
    }
}
