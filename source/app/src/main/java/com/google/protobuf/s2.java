package com.google.protobuf;

import com.google.protobuf.C2;
import java.io.IOException;
import java.util.Arrays;

public final class s2 {

    public static final int f69466f = 8;

    public static final s2 f69467g = new s2(0, new int[0], new Object[0], false);

    public int f69468a;

    public int[] f69469b;

    public Object[] f69470c;

    public int f69471d;

    public boolean f69472e;

    public s2() {
        this(0, new int[8], new Object[8], true);
    }

    public static s2 c() {
        return f69467g;
    }

    public static int f(int[] tags, int count) {
        int i10 = 17;
        for (int i11 = 0; i11 < count; i11++) {
            i10 = (i10 * 31) + tags[i11];
        }
        return i10;
    }

    public static int g(Object[] objects, int count) {
        int i10 = 17;
        for (int i11 = 0; i11 < count; i11++) {
            i10 = (i10 * 31) + objects[i11].hashCode();
        }
        return i10;
    }

    public static s2 n(s2 first, s2 second) {
        int i10 = first.f69468a + second.f69468a;
        int[] copyOf = Arrays.copyOf(first.f69469b, i10);
        System.arraycopy(second.f69469b, 0, copyOf, first.f69468a, second.f69468a);
        Object[] copyOf2 = Arrays.copyOf(first.f69470c, i10);
        System.arraycopy(second.f69470c, 0, copyOf2, first.f69468a, second.f69468a);
        return new s2(i10, copyOf, copyOf2, true);
    }

    public static s2 o() {
        return new s2();
    }

    public static boolean p(Object[] objects1, Object[] objects2, int count) {
        for (int i10 = 0; i10 < count; i10++) {
            if (!objects1[i10].equals(objects2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean s(int[] tags1, int[] tags2, int count) {
        for (int i10 = 0; i10 < count; i10++) {
            if (tags1[i10] != tags2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static void v(int tag, Object object, C2 writer) throws IOException {
        int a10 = A2.a(tag);
        int b10 = A2.b(tag);
        if (b10 == 0) {
            writer.L(a10, ((Long) object).longValue());
            return;
        }
        if (b10 == 1) {
            writer.o(a10, ((Long) object).longValue());
            return;
        }
        if (b10 == 2) {
            writer.h(a10, (AbstractC12724x) object);
            return;
        }
        if (b10 != 3) {
            if (b10 != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.c(a10, ((Integer) object).intValue());
        } else if (writer.J() == C2.a.ASCENDING) {
            writer.s(a10);
            ((s2) object).x(writer);
            writer.v(a10);
        } else {
            writer.v(a10);
            ((s2) object).x(writer);
            writer.s(a10);
        }
    }

    public void a() {
        if (!this.f69472e) {
            throw new UnsupportedOperationException();
        }
    }

    public final void b(int minCapacity) {
        int[] iArr = this.f69469b;
        if (minCapacity > iArr.length) {
            int i10 = this.f69468a;
            int i11 = i10 + (i10 / 2);
            if (i11 >= minCapacity) {
                minCapacity = i11;
            }
            if (minCapacity < 8) {
                minCapacity = 8;
            }
            this.f69469b = Arrays.copyOf(iArr, minCapacity);
            this.f69470c = Arrays.copyOf(this.f69470c, minCapacity);
        }
    }

    public int d() {
        int a12;
        int i10 = this.f69471d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f69468a; i12++) {
            int i13 = this.f69469b[i12];
            int a10 = A2.a(i13);
            int b10 = A2.b(i13);
            if (b10 == 0) {
                a12 = CodedOutputStream.a1(a10, ((Long) this.f69470c[i12]).longValue());
            } else if (b10 == 1) {
                a12 = CodedOutputStream.o0(a10, ((Long) this.f69470c[i12]).longValue());
            } else if (b10 == 2) {
                a12 = CodedOutputStream.g0(a10, (AbstractC12724x) this.f69470c[i12]);
            } else if (b10 == 3) {
                a12 = (CodedOutputStream.X0(a10) * 2) + ((s2) this.f69470c[i12]).d();
            } else {
                if (b10 != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                }
                a12 = CodedOutputStream.m0(a10, ((Integer) this.f69470c[i12]).intValue());
            }
            i11 += a12;
        }
        this.f69471d = i11;
        return i11;
    }

    public int e() {
        int i10 = this.f69471d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f69468a; i12++) {
            i11 += CodedOutputStream.K0(A2.a(this.f69469b[i12]), (AbstractC12724x) this.f69470c[i12]);
        }
        this.f69471d = i11;
        return i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof s2)) {
            return false;
        }
        s2 s2Var = (s2) obj;
        int i10 = this.f69468a;
        return i10 == s2Var.f69468a && s(this.f69469b, s2Var.f69469b, i10) && p(this.f69470c, s2Var.f69470c, this.f69468a);
    }

    public void h() {
        this.f69472e = false;
    }

    public int hashCode() {
        int i10 = this.f69468a;
        return ((((527 + i10) * 31) + f(this.f69469b, i10)) * 31) + g(this.f69470c, this.f69468a);
    }

    public boolean i(final int tag, final C input) throws IOException {
        a();
        int a10 = A2.a(tag);
        int b10 = A2.b(tag);
        if (b10 == 0) {
            r(tag, Long.valueOf(input.H()));
            return true;
        }
        if (b10 == 1) {
            r(tag, Long.valueOf(input.C()));
            return true;
        }
        if (b10 == 2) {
            r(tag, input.y());
            return true;
        }
        if (b10 == 3) {
            s2 s2Var = new s2();
            s2Var.j(input);
            input.a(A2.c(a10, 4));
            r(tag, s2Var);
            return true;
        }
        if (b10 == 4) {
            return false;
        }
        if (b10 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        r(tag, Integer.valueOf(input.B()));
        return true;
    }

    public final s2 j(final C input) throws IOException {
        int Z10;
        do {
            Z10 = input.Z();
            if (Z10 == 0) {
                break;
            }
        } while (i(Z10, input));
        return this;
    }

    @A
    public s2 k(s2 other) {
        if (other.equals(c())) {
            return this;
        }
        a();
        int i10 = this.f69468a + other.f69468a;
        b(i10);
        System.arraycopy(other.f69469b, 0, this.f69469b, this.f69468a, other.f69468a);
        System.arraycopy(other.f69470c, 0, this.f69470c, this.f69468a, other.f69468a);
        this.f69468a = i10;
        return this;
    }

    public s2 l(final int fieldNumber, final AbstractC12724x value) {
        a();
        if (fieldNumber == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        r(A2.c(fieldNumber, 2), value);
        return this;
    }

    public s2 m(int fieldNumber, int value) {
        a();
        if (fieldNumber == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        r(A2.c(fieldNumber, 0), Long.valueOf(value));
        return this;
    }

    public final void q(StringBuilder buffer, int indent) {
        for (int i10 = 0; i10 < this.f69468a; i10++) {
            C12667d1.d(buffer, indent, String.valueOf(A2.a(this.f69469b[i10])), this.f69470c[i10]);
        }
    }

    public void r(int tag, Object value) {
        a();
        b(this.f69468a + 1);
        int[] iArr = this.f69469b;
        int i10 = this.f69468a;
        iArr[i10] = tag;
        this.f69470c[i10] = value;
        this.f69468a = i10 + 1;
    }

    public void t(CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f69468a; i10++) {
            output.Y1(A2.a(this.f69469b[i10]), (AbstractC12724x) this.f69470c[i10]);
        }
    }

    public void u(C2 writer) throws IOException {
        if (writer.J() == C2.a.DESCENDING) {
            for (int i10 = this.f69468a - 1; i10 >= 0; i10--) {
                writer.b(A2.a(this.f69469b[i10]), this.f69470c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f69468a; i11++) {
            writer.b(A2.a(this.f69469b[i11]), this.f69470c[i11]);
        }
    }

    public void w(CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f69468a; i10++) {
            int i11 = this.f69469b[i10];
            int a10 = A2.a(i11);
            int b10 = A2.b(i11);
            if (b10 == 0) {
                output.f(a10, ((Long) this.f69470c[i10]).longValue());
            } else if (b10 == 1) {
                output.o(a10, ((Long) this.f69470c[i10]).longValue());
            } else if (b10 == 2) {
                output.h(a10, (AbstractC12724x) this.f69470c[i10]);
            } else if (b10 == 3) {
                output.g2(a10, 3);
                ((s2) this.f69470c[i10]).w(output);
                output.g2(a10, 4);
            } else {
                if (b10 != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                output.c(a10, ((Integer) this.f69470c[i10]).intValue());
            }
        }
    }

    public void x(C2 writer) throws IOException {
        if (this.f69468a == 0) {
            return;
        }
        if (writer.J() == C2.a.ASCENDING) {
            for (int i10 = 0; i10 < this.f69468a; i10++) {
                v(this.f69469b[i10], this.f69470c[i10], writer);
            }
            return;
        }
        for (int i11 = this.f69468a - 1; i11 >= 0; i11--) {
            v(this.f69469b[i11], this.f69470c[i11], writer);
        }
    }

    public s2(int count, int[] tags, Object[] objects, boolean isMutable) {
        this.f69471d = -1;
        this.f69468a = count;
        this.f69469b = tags;
        this.f69470c = objects;
        this.f69472e = isMutable;
    }
}
