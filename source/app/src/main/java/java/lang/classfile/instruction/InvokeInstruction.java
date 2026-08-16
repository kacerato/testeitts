package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.MemberRefEntry;
import java.lang.classfile.constantpool.NameAndTypeEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.MethodTypeDesc;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.Util;

public interface InvokeInstruction extends Instruction {
    MemberRefEntry method();

    boolean isInterface();

    int count();

    default ClassEntry owner() {
        return method().owner();
    }

    default Utf8Entry name() {
        return method().nameAndType().name();
    }

    default Utf8Entry type() {
        return method().nameAndType().type();
    }

    default MethodTypeDesc typeSymbol() {
        return Util.methodTypeSymbol(method().type());
    }

    static InvokeInstruction of(Opcode op, MemberRefEntry method) {
        Util.checkKind(op, Opcode.Kind.INVOKE);
        return new AbstractInstruction.UnboundInvokeInstruction(op, method);
    }

    static InvokeInstruction of(Opcode op, ClassEntry owner, Utf8Entry name, Utf8Entry type, boolean isInterface) {
        return of(op, owner, TemporaryConstantPool.INSTANCE.nameAndTypeEntry(name, type), isInterface);
    }

    static InvokeInstruction of(Opcode op, ClassEntry owner, NameAndTypeEntry nameAndType, boolean isInterface) {
        MemberRefEntry methodRefEntry;
        if (isInterface) {
            methodRefEntry = TemporaryConstantPool.INSTANCE.interfaceMethodRefEntry(owner, nameAndType);
        } else {
            methodRefEntry = TemporaryConstantPool.INSTANCE.methodRefEntry(owner, nameAndType);
        }
        return of(op, methodRefEntry);
    }
}
