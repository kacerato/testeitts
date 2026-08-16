package p000if;

import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13728x {

    public static final Logger f92171b = Logger.getLogger(C13728x.class.getName());

    public final Map<String, Set<Integer>> f92172a = new TreeMap();

    public void a(String str) {
        C13702E.t(str, "signal name");
        if (this.f92172a.get(str) == null) {
            this.f92172a.put(str, new TreeSet());
        }
    }

    public void b(String str, int i10, boolean z10) {
        C13702E.t(str, "signal name");
        Set<Integer> set = this.f92172a.get(str);
        if (set == null) {
            f92171b.log(Level.WARNING, "Unknown signal: {0}", C13724t.s(str));
            return;
        }
        Logger logger = f92171b;
        Level level = Level.INFO;
        if (logger.isLoggable(level)) {
            logger.log(level, "name = {0}, newState = {1}", new Object[]{C13724t.s(str), Boolean.valueOf(z10)});
        }
        if (z10) {
            set.add(Integer.valueOf(i10));
        } else {
            set.remove(Integer.valueOf(i10));
        }
    }

    public boolean c(String str) {
        C13702E.t(str, "signal name");
        Set<Integer> set = this.f92172a.get(str);
        if (set == null) {
            f92171b.log(Level.WARNING, "Testing a signal which has not yet been added: {0}.", C13724t.s(str));
            set = new TreeSet<>();
            this.f92172a.put(str, set);
        }
        return !set.isEmpty();
    }
}
