package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.constantpool.ClassEntry;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface NewObjectInstruction extends Instruction {
    ClassEntry className();

    static NewObjectInstruction of(ClassEntry className) {
        return new AbstractInstruction.UnboundNewObjectInstruction(className);
    }
}
