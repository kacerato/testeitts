package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface NopInstruction extends Instruction {
    static NopInstruction of() {
        return new AbstractInstruction.UnboundNopInstruction();
    }
}
