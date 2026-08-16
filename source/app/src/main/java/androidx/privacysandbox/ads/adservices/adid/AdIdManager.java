package androidx.privacysandbox.ads.adservices.adid;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class AdIdManager {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final AdIdManager obtain(Context context) {
            M.p(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AdIdManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AdIdManager) BackCompatManager.INSTANCE.getManager(context, "AdIdManager", new AdIdManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final AdIdManager obtain(Context context) {
        return Companion.obtain(context);
    }

    public abstract Object getAdId(yf.f<? super AdId> fVar);
}
