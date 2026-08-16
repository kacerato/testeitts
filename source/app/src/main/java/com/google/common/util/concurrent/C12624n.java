package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

@A
public class C12624n extends Number implements Serializable {

    public static final long f67488c = 0;

    public transient AtomicLong f67489b;

    public C12624n(double d10) {
        this.f67489b = new AtomicLong(Double.doubleToRawLongBits(d10));
    }

    @I2.a
    public final double a(double d10) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.f67489b.get();
            longBitsToDouble = Double.longBitsToDouble(j10) + d10;
        } while (!this.f67489b.compareAndSet(j10, Double.doubleToRawLongBits(longBitsToDouble)));
        return longBitsToDouble;
    }

    public final boolean b(double d10, double d11) {
        return this.f67489b.compareAndSet(Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public final double c() {
        return Double.longBitsToDouble(this.f67489b.get());
    }

    @I2.a
    public final double d(double d10) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.f67489b.get();
            longBitsToDouble = Double.longBitsToDouble(j10);
        } while (!this.f67489b.compareAndSet(j10, Double.doubleToRawLongBits(longBitsToDouble + d10)));
        return longBitsToDouble;
    }

    @Override
    public double doubleValue() {
        return c();
    }

    public final double e(double d10) {
        return Double.longBitsToDouble(this.f67489b.getAndSet(Double.doubleToRawLongBits(d10)));
    }

    public final void f(double d10) {
        this.f67489b.lazySet(Double.doubleToRawLongBits(d10));
    }

    @Override
    public float floatValue() {
        return (float) c();
    }

    public final void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f67489b = new AtomicLong();
        h(objectInputStream.readDouble());
    }

    public final void h(double d10) {
        this.f67489b.set(Double.doubleToRawLongBits(d10));
    }

    public final boolean i(double d10, double d11) {
        return this.f67489b.weakCompareAndSet(Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    @Override
    public int intValue() {
        return (int) c();
    }

    public final void j(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(c());
    }

    @Override
    public long longValue() {
        return (long) c();
    }

    public String toString() {
        return Double.toString(c());
    }

    public C12624n() {
        this(0.0d);
    }
}
