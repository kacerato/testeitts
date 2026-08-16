package Hi;

import java.util.Set;

public class g {
    public static void a(Set<String> set) {
        if (set.contains("RC4")) {
            set.add("ARC4");
        } else if (set.contains("ARC4")) {
            set.add("RC4");
        }
    }
}
