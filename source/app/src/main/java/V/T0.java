package v;

import com.android.tools.r8.graph.M2;
import java.util.Set;
import java.util.function.Predicate;

public final class T0 implements Predicate {

    public final Set f120903b;

    @Override
    public final boolean test(Object obj) {
        return this.f120903b.contains((M2) obj);
    }
}
