package com.android.dx.rop.cst;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.Hex;
import com.android.dx.util.MutabilityControl;

public final class StdConstantPool extends MutabilityControl implements ConstantPool {
    private final Constant[] entries;

    public StdConstantPool(int i10) {
        super(i10 > 1);
        if (i10 < 1) {
            throw new IllegalArgumentException("size < 1");
        }
        this.entries = new Constant[i10];
    }

    private static Constant throwInvalid(int i10) {
        throw new ExceptionWithContext("invalid constant pool index " + Hex.u2(i10));
    }

    @Override
    public Constant get(int i10) {
        try {
            Constant constant = this.entries[i10];
            if (constant == null) {
                throwInvalid(i10);
            }
            return constant;
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i10);
        }
    }

    @Override
    public Constant get0Ok(int i10) {
        if (i10 == 0) {
            return null;
        }
        return get(i10);
    }

    @Override
    public Constant[] getEntries() {
        return this.entries;
    }

    @Override
    public Constant getOrNull(int i10) {
        try {
            return this.entries[i10];
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i10);
        }
    }

    public void set(int i10, Constant constant) {
        int i11;
        Constant constant2;
        throwIfImmutable();
        boolean z10 = constant != null && constant.isCategory2();
        if (i10 < 1) {
            throw new IllegalArgumentException("n < 1");
        }
        if (z10) {
            Constant[] constantArr = this.entries;
            if (i10 == constantArr.length - 1) {
                throw new IllegalArgumentException("(n == size - 1) && cst.isCategory2()");
            }
            constantArr[i10 + 1] = null;
        }
        if (constant != null) {
            Constant[] constantArr2 = this.entries;
            if (constantArr2[i10] == null && (constant2 = constantArr2[i10 - 1]) != null && constant2.isCategory2()) {
                this.entries[i11] = null;
            }
        }
        this.entries[i10] = constant;
    }

    @Override
    public int size() {
        return this.entries.length;
    }
}
