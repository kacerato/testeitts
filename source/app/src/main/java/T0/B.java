package T0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

@C0.a
public final class B {
    @NonNull
    @C0.a
    public static String[] a(@NonNull Set<Scope> set) {
        G0.A.s(set, "scopes can't be null.");
        Scope[] scopeArr = (Scope[]) set.toArray(new Scope[set.size()]);
        G0.A.s(scopeArr, "scopes can't be null.");
        String[] strArr = new String[scopeArr.length];
        for (int i10 = 0; i10 < scopeArr.length; i10++) {
            strArr[i10] = scopeArr[i10].n();
        }
        return strArr;
    }
}
