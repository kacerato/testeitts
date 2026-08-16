package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface NewPrimitiveArrayInstruction extends Instruction {
    TypeKind typeKind();

    static NewPrimitiveArrayInstruction of(TypeKind typeKind) {
        if (typeKind.newarrayCode() < 0) {
            throw new IllegalArgumentException("Illegal component type for primitive array: " + typeKind.name());
        }
        return new AbstractInstruction.UnboundNewPrimitiveArrayInstruction(typeKind);
    }
}
