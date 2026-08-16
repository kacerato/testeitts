package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PhiInsn extends SsaInsn {
    private final ArrayList<Operand> operands;
    private final int ropResultReg;
    private RegisterSpecList sources;

    public static class Operand {
        public final int blockIndex;
        public RegisterSpec regSpec;
        public final int ropLabel;

        public Operand(RegisterSpec registerSpec, int i10, int i11) {
            this.regSpec = registerSpec;
            this.blockIndex = i10;
            this.ropLabel = i11;
        }
    }

    public interface Visitor {
        void visitPhiInsn(PhiInsn phiInsn);
    }

    public PhiInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        super(registerSpec, ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = registerSpec.getReg();
    }

    @Override
    public void accept(SsaInsn.Visitor visitor) {
        visitor.visitPhiInsn(this);
    }

    public void addPhiOperand(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        this.operands.add(new Operand(registerSpec, ssaBasicBlock.getIndex(), ssaBasicBlock.getRopLabel()));
        this.sources = null;
    }

    public boolean areAllOperandsEqual() {
        if (this.operands.size() == 0) {
            return true;
        }
        int reg = this.operands.get(0).regSpec.getReg();
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            if (reg != it.next().regSpec.getReg()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean canThrow() {
        return false;
    }

    public void changeResultType(TypeBearer typeBearer, LocalItem localItem) {
        setResult(RegisterSpec.makeLocalOptional(getResult().getReg(), typeBearer, localItem));
    }

    @Override
    public Rop getOpcode() {
        return null;
    }

    @Override
    public Insn getOriginalRopInsn() {
        return null;
    }

    public int getRopResultReg() {
        return this.ropResultReg;
    }

    @Override
    public RegisterSpecList getSources() {
        RegisterSpecList registerSpecList = this.sources;
        if (registerSpecList != null) {
            return registerSpecList;
        }
        if (this.operands.size() == 0) {
            return RegisterSpecList.EMPTY;
        }
        int size = this.operands.size();
        this.sources = new RegisterSpecList(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.sources.set(i10, this.operands.get(i10).regSpec);
        }
        this.sources.setImmutable();
        return this.sources;
    }

    @Override
    public boolean hasSideEffect() {
        return Optimizer.getPreserveLocals() && getLocalAssignment() != null;
    }

    @Override
    public boolean isPhiOrMove() {
        return true;
    }

    @Override
    public boolean isRegASource(int i10) {
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            if (it.next().regSpec.getReg() == i10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            Operand next = it.next();
            RegisterSpec registerSpec = next.regSpec;
            RegisterSpec map = registerMapper.map(registerSpec);
            next.regSpec = map;
            if (registerSpec != map) {
                getBlock().getParent().onSourceChanged(this, registerSpec, next.regSpec);
            }
        }
        this.sources = null;
    }

    public int predBlockIndexForSourcesIndex(int i10) {
        return this.operands.get(i10).blockIndex;
    }

    public List<SsaBasicBlock> predBlocksForReg(int i10, SsaMethod ssaMethod) {
        ArrayList arrayList = new ArrayList();
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            Operand next = it.next();
            if (next.regSpec.getReg() == i10) {
                arrayList.add(ssaMethod.getBlocks().get(next.blockIndex));
            }
        }
        return arrayList;
    }

    public void removePhiRegister(RegisterSpec registerSpec) {
        ArrayList arrayList = new ArrayList();
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            Operand next = it.next();
            if (next.regSpec.getReg() == registerSpec.getReg()) {
                arrayList.add(next);
            }
        }
        this.operands.removeAll(arrayList);
        this.sources = null;
    }

    @Override
    public String toHuman() {
        return toHumanWithInline(null);
    }

    public final String toHumanWithInline(String str) {
        StringBuffer stringBuffer = new StringBuffer(80);
        stringBuffer.append((Object) SourcePosition.NO_INFO);
        stringBuffer.append(": phi");
        if (str != null) {
            stringBuffer.append("(");
            stringBuffer.append(str);
            stringBuffer.append(")");
        }
        RegisterSpec result = getResult();
        if (result == null) {
            stringBuffer.append(" .");
        } else {
            stringBuffer.append(" ");
            stringBuffer.append(result.toHuman());
        }
        stringBuffer.append(" <-");
        int size = getSources().size();
        if (size == 0) {
            stringBuffer.append(" .");
        } else {
            for (int i10 = 0; i10 < size; i10++) {
                stringBuffer.append(" ");
                stringBuffer.append(this.sources.get(i10).toHuman() + "[b=" + Hex.u2(this.operands.get(i10).ropLabel) + "]");
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public Insn toRopInsn() {
        throw new IllegalArgumentException("Cannot convert phi insns to rop form");
    }

    public void updateSourcesToDefinitions(SsaMethod ssaMethod) {
        Iterator<Operand> it = this.operands.iterator();
        while (it.hasNext()) {
            Operand next = it.next();
            next.regSpec = next.regSpec.withType(ssaMethod.getDefinitionForRegister(next.regSpec.getReg()).getResult().getType());
        }
        this.sources = null;
    }

    @Override
    public PhiInsn mo688clone() {
        throw new UnsupportedOperationException("can't clone phi");
    }

    public PhiInsn(int i10, SsaBasicBlock ssaBasicBlock) {
        super(RegisterSpec.make(i10, Type.VOID), ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = i10;
    }
}
