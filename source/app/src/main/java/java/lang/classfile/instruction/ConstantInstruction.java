package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import java.lang.classfile.constantpool.LoadableConstantEntry;
import java.lang.constant.ConstantDesc;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.BytecodeHelpers;
import jdk.internal.classfile.impl.Util;

public interface ConstantInstruction extends Instruction {
    ConstantDesc constantValue();

    TypeKind typeKind();

    public interface IntrinsicConstantInstruction extends ConstantInstruction {
        @Override
        default TypeKind typeKind() {
            return BytecodeHelpers.intrinsicConstantType(opcode());
        }
    }

    public interface ArgumentConstantInstruction extends ConstantInstruction {
        @Override
        Integer constantValue();

        @Override
        default TypeKind typeKind() {
            return TypeKind.INT;
        }
    }

    public interface LoadConstantInstruction extends ConstantInstruction {
        LoadableConstantEntry constantEntry();

        @Override
        default TypeKind typeKind() {
            return constantEntry().typeKind();
        }
    }

    static IntrinsicConstantInstruction ofIntrinsic(Opcode op) {
        Util.checkKind(op, Opcode.Kind.CONSTANT);
        if (op.sizeIfFixed() != 1) {
            throw new IllegalArgumentException(String.format("Wrong opcode specified; found %s, expected xCONST_val", op));
        }
        return new AbstractInstruction.UnboundIntrinsicConstantInstruction(op);
    }

    static ArgumentConstantInstruction ofArgument(Opcode op, int value) {
        if (op == Opcode.BIPUSH) {
            BytecodeHelpers.validateBipush(value);
        } else if (op == Opcode.SIPUSH) {
            BytecodeHelpers.validateSipush(value);
        } else {
            throw new IllegalArgumentException(String.format("Wrong opcode specified; found %s, expected BIPUSH or SIPUSH", op));
        }
        return new AbstractInstruction.UnboundArgumentConstantInstruction(op, value);
    }

    static LoadConstantInstruction ofLoad(Opcode op, LoadableConstantEntry constant) {
        Util.checkKind(op, Opcode.Kind.CONSTANT);
        if (op != Opcode.LDC && op != Opcode.LDC_W && op != Opcode.LDC2_W) {
            throw new IllegalArgumentException(String.format("Wrong opcode specified; found %s, expected LDC, LDC_W or LDC2_W", op));
        }
        return new AbstractInstruction.UnboundLoadConstantInstruction(op, constant);
    }
}
