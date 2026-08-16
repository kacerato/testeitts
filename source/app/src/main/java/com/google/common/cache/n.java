package com.google.common.cache;

import com.google.common.cache.w;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@v2.b(emulated = true)
@g
public final class n extends w implements Serializable, l {

    public static final long f65570k = 7249069246863182397L;

    @Override
    public void M0(long j10) {
        int length;
        w.b bVar;
        w.b[] bVarArr = this.f65583b;
        if (bVarArr == null) {
            long j11 = this.f65584c;
            if (b(j11, j11 + j10)) {
                return;
            }
        }
        int[] iArr = w.f65577e.get();
        boolean z10 = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j12 = bVar.f65595h;
            z10 = bVar.a(j12, j12 + j10);
            if (z10) {
                return;
            }
        }
        g(j10, iArr, z10);
    }

    @Override
    public void N0() {
        M0(1L);
    }

    @Override
    public final long d(long j10, long j11) {
        return j10 + j11;
    }

    @Override
    public double doubleValue() {
        return o();
    }

    @Override
    public float floatValue() {
        return (float) o();
    }

    public void h() {
        M0(-1L);
    }

    public final void i(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f65585d = 0;
        this.f65583b = null;
        this.f65584c = objectInputStream.readLong();
    }

    @Override
    public int intValue() {
        return (int) o();
    }

    public void j() {
        f(0L);
    }

    public long k() {
        long j10 = this.f65584c;
        w.b[] bVarArr = this.f65583b;
        this.f65584c = 0L;
        if (bVarArr != null) {
            for (w.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f65595h;
                    bVar.f65595h = 0L;
                }
            }
        }
        return j10;
    }

    public final void l(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(o());
    }

    @Override
    public long longValue() {
        return o();
    }

    @Override
    public long o() {
        long j10 = this.f65584c;
        w.b[] bVarArr = this.f65583b;
        if (bVarArr != null) {
            for (w.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f65595h;
                }
            }
        }
        return j10;
    }

    public String toString() {
        return Long.toString(o());
    }
}
