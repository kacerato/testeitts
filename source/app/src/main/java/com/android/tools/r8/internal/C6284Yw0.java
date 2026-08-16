package com.android.tools.r8.internal;

import w2.C15883c;

public final class C6284Yw0 {

    public final C6227Xw0 f46120a;

    public final EnumC6938da0 f46121b;

    public final int f46122c;

    public final Integer f46123d;

    public final String f46124e;

    public C6284Yw0(C6227Xw0 c6227Xw0, EnumC6938da0 enumC6938da0, int i10, Integer num, String str) {
        GJ.c(enumC6938da0, "kind");
        FJ.a(i10, "level");
        this.f46120a = c6227Xw0;
        this.f46121b = enumC6938da0;
        this.f46122c = i10;
        this.f46123d = num;
        this.f46124e = str;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("since ");
        sb2.append((Object) this.f46120a);
        sb2.append(C15883c.f126249O);
        int i10 = this.f46122c;
        sb2.append(i10 != 1 ? i10 != 2 ? i10 != 3 ? "null" : "HIDDEN" : "ERROR" : "WARNING");
        String str2 = "";
        if (this.f46123d != null) {
            str = " error " + ((Object) this.f46123d);
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f46124e != null) {
            str2 = ": " + this.f46124e;
        }
        sb2.append(str2);
        return sb2.toString();
    }
}
