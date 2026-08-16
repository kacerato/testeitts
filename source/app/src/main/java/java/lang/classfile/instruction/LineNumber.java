package java.lang.classfile.instruction;

import java.lang.classfile.PseudoInstruction;
import jdk.internal.classfile.impl.LineNumberImpl;

public interface LineNumber extends PseudoInstruction {
    int line();

    static LineNumber of(int line) {
        return LineNumberImpl.of(line);
    }
}
