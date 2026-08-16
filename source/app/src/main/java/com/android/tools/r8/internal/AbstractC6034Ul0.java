package com.android.tools.r8.internal;

public abstract class AbstractC6034Ul0 {
    public static int a(String str, int i10, C5353Is0 c5353Is0) {
        int i11;
        char charAt;
        int i12 = i10 + 1;
        char charAt2 = str.charAt(i10);
        if (charAt2 != 'F') {
            if (charAt2 == 'L') {
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    int i13 = i12;
                    while (true) {
                        i11 = i12 + 1;
                        charAt = str.charAt(i12);
                        if (charAt == '.' || charAt == ';') {
                            break;
                        }
                        if (charAt == '<') {
                            String substring = str.substring(i13, i12);
                            if (z11) {
                                c5353Is0.b(substring);
                            } else {
                                c5353Is0.a(substring);
                            }
                            i12 = i11;
                            while (true) {
                                char charAt3 = str.charAt(i12);
                                if (charAt3 == '>') {
                                    break;
                                }
                                if (charAt3 != '*') {
                                    i12 = (charAt3 == '+' || charAt3 == '-') ? a(str, i12 + 1, c5353Is0.a(charAt3)) : a(str, i12, c5353Is0.a('='));
                                } else {
                                    i12++;
                                    int i14 = c5353Is0.f41236i;
                                    if (i14 % 2 == 0) {
                                        c5353Is0.f41236i = i14 + 1;
                                        c5353Is0.f41229b.append('<');
                                    } else {
                                        c5353Is0.f41229b.append(", ");
                                    }
                                    c5353Is0.f41229b.append('?');
                                }
                            }
                            z10 = true;
                        } else {
                            i12 = i11;
                        }
                    }
                    if (!z10) {
                        String substring2 = str.substring(i13, i12);
                        if (z11) {
                            c5353Is0.b(substring2);
                        } else {
                            c5353Is0.a(substring2);
                        }
                    }
                    if (charAt == ';') {
                        break;
                    }
                    z10 = false;
                    z11 = true;
                    i12 = i11;
                }
                if (c5353Is0.f41236i % 2 != 0) {
                    c5353Is0.f41229b.append('>');
                }
                c5353Is0.f41236i /= 2;
                c5353Is0.a();
                return i11;
            }
            if (charAt2 != 'V' && charAt2 != 'I' && charAt2 != 'J' && charAt2 != 'S') {
                if (charAt2 == 'T') {
                    int indexOf = str.indexOf(59, i12);
                    String substring3 = str.substring(i12, indexOf);
                    StringBuilder sb2 = c5353Is0.f41229b;
                    sb2.append(c5353Is0.f41238k);
                    sb2.append(substring3);
                    c5353Is0.f41238k = "";
                    c5353Is0.a();
                    return indexOf + 1;
                }
                if (charAt2 != 'Z') {
                    if (charAt2 == '[') {
                        c5353Is0.f41237j = (c5353Is0.f41237j * 2) | 1;
                        return a(str, i12, c5353Is0);
                    }
                    switch (charAt2) {
                        case 'B':
                        case 'C':
                        case 'D':
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                }
            }
        }
        String str2 = (String) C5353Is0.f41227l.get(Character.valueOf(charAt2));
        if (str2 == null) {
            throw new IllegalArgumentException();
        }
        c5353Is0.f41229b.append(str2);
        c5353Is0.a();
        return i12;
    }
}
