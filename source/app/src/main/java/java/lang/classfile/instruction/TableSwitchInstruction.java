package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Label;
import java.util.List;
import jdk.internal.classfile.impl.AbstractInstruction;

public interface TableSwitchInstruction extends Instruction {
    int lowValue();

    int highValue();

    Label defaultTarget();

    List<SwitchCase> cases();

    static TableSwitchInstruction of(int lowValue, int highValue, Label defaultTarget, List<SwitchCase> cases) {
        return new AbstractInstruction.UnboundTableSwitchInstruction(lowValue, highValue, defaultTarget, cases);
    }
}
