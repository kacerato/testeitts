package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14008e extends pf.T {

    @NotNull
    public final double[] f95730b;

    public int f95731c;

    public C14008e(@NotNull double[] array) {
        M.p(array, "array");
        this.f95730b = array;
    }

    @Override
    public double b() {
        try {
            double[] dArr = this.f95730b;
            int i10 = this.f95731c;
            this.f95731c = i10 + 1;
            return dArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95731c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f95731c < this.f95730b.length;
    }
}
