package com.android.dx.rop.code;

import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.type.Type;

public final class DexTranslationAdvice implements TranslationAdvice {
    private static final int MIN_INVOKE_IN_ORDER = 6;
    private final boolean disableSourcesInOrder;
    public static final DexTranslationAdvice THE_ONE = new DexTranslationAdvice();
    public static final DexTranslationAdvice NO_SOURCES_IN_ORDER = new DexTranslationAdvice(true);

    private DexTranslationAdvice() {
        this.disableSourcesInOrder = false;
    }

    private int totalRopWidth(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += registerSpecList.get(i11).getCategory();
        }
        return i10;
    }

    @Override
    public int getMaxOptimalRegisterCount() {
        return 16;
    }

    @Override
    public boolean hasConstantOperation(Rop rop, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        if (registerSpec.getType() != Type.INT) {
            return false;
        }
        if (!(registerSpec2.getTypeBearer() instanceof CstInteger)) {
            if ((registerSpec.getTypeBearer() instanceof CstInteger) && rop.getOpcode() == 15) {
                return ((CstInteger) registerSpec.getTypeBearer()).fitsIn16Bits();
            }
            return false;
        }
        CstInteger cstInteger = (CstInteger) registerSpec2.getTypeBearer();
        switch (rop.getOpcode()) {
            case 14:
            case 16:
            case 17:
            case 18:
            case 20:
            case 21:
            case 22:
                return cstInteger.fitsIn16Bits();
            case 15:
                return CstInteger.make(-cstInteger.getValue()).fitsIn16Bits();
            case 19:
            default:
                return false;
            case 23:
            case 24:
            case 25:
                return cstInteger.fitsIn8Bits();
        }
    }

    @Override
    public boolean requiresSourcesInOrder(Rop rop, RegisterSpecList registerSpecList) {
        return !this.disableSourcesInOrder && rop.isCallLike() && totalRopWidth(registerSpecList) >= 6;
    }

    private DexTranslationAdvice(boolean z10) {
        this.disableSourcesInOrder = z10;
    }
}
