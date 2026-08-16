package java.lang.foreign;

import java.lang.invoke.MethodType;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.foreign.FunctionDescriptorImpl;

public interface FunctionDescriptor {
    Optional<MemoryLayout> returnLayout();

    List<MemoryLayout> argumentLayouts();

    FunctionDescriptor appendArgumentLayouts(MemoryLayout... memoryLayoutArr);

    FunctionDescriptor insertArgumentLayouts(int i10, MemoryLayout... memoryLayoutArr);

    FunctionDescriptor changeReturnLayout(MemoryLayout memoryLayout);

    FunctionDescriptor dropReturnLayout();

    MethodType toMethodType();

    static FunctionDescriptor of(MemoryLayout resLayout, MemoryLayout... argLayouts) {
        Objects.requireNonNull(resLayout);
        return FunctionDescriptorImpl.of(resLayout, List.of(argLayouts));
    }

    static FunctionDescriptor ofVoid(MemoryLayout... argLayouts) {
        return FunctionDescriptorImpl.ofVoid(List.of(argLayouts));
    }
}
