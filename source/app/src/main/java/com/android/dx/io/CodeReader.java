package com.android.dx.io;

import com.android.dex.DexException;
import com.android.dx.io.instructions.DecodedInstruction;

public final class CodeReader {
    private Visitor fallbackVisitor = null;
    private Visitor stringVisitor = null;
    private Visitor typeVisitor = null;
    private Visitor fieldVisitor = null;
    private Visitor methodVisitor = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$dx$io$IndexType;

        static {
            int[] iArr = new int[IndexType.values().length];
            $SwitchMap$com$android$dx$io$IndexType = iArr;
            try {
                iArr[IndexType.STRING_REF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$io$IndexType[IndexType.TYPE_REF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dx$io$IndexType[IndexType.FIELD_REF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$dx$io$IndexType[IndexType.METHOD_REF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface Visitor {
        void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction);
    }

    private void callVisit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
        int i10 = AnonymousClass1.$SwitchMap$com$android$dx$io$IndexType[OpcodeInfo.getIndexType(decodedInstruction.getOpcode()).ordinal()];
        Visitor visitor = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? null : this.methodVisitor : this.fieldVisitor : this.typeVisitor : this.stringVisitor;
        if (visitor == null) {
            visitor = this.fallbackVisitor;
        }
        if (visitor != null) {
            visitor.visit(decodedInstructionArr, decodedInstruction);
        }
    }

    public void setAllVisitors(Visitor visitor) {
        this.fallbackVisitor = visitor;
        this.stringVisitor = visitor;
        this.typeVisitor = visitor;
        this.fieldVisitor = visitor;
        this.methodVisitor = visitor;
    }

    public void setFallbackVisitor(Visitor visitor) {
        this.fallbackVisitor = visitor;
    }

    public void setFieldVisitor(Visitor visitor) {
        this.fieldVisitor = visitor;
    }

    public void setMethodVisitor(Visitor visitor) {
        this.methodVisitor = visitor;
    }

    public void setStringVisitor(Visitor visitor) {
        this.stringVisitor = visitor;
    }

    public void setTypeVisitor(Visitor visitor) {
        this.typeVisitor = visitor;
    }

    public void visitAll(DecodedInstruction[] decodedInstructionArr) throws DexException {
        for (DecodedInstruction decodedInstruction : decodedInstructionArr) {
            if (decodedInstruction != null) {
                callVisit(decodedInstructionArr, decodedInstruction);
            }
        }
    }

    public void visitAll(short[] sArr) throws DexException {
        visitAll(DecodedInstruction.decodeAll(sArr));
    }
}
