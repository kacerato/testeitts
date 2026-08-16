package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;
import jdk.internal.classfile.impl.Util;

public interface StoreInstruction extends Instruction {
    int slot();

    TypeKind typeKind();

    static StoreInstruction of(TypeKind kind, int slot) {
        Opcode opcode = BytecodeHelpers.storeOpcode(kind, slot);
        return new AbstractInstruction.UnboundStoreInstruction(opcode, slot);
    }

    static StoreInstruction of(Opcode op, int slot) {
        Util.checkKind(op, Opcode.Kind.STORE);
        BytecodeHelpers.validateSlot(op, slot, false);
        return new AbstractInstruction.UnboundStoreInstruction(op, slot);
    }
}
