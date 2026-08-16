package Hi;

import Bi.InterfaceC2384p;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Logger;
import org.bouncycastle.util.w;

public abstract class f implements InterfaceC2384p {

    public static final Logger f8479b = Logger.getLogger(f.class.getName());

    public final Set<String> f8480a;

    public f(Set<String> set) {
        if (set.isEmpty()) {
            this.f8480a = Collections.EMPTY_SET;
            return;
        }
        this.f8480a = new HashSet(set.size());
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            this.f8480a.add(w.p(it.next().toString()));
        }
        g.a(this.f8480a);
    }

    public boolean b(String str) {
        if (this.f8480a.isEmpty()) {
            return false;
        }
        return this.f8480a.contains(w.p(str));
    }
}
