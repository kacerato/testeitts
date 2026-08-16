package Vf;

import java.util.NoSuchElementException;
import pf.AbstractC14974g0;

public final class k extends AbstractC14974g0 {

    public final int f26890b;

    public final int f26891c;

    public boolean f26892d;

    public int f26893e;

    public k(int i10, int i11, int i12) {
        this.f26890b = i12;
        this.f26891c = i11;
        boolean z10 = false;
        if (i12 <= 0 ? i10 >= i11 : i10 <= i11) {
            z10 = true;
        }
        this.f26892d = z10;
        this.f26893e = z10 ? i10 : i11;
    }

    public final int a() {
        return this.f26890b;
    }

    @Override
    public boolean hasNext() {
        return this.f26892d;
    }

    @Override
    public int nextInt() {
        int i10 = this.f26893e;
        if (i10 != this.f26891c) {
            this.f26893e = this.f26890b + i10;
        } else {
            if (!this.f26892d) {
                throw new NoSuchElementException();
            }
            this.f26892d = false;
        }
        return i10;
    }
}
