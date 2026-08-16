package com.android.tools.r8.internal;

import java.util.Arrays;

public final class C10127wh {

    public final String f53557a;

    public final String f53558b;

    public final C5829Qz f53559c;

    public final Object[] f53560d;

    public C10127wh(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        this.f53557a = str;
        this.f53558b = str2;
        this.f53559c = c5829Qz;
        this.f53560d = objArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10127wh)) {
            return false;
        }
        C10127wh c10127wh = (C10127wh) obj;
        return this.f53557a.equals(c10127wh.f53557a) && this.f53558b.equals(c10127wh.f53558b) && this.f53559c.equals(c10127wh.f53559c) && Arrays.equals(this.f53560d, c10127wh.f53560d);
    }

    public final int hashCode() {
        return ((this.f53557a.hashCode() ^ Integer.rotateLeft(this.f53558b.hashCode(), 8)) ^ Integer.rotateLeft(this.f53559c.hashCode(), 16)) ^ Integer.rotateLeft(Arrays.hashCode(this.f53560d), 24);
    }

    public final String toString() {
        String str = this.f53557a;
        String str2 = this.f53558b;
        C5829Qz c5829Qz = this.f53559c;
        return str + " : " + str2 + " " + ((Object) c5829Qz) + " " + Arrays.toString(this.f53560d);
    }
}
