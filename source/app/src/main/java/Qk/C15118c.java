package qk;

import b3.s;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.TreeSet;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.f;
import ki.e;
import ki.m;
import org.bouncycastle.util.k;

public class C15118c {

    public static final BigInteger f108212a = BigInteger.valueOf(1);

    public static final SecureRandom f108213b = new SecureRandom();

    public static int a(f fVar) {
        int g10 = fVar.g();
        int d10 = 31 - k.d(g10);
        f fVar2 = fVar;
        int i10 = 1;
        while (d10 > 0) {
            fVar2 = fVar2.s(i10).a(fVar2);
            d10--;
            i10 = g10 >>> d10;
            if ((i10 & 1) != 0) {
                fVar2 = fVar2.p().a(fVar);
            }
        }
        if (fVar2.j()) {
            return 0;
        }
        if (fVar2.i()) {
            return 1;
        }
        throw new IllegalStateException("Internal error in trace calculation");
    }

    public static List b(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(AbstractC13875e abstractC13875e) {
        PrintStream printStream;
        StringBuilder sb2;
        int w10 = abstractC13875e.w();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < w10; i10++) {
            if ((i10 & 1) != 0 || i10 == 0) {
                if (a(abstractC13875e.o(f108212a.shiftLeft(i10))) != 0) {
                    arrayList.add(k.j(i10));
                    printStream = System.out;
                    sb2 = new StringBuilder();
                    sb2.append(" ");
                    sb2.append(i10);
                    printStream.print(sb2.toString());
                }
            } else if (arrayList.contains(k.j(i10 >>> 1))) {
                arrayList.add(k.j(i10));
                printStream = System.out;
                sb2 = new StringBuilder();
                sb2.append(" ");
                sb2.append(i10);
                printStream.print(sb2.toString());
            }
        }
        System.out.println();
        for (int i11 = 0; i11 < 1000; i11++) {
            BigInteger bigInteger = new BigInteger(w10, f108213b);
            int a10 = a(abstractC13875e.o(bigInteger));
            int i12 = 0;
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                if (bigInteger.testBit(((Integer) arrayList.get(i13)).intValue())) {
                    i12 ^= 1;
                }
            }
            if (a10 != i12) {
                throw new IllegalStateException("Optimized-trace sanity check failed");
            }
        }
    }

    public static void d(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(b(e.g()));
        treeSet.addAll(b(Ji.a.o()));
        for (String str : treeSet) {
            m k10 = Ji.a.k(str);
            if (k10 == null) {
                k10 = e.c(str);
            }
            if (k10 != null) {
                AbstractC13875e c10 = k10.c();
                if (C13873c.m(c10)) {
                    System.out.print(str + s.f32937c);
                    c(c10);
                }
            }
        }
    }

    public static void e(AbstractC13875e abstractC13875e) {
        if (!C13873c.m(abstractC13875e)) {
            throw new IllegalArgumentException("Trace only defined over characteristic-2 fields");
        }
        c(abstractC13875e);
    }
}
