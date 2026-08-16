package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;
import jdk.internal.classfile.impl.Util;

public interface LoadInstruction extends Instruction {
    int slot();

    TypeKind typeKind();

    static LoadInstruction of(TypeKind kind, int slot) {
        Opcode opcode = BytecodeHelpers.loadOpcode(kind, slot);
        return new AbstractInstruction.UnboundLoadInstruction(opcode, slot);
    }

    static LoadInstruction of(Opcode op, int slot) {
        Util.checkKind(op, Opcode.Kind.LOAD);
        BytecodeHelpers.validateSlot(op, slot, true);
        return new AbstractInstruction.UnboundLoadInstruction(op, slot);
    }
}
