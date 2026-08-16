package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.util.IntList;

public class BasicRegisterMapper extends RegisterMapper {
    private IntList oldToNew;
    private int runningCountNewRegisters;

    public BasicRegisterMapper(int i10) {
        this.oldToNew = new IntList(i10);
    }

    public void addMapping(int i10, int i11, int i12) {
        if (i10 >= this.oldToNew.size()) {
            for (int size = i10 - this.oldToNew.size(); size >= 0; size--) {
                this.oldToNew.add(-1);
            }
        }
        this.oldToNew.set(i10, i11);
        int i13 = i11 + i12;
        if (this.runningCountNewRegisters < i13) {
            this.runningCountNewRegisters = i13;
        }
    }

    @Override
    public int getNewRegisterCount() {
        return this.runningCountNewRegisters;
    }

    @Override
    public RegisterSpec map(RegisterSpec registerSpec) {
        int i10;
        if (registerSpec == null) {
            return null;
        }
        try {
            i10 = this.oldToNew.get(registerSpec.getReg());
        } catch (IndexOutOfBoundsException unused) {
            i10 = -1;
        }
        if (i10 >= 0) {
            return registerSpec.withReg(i10);
        }
        throw new RuntimeException("no mapping specified for register");
    }

    public int oldToNew(int i10) {
        if (i10 >= this.oldToNew.size()) {
            return -1;
        }
        return this.oldToNew.get(i10);
    }

    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Old\tNew\n");
        int size = this.oldToNew.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(i10);
            sb2.append('\t');
            sb2.append(this.oldToNew.get(i10));
            sb2.append('\n');
        }
        sb2.append("new reg count:");
        sb2.append(this.runningCountNewRegisters);
        sb2.append('\n');
        return sb2.toString();
    }
}
