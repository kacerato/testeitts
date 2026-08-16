package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public abstract class AbstractC5349Iq0 extends AbstractC5291Hq0 {
    public static boolean a(String str, String str2) {
        GJ.c(str, "<this>");
        return a(str, str2, 0, 2) >= 0;
    }

    public static List b(String str, char[] cArr, int i10) {
        GJ.c(str, "<this>");
        if (cArr.length == 1) {
            return a(i10, str, String.valueOf(cArr[0]));
        }
        C5565Mj a10 = a(str, cArr, i10);
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(new C9639tl0(a10)));
        C5508Lj c5508Lj = new C5508Lj(a10);
        while (c5508Lj.hasNext()) {
            C8401mI c8401mI = (C8401mI) c5508Lj.next();
            GJ.c(c8401mI, "range");
            arrayList.add(str.subSequence(c8401mI.f47652b, c8401mI.f47653c + 1).toString());
        }
        return arrayList;
    }

    public static String c(String str, char c10) {
        GJ.c(str, "<this>");
        GJ.c(str, "missingDelimiterValue");
        int a10 = a(str, c10, 6);
        if (a10 == -1) {
            return str;
        }
        String substring = str.substring(0, a10);
        GJ.b(substring, "substring(...)");
        return substring;
    }

    public static int a(String str, char c10, int i10) {
        GJ.c(str, "<this>");
        return str.indexOf(c10, 0);
    }

    public static String a(String str, char c10, char c11) {
        GJ.c(str, "<this>");
        String replace = str.replace(c10, c11);
        GJ.b(replace, "replace(...)");
        return replace;
    }

    public static final int a(CharSequence charSequence) {
        GJ.c(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static String a(String str, char c10, String str2) {
        GJ.c(str, "<this>");
        GJ.c(str2, "missingDelimiterValue");
        int a10 = a(str, c10);
        if (a10 == -1) {
            return str2;
        }
        String substring = str.substring(0, a10);
        GJ.b(substring, "substring(...)");
        return substring;
    }

    public static final boolean a(String str, CharSequence charSequence, int i10, int i11, boolean z10) {
        GJ.c(str, "<this>");
        GJ.c(charSequence, "other");
        if (i10 < 0 || str.length() - i11 < 0 || i10 > charSequence.length() - i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!AbstractC6943dc.a(str.charAt(i12), charSequence.charAt(i10 + i12), z10)) {
                return false;
            }
        }
        return true;
    }

    public static final C8866p50 a(List list, boolean z10, CharSequence charSequence, int i10) {
        Object obj;
        C8866p50 c8866p50;
        Object obj2;
        boolean regionMatches;
        GJ.c(charSequence, "$this$DelimitedRangesSequence");
        if (!z10 && list.size() == 1) {
            int size = list.size();
            if (size == 0) {
                throw new NoSuchElementException("List is empty.");
            }
            if (size == 1) {
                String str = (String) list.get(0);
                int a10 = a(charSequence, str, i10, 4);
                if (a10 >= 0) {
                    c8866p50 = new C8866p50(Integer.valueOf(a10), str);
                }
                c8866p50 = null;
            } else {
                throw new IllegalArgumentException("List has more than one element.");
            }
        } else {
            if (i10 < 0) {
                i10 = 0;
            }
            C8401mI c8401mI = new C8401mI(i10, charSequence.length());
            if (charSequence instanceof String) {
                int i11 = c8401mI.f47653c;
                int i12 = c8401mI.f47654d;
                if ((i12 > 0 && i10 <= i11) || (i12 < 0 && i11 <= i10)) {
                    while (true) {
                        Iterator<E> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                obj2 = null;
                                break;
                            }
                            obj2 = it.next();
                            String str2 = (String) obj2;
                            String str3 = (String) charSequence;
                            int length = str2.length();
                            if (!z10) {
                                regionMatches = str2.regionMatches(0, str3, i10, length);
                            } else {
                                regionMatches = str2.regionMatches(z10, 0, str3, i10, length);
                            }
                            if (regionMatches) {
                                break;
                            }
                        }
                        String str4 = (String) obj2;
                        if (str4 == null) {
                            if (i10 == i11) {
                                break;
                            }
                            i10 += i12;
                        } else {
                            c8866p50 = new C8866p50(Integer.valueOf(i10), str4);
                            break;
                        }
                    }
                }
                c8866p50 = null;
            } else {
                int i13 = c8401mI.f47653c;
                int i14 = c8401mI.f47654d;
                if ((i14 > 0 && i10 <= i13) || (i14 < 0 && i13 <= i10)) {
                    while (true) {
                        Iterator<E> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                obj = null;
                                break;
                            }
                            obj = it2.next();
                            String str5 = (String) obj;
                            if (a(str5, charSequence, i10, str5.length(), z10)) {
                                break;
                            }
                        }
                        String str6 = (String) obj;
                        if (str6 == null) {
                            if (i10 == i13) {
                                break;
                            }
                            i10 += i14;
                        } else {
                            c8866p50 = new C8866p50(Integer.valueOf(i10), str6);
                            break;
                        }
                    }
                }
                c8866p50 = null;
            }
        }
        if (c8866p50 != null) {
            return new C8866p50(c8866p50.f51436b, Integer.valueOf(((String) c8866p50.f51437c).length()));
        }
        return null;
    }

    public static boolean b(String str, String str2) {
        GJ.c(str, "<this>");
        return str.startsWith(str2);
    }

    public static String b(String str, char c10) {
        GJ.c(str, "<this>");
        GJ.c(str, "missingDelimiterValue");
        int a10 = a(str, c10);
        if (a10 == -1) {
            return str;
        }
        String substring = str.substring(a10 + 1, str.length());
        GJ.b(substring, "substring(...)");
        return substring;
    }

    public static List b(int i10, String str, String[] strArr) {
        int i11 = (i10 & 4) != 0 ? 0 : 2;
        if (strArr.length == 1) {
            String str2 = strArr[0];
            if (str2.length() != 0) {
                return a(i11, str, str2);
            }
        }
        C5565Mj a10 = a(i11, str, strArr);
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(new C9639tl0(a10)));
        C5508Lj c5508Lj = new C5508Lj(a10);
        while (c5508Lj.hasNext()) {
            C8401mI c8401mI = (C8401mI) c5508Lj.next();
            GJ.c(c8401mI, "range");
            arrayList.add(str.subSequence(c8401mI.f47652b, c8401mI.f47653c + 1).toString());
        }
        return arrayList;
    }

    public static int a(CharSequence charSequence, String str, int i10, int i11) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return a(charSequence, str, i10, false);
    }

    public static final int a(CharSequence charSequence, String str, int i10, boolean z10) {
        boolean regionMatches;
        GJ.c(charSequence, "<this>");
        GJ.c(str, TypedValues.Custom.S_STRING);
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i10);
        }
        int length = charSequence.length();
        if (i10 < 0) {
            i10 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        C8401mI c8401mI = new C8401mI(i10, length);
        if (charSequence instanceof String) {
            int i11 = c8401mI.f47653c;
            int i12 = c8401mI.f47654d;
            if ((i12 <= 0 || i10 > i11) && (i12 >= 0 || i11 > i10)) {
                return -1;
            }
            while (true) {
                String str2 = (String) charSequence;
                int length3 = str.length();
                if (!z10) {
                    regionMatches = str.regionMatches(0, str2, i10, length3);
                } else {
                    regionMatches = str.regionMatches(z10, 0, str2, i10, length3);
                }
                if (regionMatches) {
                    return i10;
                }
                if (i10 == i11) {
                    return -1;
                }
                i10 += i12;
            }
        } else {
            int i13 = c8401mI.f47653c;
            int i14 = c8401mI.f47654d;
            if ((i14 <= 0 || i10 > i13) && (i14 >= 0 || i13 > i10)) {
                return -1;
            }
            while (!a(str, charSequence, i10, str.length(), z10)) {
                if (i10 == i13) {
                    return -1;
                }
                i10 += i14;
            }
            return i10;
        }
    }

    public static int a(String str, char c10) {
        int a10 = a((CharSequence) str);
        GJ.c(str, "<this>");
        return str.lastIndexOf(c10, a10);
    }

    public static final C5565Mj a(String str, final char[] cArr, int i10) {
        if (i10 >= 0) {
            final boolean z10 = false;
            return new C5565Mj(str, i10, new InterfaceC4958By() {
                @Override
                public final Object a(Object obj, Object obj2) {
                    return AbstractC5349Iq0.a(cArr, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                }
            });
        }
        throw new IllegalArgumentException(T60.a(i10, "Limit must be non-negative, but was ").toString());
    }

    public static final C8866p50 a(char[] cArr, boolean z10, CharSequence charSequence, int i10) {
        int i11;
        GJ.c(charSequence, "$this$DelimitedRangesSequence");
        GJ.c(charSequence, "<this>");
        GJ.c(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length == 1) {
                i11 = ((String) charSequence).indexOf(cArr[0], i10);
            } else {
                throw new IllegalArgumentException("Array has more than one element.");
            }
        } else {
            if (i10 < 0) {
                i10 = 0;
            }
            int a10 = a(charSequence);
            if (i10 <= a10) {
                loop0: while (true) {
                    char charAt = charSequence.charAt(i10);
                    for (char c10 : cArr) {
                        if (AbstractC6943dc.a(c10, charAt, z10)) {
                            i11 = i10;
                            break loop0;
                        }
                    }
                    if (i10 == a10) {
                        break;
                    }
                    i10++;
                }
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return null;
        }
        return new C8866p50(Integer.valueOf(i11), 1);
    }

    public static final C5565Mj a(int i10, String str, String[] strArr) {
        if (i10 >= 0) {
            final List a10 = AbstractC6361a4.a(strArr);
            final boolean z10 = false;
            return new C5565Mj(str, i10, new InterfaceC4958By() {
                @Override
                public final Object a(Object obj, Object obj2) {
                    return AbstractC5349Iq0.a(List.this, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                }
            });
        }
        throw new IllegalArgumentException(T60.a(i10, "Limit must be non-negative, but was ").toString());
    }

    public static final List a(int i10, String str, String str2) {
        if (i10 >= 0) {
            int a10 = a((CharSequence) str, str2, 0, false);
            if (a10 != -1 && i10 != 1) {
                boolean z10 = i10 > 0;
                int i11 = 10;
                if (z10 && i10 <= 10) {
                    i11 = i10;
                }
                ArrayList arrayList = new ArrayList(i11);
                int i12 = 0;
                do {
                    arrayList.add(str.subSequence(i12, a10).toString());
                    i12 = str2.length() + a10;
                    if (z10 && arrayList.size() == i10 - 1) {
                        break;
                    }
                    a10 = a((CharSequence) str, str2, i12, false);
                } while (a10 != -1);
                arrayList.add(str.subSequence(i12, str.length()).toString());
                return arrayList;
            }
            List singletonList = Collections.singletonList(str.toString());
            GJ.b(singletonList, "singletonList(...)");
            return singletonList;
        }
        throw new IllegalArgumentException(T60.a(i10, "Limit must be non-negative, but was ").toString());
    }

    public static CharSequence a(String str) {
        GJ.c(str, "<this>");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            char charAt = str.charAt(!z10 ? i10 : length);
            boolean z11 = Character.isWhitespace(charAt) || Character.isSpaceChar(charAt);
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return str.subSequence(i10, length + 1);
    }
}
