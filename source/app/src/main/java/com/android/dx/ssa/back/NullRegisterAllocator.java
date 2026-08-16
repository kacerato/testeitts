package com.android.dx.ssa.back;

import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;

public class NullRegisterAllocator extends RegisterAllocator {
    public NullRegisterAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
    }

    @Override
    public RegisterMapper allocateRegisters() {
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        for (int i10 = 0; i10 < regCount; i10++) {
            basicRegisterMapper.addMapping(i10, i10 * 2, 2);
        }
        return basicRegisterMapper;
    }

    @Override
    public boolean wantsParamsMovedHigh() {
        return false;
    }
}
