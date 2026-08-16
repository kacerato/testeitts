package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.constantpool.ClassEntry;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface NewReferenceArrayInstruction extends Instruction {
    ClassEntry componentType();

    static NewReferenceArrayInstruction of(ClassEntry componentType) {
        return new AbstractInstruction.UnboundNewReferenceArrayInstruction(componentType);
    }
}
