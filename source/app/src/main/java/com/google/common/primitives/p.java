package com.google.common.primitives;

@f
@v2.b
public final class p {

    public final String f67069a;

    public final int f67070b;

    public p(String str, int i10) {
        this.f67069a = str;
        this.f67070b = i10;
    }

    public static p a(String str) {
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char charAt = str.charAt(0);
        int i10 = 16;
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (charAt == '#') {
            str = str.substring(1);
        } else if (charAt != '0' || str.length() <= 1) {
            i10 = 10;
        } else {
            str = str.substring(1);
            i10 = 8;
        }
        return new p(str, i10);
    }
}
