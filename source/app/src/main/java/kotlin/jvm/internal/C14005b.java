package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14005b extends pf.C {

    @NotNull
    public final boolean[] f95722b;

    public int f95723c;

    public C14005b(@NotNull boolean[] array) {
        M.p(array, "array");
        this.f95722b = array;
    }

    @Override
    public boolean hasNext() {
        return this.f95723c < this.f95722b.length;
    }

    @Override
    public boolean nextBoolean() {
        try {
            boolean[] zArr = this.f95722b;
            int i10 = this.f95723c;
            this.f95723c = i10 + 1;
            return zArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95723c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}
