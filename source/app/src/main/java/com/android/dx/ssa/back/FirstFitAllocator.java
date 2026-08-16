package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.BitIntSet;
import java.util.BitSet;

public class FirstFitAllocator extends RegisterAllocator {
    private static final boolean PRESLOT_PARAMS = true;
    private final BitSet mapped;

    public FirstFitAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
        this.mapped = new BitSet(ssaMethod.getRegCount());
    }

    private int paramNumberFromMoveParam(NormalSsaInsn normalSsaInsn) {
        return ((CstInteger) ((CstInsn) normalSsaInsn.getOriginalRopInsn()).getConstant()).getValue();
    }

    @Override
    public RegisterMapper allocateRegisters() {
        int i10;
        boolean z10;
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        int paramWidth = this.ssaMeth.getParamWidth();
        for (int i11 = 0; i11 < regCount; i11++) {
            if (!this.mapped.get(i11)) {
                int categoryForSsaReg = getCategoryForSsaReg(i11);
                BitIntSet bitIntSet = new BitIntSet(regCount);
                this.interference.mergeInterferenceSet(i11, bitIntSet);
                if (isDefinitionMoveParam(i11)) {
                    i10 = paramNumberFromMoveParam((NormalSsaInsn) this.ssaMeth.getDefinitionForRegister(i11));
                    basicRegisterMapper.addMapping(i11, i10, categoryForSsaReg);
                    z10 = true;
                } else {
                    basicRegisterMapper.addMapping(i11, paramWidth, categoryForSsaReg);
                    i10 = paramWidth;
                    z10 = false;
                }
                for (int i12 = i11 + 1; i12 < regCount; i12++) {
                    if (!this.mapped.get(i12) && !isDefinitionMoveParam(i12) && !bitIntSet.has(i12) && (!z10 || categoryForSsaReg >= getCategoryForSsaReg(i12))) {
                        this.interference.mergeInterferenceSet(i12, bitIntSet);
                        categoryForSsaReg = Math.max(categoryForSsaReg, getCategoryForSsaReg(i12));
                        basicRegisterMapper.addMapping(i12, i10, categoryForSsaReg);
                        this.mapped.set(i12);
                    }
                }
                this.mapped.set(i11);
                if (!z10) {
                    paramWidth += categoryForSsaReg;
                }
            }
        }
        return basicRegisterMapper;
    }

    @Override
    public boolean wantsParamsMovedHigh() {
        return true;
    }
}
