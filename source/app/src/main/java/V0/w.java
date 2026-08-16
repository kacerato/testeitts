package v0;

import G0.C2601y;
import android.os.Bundle;
import com.google.android.gms.common.api.C11894a;
import java.util.ArrayList;
import java.util.Collections;

public final class w implements C11894a.d.f {

    public static final w f121085c;

    public final Bundle f121086b;

    static {
        Bundle bundle = new Bundle();
        if (!bundle.containsKey("accountTypes")) {
            bundle.putStringArrayList("accountTypes", new ArrayList<>(0));
        }
        f121085c = new w(bundle, null);
    }

    public w(Bundle bundle, v vVar) {
        this.f121086b = bundle;
    }

    public final Bundle a() {
        return new Bundle(this.f121086b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        Bundle a10 = a();
        Bundle a11 = ((w) obj).a();
        if (a10.size() != a11.size()) {
            return false;
        }
        for (String str : a10.keySet()) {
            if (!a11.containsKey(str) || !C2601y.b(a10.get(str), a11.get(str))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        Bundle a10 = a();
        int size = a10.size();
        ArrayList arrayList = new ArrayList(size + size);
        ArrayList arrayList2 = new ArrayList(a10.keySet());
        Collections.sort(arrayList2);
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            String str = (String) arrayList2.get(i10);
            arrayList.add(str);
            arrayList.add(a10.get(str));
        }
        return C2601y.c(arrayList);
    }
}
