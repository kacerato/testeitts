package androidx.privacysandbox.ads.adservices.appsetid;

import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.adid.h;
import eg.C13135q;
import kotlin.jvm.internal.M;
import nf.C14418j0;

public class AppSetIdManagerImplCommon extends AppSetIdManager {
    private final android.adservices.appsetid.AppSetIdManager mAppSetIdManager;

    public AppSetIdManagerImplCommon(android.adservices.appsetid.AppSetIdManager mAppSetIdManager) {
        M.p(mAppSetIdManager, "mAppSetIdManager");
        this.mAppSetIdManager = mAppSetIdManager;
    }

    private final AppSetId convertResponse(android.adservices.appsetid.AppSetId appSetId) {
        int scope;
        String id2;
        String id3;
        scope = appSetId.getScope();
        if (scope == 1) {
            id3 = appSetId.getId();
            M.o(id3, "response.id");
            return new AppSetId(id3, 1);
        }
        id2 = appSetId.getId();
        M.o(id2, "response.id");
        return new AppSetId(id2, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object getAppSetId$suspendImpl(AppSetIdManagerImplCommon appSetIdManagerImplCommon, yf.f<? super AppSetId> fVar) {
        AppSetIdManagerImplCommon$getAppSetId$1 appSetIdManagerImplCommon$getAppSetId$1;
        int i10;
        if (fVar instanceof AppSetIdManagerImplCommon$getAppSetId$1) {
            appSetIdManagerImplCommon$getAppSetId$1 = (AppSetIdManagerImplCommon$getAppSetId$1) fVar;
            int i11 = appSetIdManagerImplCommon$getAppSetId$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                appSetIdManagerImplCommon$getAppSetId$1.label = i11 - Integer.MIN_VALUE;
                Object obj = appSetIdManagerImplCommon$getAppSetId$1.result;
                Object l10 = Af.d.l();
                i10 = appSetIdManagerImplCommon$getAppSetId$1.label;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    appSetIdManagerImplCommon$getAppSetId$1.L$0 = appSetIdManagerImplCommon;
                    appSetIdManagerImplCommon$getAppSetId$1.label = 1;
                    obj = appSetIdManagerImplCommon.getAppSetIdAsyncInternal(appSetIdManagerImplCommon$getAppSetId$1);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    appSetIdManagerImplCommon = (AppSetIdManagerImplCommon) appSetIdManagerImplCommon$getAppSetId$1.L$0;
                    C14418j0.n(obj);
                }
                return appSetIdManagerImplCommon.convertResponse(e.a(obj));
            }
        }
        appSetIdManagerImplCommon$getAppSetId$1 = new AppSetIdManagerImplCommon$getAppSetId$1(appSetIdManagerImplCommon, fVar);
        Object obj2 = appSetIdManagerImplCommon$getAppSetId$1.result;
        Object l102 = Af.d.l();
        i10 = appSetIdManagerImplCommon$getAppSetId$1.label;
        if (i10 != 0) {
        }
        return appSetIdManagerImplCommon.convertResponse(e.a(obj2));
    }

    public final Object getAppSetIdAsyncInternal(yf.f<? super android.adservices.appsetid.AppSetId> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        this.mAppSetIdManager.getAppSetId(new h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    @Override
    public Object getAppSetId(yf.f<? super AppSetId> fVar) {
        return getAppSetId$suspendImpl(this, fVar);
    }
}
