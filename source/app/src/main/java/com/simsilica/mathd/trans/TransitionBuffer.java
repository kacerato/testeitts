package com.simsilica.mathd.trans;

import com.simsilica.mathd.trans.Transition;
import java.util.Arrays;

public class TransitionBuffer<T extends Transition> {
    private final Transition[] array;
    private int count;
    private volatile int head = 0;
    private volatile int tail = 0;

    public TransitionBuffer(int i10) {
        this.array = new Transition[i10 + 1];
    }

    private int next(int i10) {
        return (i10 + 1) % this.array.length;
    }

    private int previous(int i10) {
        return i10 > 0 ? i10 - 1 : this.array.length - 1;
    }

    public void addTransition(T t10) {
        int next = next(this.tail);
        if (next == this.head) {
            this.array[this.head] = null;
            this.head = next(this.head);
        }
        if (this.count == 0) {
            this.array[this.tail] = t10;
        } else {
            t10.setPreviousTransition(this.array[previous(this.tail)]);
            this.array[this.tail] = t10;
        }
        this.tail = next;
        int i10 = this.count;
        if (i10 < this.array.length - 1) {
            this.count = i10 + 1;
        }
    }

    public int getSize() {
        return this.array.length - 1;
    }

    public T getTransition(long j10) {
        return getTransition(j10, true);
    }

    public boolean isFilled() {
        return this.count == this.array.length - 1;
    }

    public String toString() {
        return "TransitionBuffer[ h:" + this.head + ", t:" + this.tail + ", array:" + ((Object) Arrays.asList(this.array)) + "]";
    }

    public T getTransition(long j10, boolean z10) {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 == i11 && this.count > 0) {
            System.err.println("**** TimeBuffer inconsistency.  This shouldn't happen.");
        }
        int i12 = i10;
        T t10 = null;
        while (i12 != i11) {
            T t11 = (T) this.array[i12];
            if (t11 == null) {
                System.out.println("element is null:" + i12 + "  head:" + i10 + " tail:" + i11);
            } else {
                if (j10 < t11.getStartTime()) {
                    if (z10) {
                        return t11;
                    }
                    return null;
                }
                if (j10 <= t11.getEndTime()) {
                    return t11;
                }
                t10 = t11;
            }
            i12 = next(i12);
        }
        if (z10) {
            return t10;
        }
        return null;
    }
}
