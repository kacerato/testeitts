package xd;

import java.util.ArrayList;
import java.util.List;

public class C16084d {

    public final List<C16085e> f128091a = new ArrayList();

    public C16085e a(String str) {
        for (C16085e c16085e : this.f128091a) {
            if (str.equals(c16085e.g())) {
                return c16085e;
            }
        }
        return null;
    }

    public List<C16085e> b() {
        return this.f128091a;
    }
}
