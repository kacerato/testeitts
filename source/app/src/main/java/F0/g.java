package F0;

import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import p.C14917a;

public final class g {

    @NonNull
    @C0.a
    public static final String f6129a = "next_page_token";

    @NonNull
    @C0.a
    public static final String f6130b = "prev_page_token";

    @NonNull
    public static <T, E extends i<T>> ArrayList<T> a(@NonNull b<E> bVar) {
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList(bVar.getCount());
        try {
            Iterator<E> it = bVar.iterator();
            while (it.hasNext()) {
                c1932a.add(it.next().freeze());
            }
            return c1932a;
        } finally {
            bVar.close();
        }
    }

    public static boolean b(@NonNull b<?> bVar) {
        return bVar != null && bVar.getCount() > 0;
    }

    public static boolean c(@NonNull b<?> bVar) {
        Bundle Oc2 = bVar.Oc();
        return (Oc2 == null || Oc2.getString(f6129a) == null) ? false : true;
    }

    public static boolean d(@NonNull b<?> bVar) {
        Bundle Oc2 = bVar.Oc();
        return (Oc2 == null || Oc2.getString(f6130b) == null) ? false : true;
    }
}
