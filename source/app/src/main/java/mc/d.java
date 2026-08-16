package Mc;

import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@Deprecated
public class d {
    @Deprecated
    public static void a(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.isNull(obj);
            }
        });
    }
}
