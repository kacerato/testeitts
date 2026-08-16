package com.android.dx.merge;

import com.android.dex.DexException;
import com.android.dex.DexIndexOverflowException;
import com.android.dx.io.CodeReader;
import com.android.dx.io.instructions.DecodedInstruction;
import com.android.dx.io.instructions.ShortArrayCodeOutput;

public final class InstructionTransformer {
    private IndexMap indexMap;
    private int mappedAt;
    private DecodedInstruction[] mappedInstructions;
    private final CodeReader reader;

    public class FieldVisitor implements CodeReader.Visitor {
        private FieldVisitor() {
        }

        @Override
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int adjustField = InstructionTransformer.this.indexMap.adjustField(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, adjustField);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$608(InstructionTransformer.this)] = decodedInstruction.withIndex(adjustField);
        }
    }

    public class GenericVisitor implements CodeReader.Visitor {
        private GenericVisitor() {
        }

        @Override
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$608(InstructionTransformer.this)] = decodedInstruction;
        }
    }

    public class MethodVisitor implements CodeReader.Visitor {
        private MethodVisitor() {
        }

        @Override
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int adjustMethod = InstructionTransformer.this.indexMap.adjustMethod(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, adjustMethod);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$608(InstructionTransformer.this)] = decodedInstruction.withIndex(adjustMethod);
        }
    }

    public class StringVisitor implements CodeReader.Visitor {
        private StringVisitor() {
        }

        @Override
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int adjustString = InstructionTransformer.this.indexMap.adjustString(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, adjustString);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$608(InstructionTransformer.this)] = decodedInstruction.withIndex(adjustString);
        }
    }

    public class TypeVisitor implements CodeReader.Visitor {
        private TypeVisitor() {
        }

        @Override
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int adjustType = InstructionTransformer.this.indexMap.adjustType(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, adjustType);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$608(InstructionTransformer.this)] = decodedInstruction.withIndex(adjustType);
        }
    }

    public InstructionTransformer() {
        CodeReader codeReader = new CodeReader();
        this.reader = codeReader;
        codeReader.setAllVisitors(new GenericVisitor());
        codeReader.setStringVisitor(new StringVisitor());
        codeReader.setTypeVisitor(new TypeVisitor());
        codeReader.setFieldVisitor(new FieldVisitor());
        codeReader.setMethodVisitor(new MethodVisitor());
    }

    public static int access$608(InstructionTransformer instructionTransformer) {
        int i10 = instructionTransformer.mappedAt;
        instructionTransformer.mappedAt = i10 + 1;
        return i10;
    }

    public static void jumboCheck(boolean z10, int i10) {
        if (z10 || i10 <= 65535) {
            return;
        }
        throw new DexIndexOverflowException("Cannot merge new index " + i10 + " into a non-jumbo instruction!");
    }

    public short[] transform(IndexMap indexMap, short[] sArr) throws DexException {
        DecodedInstruction[] decodeAll = DecodedInstruction.decodeAll(sArr);
        int length = decodeAll.length;
        this.indexMap = indexMap;
        this.mappedInstructions = new DecodedInstruction[length];
        this.mappedAt = 0;
        this.reader.visitAll(decodeAll);
        ShortArrayCodeOutput shortArrayCodeOutput = new ShortArrayCodeOutput(length);
        for (DecodedInstruction decodedInstruction : this.mappedInstructions) {
            if (decodedInstruction != null) {
                decodedInstruction.encode(shortArrayCodeOutput);
            }
        }
        this.indexMap = null;
        return shortArrayCodeOutput.getArray();
    }
}
