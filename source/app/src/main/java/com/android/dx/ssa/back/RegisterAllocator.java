package com.android.dx.ssa.back;

import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import java.util.ArrayList;

public abstract class RegisterAllocator {
    protected final InterferenceGraph interference;
    protected final SsaMethod ssaMeth;

    public RegisterAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        this.ssaMeth = ssaMethod;
        this.interference = interferenceGraph;
    }

    public abstract RegisterMapper allocateRegisters();

    public final int getCategoryForSsaReg(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null) {
            return 1;
        }
        return definitionForRegister.getResult().getCategory();
    }

    public final RegisterSpec getDefinitionSpecForSsaReg(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null) {
            return null;
        }
        return definitionForRegister.getResult();
    }

    public final RegisterSpec insertMoveBefore(SsaInsn ssaInsn, RegisterSpec registerSpec) {
        SsaBasicBlock block = ssaInsn.getBlock();
        ArrayList<SsaInsn> insns = block.getInsns();
        int indexOf = insns.indexOf(ssaInsn);
        if (indexOf < 0) {
            throw new IllegalArgumentException("specified insn is not in this block");
        }
        if (indexOf != insns.size() - 1) {
            throw new IllegalArgumentException("Adding move here not supported:" + ssaInsn.toHuman());
        }
        RegisterSpec make = RegisterSpec.make(this.ssaMeth.makeNewSsaReg(), registerSpec.getTypeBearer());
        insns.add(indexOf, SsaInsn.makeFromRop(new PlainInsn(Rops.opMove(make.getType()), SourcePosition.NO_INFO, make, RegisterSpecList.make(registerSpec)), block));
        int reg = make.getReg();
        IntIterator it = block.getLiveOutRegs().iterator();
        while (it.hasNext()) {
            this.interference.add(reg, it.next());
        }
        RegisterSpecList sources = ssaInsn.getSources();
        int size = sources.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.interference.add(reg, sources.get(i10).getReg());
        }
        this.ssaMeth.onInsnsChanged();
        return make;
    }

    public boolean isDefinitionMoveParam(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        return (definitionForRegister instanceof NormalSsaInsn) && ((NormalSsaInsn) definitionForRegister).getOpcode().getOpcode() == 3;
    }

    public abstract boolean wantsParamsMovedHigh();
}
