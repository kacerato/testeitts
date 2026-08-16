package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface MonitorInstruction extends Instruction {
    static MonitorInstruction of(Opcode op) {
        Util.checkKind(op, Opcode.Kind.MONITOR);
        return new AbstractInstruction.UnboundMonitorInstruction(op);
    }
}
