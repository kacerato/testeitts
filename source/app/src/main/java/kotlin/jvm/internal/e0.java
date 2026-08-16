package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public abstract class e0<T> {

    public final int f95732a;

    public int f95733b;

    @NotNull
    public final T[] f95734c;

    public e0(int i10) {
        this.f95732a = i10;
        this.f95734c = (T[]) new Object[i10];
    }

    public static void d() {
    }

    public final void a(@NotNull T spreadArgument) {
        M.p(spreadArgument, "spreadArgument");
        T[] tArr = this.f95734c;
        int i10 = this.f95733b;
        this.f95733b = i10 + 1;
        tArr[i10] = spreadArgument;
    }

    public final int b() {
        return this.f95733b;
    }

    public abstract int c(@NotNull T t10);

    public final void e(int i10) {
        this.f95733b = i10;
    }

    public final int f() {
        int i10 = this.f95732a - 1;
        int i11 = 0;
        if (i10 >= 0) {
            int i12 = 0;
            while (true) {
                T t10 = this.f95734c[i12];
                i11 += t10 != null ? c(t10) : 1;
                if (i12 == i10) {
                    break;
                }
                i12++;
            }
        }
        return i11;
    }

    @NotNull
    public final T g(@NotNull T values, @NotNull T result) {
        int i10;
        M.p(values, "values");
        M.p(result, "result");
        int i11 = this.f95732a - 1;
        int i12 = 0;
        if (i11 >= 0) {
            int i13 = 0;
            int i14 = 0;
            i10 = 0;
            while (true) {
                T t10 = this.f95734c[i13];
                if (t10 != null) {
                    if (i14 < i13) {
                        int i15 = i13 - i14;
                        System.arraycopy(values, i14, result, i10, i15);
                        i10 += i15;
                    }
                    int c10 = c(t10);
                    System.arraycopy(t10, 0, result, i10, c10);
                    i10 += c10;
                    i14 = i13 + 1;
                }
                if (i13 == i11) {
                    break;
                }
                i13++;
            }
            i12 = i14;
        } else {
            i10 = 0;
        }
        int i16 = this.f95732a;
        if (i12 < i16) {
            System.arraycopy(values, i12, result, i10, i16 - i12);
        }
        return result;
    }
}
