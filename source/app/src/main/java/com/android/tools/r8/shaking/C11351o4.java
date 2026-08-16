package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.shaking.AbstractC11250i4;
import com.android.tools.r8.shaking.AbstractC11401r4;
import com.android.tools.r8.shaking.C11384q3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11351o4 extends AbstractC11250i4 {

    public static final boolean f57666e = true;

    public final String f57667b;

    public final List f57668c;

    public final AbstractC11250i4.a f57669d;

    public C11351o4(C11384q3.a aVar, AbstractC11250i4.a aVar2) {
        this.f57667b = aVar.f57729a;
        this.f57668c = aVar.f57730b;
        this.f57669d = aVar2;
    }

    @Override
    public final void a(Consumer consumer) {
        this.f57668c.forEach(consumer);
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        boolean a10 = a(this.f57667b, 0, m22.j0(), 0, this.f57668c, 0, this.f57669d);
        if (!a10) {
            this.f57668c.forEach(new Db());
        }
        return a10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof C11351o4) {
            C11351o4 c11351o4 = (C11351o4) obj;
            if (this.f57669d.equals(c11351o4.f57669d) && this.f57667b.equals(c11351o4.f57667b)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f57669d.hashCode() + (this.f57667b.hashCode() * 7);
    }

    @Override
    public final String toString() {
        return this.f57667b;
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return C9073qK.a(this.f57668c, predicate);
    }

    @Override
    public final AbstractC11250i4 a(C4724u1 c4724u1) {
        C6899dH c6899dH = new C6899dH(16);
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f57668c.iterator();
        while (it.hasNext()) {
            AbstractC11401r4 f10 = ((AbstractC11401r4) it.next()).f();
            if (f10.d()) {
                AbstractC11401r4.a a10 = f10.a();
                c6899dH.a(a10.f57767b, a10.g());
            } else {
                arrayList.add(f10);
            }
        }
        if (!c6899dH.isEmpty()) {
            String str = this.f57667b;
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            int i11 = 0;
            while (i10 < str.length()) {
                if (str.charAt(i10) == '<') {
                    int i12 = i10 + 1;
                    int i13 = i12;
                    while (i13 < str.length() && str.charAt(i13) != '>') {
                        i13++;
                    }
                    if (i13 == str.length()) {
                        break;
                    }
                    String substring = str.substring(i12, i13);
                    if (!substring.isEmpty()) {
                        char[] cArr = C10656zq0.f54545a;
                        int i14 = 0;
                        while (true) {
                            if (i14 < substring.length()) {
                                if (!Character.isDigit(substring.charAt(i14))) {
                                    break;
                                }
                                i14++;
                            } else {
                                String str2 = (String) c6899dH.get(Integer.valueOf(substring).intValue());
                                if (str2 != null) {
                                    sb2.append(str.substring(i11, i10));
                                    sb2.append(str2);
                                    i11 = i13 + 1;
                                    i10 = i13;
                                }
                            }
                        }
                    }
                }
                i10++;
            }
            if (!f57666e && i10 != str.length()) {
                throw new AssertionError();
            }
            if (i11 < i10) {
                sb2.append(str.substring(i11));
            }
            String sb3 = sb2.toString();
            if (!sb3.contains("*")) {
                return new AbstractC11250i4.b(c4724u1.d(C4932Bl.H(sb3)));
            }
            return new C11351o4(new C11384q3.a(sb3, arrayList), this.f57669d);
        }
        return new C11351o4(new C11384q3.a(this.f57667b, arrayList), this.f57669d);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(String str, int i10, String str2, int i11, List list, int i12, AbstractC11250i4.a aVar) {
        int i13;
        int i14;
        int length;
        int length2;
        int i15;
        int i16 = i10;
        int i17 = i11;
        int i18 = i12;
        while (i16 < str.length()) {
            char charAt = str.charAt(i16);
            if (charAt != '*') {
                if (charAt == '<') {
                    AbstractC11401r4 abstractC11401r4 = (AbstractC11401r4) list.get(i18);
                    if (!f57666e && !abstractC11401r4.d()) {
                        throw new AssertionError();
                    }
                    String g10 = abstractC11401r4.a().g();
                    if (g10 == null || str2.length() < g10.length() + i17 || !g10.equals(str2.substring(i17, g10.length() + i17))) {
                        return false;
                    }
                    int length3 = g10.length() + i17;
                    i18++;
                    i16 = str.indexOf(">", i16);
                    i17 = length3;
                } else {
                    if (charAt != '?') {
                        if (i17 != str2.length()) {
                            int i19 = i17 + 1;
                            if (charAt == str2.charAt(i17)) {
                                i17 = i19;
                            }
                        }
                        return false;
                    }
                    AbstractC11401r4 abstractC11401r42 = (AbstractC11401r4) list.get(i18);
                    if (!f57666e && !abstractC11401r42.e()) {
                        throw new AssertionError();
                    }
                    if (i17 == str2.length() || str2.charAt(i17) == '.') {
                        return false;
                    }
                    AbstractC11401r4.b b10 = abstractC11401r42.b();
                    int i20 = i17 + 1;
                    String substring = str2.substring(i17, i20);
                    synchronized (b10) {
                        b10.f57769b = substring;
                    }
                    i18++;
                    i17 = i20;
                }
                i16++;
            } else {
                AbstractC11401r4 abstractC11401r43 = (AbstractC11401r4) list.get(i18);
                if (!f57666e && !abstractC11401r43.e()) {
                    throw new AssertionError();
                }
                AbstractC11401r4.b b11 = abstractC11401r43.b();
                int i21 = i16 + 1;
                boolean z10 = str.length() > i21 && str.charAt(i21) == '*';
                boolean z11 = z10 && str.length() > (i15 = i16 + 2) && str.charAt(i15) == '*';
                if (z11) {
                    i14 = i16 + 3;
                } else {
                    if (!z10) {
                        i13 = i21;
                        char c10 = '[';
                        if (i13 != str.length()) {
                            b11.a(str2.substring(i17));
                            if (z11) {
                                return true;
                            }
                            return z10 ? aVar == AbstractC11250i4.a.f57413b || (length2 = str2.length()) < 2 || str2.charAt(length2 + (-1)) != ']' || str2.charAt(length2 - 2) != '[' : str2.indexOf(46, i17) == -1 && (aVar == AbstractC11250i4.a.f57413b || (length = str2.length()) < 2 || str2.charAt(length + (-1)) != ']' || str2.charAt(length - 2) != '[');
                        }
                        int i22 = i17;
                        while (i22 < str2.length()) {
                            b11.a(str2.substring(i17, i22));
                            if (!z10 && str2.charAt(i22) == '.') {
                                return a(str, i13, str2, i22, list, i18 + 1, aVar);
                            }
                            if (aVar == AbstractC11250i4.a.f57414c && str2.charAt(i22) == c10) {
                                return a(str, i13, str2, i22, list, i18 + 1, aVar);
                            }
                            int i23 = i22;
                            char c11 = c10;
                            int i24 = i13;
                            if (a(str, i13, str2, i22, list, i18 + 1, aVar)) {
                                return true;
                            }
                            i22 = i23 + 1;
                            i13 = i24;
                            c10 = c11;
                        }
                        b11.a(str2.substring(i17));
                        return a(str, i13, str2, str2.length(), list, i18 + 1, aVar);
                    }
                    i14 = i16 + 2;
                }
                i13 = i14;
                char c102 = '[';
                if (i13 != str.length()) {
                }
            }
        }
        return i17 == str2.length();
    }
}
