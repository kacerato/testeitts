package java.lang.classfile.instruction;

import java.lang.classfile.Instruction;
import java.lang.classfile.constantpool.InvokeDynamicEntry;
import java.lang.classfile.constantpool.LoadableConstantEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ConstantDesc;
import java.lang.constant.DirectMethodHandleDesc;
import java.lang.constant.MethodTypeDesc;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import jdk.internal.classfile.impl.AbstractInstruction;
import jdk.internal.classfile.impl.Util;

public interface InvokeDynamicInstruction extends Instruction {
    InvokeDynamicEntry invokedynamic();

    default Utf8Entry name() {
        return invokedynamic().name();
    }

    default Utf8Entry type() {
        return invokedynamic().type();
    }

    default MethodTypeDesc typeSymbol() {
        return invokedynamic().typeSymbol();
    }

    default DirectMethodHandleDesc bootstrapMethod() {
        return invokedynamic().bootstrap().bootstrapMethod().asSymbol();
    }

    default List<ConstantDesc> bootstrapArgs() {
        return Util.mappedList(invokedynamic().bootstrap().arguments(), new Function<LoadableConstantEntry, ConstantDesc>(this) {
            {
                Objects.requireNonNull(this);
            }

            @Override
            public ConstantDesc apply(LoadableConstantEntry loadableConstantEntry) {
                return loadableConstantEntry.constantValue();
            }
        });
    }

    static InvokeDynamicInstruction of(InvokeDynamicEntry invokedynamic) {
        return new AbstractInstruction.UnboundInvokeDynamicInstruction(invokedynamic);
    }
}
