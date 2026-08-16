package Ic;

import java.util.concurrent.atomic.AtomicInteger;

public class C2626e extends Number {

    public final transient AtomicInteger f9105b;

    public C2626e() {
        this(0.0f);
    }

    public final boolean a(float expect, float update) {
        return this.f9105b.compareAndSet(Float.floatToIntBits(expect), Float.floatToIntBits(update));
    }

    public final float b() {
        return Float.intBitsToFloat(this.f9105b.get());
    }

    public final float c(float newValue) {
        return Float.intBitsToFloat(this.f9105b.getAndSet(Float.floatToIntBits(newValue)));
    }

    public final void d(float newValue) {
        this.f9105b.set(Float.floatToIntBits(newValue));
    }

    @Override
    public double doubleValue() {
        return floatValue();
    }

    public final boolean e(float expect, float update) {
        return this.f9105b.weakCompareAndSet(Float.floatToIntBits(expect), Float.floatToIntBits(update));
    }

    @Override
    public float floatValue() {
        return b();
    }

    @Override
    public int intValue() {
        return (int) b();
    }

    @Override
    public long longValue() {
        return b();
    }

    public String toString() {
        return b() + "";
    }

    public C2626e(float initialValue) {
        this.f9105b = new AtomicInteger(Float.floatToIntBits(initialValue));
    }
}
