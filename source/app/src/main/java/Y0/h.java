package y0;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

public final class h implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        return ((Scope) obj).n().compareTo(((Scope) obj2).n());
    }
}
