package com.github.javaparser.utils;

import java.util.Objects;

public class Pair<A, B> {

    public final A f59826a;

    public final B f59827b;

    public Pair(A a10, B b10) {
        this.f59826a = a10;
        this.f59827b = b10;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        Pair pair = (Pair) o10;
        return Objects.equals(this.f59826a, pair.f59826a) && Objects.equals(this.f59827b, pair.f59827b);
    }

    public int hashCode() {
        A a10 = this.f59826a;
        int hashCode = (a10 != null ? a10.hashCode() : 0) * 31;
        B b10 = this.f59827b;
        return hashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public String toString() {
        return CodeGenerationUtils.f("<%s, %s>", this.f59826a, this.f59827b);
    }
}
