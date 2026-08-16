package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4585md;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.I9;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.C10656zq0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.TreeMap;

public abstract class AbstractC10692h {

    public static final boolean f54652f = true;

    public final TreeMap f54653a = new TreeMap(Comparator.comparing(new C4585md()));

    public final TreeMap f54654b = new TreeMap(Comparator.comparing(new I9()));

    public final TreeMap f54655c = new TreeMap(Comparator.comparing(new I9()));

    public final String f54656d;

    public final String f54657e;

    public AbstractC10692h(M2 m22) {
        String j02 = m22.j0();
        this.f54656d = j02;
        int lastIndexOf = j02.lastIndexOf(46);
        this.f54657e = lastIndexOf > 0 ? j02.substring(0, lastIndexOf) : "";
    }

    public static String a(String str, String str2) {
        if (str.startsWith(str2) && str.length() > str2.length() && str.charAt(str2.length()) == '.') {
            return str.substring(str.lastIndexOf(46) + 1);
        }
        return null;
    }

    public final String a(String str) {
        String str2 = this.f54657e;
        String a10 = a(str, str2);
        if (a10 == null) {
            if (C10656zq0.a(str2, '.').size() > 2) {
                a10 = a(str, str2.substring(0, (str2.length() - ((String) AT.b(r1)).length()) - 1));
            } else {
                a10 = null;
            }
        }
        if (a10 == null) {
            a10 = a(str, "java.lang");
        }
        if (a10 == null) {
            a10 = a(str, "java.util.function");
        }
        if (a10 != null) {
            str = a10;
        }
        return str.replace('$', '.');
    }

    public static String a(C4537k3 c4537k3) {
        ArrayList arrayList = new ArrayList();
        if (c4537k3.l()) {
            arrayList.add("public");
        }
        if (c4537k3.k()) {
            arrayList.add("protected");
        }
        if (c4537k3.h()) {
            if (f54652f) {
                arrayList.add("private");
            } else {
                throw new AssertionError();
            }
        }
        if (c4537k3.f()) {
            if (f54652f) {
                arrayList.add("/* package */");
            } else {
                throw new AssertionError();
            }
        }
        if (c4537k3.n()) {
            arrayList.add("static");
        }
        if (c4537k3.e()) {
            arrayList.add("final");
        }
        return String.join(" ", arrayList);
    }

    public static String a(L4 l42) {
        ArrayList arrayList = new ArrayList();
        if (l42.l()) {
            arrayList.add("public");
        }
        if (l42.k()) {
            arrayList.add("protected");
        }
        if (l42.h()) {
            if (f54652f) {
                arrayList.add("private");
            } else {
                throw new AssertionError();
            }
        }
        if (l42.f()) {
            if (f54652f) {
                arrayList.add("/* package */");
            } else {
                throw new AssertionError();
            }
        }
        if (l42.H()) {
            arrayList.add("abstract");
        }
        if (l42.n()) {
            arrayList.add("static");
        }
        if (l42.e()) {
            arrayList.add("final");
        }
        return String.join(" ", arrayList);
    }

    public final String a(C4516j1 c4516j1) {
        String a10;
        String a11;
        I2 i22 = c4516j1.getReference().f36127i;
        StringBuilder sb2 = new StringBuilder();
        int i10 = (c4516j1.r1() || AbstractC4458g.d(c4516j1.f37314g.f37197c, 65536)) ? 1 : 0;
        sb2.append("(");
        M2[] m2Arr = i22.f36441f.f36675b;
        int length = m2Arr.length;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = true;
        while (i11 < length) {
            M2 m22 = m2Arr[i11];
            if (!z10) {
                sb2.append(", ");
            }
            if (c4516j1.b1()) {
                String str = com.itsmagic.engine.Engines.Engine.Animation.a.f72594b + i12;
                for (G.a aVar : c4516j1.Q0().V().F0()) {
                    if (aVar.b() == i10) {
                        if (!f54652f && aVar.c().f37307b.toString().equals("this")) {
                            throw new AssertionError();
                        }
                        str = aVar.c().f37307b.toString();
                    }
                }
                if (m22.P0()) {
                    a11 = m22.j0();
                } else {
                    a11 = a(m22.j0());
                }
                sb2.append(a11);
                sb2.append(" ");
                sb2.append(str);
            } else {
                if (m22.P0()) {
                    a10 = m22.j0();
                } else {
                    a10 = a(m22.j0());
                }
                sb2.append(a10);
                sb2.append(" p");
                sb2.append(i12);
            }
            i10 += m22.T0() ? 2 : 1;
            i12++;
            i11++;
            z10 = false;
        }
        sb2.append(")");
        return sb2.toString();
    }
}
