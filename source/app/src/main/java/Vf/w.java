package Vf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14026x;
import nf.B0;
import nf.InterfaceC14422l0;

@InterfaceC14422l0(version = "1.3")
public final class w implements Iterator<B0>, Nf.a {

    public final int f26914b;

    public boolean f26915c;

    public final int f26916d;

    public int f26917e;

    public w(int i10, int i11, int i12, C14026x c14026x) {
        this(i10, i11, i12);
    }

    public int a() {
        int i10 = this.f26917e;
        if (i10 != this.f26914b) {
            this.f26917e = B0.o(this.f26916d + i10);
        } else {
            if (!this.f26915c) {
                throw new NoSuchElementException();
            }
            this.f26915c = false;
        }
        return i10;
    }

    @Override
    public boolean hasNext() {
        return this.f26915c;
    }

    @Override
    public B0 next() {
        return B0.e(a());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public w(int i10, int i11, int i12) {
        this.f26914b = i11;
        boolean z10 = false;
        int compareUnsigned = Integer.compareUnsigned(i10, i11);
        if (i12 <= 0 ? compareUnsigned >= 0 : compareUnsigned <= 0) {
            z10 = true;
        }
        this.f26915c = z10;
        this.f26916d = B0.o(i12);
        this.f26917e = this.f26915c ? i10 : i11;
    }
}
