package com.android.tools.r8.internal;

public final class C4957Bx0 {

    public static final boolean f39047b = true;

    public final C9118qe0 f39048a;

    public C4957Bx0(C9118qe0 c9118qe0) {
        this.f39048a = c9118qe0;
    }

    public final void a(int i10, String str, String str2) {
        int i11;
        int indexOf;
        if ("script".equals(str2)) {
            int i12 = i10 + 1;
            int indexOf2 = str.indexOf("</script>", i12);
            if (indexOf2 != -1) {
                b(str.substring(i12, indexOf2));
                return;
            }
            return;
        }
        if (!"style".equals(str2) || (indexOf = str.indexOf("</style>", (i11 = i10 + 1))) == -1) {
            return;
        }
        a(str.substring(i11, indexOf));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0025. Please report as an issue. */
    public final void b(String str) {
        int i10;
        int length = str.length();
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        int i14 = -1;
        while (i11 < length) {
            if (i11 == i14 && (i11 = i11 + 1) == length) {
                return;
            }
            i14 = i11;
            char charAt = str.charAt(i14);
            switch (i12) {
                case 1:
                    if (charAt == '/') {
                        i10 = 2;
                        i12 = i10;
                        i11 = i14 + 1;
                    } else {
                        if (charAt == '\"') {
                            i13 = i14 + 1;
                            i12 = 3;
                        } else if (charAt == '\'') {
                            i13 = i14 + 1;
                            i12 = 5;
                        }
                        i11 = i14 + 1;
                    }
                case 2:
                    if (charAt == '*') {
                        int indexOf = str.indexOf("*/", i14 + 1);
                        if (indexOf != -1) {
                            i11 = indexOf + 2;
                            i12 = 1;
                        }
                        i11 = length;
                        i12 = 1;
                    } else {
                        if (charAt == '/') {
                            int indexOf2 = str.indexOf(10, i14 + 1);
                            if (indexOf2 != -1) {
                                i11 = indexOf2 + 1;
                            }
                            i11 = length;
                        } else {
                            i11 = i14 + 1;
                        }
                        i12 = 1;
                    }
                case 3:
                    if (charAt == '\"') {
                        C9118qe0 c9118qe0 = this.f39048a;
                        String substring = str.substring(i13, i14);
                        GJ.c(substring, "jsString");
                        c9118qe0.a(substring);
                        i12 = 1;
                        i11 = i14 + 1;
                    } else {
                        if (charAt == '\\') {
                            i10 = 4;
                            i12 = i10;
                        }
                        i11 = i14 + 1;
                    }
                case 4:
                    i11 = i14 + 1;
                    i12 = 3;
                case 5:
                    if (charAt == '\'') {
                        C9118qe0 c9118qe02 = this.f39048a;
                        String substring2 = str.substring(i13, i14);
                        GJ.c(substring2, "jsString");
                        c9118qe02.a(substring2);
                        i12 = 1;
                        i11 = i14 + 1;
                    } else {
                        if (charAt == '\\') {
                            i10 = 6;
                            i12 = i10;
                        }
                        i11 = i14 + 1;
                    }
                case 6:
                    i11 = i14 + 1;
                    i12 = 5;
                default:
                    if (!f39047b) {
                        throw new AssertionError(i12);
                    }
                    i11 = i14;
            }
        }
    }

    public final void a(String str, String str2) {
        C9118qe0 c9118qe0 = this.f39048a;
        GJ.c(str2, "value");
        if (GJ.a((Object) str, (Object) "href") || GJ.a((Object) str, (Object) "src")) {
            c9118qe0.b(str2);
        }
    }

    public final void a(String str) {
        int i10;
        int length = str.length();
        int i11 = 0;
        int i12 = 1;
        int i13 = -1;
        while (i11 < length) {
            if (i11 == i13 && (i11 = i11 + 1) == length) {
                return;
            }
            i13 = i11;
            char charAt = str.charAt(i13);
            if (i12 == 1) {
                if (charAt == '/') {
                    i12 = 2;
                } else if (charAt == 'u' && str.startsWith("url(", i13) && i13 > 0) {
                    char charAt2 = str.charAt(i13 - 1);
                    if (Character.isWhitespace(charAt2) || charAt2 == ':') {
                        int indexOf = str.indexOf(41, i13);
                        int i14 = i13 + 4;
                        while (i14 < length && Character.isWhitespace(str.charAt(i14))) {
                            i14++;
                        }
                        if (indexOf != -1 && indexOf > (i10 = i14 + 1)) {
                            while (indexOf > i14 && Character.isWhitespace(str.charAt(indexOf - 1))) {
                                indexOf--;
                            }
                            if ((str.charAt(i14) == '\"' && str.charAt(indexOf - 1) == '\"') || (str.charAt(i14) == '\'' && str.charAt(indexOf - 1) == '\'')) {
                                indexOf--;
                                i14 = i10;
                            }
                            C9118qe0 c9118qe0 = this.f39048a;
                            String trim = str.substring(i14, indexOf).trim();
                            GJ.c(trim, "url");
                            c9118qe0.b(trim);
                        }
                        i11 = indexOf + 1;
                    }
                }
                i11 = i13 + 1;
            } else if (i12 != 2) {
                if (!f39047b) {
                    throw new AssertionError(i12);
                }
                i11 = i13;
            } else if (charAt == '*') {
                int indexOf2 = str.indexOf("*/", i13 + 1);
                i11 = indexOf2 == -1 ? length : indexOf2 + 2;
            } else {
                i11 = i13 + 1;
                i12 = 1;
            }
        }
    }
}
