package com.android.dx.rop.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.FixedSizeList;
import java.util.BitSet;

public final class RegisterSpecList extends FixedSizeList implements TypeList {
    public static final RegisterSpecList EMPTY = new RegisterSpecList(0);

    public static class Expander {
        private int base;
        private BitSet compatRegs;
        private boolean duplicateFirst;
        private RegisterSpecList regSpecList;
        private RegisterSpecList result;

        public void expandRegister(int i10) {
            expandRegister(i10, (RegisterSpec) this.regSpecList.get0(i10));
        }

        public RegisterSpecList getResult() {
            if (this.regSpecList.isImmutable()) {
                this.result.setImmutable();
            }
            return this.result;
        }

        private Expander(RegisterSpecList registerSpecList, BitSet bitSet, int i10, boolean z10) {
            this.regSpecList = registerSpecList;
            this.compatRegs = bitSet;
            this.base = i10;
            this.result = new RegisterSpecList(registerSpecList.size());
            this.duplicateFirst = z10;
        }

        private void expandRegister(int i10, RegisterSpec registerSpec) {
            BitSet bitSet = this.compatRegs;
            if (bitSet == null || !bitSet.get(i10)) {
                registerSpec = registerSpec.withReg(this.base);
                if (!this.duplicateFirst) {
                    this.base += registerSpec.getCategory();
                }
            }
            this.duplicateFirst = false;
            this.result.set0(i10, registerSpec);
        }
    }

    public RegisterSpecList(int i10) {
        super(i10);
    }

    public static RegisterSpecList make(RegisterSpec registerSpec) {
        RegisterSpecList registerSpecList = new RegisterSpecList(1);
        registerSpecList.set(0, registerSpec);
        return registerSpecList;
    }

    public RegisterSpec get(int i10) {
        return (RegisterSpec) get0(i10);
    }

    public int getRegistersSize() {
        int nextReg;
        int size = size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = (RegisterSpec) get0(i11);
            if (registerSpec != null && (nextReg = registerSpec.getNextReg()) > i10) {
                i10 = nextReg;
            }
        }
        return i10;
    }

    @Override
    public Type getType(int i10) {
        return get(i10).getType().getType();
    }

    @Override
    public int getWordCount() {
        int size = size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += getType(i11).getCategory();
        }
        return i10;
    }

    public int indexOfRegister(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (get(i11).getReg() == i10) {
                return i11;
            }
        }
        return -1;
    }

    public void set(int i10, RegisterSpec registerSpec) {
        set0(i10, registerSpec);
    }

    public RegisterSpec specForRegister(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = get(i11);
            if (registerSpec.getReg() == i10) {
                return registerSpec;
            }
        }
        return null;
    }

    public RegisterSpecList subset(BitSet bitSet) {
        int size = size() - bitSet.cardinality();
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i10 = 0;
        for (int i11 = 0; i11 < size(); i11++) {
            if (!bitSet.get(i11)) {
                registerSpecList.set0(i10, get0(i11));
                i10++;
            }
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    @Override
    public TypeList withAddedType(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    public RegisterSpecList withExpandedRegisters(int i10, boolean z10, BitSet bitSet) {
        int size = size();
        if (size == 0) {
            return this;
        }
        Expander expander = new Expander(bitSet, i10, z10);
        for (int i11 = 0; i11 < size; i11++) {
            expander.expandRegister(i11);
        }
        return expander.getResult();
    }

    public RegisterSpecList withFirst(RegisterSpec registerSpec) {
        int size = size();
        RegisterSpecList registerSpecList = new RegisterSpecList(size + 1);
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            registerSpecList.set0(i11, get0(i10));
            i10 = i11;
        }
        registerSpecList.set0(0, registerSpec);
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withOffset(int i10) {
        int size = size();
        if (size == 0) {
            return this;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = (RegisterSpec) get0(i11);
            if (registerSpec != null) {
                registerSpecList.set0(i11, registerSpec.withOffset(i10));
            }
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withoutFirst() {
        int size = size() - 1;
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            registerSpecList.set0(i10, get0(i11));
            i10 = i11;
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withoutLast() {
        int size = size() - 1;
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        for (int i10 = 0; i10 < size; i10++) {
            registerSpecList.set0(i10, get0(i10));
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        RegisterSpecList registerSpecList = new RegisterSpecList(2);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2, RegisterSpec registerSpec3) {
        RegisterSpecList registerSpecList = new RegisterSpecList(3);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        registerSpecList.set(2, registerSpec3);
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2, RegisterSpec registerSpec3, RegisterSpec registerSpec4) {
        RegisterSpecList registerSpecList = new RegisterSpecList(4);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        registerSpecList.set(2, registerSpec3);
        registerSpecList.set(3, registerSpec4);
        return registerSpecList;
    }
}
