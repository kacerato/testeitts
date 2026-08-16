package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface OperatorInstruction extends Instruction {
    TypeKind typeKind();

    static OperatorInstruction of(Opcode op) {
        Util.checkKind(op, Opcode.Kind.OPERATOR);
        return new AbstractInstruction.UnboundOperatorInstruction(op);
    }
}
