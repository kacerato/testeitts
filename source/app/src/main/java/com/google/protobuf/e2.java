package com.google.protobuf;

import java.util.Arrays;

public final class e2 {

    public static final e2 f69089c = new e2(-1, -1);

    public final int f69090a;

    public final int f69091b;

    public e2(int line, int column) {
        this.f69090a = line;
        this.f69091b = column;
    }

    public static e2 a(int line, int column) {
        if (line == -1 && column == -1) {
            return f69089c;
        }
        if (line < 0 || column < 0) {
            throw new IllegalArgumentException(String.format("line and column values must be >= 0: line %d, column: %d", Integer.valueOf(line), Integer.valueOf(column)));
        }
        return new e2(line, column);
    }

    public int b() {
        return this.f69091b;
    }

    public int c() {
        return this.f69090a;
    }

    public boolean equals(Object o10) {
        if (o10 == this) {
            return true;
        }
        if (!(o10 instanceof e2)) {
            return false;
        }
        e2 e2Var = (e2) o10;
        return this.f69090a == e2Var.c() && this.f69091b == e2Var.b();
    }

    public int hashCode() {
        return Arrays.hashCode(new int[]{this.f69090a, this.f69091b});
    }

    public String toString() {
        return String.format("ParseLocation{line=%d, column=%d}", Integer.valueOf(this.f69090a), Integer.valueOf(this.f69091b));
    }
}
