package com.android.tools.r8.naming;

import java.util.Objects;

public class M0 {

    public static final boolean f55701d = true;

    public final int f55702a;

    public final int f55703b;

    public final boolean f55704c;

    public M0(int i10, int i11, boolean z10) {
        this.f55702a = i10;
        this.f55703b = i11;
        this.f55704c = z10;
        if (!f55701d && i10 > i11) {
            throw new AssertionError();
        }
    }

    public final boolean a(int i10) {
        return this.f55702a <= i10 && i10 <= this.f55703b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof M0)) {
            return false;
        }
        M0 m02 = (M0) obj;
        return this.f55702a == m02.f55702a && this.f55703b == m02.f55703b && this.f55704c == m02.f55704c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f55702a), Integer.valueOf(this.f55703b), Boolean.valueOf(this.f55704c));
    }

    public final String toString() {
        if (this.f55704c) {
            int i10 = this.f55702a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            return sb2.toString();
        }
        return this.f55702a + b3.s.f32937c + this.f55703b;
    }

    public final int a() {
        if (this.f55704c) {
            return 1;
        }
        return (this.f55703b - this.f55702a) + 1;
    }
}
