package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14007d extends pf.E {

    @NotNull
    public final char[] f95726b;

    public int f95727c;

    public C14007d(@NotNull char[] array) {
        M.p(array, "array");
        this.f95726b = array;
    }

    @Override
    public char b() {
        try {
            char[] cArr = this.f95726b;
            int i10 = this.f95727c;
            this.f95727c = i10 + 1;
            return cArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95727c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f95727c < this.f95726b.length;
    }
}
