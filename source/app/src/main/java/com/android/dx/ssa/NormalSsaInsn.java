package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.ssa.SsaInsn;

public final class NormalSsaInsn extends SsaInsn implements Cloneable {
    private Insn insn;

    public NormalSsaInsn(Insn insn, SsaBasicBlock ssaBasicBlock) {
        super(insn.getResult(), ssaBasicBlock);
        this.insn = insn;
    }

    @Override
    public void accept(SsaInsn.Visitor visitor) {
        if (isNormalMoveInsn()) {
            visitor.visitMoveInsn(this);
        } else {
            visitor.visitNonMoveInsn(this);
        }
    }

    @Override
    public boolean canThrow() {
        return this.insn.canThrow();
    }

    public final void changeOneSource(int i10, RegisterSpec registerSpec) {
        RegisterSpecList sources = this.insn.getSources();
        int size = sources.size();
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i11 = 0;
        while (i11 < size) {
            registerSpecList.set(i11, i11 == i10 ? registerSpec : sources.get(i11));
            i11++;
        }
        registerSpecList.setImmutable();
        RegisterSpec registerSpec2 = sources.get(i10);
        if (registerSpec2.getReg() != registerSpec.getReg()) {
            getBlock().getParent().onSourceChanged(this, registerSpec2, registerSpec);
        }
        this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
    }

    @Override
    public RegisterSpec getLocalAssignment() {
        RegisterSpec result = this.insn.getOpcode().getOpcode() == 54 ? this.insn.getSources().get(0) : getResult();
        if (result == null || result.getLocalItem() == null) {
            return null;
        }
        return result;
    }

    @Override
    public Rop getOpcode() {
        return this.insn.getOpcode();
    }

    @Override
    public Insn getOriginalRopInsn() {
        return this.insn;
    }

    @Override
    public RegisterSpecList getSources() {
        return this.insn.getSources();
    }

    @Override
    public boolean hasSideEffect() {
        Rop opcode = getOpcode();
        if (opcode.getBranchingness() != 1) {
            return true;
        }
        boolean z10 = Optimizer.getPreserveLocals() && getLocalAssignment() != null;
        int opcode2 = opcode.getOpcode();
        if (opcode2 == 2 || opcode2 == 5 || opcode2 == 55) {
            return z10;
        }
        return true;
    }

    @Override
    public boolean isMoveException() {
        return this.insn.getOpcode().getOpcode() == 4;
    }

    @Override
    public boolean isNormalMoveInsn() {
        return this.insn.getOpcode().getOpcode() == 2;
    }

    @Override
    public boolean isPhiOrMove() {
        return isNormalMoveInsn();
    }

    @Override
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        RegisterSpecList sources = this.insn.getSources();
        RegisterSpecList map = registerMapper.map(sources);
        if (map != sources) {
            this.insn = this.insn.withNewRegisters(getResult(), map);
            getBlock().getParent().onSourcesChanged(this, sources);
        }
    }

    public final void setNewSources(RegisterSpecList registerSpecList) {
        if (this.insn.getSources().size() != registerSpecList.size()) {
            throw new RuntimeException("Sources counts don't match");
        }
        this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
    }

    @Override
    public String toHuman() {
        return toRopInsn().toHuman();
    }

    @Override
    public Insn toRopInsn() {
        return this.insn.withNewRegisters(getResult(), this.insn.getSources());
    }

    public void upgradeToLiteral() {
        RegisterSpecList sources = this.insn.getSources();
        this.insn = this.insn.withSourceLiteral();
        getBlock().getParent().onSourcesChanged(this, sources);
    }

    @Override
    public NormalSsaInsn mo688clone() {
        return (NormalSsaInsn) super.mo688clone();
    }
}
