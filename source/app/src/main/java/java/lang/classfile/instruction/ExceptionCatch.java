package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import java.lang.classfile.PseudoInstruction;
import java.lang.classfile.constantpool.ClassEntry;
import java.util.Optional;
import jdk.internal.classfile.impl.AbstractPseudoInstruction;

public interface ExceptionCatch extends PseudoInstruction {
    Label handler();

    Label tryStart();

    Label tryEnd();

    Optional<ClassEntry> catchType();

    static ExceptionCatch of(Label handler, Label tryStart, Label tryEnd, Optional<ClassEntry> catchTypeEntry) {
        return new AbstractPseudoInstruction.ExceptionCatchImpl(handler, tryStart, tryEnd, catchTypeEntry.orElse(null));
    }

    static ExceptionCatch of(Label handler, Label tryStart, Label tryEnd) {
        return new AbstractPseudoInstruction.ExceptionCatchImpl(handler, tryStart, tryEnd, (ClassEntry) null);
    }
}
