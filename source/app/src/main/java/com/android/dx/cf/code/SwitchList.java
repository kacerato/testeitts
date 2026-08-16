package com.android.dx.cf.code;

import com.android.dx.util.IntList;
import com.android.dx.util.MutabilityControl;

public final class SwitchList extends MutabilityControl {
    private int size;
    private final IntList targets;
    private final IntList values;

    public SwitchList(int i10) {
        super(true);
        this.values = new IntList(i10);
        this.targets = new IntList(i10 + 1);
        this.size = i10;
    }

    public void add(int i10, int i11) {
        throwIfImmutable();
        if (i11 < 0) {
            throw new IllegalArgumentException("target < 0");
        }
        this.values.add(i10);
        this.targets.add(i11);
    }

    public int getDefaultTarget() {
        return this.targets.get(this.size);
    }

    public int getTarget(int i10) {
        return this.targets.get(i10);
    }

    public IntList getTargets() {
        return this.targets;
    }

    public int getValue(int i10) {
        return this.values.get(i10);
    }

    public IntList getValues() {
        return this.values;
    }

    public void removeSuperfluousDefaults() {
        throwIfImmutable();
        int i10 = this.size;
        if (i10 != this.targets.size() - 1) {
            throw new IllegalArgumentException("incomplete instance");
        }
        int i11 = this.targets.get(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.targets.get(i13);
            if (i14 != i11) {
                if (i13 != i12) {
                    this.targets.set(i12, i14);
                    IntList intList = this.values;
                    intList.set(i12, intList.get(i13));
                }
                i12++;
            }
        }
        if (i12 != i10) {
            this.values.shrink(i12);
            this.targets.set(i12, i11);
            this.targets.shrink(i12 + 1);
            this.size = i12;
        }
    }

    public void setDefaultTarget(int i10) {
        throwIfImmutable();
        if (i10 < 0) {
            throw new IllegalArgumentException("target < 0");
        }
        if (this.targets.size() != this.size) {
            throw new RuntimeException("non-default elements not all set");
        }
        this.targets.add(i10);
    }

    @Override
    public void setImmutable() {
        this.values.setImmutable();
        this.targets.setImmutable();
        super.setImmutable();
    }

    public int size() {
        return this.size;
    }
}
