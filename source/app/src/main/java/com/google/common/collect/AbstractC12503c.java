package com.google.common.collect;

import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12503c<T> extends e3<T> {

    public b f66472b = b.NOT_READY;

    @CheckForNull
    public T f66473c;

    public static class a {

        public static final int[] f66474a;

        static {
            int[] iArr = new int[b.values().length];
            f66474a = iArr;
            try {
                iArr[b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66474a[b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    @CheckForNull
    public abstract T a();

    @I2.a
    @CheckForNull
    public final T b() {
        this.f66472b = b.DONE;
        return null;
    }

    public final boolean d() {
        this.f66472b = b.FAILED;
        this.f66473c = a();
        if (this.f66472b == b.DONE) {
            return false;
        }
        this.f66472b = b.READY;
        return true;
    }

    @Override
    @I2.a
    public final boolean hasNext() {
        w2.H.g0(this.f66472b != b.FAILED);
        int i10 = a.f66474a[this.f66472b.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return d();
        }
        return true;
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f66472b = b.NOT_READY;
        T t10 = (T) Z1.a(this.f66473c);
        this.f66473c = null;
        return t10;
    }

    @InterfaceC12518f2
    public final T peek() {
        if (hasNext()) {
            return (T) Z1.a(this.f66473c);
        }
        throw new NoSuchElementException();
    }
}
