package androidx.privacysandbox.ads.adservices.customaudience;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class CustomAudienceManager {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @Lf.o
        public final CustomAudienceManager obtain(Context context) {
            M.p(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new CustomAudienceManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (CustomAudienceManager) BackCompatManager.INSTANCE.getManager(context, "CustomAudienceManager", new CustomAudienceManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }

    @Lf.o
    public static final CustomAudienceManager obtain(Context context) {
        return Companion.obtain(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract Object fetchAndJoinCustomAudience(FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, yf.f<? super P0> fVar);

    public abstract Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, yf.f<? super P0> fVar);

    public abstract Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, yf.f<? super P0> fVar);
}
