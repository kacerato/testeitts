package Ae;

import Um.v;
import androidx.annotation.NonNull;

public abstract class h {
    public static void a(@NonNull v vVar, @NonNull v vVar2) {
        v g10 = vVar2.g();
        while (g10 != null) {
            v g11 = g10.g();
            vVar.d(g10);
            g10 = g11;
        }
    }
}
