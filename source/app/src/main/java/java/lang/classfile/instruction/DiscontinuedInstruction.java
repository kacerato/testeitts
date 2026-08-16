package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Label;
import java.lang.classfile.Opcode;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;
import jdk.internal.classfile.impl.Util;

public interface DiscontinuedInstruction extends Instruction {

    public interface JsrInstruction extends DiscontinuedInstruction {
        Label target();

        static JsrInstruction of(Opcode op, Label target) {
            Util.checkKind(op, Opcode.Kind.DISCONTINUED_JSR);
            return new AbstractInstruction.UnboundJsrInstruction(op, target);
        }

        static JsrInstruction of(Label target) {
            return of(Opcode.JSR, target);
        }
    }

    public interface RetInstruction extends DiscontinuedInstruction {
        int slot();

        static RetInstruction of(Opcode op, int slot) {
            BytecodeHelpers.validateRet(op, slot);
            return new AbstractInstruction.UnboundRetInstruction(op, slot);
        }

        static RetInstruction of(int slot) {
            return of(slot < 256 ? Opcode.RET : Opcode.RET_W, slot);
        }
    }
}
