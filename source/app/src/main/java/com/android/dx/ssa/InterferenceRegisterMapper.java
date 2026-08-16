package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.ssa.back.InterferenceGraph;
import com.android.dx.util.BitIntSet;
import java.util.ArrayList;

public class InterferenceRegisterMapper extends BasicRegisterMapper {
    private final ArrayList<BitIntSet> newRegInterference;
    private final InterferenceGraph oldRegInterference;

    public InterferenceRegisterMapper(InterferenceGraph interferenceGraph, int i10) {
        super(i10);
        this.newRegInterference = new ArrayList<>();
        this.oldRegInterference = interferenceGraph;
    }

    private void addInterfence(int i10, int i11) {
        int i12 = i10 + 1;
        this.newRegInterference.ensureCapacity(i12);
        while (i10 >= this.newRegInterference.size()) {
            this.newRegInterference.add(new BitIntSet(i12));
        }
        this.oldRegInterference.mergeInterferenceSet(i11, this.newRegInterference.get(i10));
    }

    @Override
    public void addMapping(int i10, int i11, int i12) {
        super.addMapping(i10, i11, i12);
        addInterfence(i11, i10);
        if (i12 == 2) {
            addInterfence(i11 + 1, i10);
        }
    }

    public boolean areAnyPinned(RegisterSpecList registerSpecList, int i10, int i11) {
        int size = registerSpecList.size();
        for (int i12 = 0; i12 < size; i12++) {
            RegisterSpec registerSpec = registerSpecList.get(i12);
            int oldToNew = oldToNew(registerSpec.getReg());
            if (oldToNew == i10) {
                return true;
            }
            if (registerSpec.getCategory() == 2 && oldToNew + 1 == i10) {
                return true;
            }
            if (i11 == 2 && oldToNew == i10 + 1) {
                return true;
            }
        }
        return false;
    }

    public boolean interferes(int i10, int i11, int i12) {
        BitIntSet bitIntSet;
        if (i11 >= this.newRegInterference.size() || (bitIntSet = this.newRegInterference.get(i11)) == null) {
            return false;
        }
        if (i12 == 1) {
            return bitIntSet.has(i10);
        }
        return bitIntSet.has(i10) || interferes(i10, i11 + 1, i12 - 1);
    }

    public boolean interferes(RegisterSpec registerSpec, int i10) {
        return interferes(registerSpec.getReg(), i10, registerSpec.getCategory());
    }
}
