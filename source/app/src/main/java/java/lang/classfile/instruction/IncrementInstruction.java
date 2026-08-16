package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface IncrementInstruction extends Instruction {
    int slot();

    int constant();

    static IncrementInstruction of(int slot, int constant) {
        return new AbstractInstruction.UnboundIncrementInstruction(slot, constant);
    }
}
