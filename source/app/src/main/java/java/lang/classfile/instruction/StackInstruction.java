package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface StackInstruction extends Instruction {
    static StackInstruction of(Opcode op) {
        Util.checkKind(op, Opcode.Kind.STACK);
        return new AbstractInstruction.UnboundStackInstruction(op);
    }
}
