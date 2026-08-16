package org.apache.commons.lang3.mutable;

import org.apache.commons.lang3.math.NumberUtils;

public class MutableInt extends Number implements Comparable<MutableInt>, Mutable<Number> {
    private static final long serialVersionUID = 512176391864L;
    private int value;

    public MutableInt() {
    }

    public void add(int i10) {
        this.value += i10;
    }

    public int addAndGet(int i10) {
        int i11 = this.value + i10;
        this.value = i11;
        return i11;
    }

    public void decrement() {
        this.value--;
    }

    public int decrementAndGet() {
        int i10 = this.value - 1;
        this.value = i10;
        return i10;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableInt) && this.value == ((MutableInt) obj).intValue();
    }

    @Override
    public float floatValue() {
        return this.value;
    }

    public int getAndAdd(int i10) {
        int i11 = this.value;
        this.value = i10 + i11;
        return i11;
    }

    public int getAndDecrement() {
        int i10 = this.value;
        this.value = i10 - 1;
        return i10;
    }

    public int getAndIncrement() {
        int i10 = this.value;
        this.value = i10 + 1;
        return i10;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value++;
    }

    public int incrementAndGet() {
        int i10 = this.value + 1;
        this.value = i10;
        return i10;
    }

    @Override
    public int intValue() {
        return this.value;
    }

    @Override
    public long longValue() {
        return this.value;
    }

    public void subtract(int i10) {
        this.value -= i10;
    }

    public Integer toInteger() {
        return Integer.valueOf(intValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableInt(int i10) {
        this.value = i10;
    }

    public void add(Number number) {
        this.value += number.intValue();
    }

    public int addAndGet(Number number) {
        int intValue = this.value + number.intValue();
        this.value = intValue;
        return intValue;
    }

    @Override
    public int compareTo(MutableInt mutableInt) {
        return NumberUtils.compare(this.value, mutableInt.value);
    }

    @Override
    public Number getValue2() {
        return Integer.valueOf(this.value);
    }

    public void setValue(int i10) {
        this.value = i10;
    }

    public void subtract(Number number) {
        this.value -= number.intValue();
    }

    public int getAndAdd(Number number) {
        int i10 = this.value;
        this.value = number.intValue() + i10;
        return i10;
    }

    @Override
    public void setValue(Number number) {
        this.value = number.intValue();
    }

    public MutableInt(Number number) {
        this.value = number.intValue();
    }

    public MutableInt(String str) throws NumberFormatException {
        this.value = Integer.parseInt(str);
    }
}
