package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.constantpool.ClassEntry;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;

public interface NewMultiArrayInstruction extends Instruction {
    ClassEntry arrayType();

    int dimensions();

    static NewMultiArrayInstruction of(ClassEntry arrayTypeEntry, int dimensions) {
        BytecodeHelpers.validateMultiArrayDimensions(dimensions);
        return new AbstractInstruction.UnboundNewMultidimensionalArrayInstruction(arrayTypeEntry, dimensions);
    }
}
