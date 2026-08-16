package D0;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import v1.C15791l;

public final class C2475w {

    public final Map f4715a = Collections.synchronizedMap(new WeakHashMap());

    public final Map f4716b = Collections.synchronizedMap(new WeakHashMap());

    public final void c(BasePendingResult basePendingResult, boolean z10) {
        this.f4715a.put(basePendingResult, Boolean.valueOf(z10));
        basePendingResult.c(new C2471u(this, basePendingResult));
    }

    public final void d(C15791l c15791l, boolean z10) {
        this.f4716b.put(c15791l, Boolean.valueOf(z10));
        c15791l.a().f(new C2473v(this, c15791l));
    }

    public final void e(int i10, @Nullable String str) {
        StringBuilder sb2 = new StringBuilder("The connection to Google Play services was lost");
        if (i10 == 1) {
            sb2.append(" due to service disconnection.");
        } else if (i10 == 3) {
            sb2.append(" due to dead object exception.");
        }
        if (str != null) {
            sb2.append(" Last reason for disconnect: ");
            sb2.append(str);
        }
        h(true, new Status(20, sb2.toString()));
    }

    public final void f() {
        h(false, com.google.android.gms.common.api.internal.d.f61128r);
    }

    public final boolean g() {
        return (this.f4715a.isEmpty() && this.f4716b.isEmpty()) ? false : true;
    }

    public final void h(boolean z10, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f4715a) {
            hashMap = new HashMap(this.f4715a);
        }
        synchronized (this.f4716b) {
            hashMap2 = new HashMap(this.f4716b);
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).l(status);
            }
        }
        Iterator it2 = hashMap2.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C15791l) entry2.getKey()).d(new ApiException(status));
            }
        }
    }
}
