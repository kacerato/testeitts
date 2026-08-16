package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;
import jdk.internal.classfile.impl.Util;

public interface ConvertInstruction extends Instruction {
    TypeKind fromType();

    TypeKind toType();

    static ConvertInstruction of(TypeKind fromType, TypeKind toType) {
        return of(BytecodeHelpers.convertOpcode(fromType, toType));
    }

    static ConvertInstruction of(Opcode op) {
        Util.checkKind(op, Opcode.Kind.CONVERT);
        return new AbstractInstruction.UnboundConvertInstruction(op);
    }
}
