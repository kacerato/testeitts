package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import java.lang.classfile.PseudoInstruction;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.AbstractPseudoInstruction;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.Util;

public interface LocalVariable extends PseudoInstruction {
    int slot();

    Utf8Entry name();

    Utf8Entry type();

    Label startScope();

    Label endScope();

    default ClassDesc typeSymbol() {
        return Util.fieldTypeSymbol(type());
    }

    static LocalVariable of(int slot, Utf8Entry nameEntry, Utf8Entry descriptorEntry, Label startScope, Label endScope) {
        return new AbstractPseudoInstruction.UnboundLocalVariable(slot, nameEntry, descriptorEntry, startScope, endScope);
    }

    static LocalVariable of(int slot, String name, ClassDesc descriptor, Label startScope, Label endScope) {
        return of(slot, TemporaryConstantPool.INSTANCE.utf8Entry(name), TemporaryConstantPool.INSTANCE.utf8Entry(descriptor), startScope, endScope);
    }
}
