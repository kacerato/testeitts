package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface SwitchCase {
    int caseValue();

    Label target();

    static SwitchCase of(int caseValue, Label target) {
        return new AbstractInstruction.SwitchCaseImpl(caseValue, target);
    }
}
