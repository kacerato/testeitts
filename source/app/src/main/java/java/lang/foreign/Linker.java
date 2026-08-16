package java.lang.foreign;

import java.lang.invoke.MethodHandle;
import java.util.Map;
import jdk.internal.foreign.abi.CapturableState;
import jdk.internal.foreign.abi.LinkerOptions;
import jdk.internal.foreign.abi.SharedUtils;
import jdk.internal.javac.Restricted;
import jdk.internal.reflect.CallerSensitive;

public interface Linker {
    @Restricted
    @CallerSensitive
    MethodHandle downcallHandle(MemorySegment memorySegment, FunctionDescriptor functionDescriptor, Option... optionArr);

    @Restricted
    @CallerSensitive
    MethodHandle downcallHandle(FunctionDescriptor functionDescriptor, Option... optionArr);

    @Restricted
    @CallerSensitive
    MemorySegment upcallStub(MethodHandle methodHandle, FunctionDescriptor functionDescriptor, Arena arena, Option... optionArr);

    SymbolLookup defaultLookup();

    Map<String, MemoryLayout> canonicalLayouts();

    static Linker nativeLinker() {
        return SharedUtils.getSystemLinker();
    }

    public interface Option {
        static Option firstVariadicArg(int index) {
            return new LinkerOptions.FirstVariadicArg(index);
        }

        static Option captureCallState(String... capturedState) {
            int mask = 0;
            for (String state : capturedState) {
                mask |= CapturableState.maskFromName(state);
            }
            return new LinkerOptions.CaptureCallState(mask);
        }

        static StructLayout captureStateLayout() {
            return CapturableState.LAYOUT;
        }

        static Option critical(boolean allowHeapAccess) {
            if (allowHeapAccess) {
                return LinkerOptions.Critical.ALLOW_HEAP;
            }
            return LinkerOptions.Critical.DONT_ALLOW_HEAP;
        }
    }
}
