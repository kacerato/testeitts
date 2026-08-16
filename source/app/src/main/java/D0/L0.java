package D0;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

public final class L0 {

    public static final Status f4576c = new Status(8, "The connection to Google Play services was lost");

    @VisibleForTesting
    public final Set f4577a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    public final K0 f4578b = new K0(this);

    public final void a(BasePendingResult basePendingResult) {
        this.f4577a.add(basePendingResult);
        basePendingResult.v(this.f4578b);
    }

    public final void b() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f4577a.toArray(new BasePendingResult[0])) {
            basePendingResult.v(null);
            if (basePendingResult.u()) {
                this.f4577a.remove(basePendingResult);
            }
        }
    }
}
