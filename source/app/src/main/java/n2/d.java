package N2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.C12251a4;
import java.util.Objects;
import n1.C14345a;

public final class d implements C14345a.c {

    public final e f15477a;

    public d(e eVar) {
        Objects.requireNonNull(eVar);
        this.f15477a = eVar;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle, long j10) {
        e eVar = this.f15477a;
        if (eVar.f15478a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            int i10 = c.f15476g;
            String a10 = C12251a4.a(str2);
            if (a10 != null) {
                str2 = a10;
            }
            bundle2.putString("events", str2);
            eVar.b().a(2, bundle2);
        }
    }
}
