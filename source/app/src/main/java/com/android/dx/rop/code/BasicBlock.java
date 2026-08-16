package com.android.dx.rop.code;

import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import org.eclipse.jdt.internal.core.JavaElement;

public final class BasicBlock implements LabeledItem {
    private final InsnList insns;
    private final int label;
    private final int primarySuccessor;
    private final IntList successors;

    public interface Visitor {
        void visitBlock(BasicBlock basicBlock);
    }

    public BasicBlock(int i10, InsnList insnList, IntList intList, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("label < 0");
        }
        try {
            insnList.throwIfMutable();
            int size = insnList.size();
            if (size == 0) {
                throw new IllegalArgumentException("insns.size() == 0");
            }
            for (int i12 = size - 2; i12 >= 0; i12--) {
                if (insnList.get(i12).getOpcode().getBranchingness() != 1) {
                    throw new IllegalArgumentException("insns[" + i12 + "] is a branch or can throw");
                }
            }
            if (insnList.get(size - 1).getOpcode().getBranchingness() == 1) {
                throw new IllegalArgumentException("insns does not end with a branch or throwing instruction");
            }
            try {
                intList.throwIfMutable();
                if (i11 < -1) {
                    throw new IllegalArgumentException("primarySuccessor < -1");
                }
                if (i11 < 0 || intList.contains(i11)) {
                    this.label = i10;
                    this.insns = insnList;
                    this.successors = intList;
                    this.primarySuccessor = i11;
                    return;
                }
                throw new IllegalArgumentException("primarySuccessor " + i11 + " not in successors " + ((Object) intList));
            } catch (NullPointerException unused) {
                throw new NullPointerException("successors == null");
            }
        } catch (NullPointerException unused2) {
            throw new NullPointerException("insns == null");
        }
    }

    public boolean canThrow() {
        return this.insns.getLast().canThrow();
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public TypeList getExceptionHandlerTypes() {
        return this.insns.getLast().getCatches();
    }

    public Insn getFirstInsn() {
        return this.insns.get(0);
    }

    public InsnList getInsns() {
        return this.insns;
    }

    @Override
    public int getLabel() {
        return this.label;
    }

    public Insn getLastInsn() {
        return this.insns.getLast();
    }

    public int getPrimarySuccessor() {
        return this.primarySuccessor;
    }

    public int getSecondarySuccessor() {
        if (this.successors.size() != 2) {
            throw new UnsupportedOperationException("block doesn't have exactly two successors");
        }
        int i10 = this.successors.get(0);
        return i10 == this.primarySuccessor ? this.successors.get(1) : i10;
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public boolean hasExceptionHandlers() {
        return this.insns.getLast().getCatches().size() != 0;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public String toString() {
        return JavaElement.JEM_COMPILATIONUNIT + Hex.u2(this.label) + JavaElement.JEM_ANNOTATION;
    }

    public BasicBlock withRegisterOffset(int i10) {
        return new BasicBlock(this.label, this.insns.withRegisterOffset(i10), this.successors, this.primarySuccessor);
    }
}
