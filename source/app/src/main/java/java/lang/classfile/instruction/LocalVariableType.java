package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import java.lang.classfile.PseudoInstruction;
import java.lang.classfile.Signature;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.AbstractPseudoInstruction;
import jdk.internal.classfile.impl.TemporaryConstantPool;

public interface LocalVariableType extends PseudoInstruction {
    int slot();

    Utf8Entry name();

    Utf8Entry signature();

    Label startScope();

    Label endScope();

    default Signature signatureSymbol() {
        return Signature.parseFrom(signature().stringValue());
    }

    static LocalVariableType of(int slot, Utf8Entry nameEntry, Utf8Entry signatureEntry, Label startScope, Label endScope) {
        return new AbstractPseudoInstruction.UnboundLocalVariableType(slot, nameEntry, signatureEntry, startScope, endScope);
    }

    static LocalVariableType of(int slot, String name, Signature signature, Label startScope, Label endScope) {
        return of(slot, TemporaryConstantPool.INSTANCE.utf8Entry(name), TemporaryConstantPool.INSTANCE.utf8Entry(signature.signatureString()), startScope, endScope);
    }
}
