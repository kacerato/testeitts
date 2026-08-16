package Bi;

import java.security.Permission;
import java.util.HashSet;
import java.util.Set;

public class C2385q extends Permission {

    public static final String f1868c = "globalConfig";

    public static final String f1869d = "threadLocalConfig";

    public static final String f1870e = "defaultRandomConfig";

    public static final String f1871f = "constraints";

    public final Set<String> f1872b;

    public C2385q(String str) {
        super(str);
        HashSet hashSet = new HashSet();
        this.f1872b = hashSet;
        hashSet.add(str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C2385q) && this.f1872b.equals(((C2385q) obj).f1872b);
    }

    @Override
    public String getActions() {
        return this.f1872b.toString();
    }

    public int hashCode() {
        return this.f1872b.hashCode();
    }

    @Override
    public boolean implies(Permission permission) {
        if (!(permission instanceof C2385q)) {
            return false;
        }
        C2385q c2385q = (C2385q) permission;
        return getName().equals(c2385q.getName()) || this.f1872b.containsAll(c2385q.f1872b);
    }
}
