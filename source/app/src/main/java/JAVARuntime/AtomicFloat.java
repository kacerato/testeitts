package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AtomicFloat.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AtomicFloat.class
  classes.dex
 */
@ClassCategory(cat = {"Atomic"})
public final class AtomicFloat extends Number {
    private final transient java.util.concurrent.atomic.AtomicInteger bits;

    public AtomicFloat() {
        this(0.0f);
    }

    public AtomicFloat(float f10) {
        this.bits = new java.util.concurrent.atomic.AtomicInteger(Float.floatToIntBits(f10));
    }

    public final boolean compareAndSet(float f10, float f11) {
        return this.bits.compareAndSet(Float.floatToIntBits(f10), Float.floatToIntBits(f11));
    }

    public final void set(float f10) {
        this.bits.set(Float.floatToIntBits(f10));
    }

    public final float get() {
        return Float.intBitsToFloat(this.bits.get());
    }

    @Override
    public float floatValue() {
        return get();
    }

    public final float getAndSet(float f10) {
        return Float.intBitsToFloat(this.bits.getAndSet(Float.floatToIntBits(f10)));
    }

    public final boolean weakCompareAndSet(float f10, float f11) {
        return this.bits.weakCompareAndSet(Float.floatToIntBits(f10), Float.floatToIntBits(f11));
    }

    @Override
    public double doubleValue() {
        return floatValue();
    }

    @Override
    public int intValue() {
        return (int) get();
    }

    @Override
    public long longValue() {
        return get();
    }

    public String toString() {
        return new StringBuilder(String.valueOf(get())).toString();
    }
}
