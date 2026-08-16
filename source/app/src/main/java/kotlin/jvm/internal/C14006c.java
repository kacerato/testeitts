package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14006c extends pf.D {

    @NotNull
    public final byte[] f95724b;

    public int f95725c;

    public C14006c(@NotNull byte[] array) {
        M.p(array, "array");
        this.f95724b = array;
    }

    @Override
    public boolean hasNext() {
        return this.f95725c < this.f95724b.length;
    }

    @Override
    public byte y() {
        try {
            byte[] bArr = this.f95724b;
            int i10 = this.f95725c;
            this.f95725c = i10 + 1;
            return bArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95725c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}
