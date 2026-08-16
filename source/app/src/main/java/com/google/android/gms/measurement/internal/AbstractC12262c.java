package com.google.android.gms.measurement.internal;

import androidx.annotation.VisibleForTesting;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public abstract class AbstractC12262c {

    public final String f63050a;

    public final int f63051b;

    public Boolean f63052c;

    public Boolean f63053d;

    public Long f63054e;

    public Long f63055f;

    public AbstractC12262c(String str, int i10) {
        this.f63050a = str;
        this.f63051b = i10;
    }

    public static Boolean d(String str, int i10, boolean z10, String str2, List list, String str3, B2 b22) {
        if (i10 == 7) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z10 && i10 != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i10 - 1) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z10 ? 66 : 0).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (b22 != null) {
                        b22.r().b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    @VisibleForTesting
    public static Boolean e(Boolean bool, boolean z10) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z10);
    }

    @VisibleForTesting
    public static Boolean f(String str, com.google.android.gms.internal.measurement.Y1 y12, B2 b22) {
        List list;
        G0.A.r(y12);
        if (str == null || !y12.E() || y12.N() == 1 || (y12.N() != 7 ? !y12.F() : y12.K() == 0)) {
            return null;
        }
        int N10 = y12.N();
        boolean I10 = y12.I();
        String G10 = (I10 || N10 == 2 || N10 == 7) ? y12.G() : y12.G().toUpperCase(Locale.ENGLISH);
        if (y12.K() == 0) {
            list = null;
        } else {
            List J10 = y12.J();
            if (!I10) {
                ArrayList arrayList = new ArrayList(J10.size());
                Iterator it = J10.iterator();
                while (it.hasNext()) {
                    arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                }
                J10 = Collections.unmodifiableList(arrayList);
            }
            list = J10;
        }
        return d(str, N10, I10, G10, list, N10 == 2 ? G10 : null, b22);
    }

    public static Boolean g(long j10, com.google.android.gms.internal.measurement.S1 s12) {
        try {
            return j(new BigDecimal(j10), s12, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean h(double d10, com.google.android.gms.internal.measurement.S1 s12) {
        try {
            return j(new BigDecimal(d10), s12, Math.ulp(d10));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean i(String str, com.google.android.gms.internal.measurement.S1 s12) {
        if (!h7.O(str)) {
            return null;
        }
        try {
            return j(new BigDecimal(str), s12, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @VisibleForTesting
    public static Boolean j(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.S1 s12, double d10) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        G0.A.r(s12);
        if (s12.E()) {
            if (s12.P() != 1) {
                if (s12.P() == 5) {
                    if (!s12.J() || !s12.L()) {
                        return null;
                    }
                } else if (!s12.H()) {
                    return null;
                }
                int P10 = s12.P();
                if (s12.P() == 5) {
                    if (h7.O(s12.K()) && h7.O(s12.M())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(s12.K());
                            bigDecimal4 = new BigDecimal(s12.M());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                }
                if (!h7.O(s12.I())) {
                    return null;
                }
                try {
                    bigDecimal2 = new BigDecimal(s12.I());
                    bigDecimal3 = null;
                    bigDecimal4 = null;
                } catch (NumberFormatException unused2) {
                }
                if (P10 == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i10 = P10 - 1;
                if (i10 == 1) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                }
                if (i10 == 2) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
                if (i10 != 3) {
                    if (i10 == 4 && bigDecimal3 != null) {
                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                    }
                    return null;
                }
                if (bigDecimal2 == null) {
                    return null;
                }
                if (d10 != 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d10).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d10).multiply(new BigDecimal(2)))) < 0);
                }
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
            }
        }
        return null;
    }

    public abstract int a();

    public abstract boolean b();

    public abstract boolean c();
}
