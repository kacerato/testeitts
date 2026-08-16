package com.android.tools.r8.internal;

import java.io.BufferedWriter;

public final class K6 {

    public static final boolean f41574c = true;

    public final int f41575a;

    public final int f41576b;

    public K6(int i10, int i11) {
        this.f41575a = i10;
        this.f41576b = i11;
        if (!f41574c && i10 > i11) {
            throw new AssertionError();
        }
    }

    public final void a(BufferedWriter bufferedWriter) {
        int i10 = this.f41575a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        bufferedWriter.write(sb2.toString());
        bufferedWriter.write(" ");
        int i11 = this.f41576b;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i11);
        bufferedWriter.write(sb3.toString());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof K6)) {
            return false;
        }
        K6 k62 = (K6) obj;
        return this.f41575a == k62.f41575a && this.f41576b == k62.f41576b;
    }

    public final int hashCode() {
        return (this.f41575a * 31) + this.f41576b;
    }

    public final String toString() {
        return "[" + this.f41575a + ";" + this.f41576b + "]";
    }

    public final K6 a(K6 k62) {
        int i10 = this.f41575a;
        int i11 = this.f41576b;
        if (i10 == i11) {
            return k62;
        }
        int i12 = k62.f41575a;
        int i13 = k62.f41576b;
        if (i12 == i13) {
            return this;
        }
        if (f41574c || i10 == i13 || i11 == i12) {
            return new K6(Integer.min(i10, i12), Integer.max(this.f41576b, k62.f41576b));
        }
        throw new AssertionError();
    }

    public K6(String str) {
        int indexOf = str.indexOf(32);
        int parseInt = Integer.parseInt(str.substring(0, indexOf).trim());
        this.f41575a = parseInt;
        int parseInt2 = Integer.parseInt(str.substring(indexOf + 1).trim());
        this.f41576b = parseInt2;
        if (!f41574c && parseInt > parseInt2) {
            throw new AssertionError();
        }
    }
}
