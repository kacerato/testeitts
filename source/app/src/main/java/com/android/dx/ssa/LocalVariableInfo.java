package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.util.MutabilityControl;
import java.util.ArrayList;
import java.util.HashMap;

public class LocalVariableInfo extends MutabilityControl {
    private final RegisterSpecSet[] blockStarts;
    private final RegisterSpecSet emptySet;
    private final HashMap<SsaInsn, RegisterSpec> insnAssignments;
    private final int regCount;

    public LocalVariableInfo(SsaMethod ssaMethod) {
        if (ssaMethod == null) {
            throw new NullPointerException("method == null");
        }
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(regCount);
        this.emptySet = registerSpecSet;
        this.blockStarts = new RegisterSpecSet[blocks.size()];
        this.insnAssignments = new HashMap<>();
        registerSpecSet.setImmutable();
    }

    private RegisterSpecSet getStarts0(int i10) {
        try {
            return this.blockStarts[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus index");
        }
    }

    public void addAssignment(SsaInsn ssaInsn, RegisterSpec registerSpec) {
        throwIfImmutable();
        if (ssaInsn == null) {
            throw new NullPointerException("insn == null");
        }
        if (registerSpec == null) {
            throw new NullPointerException("spec == null");
        }
        this.insnAssignments.put(ssaInsn, registerSpec);
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

    public RegisterSpec getAssignment(SsaInsn ssaInsn) {
        return this.insnAssignments.get(ssaInsn);
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
        mutableCopy.intersect(registerSpecSet, true);
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
            throw new IllegalArgumentException("bogus index");
        }
    }

    public RegisterSpecSet getStarts(SsaBasicBlock ssaBasicBlock) {
        return getStarts(ssaBasicBlock.getIndex());
    }
}
