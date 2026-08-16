package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

public final class C8623ng0 implements Comparable {

    public int f51021b;

    public final EnumC8289lg0 f51022c;

    public final String f51023d;

    public final String f51024e;

    public int f51025f;

    public ArrayList f51026g;

    public HashSet f51027h;

    public C8623ng0(String str, EnumC8289lg0 enumC8289lg0, String str2, int i10) {
        this.f51024e = str;
        this.f51022c = enumC8289lg0;
        this.f51023d = str2;
        this.f51025f = i10;
    }

    public final void a(boolean z10) {
        this.f51021b = z10 ? this.f51021b | 32 : this.f51021b & (-33);
    }

    public final boolean b() {
        return (this.f51021b & 32) != 0;
    }

    @Override
    public final int compareTo(Object obj) {
        C8623ng0 c8623ng0 = (C8623ng0) obj;
        EnumC8289lg0 enumC8289lg0 = this.f51022c;
        EnumC8289lg0 enumC8289lg02 = c8623ng0.f51022c;
        return enumC8289lg0 != enumC8289lg02 ? enumC8289lg0.compareTo(enumC8289lg02) : this.f51023d.compareTo(c8623ng0.f51023d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C8623ng0.class == obj.getClass()) {
            C8623ng0 c8623ng0 = (C8623ng0) obj;
            if (Objects.equals(this.f51024e, c8623ng0.f51024e) && Objects.equals(this.f51023d, c8623ng0.f51023d) && this.f51022c == c8623ng0.f51022c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        EnumC8289lg0 enumC8289lg0 = this.f51022c;
        int hashCode = (enumC8289lg0 != null ? enumC8289lg0.hashCode() : 0) * 31;
        String str = this.f51023d;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        EnumC8289lg0 enumC8289lg0 = this.f51022c;
        return ((Object) enumC8289lg0) + b3.s.f32937c + this.f51023d + b3.s.f32937c + this.f51025f;
    }

    public final void a(C8623ng0 c8623ng0) {
        if (c8623ng0 != null) {
            ArrayList arrayList = this.f51026g;
            if (arrayList == null) {
                this.f51026g = new ArrayList();
            } else if (arrayList.contains(c8623ng0)) {
                return;
            }
            this.f51026g.add(c8623ng0);
        }
    }

    public final String a() {
        String str;
        String str2 = this.f51024e;
        if (str2 == null) {
            str = "";
        } else {
            str = str2 + b3.s.f32937c;
        }
        return "@" + str + this.f51022c.f50064b + "/" + this.f51023d;
    }
}
