package com.google.common.util.concurrent;

import com.google.common.primitives.k;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

@A
@v2.c
public class C12625o implements Serializable {

    public static final long f67491c = 0;

    public transient AtomicLongArray f67492b;

    public C12625o(int i10) {
        this.f67492b = new AtomicLongArray(i10);
    }

    @I2.a
    public double a(int i10, double d10) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.f67492b.get(i10);
            longBitsToDouble = Double.longBitsToDouble(j10) + d10;
        } while (!this.f67492b.compareAndSet(i10, j10, Double.doubleToRawLongBits(longBitsToDouble)));
        return longBitsToDouble;
    }

    public final boolean b(int i10, double d10, double d11) {
        return this.f67492b.compareAndSet(i10, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public final double c(int i10) {
        return Double.longBitsToDouble(this.f67492b.get(i10));
    }

    @I2.a
    public final double d(int i10, double d10) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.f67492b.get(i10);
            longBitsToDouble = Double.longBitsToDouble(j10);
        } while (!this.f67492b.compareAndSet(i10, j10, Double.doubleToRawLongBits(longBitsToDouble + d10)));
        return longBitsToDouble;
    }

    public final double e(int i10, double d10) {
        return Double.longBitsToDouble(this.f67492b.getAndSet(i10, Double.doubleToRawLongBits(d10)));
    }

    public final void f(int i10, double d10) {
        this.f67492b.lazySet(i10, Double.doubleToRawLongBits(d10));
    }

    public final int g() {
        return this.f67492b.length();
    }

    public final void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        k.c e10 = com.google.common.primitives.k.e();
        for (int i10 = 0; i10 < readInt; i10++) {
            e10.a(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.f67492b = new AtomicLongArray(e10.f().B());
    }

    public final void i(int i10, double d10) {
        this.f67492b.set(i10, Double.doubleToRawLongBits(d10));
    }

    public final boolean j(int i10, double d10, double d11) {
        return this.f67492b.weakCompareAndSet(i10, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public final void k(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int g10 = g();
        objectOutputStream.writeInt(g10);
        for (int i10 = 0; i10 < g10; i10++) {
            objectOutputStream.writeDouble(c(i10));
        }
    }

    public String toString() {
        int g10 = g();
        int i10 = g10 - 1;
        if (i10 == -1) {
            return okhttp3.v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder(g10 * 19);
        sb2.append('[');
        int i11 = 0;
        while (true) {
            sb2.append(Double.longBitsToDouble(this.f67492b.get(i11)));
            if (i11 == i10) {
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                return sb2.toString();
            }
            sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            sb2.append(C15883c.f126249O);
            i11++;
        }
    }

    public C12625o(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = Double.doubleToRawLongBits(dArr[i10]);
        }
        this.f67492b = new AtomicLongArray(jArr);
    }
}
