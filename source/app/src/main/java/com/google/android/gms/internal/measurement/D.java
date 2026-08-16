package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;

public final class D {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x010a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32, types: [com.google.android.gms.internal.measurement.q] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r23v0, types: [java.lang.String] */
    public static InterfaceC12157q a(String str, C12058f c12058f, C12079h2 c12079h2, List list) {
        String str2;
        char c10;
        InterfaceC12157q interfaceC12157q;
        double d10;
        String str3;
        double d11;
        double d12;
        C12058f c12058f2;
        switch (str.hashCode()) {
            case -1776922004:
                str2 = "toString";
                if (str.equals(str2)) {
                    c10 = 18;
                    break;
                }
                c10 = '\uffff';
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str2 = "toString";
                    c10 = 0;
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    str2 = "toString";
                    c10 = 2;
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    c10 = '\n';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -895859076:
                if (str.equals("splice")) {
                    c10 = 17;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    str2 = "toString";
                    c10 = 3;
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c10 = 6;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    c10 = 19;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 107868:
                if (str.equals("map")) {
                    c10 = 7;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 111185:
                if (str.equals("pop")) {
                    c10 = '\b';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 3267882:
                if (str.equals("join")) {
                    c10 = 5;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 3452698:
                if (str.equals("push")) {
                    c10 = '\t';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 3536116:
                if (str.equals("some")) {
                    c10 = 15;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 3536286:
                if (str.equals("sort")) {
                    c10 = 16;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 96891675:
                if (str.equals("every")) {
                    str2 = "toString";
                    c10 = 1;
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 109407362:
                if (str.equals("shift")) {
                    c10 = CharUtils.CR;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c10 = 14;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    c10 = '\f';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c10 = 4;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = '\uffff';
                break;
            default:
                str2 = "toString";
                c10 = '\uffff';
                break;
        }
        AbstractC12103k abstractC12103k = null;
        switch (c10) {
            case 0:
                interfaceC12157q = (C12058f) c12058f.g();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) it.next());
                        if (a10 instanceof C12076h) {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                        int k10 = interfaceC12157q.k();
                        if (a10 instanceof C12058f) {
                            C12058f c12058f3 = (C12058f) a10;
                            Iterator j10 = c12058f3.j();
                            while (j10.hasNext()) {
                                Integer num = (Integer) j10.next();
                                interfaceC12157q.n(num.intValue() + k10, c12058f3.m(num.intValue()));
                            }
                        } else {
                            interfaceC12157q.n(k10, a10);
                        }
                    }
                }
                return interfaceC12157q;
            case 1:
                I2.a("every", 1, list);
                InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (!(a11 instanceof C12148p)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (c12058f.k() != 0 && c(c12058f, c12079h2, (C12148p) a11, Boolean.FALSE, Boolean.TRUE).k() != c12058f.k()) {
                    return InterfaceC12157q.f62400u4;
                }
                return InterfaceC12157q.f62399t4;
            case 2:
                I2.a("filter", 1, list);
                InterfaceC12157q a12 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (!(a12 instanceof C12148p)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (c12058f.l() == 0) {
                    return new C12058f();
                }
                C12058f c12058f4 = (C12058f) c12058f.g();
                C12058f c11 = c(c12058f, c12079h2, (C12148p) a12, null, Boolean.TRUE);
                interfaceC12157q = new C12058f();
                Iterator j11 = c11.j();
                while (j11.hasNext()) {
                    interfaceC12157q.n(interfaceC12157q.k(), c12058f4.m(((Integer) j11.next()).intValue()));
                }
                return interfaceC12157q;
            case 3:
                I2.a("forEach", 1, list);
                InterfaceC12157q a13 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (!(a13 instanceof C12148p)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (c12058f.l() == 0) {
                    return InterfaceC12157q.f62394o4;
                }
                c(c12058f, c12079h2, (C12148p) a13, null, null);
                return InterfaceC12157q.f62394o4;
            case 4:
                I2.c("indexOf", 2, list);
                InterfaceC12157q interfaceC12157q2 = InterfaceC12157q.f62394o4;
                if (!list.isEmpty()) {
                    interfaceC12157q2 = c12079h2.a((InterfaceC12157q) list.get(0));
                }
                if (list.size() > 1) {
                    d10 = I2.i(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue());
                    if (d10 >= c12058f.k()) {
                        return new C12094j(Double.valueOf(-1.0d));
                    }
                    if (d10 < 0.0d) {
                        d10 += c12058f.k();
                    }
                } else {
                    d10 = 0.0d;
                }
                Iterator j12 = c12058f.j();
                while (j12.hasNext()) {
                    int intValue = ((Integer) j12.next()).intValue();
                    double d13 = intValue;
                    if (d13 >= d10 && I2.f(c12058f.m(intValue), interfaceC12157q2)) {
                        return new C12094j(Double.valueOf(d13));
                    }
                }
                return new C12094j(Double.valueOf(-1.0d));
            case 5:
                I2.c("join", 1, list);
                if (c12058f.k() == 0) {
                    return InterfaceC12157q.f62401w4;
                }
                if (list.isEmpty()) {
                    str3 = DocLint.SEPARATOR;
                } else {
                    InterfaceC12157q a14 = c12079h2.a((InterfaceC12157q) list.get(0));
                    str3 = ((a14 instanceof C12139o) || (a14 instanceof C12201v)) ? "" : a14.P1();
                }
                return new C12192u(c12058f.u(str3));
            case 6:
                I2.c("lastIndexOf", 2, list);
                InterfaceC12157q interfaceC12157q3 = InterfaceC12157q.f62394o4;
                if (!list.isEmpty()) {
                    interfaceC12157q3 = c12079h2.a((InterfaceC12157q) list.get(0));
                }
                int k11 = c12058f.k() - 1;
                if (list.size() > 1) {
                    InterfaceC12157q a15 = c12079h2.a((InterfaceC12157q) list.get(1));
                    d12 = Double.isNaN(a15.Q1().doubleValue()) ? c12058f.k() - 1 : I2.i(a15.Q1().doubleValue());
                    d11 = 0.0d;
                    if (d12 < 0.0d) {
                        d12 += c12058f.k();
                    }
                } else {
                    d11 = 0.0d;
                    d12 = k11;
                }
                if (d12 < d11) {
                    return new C12094j(Double.valueOf(-1.0d));
                }
                for (int min = (int) Math.min(c12058f.k(), d12); min >= 0; min--) {
                    if (c12058f.o(min) && I2.f(c12058f.m(min), interfaceC12157q3)) {
                        return new C12094j(Double.valueOf(min));
                    }
                }
                return new C12094j(Double.valueOf(-1.0d));
            case 7:
                I2.a("map", 1, list);
                InterfaceC12157q a16 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (a16 instanceof C12148p) {
                    return c12058f.k() == 0 ? new C12058f() : c(c12058f, c12079h2, (C12148p) a16, null, null);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case '\b':
                I2.a("pop", 0, list);
                int k12 = c12058f.k();
                if (k12 == 0) {
                    return InterfaceC12157q.f62394o4;
                }
                int i10 = k12 - 1;
                interfaceC12157q = c12058f.m(i10);
                c12058f.t(i10);
                return interfaceC12157q;
            case '\t':
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        c12058f.n(c12058f.k(), c12079h2.a((InterfaceC12157q) it2.next()));
                    }
                }
                return new C12094j(Double.valueOf(c12058f.k()));
            case '\n':
                return b(c12058f, c12079h2, list, true);
            case 11:
                return b(c12058f, c12079h2, list, false);
            case '\f':
                c12058f2 = c12058f;
                I2.a("reverse", 0, list);
                int k13 = c12058f.k();
                if (k13 != 0) {
                    for (int i11 = 0; i11 < k13 / 2; i11++) {
                        if (c12058f2.o(i11)) {
                            InterfaceC12157q m10 = c12058f2.m(i11);
                            c12058f2.n(i11, null);
                            int i12 = (k13 - 1) - i11;
                            if (c12058f2.o(i12)) {
                                c12058f2.n(i11, c12058f2.m(i12));
                            }
                            c12058f2.n(i12, m10);
                        }
                    }
                }
                return c12058f2;
            case '\r':
                I2.a("shift", 0, list);
                if (c12058f.k() == 0) {
                    return InterfaceC12157q.f62394o4;
                }
                InterfaceC12157q m11 = c12058f.m(0);
                c12058f.t(0);
                return m11;
            case 14:
                I2.c("slice", 2, list);
                if (list.isEmpty()) {
                    return c12058f.g();
                }
                double k14 = c12058f.k();
                double i13 = I2.i(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue());
                double max = i13 < 0.0d ? Math.max(i13 + k14, 0.0d) : Math.min(i13, k14);
                if (list.size() == 2) {
                    double i14 = I2.i(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue());
                    k14 = i14 < 0.0d ? Math.max(k14 + i14, 0.0d) : Math.min(k14, i14);
                }
                C12058f c12058f5 = new C12058f();
                for (int i15 = (int) max; i15 < k14; i15++) {
                    c12058f5.n(c12058f5.k(), c12058f.m(i15));
                }
                return c12058f5;
            case 15:
                I2.a("some", 1, list);
                InterfaceC12157q a17 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (!(a17 instanceof AbstractC12103k)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (c12058f.k() == 0) {
                    return InterfaceC12157q.f62400u4;
                }
                AbstractC12103k abstractC12103k2 = (AbstractC12103k) a17;
                Iterator j13 = c12058f.j();
                while (j13.hasNext()) {
                    int intValue2 = ((Integer) j13.next()).intValue();
                    if (c12058f.o(intValue2) && abstractC12103k2.i(c12079h2, Arrays.asList(c12058f.m(intValue2), new C12094j(Double.valueOf(intValue2)), c12058f)).R1().booleanValue()) {
                        return InterfaceC12157q.f62399t4;
                    }
                }
                return InterfaceC12157q.f62400u4;
            case 16:
                c12058f2 = c12058f;
                I2.c("sort", 1, list);
                if (c12058f.k() >= 2) {
                    List i16 = c12058f.i();
                    if (!list.isEmpty()) {
                        InterfaceC12157q a18 = c12079h2.a((InterfaceC12157q) list.get(0));
                        if (!(a18 instanceof AbstractC12103k)) {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                        abstractC12103k = (AbstractC12103k) a18;
                    }
                    Collections.sort(i16, new B(abstractC12103k, c12079h2));
                    c12058f.r();
                    Iterator it3 = i16.iterator();
                    int i17 = 0;
                    while (it3.hasNext()) {
                        c12058f2.n(i17, (InterfaceC12157q) it3.next());
                        i17++;
                    }
                }
                return c12058f2;
            case 17:
                if (list.isEmpty()) {
                    return new C12058f();
                }
                int i18 = (int) I2.i(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue());
                if (i18 < 0) {
                    i18 = Math.max(0, i18 + c12058f.k());
                } else if (i18 > c12058f.k()) {
                    i18 = c12058f.k();
                }
                int k15 = c12058f.k();
                C12058f c12058f6 = new C12058f();
                if (list.size() > 1) {
                    int max2 = Math.max(0, (int) I2.i(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()));
                    if (max2 > 0) {
                        for (int i19 = i18; i19 < Math.min(k15, i18 + max2); i19++) {
                            c12058f6.n(c12058f6.k(), c12058f.m(i18));
                            c12058f.t(i18);
                        }
                    }
                    if (list.size() > 2) {
                        for (int i20 = 2; i20 < list.size(); i20++) {
                            InterfaceC12157q a19 = c12079h2.a((InterfaceC12157q) list.get(i20));
                            if (a19 instanceof C12076h) {
                                throw new IllegalArgumentException("Failed to parse elements to add");
                            }
                            c12058f.s((i18 + i20) - 2, a19);
                        }
                    }
                } else {
                    while (i18 < k15) {
                        c12058f6.n(c12058f6.k(), c12058f.m(i18));
                        c12058f.n(i18, null);
                        i18++;
                    }
                }
                return c12058f6;
            case 18:
                I2.a(str2, 0, list);
                return new C12192u(c12058f.u(DocLint.SEPARATOR));
            case 19:
                if (!list.isEmpty()) {
                    C12058f c12058f7 = new C12058f();
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        InterfaceC12157q a20 = c12079h2.a((InterfaceC12157q) it4.next());
                        if (a20 instanceof C12076h) {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                        c12058f7.n(c12058f7.k(), a20);
                    }
                    int k16 = c12058f7.k();
                    Iterator j14 = c12058f.j();
                    while (j14.hasNext()) {
                        Integer num2 = (Integer) j14.next();
                        c12058f7.n(num2.intValue() + k16, c12058f.m(num2.intValue()));
                    }
                    c12058f.r();
                    Iterator j15 = c12058f7.j();
                    while (j15.hasNext()) {
                        Integer num3 = (Integer) j15.next();
                        c12058f.n(num3.intValue(), c12058f7.m(num3.intValue()));
                    }
                }
                return new C12094j(Double.valueOf(c12058f.k()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    public static InterfaceC12157q b(C12058f c12058f, C12079h2 c12079h2, List list, boolean z10) {
        InterfaceC12157q interfaceC12157q;
        I2.b("reduce", 1, list);
        I2.c("reduce", 2, list);
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
        if (!(a10 instanceof AbstractC12103k)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (list.size() == 2) {
            interfaceC12157q = c12079h2.a((InterfaceC12157q) list.get(1));
            if (interfaceC12157q instanceof C12076h) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (c12058f.k() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            interfaceC12157q = null;
        }
        AbstractC12103k abstractC12103k = (AbstractC12103k) a10;
        int k10 = c12058f.k();
        int i10 = z10 ? 0 : k10 - 1;
        int i11 = z10 ? k10 - 1 : 0;
        int i12 = true == z10 ? 1 : -1;
        if (interfaceC12157q == null) {
            interfaceC12157q = c12058f.m(i10);
            i10 += i12;
        }
        while ((i11 - i10) * i12 >= 0) {
            if (c12058f.o(i10)) {
                interfaceC12157q = abstractC12103k.i(c12079h2, Arrays.asList(interfaceC12157q, c12058f.m(i10), new C12094j(Double.valueOf(i10)), c12058f));
                if (interfaceC12157q instanceof C12076h) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i10 += i12;
            } else {
                i10 += i12;
            }
        }
        return interfaceC12157q;
    }

    public static C12058f c(C12058f c12058f, C12079h2 c12079h2, AbstractC12103k abstractC12103k, Boolean bool, Boolean bool2) {
        C12058f c12058f2 = new C12058f();
        Iterator j10 = c12058f.j();
        while (j10.hasNext()) {
            int intValue = ((Integer) j10.next()).intValue();
            if (c12058f.o(intValue)) {
                InterfaceC12157q i10 = abstractC12103k.i(c12079h2, Arrays.asList(c12058f.m(intValue), new C12094j(Double.valueOf(intValue)), c12058f));
                if (i10.R1().equals(bool)) {
                    break;
                }
                if (bool2 == null || i10.R1().equals(bool2)) {
                    c12058f2.n(intValue, i10);
                }
            }
        }
        return c12058f2;
    }
}
