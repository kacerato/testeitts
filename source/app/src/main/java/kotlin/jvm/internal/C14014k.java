package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14976h0;

public final class C14014k extends AbstractC14976h0 {

    @NotNull
    public final long[] f95741b;

    public int f95742c;

    public C14014k(@NotNull long[] array) {
        M.p(array, "array");
        this.f95741b = array;
    }

    @Override
    public boolean hasNext() {
        return this.f95742c < this.f95741b.length;
    }

    @Override
    public long nextLong() {
        try {
            long[] jArr = this.f95741b;
            int i10 = this.f95742c;
            this.f95742c = i10 + 1;
            return jArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95742c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}
