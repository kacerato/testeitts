package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C12192u implements Iterable, InterfaceC12157q {

    public final String f62442b;

    public C12192u(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f62442b = str;
    }

    @Override
    public final String P1() {
        return this.f62442b;
    }

    @Override
    public final Double Q1() {
        String str = this.f62442b;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override
    public final Boolean R1() {
        return Boolean.valueOf(!this.f62442b.isEmpty());
    }

    @Override
    public final Iterator a() {
        return new C12174s(this);
    }

    public final String b() {
        return this.f62442b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C12192u) {
            return this.f62442b.equals(((C12192u) obj).f62442b);
        }
        return false;
    }

    @Override
    public final InterfaceC12157q g() {
        return new C12192u(this.f62442b);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0177. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0641  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x032d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        char c10;
        C12192u c12192u;
        InterfaceC12157q c12192u2;
        InterfaceC12157q interfaceC12157q;
        int i10;
        String str7;
        int i11;
        int i12;
        int i13;
        int i14;
        C12079h2 c12079h22;
        int i15;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
        } else {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str)) {
                str3 = "hasOwnProperty";
                str4 = "trim";
                if (!str4.equals(str)) {
                    throw new IllegalArgumentException(String.format("%s is not a String function", str));
                }
                switch (str.hashCode()) {
                    case -1789698943:
                        str5 = "charAt";
                        str6 = str3;
                        if (str.equals(str6)) {
                            c10 = 2;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case -1776922004:
                        str5 = "charAt";
                        if (str.equals("toString")) {
                            c10 = 14;
                            str6 = str3;
                            break;
                        }
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -1464939364:
                        str5 = "charAt";
                        if (str.equals("toLocaleLowerCase")) {
                            c10 = '\f';
                            str6 = str3;
                            break;
                        }
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -1361633751:
                        str5 = "charAt";
                        if (str.equals(str5)) {
                            str6 = str3;
                            c10 = 0;
                            break;
                        }
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -1354795244:
                        if (str.equals("concat")) {
                            str5 = "charAt";
                            str6 = str3;
                            c10 = 1;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -1137582698:
                        if (str.equals("toLowerCase")) {
                            c10 = CharUtils.CR;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -906336856:
                        if (str.equals("search")) {
                            c10 = 7;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -726908483:
                        if (str.equals(str2)) {
                            c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -467511597:
                        if (str.equals("lastIndexOf")) {
                            c10 = 4;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case -399551817:
                        if (str.equals("toUpperCase")) {
                            c10 = 15;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 3568674:
                        if (str.equals(str4)) {
                            c10 = 16;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 103668165:
                        if (str.equals("match")) {
                            c10 = 5;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 109526418:
                        if (str.equals("slice")) {
                            c10 = '\b';
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 109648666:
                        if (str.equals("split")) {
                            c10 = '\t';
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 530542161:
                        if (str.equals("substring")) {
                            c10 = '\n';
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 1094496948:
                        if (str.equals("replace")) {
                            c10 = 6;
                            str5 = "charAt";
                            str6 = str3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    case 1943291465:
                        if (str.equals("indexOf")) {
                            str5 = "charAt";
                            str6 = str3;
                            c10 = 3;
                            break;
                        }
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                    default:
                        str5 = "charAt";
                        str6 = str3;
                        c10 = '\uffff';
                        break;
                }
                switch (c10) {
                    case 0:
                        I2.c(str5, 1, list);
                        int i16 = !list.isEmpty() ? (int) I2.i(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) : 0;
                        String str8 = this.f62442b;
                        return (i16 < 0 || i16 >= str8.length()) ? InterfaceC12157q.f62401w4 : new C12192u(String.valueOf(str8.charAt(i16)));
                    case 1:
                        c12192u = this;
                        if (!list.isEmpty()) {
                            StringBuilder sb2 = new StringBuilder(c12192u.f62442b);
                            for (int i17 = 0; i17 < list.size(); i17++) {
                                sb2.append(c12079h2.a((InterfaceC12157q) list.get(i17)).P1());
                            }
                            c12192u2 = new C12192u(sb2.toString());
                            return c12192u2;
                        }
                        return c12192u;
                    case 2:
                        c12192u = this;
                        I2.a(str6, 1, list);
                        String str9 = c12192u.f62442b;
                        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
                        if ("length".equals(a10.P1())) {
                            interfaceC12157q = InterfaceC12157q.f62399t4;
                        } else {
                            double doubleValue = a10.Q1().doubleValue();
                            interfaceC12157q = (doubleValue != Math.floor(doubleValue) || (i10 = (int) doubleValue) < 0 || i10 >= str9.length()) ? InterfaceC12157q.f62400u4 : InterfaceC12157q.f62399t4;
                        }
                        return interfaceC12157q;
                    case 3:
                        c12192u = this;
                        I2.c("indexOf", 2, list);
                        c12192u2 = new C12094j(Double.valueOf(c12192u.f62442b.indexOf(list.size() > 0 ? c12079h2.a((InterfaceC12157q) list.get(0)).P1() : "undefined", (int) I2.i(list.size() >= 2 ? c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue() : 0.0d))));
                        return c12192u2;
                    case 4:
                        c12192u = this;
                        I2.c("lastIndexOf", 2, list);
                        String str10 = c12192u.f62442b;
                        String P12 = list.size() > 0 ? c12079h2.a((InterfaceC12157q) list.get(0)).P1() : "undefined";
                        c12192u2 = new C12094j(Double.valueOf(str10.lastIndexOf(P12, (int) (Double.isNaN(list.size() < 2 ? Double.NaN : c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) ? Double.POSITIVE_INFINITY : I2.i(r0)))));
                        return c12192u2;
                    case 5:
                        c12192u = this;
                        I2.c("match", 1, list);
                        Matcher matcher = Pattern.compile(list.size() <= 0 ? "" : c12079h2.a((InterfaceC12157q) list.get(0)).P1()).matcher(c12192u.f62442b);
                        if (matcher.find()) {
                            c12192u2 = new C12058f(Arrays.asList(new C12192u(matcher.group())));
                            return c12192u2;
                        }
                        interfaceC12157q = InterfaceC12157q.f62395p4;
                        return interfaceC12157q;
                    case 6:
                        c12192u = this;
                        I2.c("replace", 2, list);
                        InterfaceC12157q interfaceC12157q2 = InterfaceC12157q.f62394o4;
                        if (!list.isEmpty()) {
                            str7 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
                            if (list.size() > 1) {
                                interfaceC12157q2 = c12079h2.a((InterfaceC12157q) list.get(1));
                            }
                        }
                        String str11 = str7;
                        String str12 = c12192u.f62442b;
                        int indexOf = str12.indexOf(str11);
                        if (indexOf >= 0) {
                            if (interfaceC12157q2 instanceof AbstractC12103k) {
                                i11 = 0;
                                interfaceC12157q2 = ((AbstractC12103k) interfaceC12157q2).i(c12079h2, Arrays.asList(new C12192u(str11), new C12094j(Double.valueOf(indexOf)), c12192u));
                            } else {
                                i11 = 0;
                            }
                            String substring = str12.substring(i11, indexOf);
                            String P13 = interfaceC12157q2.P1();
                            String substring2 = str12.substring(indexOf + str11.length());
                            StringBuilder sb3 = new StringBuilder(String.valueOf(substring).length() + String.valueOf(P13).length() + String.valueOf(substring2).length());
                            sb3.append(substring);
                            sb3.append(P13);
                            sb3.append(substring2);
                            c12192u2 = new C12192u(sb3.toString());
                            return c12192u2;
                        }
                        return c12192u;
                    case 7:
                        c12192u = this;
                        I2.c("search", 1, list);
                        if (Pattern.compile(list.isEmpty() ? "undefined" : c12079h2.a((InterfaceC12157q) list.get(0)).P1()).matcher(c12192u.f62442b).find()) {
                            c12192u2 = new C12094j(Double.valueOf(r0.start()));
                            return c12192u2;
                        }
                        interfaceC12157q = new C12094j(Double.valueOf(-1.0d));
                        return interfaceC12157q;
                    case '\b':
                        c12192u = this;
                        I2.c("slice", 2, list);
                        String str13 = c12192u.f62442b;
                        double i18 = I2.i(!list.isEmpty() ? c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue() : 0.0d);
                        double max = i18 < 0.0d ? Math.max(str13.length() + i18, 0.0d) : Math.min(i18, str13.length());
                        double i19 = I2.i(list.size() > 1 ? c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue() : str13.length());
                        int i20 = (int) max;
                        c12192u2 = new C12192u(str13.substring(i20, Math.max(0, ((int) (i19 < 0.0d ? Math.max(str13.length() + i19, 0.0d) : Math.min(i19, str13.length()))) - i20) + i20));
                        return c12192u2;
                    case '\t':
                        c12192u = this;
                        I2.c("split", 2, list);
                        String str14 = c12192u.f62442b;
                        if (str14.length() == 0) {
                            interfaceC12157q = new C12058f(Arrays.asList(c12192u));
                        } else {
                            ArrayList arrayList = new ArrayList();
                            if (list.isEmpty()) {
                                arrayList.add(c12192u);
                            } else {
                                String P14 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
                                long h10 = list.size() > 1 ? I2.h(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) : 2147483647L;
                                if (h10 == 0) {
                                    interfaceC12157q = new C12058f();
                                } else {
                                    String[] split = str14.split(Pattern.quote(P14), ((int) h10) + 1);
                                    int length = split.length;
                                    if (!P14.isEmpty() || length <= 0) {
                                        i12 = -1;
                                        i13 = length;
                                        i14 = 0;
                                    } else {
                                        boolean isEmpty = split[0].isEmpty();
                                        i12 = -1;
                                        i13 = length - 1;
                                        i14 = isEmpty;
                                        if (!split[i13].isEmpty()) {
                                            i13 = length;
                                            i14 = isEmpty;
                                        }
                                    }
                                    if (length > h10) {
                                        i13 += i12;
                                    }
                                    while (i14 < i13) {
                                        arrayList.add(new C12192u(split[i14]));
                                        i14++;
                                    }
                                }
                            }
                            interfaceC12157q = new C12058f(arrayList);
                        }
                        return interfaceC12157q;
                    case '\n':
                        c12192u = this;
                        I2.c("substring", 2, list);
                        String str15 = c12192u.f62442b;
                        if (list.isEmpty()) {
                            c12079h22 = c12079h2;
                            i15 = 0;
                        } else {
                            c12079h22 = c12079h2;
                            i15 = (int) I2.i(c12079h22.a((InterfaceC12157q) list.get(0)).Q1().doubleValue());
                        }
                        int i21 = list.size() > 1 ? (int) I2.i(c12079h22.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) : str15.length();
                        int min = Math.min(Math.max(i15, 0), str15.length());
                        int min2 = Math.min(Math.max(i21, 0), str15.length());
                        c12192u2 = new C12192u(str15.substring(Math.min(min, min2), Math.max(min, min2)));
                        return c12192u2;
                    case 11:
                        c12192u = this;
                        I2.a(str2, 0, list);
                        c12192u2 = new C12192u(c12192u.f62442b.toUpperCase());
                        return c12192u2;
                    case '\f':
                        c12192u = this;
                        I2.a("toLocaleLowerCase", 0, list);
                        c12192u2 = new C12192u(c12192u.f62442b.toLowerCase());
                        return c12192u2;
                    case '\r':
                        c12192u = this;
                        I2.a("toLowerCase", 0, list);
                        c12192u2 = new C12192u(c12192u.f62442b.toLowerCase(Locale.ENGLISH));
                        return c12192u2;
                    case 14:
                        c12192u = this;
                        I2.a("toString", 0, list);
                        return c12192u;
                    case 15:
                        c12192u = this;
                        I2.a("toUpperCase", 0, list);
                        c12192u2 = new C12192u(c12192u.f62442b.toUpperCase(Locale.ENGLISH));
                        return c12192u2;
                    case 16:
                        I2.a("toUpperCase", 0, list);
                        c12192u = this;
                        c12192u2 = new C12192u(c12192u.f62442b.trim());
                        return c12192u2;
                    default:
                        throw new IllegalArgumentException("Command not supported");
                }
            }
        }
        str3 = "hasOwnProperty";
        str4 = "trim";
        switch (str.hashCode()) {
            case -1789698943:
                break;
            case -1776922004:
                break;
            case -1464939364:
                break;
            case -1361633751:
                break;
            case -1354795244:
                break;
            case -1137582698:
                break;
            case -906336856:
                break;
            case -726908483:
                break;
            case -467511597:
                break;
            case -399551817:
                break;
            case 3568674:
                break;
            case 103668165:
                break;
            case 109526418:
                break;
            case 109648666:
                break;
            case 530542161:
                break;
            case 1094496948:
                break;
            case 1943291465:
                break;
        }
        switch (c10) {
        }
    }

    public final int hashCode() {
        return this.f62442b.hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new C12183t(this);
    }

    public final String toString() {
        String str = this.f62442b;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        sb2.append(str);
        sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        return sb2.toString();
    }
}
