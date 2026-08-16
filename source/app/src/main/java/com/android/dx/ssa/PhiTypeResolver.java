package com.android.dx.ssa;

import com.android.dx.cf.code.Merger;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.type.TypeBearer;
import java.util.BitSet;
import java.util.List;
import w2.C15883c;

public class PhiTypeResolver {
    SsaMethod ssaMeth;
    private final BitSet worklist;

    private PhiTypeResolver(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        this.worklist = new BitSet(ssaMethod.getRegCount());
    }

    private static boolean equalsHandlesNulls(LocalItem localItem, LocalItem localItem2) {
        return localItem == localItem2 || (localItem != null && localItem.equals(localItem2));
    }

    public static void process(SsaMethod ssaMethod) {
        new PhiTypeResolver(ssaMethod).run();
    }

    private void run() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
            if (definitionForRegister != null && definitionForRegister.getResult().getBasicType() == 0) {
                this.worklist.set(i10);
            }
        }
        while (true) {
            int nextSetBit = this.worklist.nextSetBit(0);
            if (nextSetBit < 0) {
                return;
            }
            this.worklist.clear(nextSetBit);
            if (resolveResultType((PhiInsn) this.ssaMeth.getDefinitionForRegister(nextSetBit))) {
                List<SsaInsn> useListForRegister = this.ssaMeth.getUseListForRegister(nextSetBit);
                int size = useListForRegister.size();
                for (int i11 = 0; i11 < size; i11++) {
                    SsaInsn ssaInsn = useListForRegister.get(i11);
                    RegisterSpec result = ssaInsn.getResult();
                    if (result != null && (ssaInsn instanceof PhiInsn)) {
                        this.worklist.set(result.getReg());
                    }
                }
            }
        }
    }

    public boolean resolveResultType(PhiInsn phiInsn) {
        phiInsn.updateSourcesToDefinitions(this.ssaMeth);
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        int i10 = -1;
        RegisterSpec registerSpec = null;
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec2 = sources.get(i11);
            if (registerSpec2.getBasicType() != 0) {
                i10 = i11;
                registerSpec = registerSpec2;
            }
        }
        if (registerSpec == null) {
            return false;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        TypeBearer type = registerSpec.getType();
        boolean z10 = true;
        for (int i12 = 0; i12 < size; i12++) {
            if (i12 != i10) {
                RegisterSpec registerSpec3 = sources.get(i12);
                if (registerSpec3.getBasicType() != 0) {
                    z10 = z10 && equalsHandlesNulls(localItem, registerSpec3.getLocalItem());
                    type = Merger.mergeType(type, registerSpec3.getType());
                }
            }
        }
        if (type != null) {
            LocalItem localItem2 = z10 ? localItem : null;
            RegisterSpec result = phiInsn.getResult();
            if (result.getTypeBearer() == type && equalsHandlesNulls(localItem2, result.getLocalItem())) {
                return false;
            }
            phiInsn.changeResultType(type, localItem2);
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i13 = 0; i13 < size; i13++) {
            sb2.append(sources.get(i13).toString());
            sb2.append(C15883c.f126249O);
        }
        throw new RuntimeException("Couldn't map types in phi insn:" + ((Object) sb2));
    }
}
