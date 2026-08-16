package com.android.tools.r8.internal;

import com.android.tools.r8.internal.JP;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC6843cy0 {
    public static final N80 a(GP gp, C9243rM c9243rM) {
        GJ.c(gp, "<this>");
        GJ.c(c9243rM, "strings");
        O80 o80 = O80.f42788h;
        N80 n80 = new N80();
        int a10 = a(c9243rM, gp.b());
        n80.f42513c |= 1;
        n80.f42514d = a10;
        for (Map.Entry<String, JP> entry : gp.a().entrySet()) {
            String key = entry.getKey();
            JP value = entry.getValue();
            M80 m80 = M80.f42187h;
            H80 h80 = new H80();
            int a11 = c9243rM.a(key);
            h80.f40692c |= 1;
            h80.f40693d = a11;
            L80 c10 = a(value, c9243rM).c();
            if (c10.isInitialized()) {
                h80.f40694e = c10;
                h80.f40692c |= 2;
                if ((n80.f42513c & 2) != 2) {
                    n80.f42515e = new ArrayList(n80.f42515e);
                    n80.f42513c |= 2;
                }
                List list = n80.f42515e;
                M80 c11 = h80.c();
                if (c11.isInitialized()) {
                    list.add(c11);
                } else {
                    throw new C6834cv0();
                }
            } else {
                throw new C6834cv0();
            }
        }
        return n80;
    }

    public static final J80 a(JP jp2, C9243rM c9243rM) {
        GJ.c(jp2, "<this>");
        GJ.c(c9243rM, "strings");
        L80 l80 = L80.f41876q;
        J80 j80 = new J80();
        if (jp2 instanceof LP) {
            K80 k80 = K80.BYTE;
            j80.f41307c |= 1;
            j80.f41308d = k80;
            j80.a(((LP) jp2).f41954a);
        } else if (jp2 instanceof MP) {
            K80 k802 = K80.CHAR;
            j80.f41307c |= 1;
            j80.f41308d = k802;
            j80.a(((MP) jp2).f42289a);
        } else if (jp2 instanceof UP) {
            K80 k803 = K80.SHORT;
            j80.f41307c |= 1;
            j80.f41308d = k803;
            j80.a(((UP) jp2).f44752a);
        } else if (jp2 instanceof QP) {
            K80 k804 = K80.INT;
            j80.f41307c |= 1;
            j80.f41308d = k804;
            j80.a(((QP) jp2).f43573a);
        } else if (jp2 instanceof TP) {
            K80 k805 = K80.LONG;
            j80.f41307c |= 1;
            j80.f41308d = k805;
            j80.a(((TP) jp2).f44464a);
        } else if (jp2 instanceof PP) {
            K80 k806 = K80.FLOAT;
            int i10 = j80.f41307c;
            j80.f41307c = i10 | 1;
            j80.f41308d = k806;
            float f10 = ((PP) jp2).f43200a;
            j80.f41307c = i10 | 5;
            j80.f41310f = f10;
        } else if (jp2 instanceof NP) {
            K80 k807 = K80.DOUBLE;
            int i11 = j80.f41307c;
            j80.f41307c = i11 | 1;
            j80.f41308d = k807;
            double d10 = ((NP) jp2).f42579a;
            j80.f41307c = i11 | 9;
            j80.f41311g = d10;
        } else if (jp2 instanceof KP) {
            K80 k808 = K80.BOOLEAN;
            j80.f41307c |= 1;
            j80.f41308d = k808;
            j80.a(((KP) jp2).f41665a ? 1L : 0L);
        } else if (jp2 instanceof WP) {
            K80 k809 = K80.BYTE;
            j80.f41307c |= 1;
            j80.f41308d = k809;
            j80.a(((WP) jp2).f45389a & 255);
            C10008vx c10008vx = AbstractC10509yx.f54217O;
            c10008vx.getClass();
            int i12 = 1 << c10008vx.f53898a;
            j80.f41307c |= 1024;
            j80.f41318n = i12;
        } else if (jp2 instanceof ZP) {
            K80 k8010 = K80.SHORT;
            j80.f41307c |= 1;
            j80.f41308d = k8010;
            j80.a(((ZP) jp2).f46235a & Sg.b.f23266s);
            C10008vx c10008vx2 = AbstractC10509yx.f54217O;
            c10008vx2.getClass();
            int i13 = 1 << c10008vx2.f53898a;
            j80.f41307c |= 1024;
            j80.f41318n = i13;
        } else if (jp2 instanceof XP) {
            K80 k8011 = K80.INT;
            j80.f41307c |= 1;
            j80.f41308d = k8011;
            j80.a(((XP) jp2).f45682a & 4294967295L);
            C10008vx c10008vx3 = AbstractC10509yx.f54217O;
            c10008vx3.getClass();
            int i14 = 1 << c10008vx3.f53898a;
            j80.f41307c |= 1024;
            j80.f41318n = i14;
        } else if (jp2 instanceof YP) {
            K80 k8012 = K80.LONG;
            j80.f41307c |= 1;
            j80.f41308d = k8012;
            j80.a(((YP) jp2).f45984a);
            C10008vx c10008vx4 = AbstractC10509yx.f54217O;
            c10008vx4.getClass();
            int i15 = 1 << c10008vx4.f53898a;
            j80.f41307c |= 1024;
            j80.f41318n = i15;
        } else if (jp2 instanceof VP) {
            K80 k8013 = K80.STRING;
            j80.f41307c = 1 | j80.f41307c;
            j80.f41308d = k8013;
            int a10 = c9243rM.a(((VP) jp2).f45045a);
            j80.f41307c |= 16;
            j80.f41312h = a10;
        } else if (jp2 instanceof RP) {
            K80 k8014 = K80.CLASS;
            j80.f41307c = 1 | j80.f41307c;
            j80.f41308d = k8014;
            int a11 = a(c9243rM, ((RP) jp2).f43892a);
            j80.f41307c |= 32;
            j80.f41313i = a11;
        } else if (jp2 instanceof IP) {
            K80 k8015 = K80.CLASS;
            j80.f41307c = 1 | j80.f41307c;
            j80.f41308d = k8015;
            IP ip = (IP) jp2;
            int a12 = a(c9243rM, ip.f41078a);
            int i16 = j80.f41307c;
            j80.f41313i = a12;
            int i17 = ip.f41079b;
            j80.f41307c = i16 | 544;
            j80.f41317m = i17;
        } else if (jp2 instanceof OP) {
            K80 k8016 = K80.ENUM;
            j80.f41307c = 1 | j80.f41307c;
            j80.f41308d = k8016;
            OP op = (OP) jp2;
            int a13 = a(c9243rM, op.f42872a);
            j80.f41307c |= 32;
            j80.f41313i = a13;
            int a14 = c9243rM.a(op.f42873b);
            j80.f41307c |= 64;
            j80.f41314j = a14;
        } else if (jp2 instanceof HP) {
            K80 k8017 = K80.ANNOTATION;
            j80.f41307c = 1 | j80.f41307c;
            j80.f41308d = k8017;
            O80 c10 = a(((HP) jp2).f40753a, c9243rM).c();
            if (c10.isInitialized()) {
                j80.f41315k = c10;
                j80.f41307c |= 128;
            } else {
                throw new C6834cv0();
            }
        } else {
            if (jp2 instanceof JP.a) {
                K80 k8018 = K80.ARRAY;
                j80.f41307c = 1 | j80.f41307c;
                j80.f41308d = k8018;
                Iterator<JP> it = ((JP.a) jp2).a().iterator();
                while (it.hasNext()) {
                    J80 a15 = a(it.next(), c9243rM);
                    if ((j80.f41307c & 256) != 256) {
                        j80.f41316l = new ArrayList(j80.f41316l);
                        j80.f41307c |= 256;
                    }
                    List list = j80.f41316l;
                    L80 c11 = a15.c();
                    if (c11.isInitialized()) {
                        list.add(c11);
                    } else {
                        throw new C6834cv0();
                    }
                }
                return j80;
            }
            throw new C00();
        }
        return j80;
    }

    public static final int a(C9243rM c9243rM, String str) {
        GJ.c(c9243rM, "<this>");
        GJ.c(str, "name");
        if (AbstractC5349Iq0.b(str, ".")) {
            String substring = str.substring(1);
            GJ.b(substring, "substring(...)");
            return c9243rM.a(substring, true);
        }
        return c9243rM.a(str, false);
    }
}
