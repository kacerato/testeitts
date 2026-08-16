package com.android.tools.r8.internal;

import java.io.Reader;

public class C6237Yb extends AbstractC6443ac {

    public final String f46037a;

    static {
        C5111En0.a("\r\n|\n|\r");
    }

    public C6237Yb(String str) {
        str.getClass();
        this.f46037a = str;
    }

    public Reader a() {
        return new C6180Xb(this.f46037a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
    
        if (r1.length() <= 30) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CharSource.wrap(");
        String str = this.f46037a;
        str.getClass();
        if (str.length() <= 30) {
            str = str.toString();
        }
        StringBuilder sb3 = new StringBuilder(30);
        sb3.append((CharSequence) str, 0, 27);
        sb3.append("...");
        str = sb3.toString();
        sb2.append(str);
        sb2.append(")");
        return sb2.toString();
    }
}
