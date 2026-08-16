package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface ArrayLoadInstruction extends Instruction {
    TypeKind typeKind();

    static ArrayLoadInstruction of(Opcode op) {
        Util.checkKind(op, Opcode.Kind.ARRAY_LOAD);
        return new AbstractInstruction.UnboundArrayLoadInstruction(op);
    }
}
