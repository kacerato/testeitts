package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface ThrowInstruction extends Instruction {
    static ThrowInstruction of() {
        return new AbstractInstruction.UnboundThrowInstruction();
    }
}
