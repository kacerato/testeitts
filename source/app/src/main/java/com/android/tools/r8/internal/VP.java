package com.android.tools.r8.internal;

public final class VP extends SP {

    public final String f45045a;

    public VP(String str) {
        this.f45045a = str;
    }

    @Override
    public final Object a() {
        return this.f45045a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VP) && GJ.a((Object) this.f45045a, (Object) ((VP) obj).f45045a);
    }

    public final int hashCode() {
        return this.f45045a.hashCode();
    }
}
