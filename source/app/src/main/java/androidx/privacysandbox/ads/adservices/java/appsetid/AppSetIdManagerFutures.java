package androidx.privacysandbox.ads.adservices.java.appsetid;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetId;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class AppSetIdManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Api33Ext4JavaImpl extends AppSetIdManagerFutures {
        private final AppSetIdManager mAppSetIdManager;

        public Api33Ext4JavaImpl(AppSetIdManager mAppSetIdManager) {
            M.p(mAppSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = mAppSetIdManager;
        }

        @Override
        public Z<AppSetId> getAppSetIdAsync() {
            eg.Z b10;
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final AppSetIdManagerFutures from(Context context) {
            M.p(context, "context");
            AppSetIdManager obtain = AppSetIdManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final AppSetIdManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract Z<AppSetId> getAppSetIdAsync();
}
