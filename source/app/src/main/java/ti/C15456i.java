package ti;

import hi.C13479C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import li.C14146h;
import oh.C14530n;

public class C15456i {

    public static final C14146h[] f117685a = new C14146h[0];

    public static Set f117686b = Collections.unmodifiableSet(new HashSet());

    public static List f117687c = Collections.unmodifiableList(new ArrayList());

    public static Date a(C14530n c14530n) {
        try {
            return c14530n.I();
        } catch (Exception e10) {
            throw new IllegalStateException("exception processing GeneralizedTime: " + e10.getMessage());
        }
    }

    public static Set b(C13479C c13479c) {
        return c13479c == null ? f117686b : Collections.unmodifiableSet(new HashSet(Arrays.asList(c13479c.v())));
    }

    public static List c(C13479C c13479c) {
        return c13479c == null ? f117687c : Collections.unmodifiableList(Arrays.asList(c13479c.y()));
    }

    public static Set d(C13479C c13479c) {
        return c13479c == null ? f117686b : Collections.unmodifiableSet(new HashSet(Arrays.asList(c13479c.E())));
    }
}
