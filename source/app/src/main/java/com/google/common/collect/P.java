package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class P implements Serializable {

    public int f65914b;

    public P(int i10) {
        this.f65914b = i10;
    }

    public void a(int i10) {
        this.f65914b += i10;
    }

    public int b(int i10) {
        int i11 = this.f65914b + i10;
        this.f65914b = i11;
        return i11;
    }

    public int c() {
        return this.f65914b;
    }

    public int d(int i10) {
        int i11 = this.f65914b;
        this.f65914b = i10;
        return i11;
    }

    public void e(int i10) {
        this.f65914b = i10;
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof P) && ((P) obj).f65914b == this.f65914b;
    }

    public int hashCode() {
        return this.f65914b;
    }

    public String toString() {
        return Integer.toString(this.f65914b);
    }
}
