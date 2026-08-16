package Wd;

import Zd.m0;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

public abstract class J implements m0 {

    public final c0 f27463b;

    public int f27464c;

    public int f27465d;

    public J(c0 c0Var) {
        this.f27463b = c0Var;
        this.f27464c = c0Var.size();
        this.f27465d = c0Var.Ye();
    }

    @Override
    public boolean hasNext() {
        return nextIndex() >= 0;
    }

    public final void j() {
        int nextIndex = nextIndex();
        this.f27465d = nextIndex;
        if (nextIndex < 0) {
            throw new NoSuchElementException();
        }
    }

    public final int nextIndex() {
        int i10;
        if (this.f27464c != this.f27463b.size()) {
            throw new ConcurrentModificationException();
        }
        byte[] bArr = this.f27463b.f27568l;
        int i11 = this.f27465d;
        while (true) {
            i10 = i11 - 1;
            if (i11 <= 0 || bArr[i10] == 1) {
                break;
            }
            i11 = i10;
        }
        return i10;
    }

    @Override
    public void remove() {
        if (this.f27464c != this.f27463b.size()) {
            throw new ConcurrentModificationException();
        }
        try {
            this.f27463b.kf();
            this.f27463b.hf(this.f27465d);
            this.f27463b.ff(false);
            this.f27464c--;
        } catch (Throwable th2) {
            this.f27463b.ff(false);
            throw th2;
        }
    }
}
