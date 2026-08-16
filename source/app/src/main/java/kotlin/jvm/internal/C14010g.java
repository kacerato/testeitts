package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14974g0;

public final class C14010g extends AbstractC14974g0 {

    @NotNull
    public final int[] f95737b;

    public int f95738c;

    public C14010g(@NotNull int[] array) {
        M.p(array, "array");
        this.f95737b = array;
    }

    @Override
    public boolean hasNext() {
        return this.f95738c < this.f95737b.length;
    }

    @Override
    public int nextInt() {
        try {
            int[] iArr = this.f95737b;
            int i10 = this.f95738c;
            this.f95738c = i10 + 1;
            return iArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95738c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}
