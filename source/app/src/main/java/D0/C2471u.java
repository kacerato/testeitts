package D0;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.p;
import java.util.Map;

public final class C2471u implements p.a {

    public final BasePendingResult f4711a;

    public final C2475w f4712b;

    public C2471u(C2475w c2475w, BasePendingResult basePendingResult) {
        this.f4712b = c2475w;
        this.f4711a = basePendingResult;
    }

    @Override
    public final void a(Status status) {
        Map map;
        map = this.f4712b.f4715a;
        map.remove(this.f4711a);
    }
}
