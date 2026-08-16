package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14009f extends pf.Y {

    @NotNull
    public final float[] f95735b;

    public int f95736c;

    public C14009f(@NotNull float[] array) {
        M.p(array, "array");
        this.f95735b = array;
    }

    @Override
    public float b() {
        try {
            float[] fArr = this.f95735b;
            int i10 = this.f95736c;
            this.f95736c = i10 + 1;
            return fArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95736c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f95736c < this.f95735b.length;
    }
}
