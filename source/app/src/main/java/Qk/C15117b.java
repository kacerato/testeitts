package qk;

import b3.s;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.TreeSet;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.f;
import ki.e;
import ki.m;
import org.bouncycastle.util.w;

public class C15117b {
    public static List a(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static void b(AbstractC13875e abstractC13875e) {
        f o10 = abstractC13875e.o(BigInteger.valueOf(2L));
        f o11 = o10.o();
        System.out.println(w.p(o11.v().toString(16)));
        if (!o11.p().equals(o10)) {
            throw new IllegalStateException("Optimized-sqrt sanity check failed");
        }
    }

    public static void c(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(a(e.g()));
        treeSet.addAll(a(Ji.a.o()));
        for (String str : treeSet) {
            m k10 = Ji.a.k(str);
            if (k10 == null) {
                k10 = e.c(str);
            }
            if (k10 != null) {
                AbstractC13875e c10 = k10.c();
                if (C13873c.m(c10)) {
                    System.out.print(str + s.f32937c);
                    b(c10);
                }
            }
        }
    }

    public static void d(AbstractC13875e abstractC13875e) {
        if (!C13873c.m(abstractC13875e)) {
            throw new IllegalArgumentException("Sqrt optimization only defined over characteristic-2 fields");
        }
        b(abstractC13875e);
    }
}
