package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import pf.B0;

public final class C14015l extends B0 {

    @NotNull
    public final short[] f95743b;

    public int f95744c;

    public C14015l(@NotNull short[] array) {
        M.p(array, "array");
        this.f95743b = array;
    }

    @Override
    public short b() {
        try {
            short[] sArr = this.f95743b;
            int i10 = this.f95744c;
            this.f95744c = i10 + 1;
            return sArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95744c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f95744c < this.f95743b.length;
    }
}
