package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Label;
import java.lang.classfile.Opcode;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface BranchInstruction extends Instruction {
    Label target();

    static BranchInstruction of(Opcode op, Label target) {
        Util.checkKind(op, Opcode.Kind.BRANCH);
        return new AbstractInstruction.UnboundBranchInstruction(op, target);
    }
}
