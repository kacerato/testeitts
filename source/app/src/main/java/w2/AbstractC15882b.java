package w2;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public abstract class AbstractC15882b<T> implements Iterator<T> {

    public EnumC2080b f126232b = EnumC2080b.NOT_READY;

    @CheckForNull
    public T f126233c;

    public static class a {

        public static final int[] f126234a;

        static {
            int[] iArr = new int[EnumC2080b.values().length];
            f126234a = iArr;
            try {
                iArr[EnumC2080b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126234a[EnumC2080b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum EnumC2080b {
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
        this.f126232b = EnumC2080b.DONE;
        return null;
    }

    public final boolean d() {
        this.f126232b = EnumC2080b.FAILED;
        this.f126233c = a();
        if (this.f126232b == EnumC2080b.DONE) {
            return false;
        }
        this.f126232b = EnumC2080b.READY;
        return true;
    }

    @Override
    public final boolean hasNext() {
        H.g0(this.f126232b != EnumC2080b.FAILED);
        int i10 = a.f126234a[this.f126232b.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return d();
        }
        return true;
    }

    @Override
    @E
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f126232b = EnumC2080b.NOT_READY;
        T t10 = (T) C15880A.a(this.f126233c);
        this.f126233c = null;
        return t10;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
