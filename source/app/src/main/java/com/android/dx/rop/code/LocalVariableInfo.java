package com.android.dx.rop.code;

import com.android.dx.util.MutabilityControl;
import java.util.HashMap;

public final class LocalVariableInfo extends MutabilityControl {
    private final RegisterSpecSet[] blockStarts;
    private final RegisterSpecSet emptySet;
    private final HashMap<Insn, RegisterSpec> insnAssignments;
    private final int regCount;

    public LocalVariableInfo(RopMethod ropMethod) {
        if (ropMethod == null) {
            throw new NullPointerException("method == null");
        }
        BasicBlockList blocks = ropMethod.getBlocks();
        int maxLabel = blocks.getMaxLabel();
        int regCount = blocks.getRegCount();
        this.regCount = regCount;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(regCount);
        this.emptySet = registerSpecSet;
        this.blockStarts = new RegisterSpecSet[maxLabel];
        this.insnAssignments = new HashMap<>(blocks.getInstructionCount());
        registerSpecSet.setImmutable();
    }

    private RegisterSpecSet getStarts0(int i10) {
        try {
            return this.blockStarts[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus label");
        }
    }

    public void addAssignment(Insn insn, RegisterSpec registerSpec) {
        throwIfImmutable();
        if (insn == null) {
            throw new NullPointerException("insn == null");
        }
        if (registerSpec == null) {
            throw new NullPointerException("spec == null");
        }
        this.insnAssignments.put(insn, registerSpec);
    }

    public void debugDump() {
        int i10 = 0;
        while (true) {
            RegisterSpecSet[] registerSpecSetArr = this.blockStarts;
            if (i10 >= registerSpecSetArr.length) {
                return;
            }
            RegisterSpecSet registerSpecSet = registerSpecSetArr[i10];
            if (registerSpecSet != null) {
                if (registerSpecSet == this.emptySet) {
                    System.out.printf("%04x: empty set\n", Integer.valueOf(i10));
                } else {
                    System.out.printf("%04x: %s\n", Integer.valueOf(i10), this.blockStarts[i10]);
                }
            }
            i10++;
        }
    }

    public RegisterSpec getAssignment(Insn insn) {
        return this.insnAssignments.get(insn);
    }

    public int getAssignmentCount() {
        return this.insnAssignments.size();
    }

    public RegisterSpecSet getStarts(int i10) {
        RegisterSpecSet starts0 = getStarts0(i10);
        return starts0 != null ? starts0 : this.emptySet;
    }

    public boolean mergeStarts(int i10, RegisterSpecSet registerSpecSet) {
        RegisterSpecSet starts0 = getStarts0(i10);
        if (starts0 == null) {
            setStarts(i10, registerSpecSet);
            return true;
        }
        RegisterSpecSet mutableCopy = starts0.mutableCopy();
        if (starts0.size() != 0) {
            mutableCopy.intersect(registerSpecSet, true);
        } else {
            mutableCopy = registerSpecSet.mutableCopy();
        }
        if (starts0.equals(mutableCopy)) {
            return false;
        }
        mutableCopy.setImmutable();
        setStarts(i10, mutableCopy);
        return true;
    }

    public RegisterSpecSet mutableCopyOfStarts(int i10) {
        RegisterSpecSet starts0 = getStarts0(i10);
        return starts0 != null ? starts0.mutableCopy() : new RegisterSpecSet(this.regCount);
    }

    public void setStarts(int i10, RegisterSpecSet registerSpecSet) {
        throwIfImmutable();
        if (registerSpecSet == null) {
            throw new NullPointerException("specs == null");
        }
        try {
            this.blockStarts[i10] = registerSpecSet;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus label");
        }
    }

    public RegisterSpecSet getStarts(BasicBlock basicBlock) {
        return getStarts(basicBlock.getLabel());
    }
}
