package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import java.lang.classfile.PseudoInstruction;

public interface LabelTarget extends PseudoInstruction {
    Label label();
}
