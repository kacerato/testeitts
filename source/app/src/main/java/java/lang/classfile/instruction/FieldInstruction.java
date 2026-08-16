package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.FieldRefEntry;
import java.lang.classfile.constantpool.NameAndTypeEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.Util;

public interface FieldInstruction extends Instruction {
    FieldRefEntry field();

    default ClassEntry owner() {
        return field().owner();
    }

    default Utf8Entry name() {
        return field().nameAndType().name();
    }

    default Utf8Entry type() {
        return field().nameAndType().type();
    }

    default ClassDesc typeSymbol() {
        return field().typeSymbol();
    }

    static FieldInstruction of(Opcode op, FieldRefEntry field) {
        Util.checkKind(op, Opcode.Kind.FIELD_ACCESS);
        return new AbstractInstruction.UnboundFieldInstruction(op, field);
    }

    static FieldInstruction of(Opcode op, ClassEntry owner, Utf8Entry name, Utf8Entry type) {
        return of(op, owner, TemporaryConstantPool.INSTANCE.nameAndTypeEntry(name, type));
    }

    static FieldInstruction of(Opcode op, ClassEntry owner, NameAndTypeEntry nameAndType) {
        return of(op, TemporaryConstantPool.INSTANCE.fieldRefEntry(owner, nameAndType));
    }
}
