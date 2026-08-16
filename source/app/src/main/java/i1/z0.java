package i1;

import android.app.Activity;
import android.app.Application;
import com.google.android.gms.internal.consent_sdk.zzj;
import u2.C15566a;
import u2.C15569d;

public final class z0 {

    public final Application f91378a;

    public final B f91379b;

    public final C13564n f91380c;

    public z0(Application application, B b10, C13564n c13564n) {
        this.f91378a = application;
        this.f91379b = b10;
        this.f91380c = c13564n;
    }

    public final X d(Activity activity, C15569d c15569d) throws zzj {
        C15566a a10 = c15569d.a();
        if (a10 == null) {
            a10 = new C15566a.C2022a(this.f91378a).b();
        }
        return D0.a(new D0(this, activity, a10, c15569d, null));
    }
}
