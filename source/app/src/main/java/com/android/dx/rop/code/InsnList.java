package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.util.FixedSizeList;

public final class InsnList extends FixedSizeList {
    public InsnList(int i10) {
        super(i10);
    }

    public boolean contentEquals(InsnList insnList) {
        int size;
        if (insnList == null || (size = size()) != insnList.size()) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).contentEquals(insnList.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public void forEach(Insn.Visitor visitor) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            get(i10).accept(visitor);
        }
    }

    public Insn get(int i10) {
        return (Insn) get0(i10);
    }

    public Insn getLast() {
        return get(size() - 1);
    }

    public void set(int i10, Insn insn) {
        set0(i10, insn);
    }

    public InsnList withRegisterOffset(int i10) {
        int size = size();
        InsnList insnList = new InsnList(size);
        for (int i11 = 0; i11 < size; i11++) {
            Insn insn = (Insn) get0(i11);
            if (insn != null) {
                insnList.set0(i11, insn.withRegisterOffset(i10));
            }
        }
        if (isImmutable()) {
            insnList.setImmutable();
        }
        return insnList;
    }
}
