package D0;

import androidx.annotation.NonNull;
import java.util.Map;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.InterfaceC15784e;

public final class C2473v implements InterfaceC15784e {

    public final C15791l f4713a;

    public final C2475w f4714b;

    public C2473v(C2475w c2475w, C15791l c15791l) {
        this.f4714b = c2475w;
        this.f4713a = c15791l;
    }

    @Override
    public final void a(@NonNull AbstractC15790k abstractC15790k) {
        Map map;
        map = this.f4714b.f4716b;
        map.remove(this.f4713a);
    }
}
