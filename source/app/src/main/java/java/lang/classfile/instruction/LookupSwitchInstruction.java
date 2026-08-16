package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Label;
import java.util.List;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface LookupSwitchInstruction extends Instruction {
    Label defaultTarget();

    List<SwitchCase> cases();

    static LookupSwitchInstruction of(Label defaultTarget, List<SwitchCase> cases) {
        return new AbstractInstruction.UnboundLookupSwitchInstruction(defaultTarget, cases);
    }
}
