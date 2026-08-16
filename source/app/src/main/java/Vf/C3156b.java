package Vf;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import pf.E;

public final class C3156b extends E {

    public final int f26872b;

    public final int f26873c;

    public boolean f26874d;

    public int f26875e;

    public C3156b(char c10, char c11, int i10) {
        this.f26872b = i10;
        this.f26873c = c11;
        boolean z10 = false;
        if (i10 <= 0 ? M.t(c10, c11) >= 0 : M.t(c10, c11) <= 0) {
            z10 = true;
        }
        this.f26874d = z10;
        this.f26875e = z10 ? c10 : c11;
    }

    @Override
    public char b() {
        int i10 = this.f26875e;
        if (i10 != this.f26873c) {
            this.f26875e = this.f26872b + i10;
        } else {
            if (!this.f26874d) {
                throw new NoSuchElementException();
            }
            this.f26874d = false;
        }
        return (char) i10;
    }

    public final int d() {
        return this.f26872b;
    }

    @Override
    public boolean hasNext() {
        return this.f26874d;
    }
}
