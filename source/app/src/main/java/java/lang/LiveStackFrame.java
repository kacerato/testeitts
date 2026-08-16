package java.lang;

import java.lang.StackWalker;
import java.util.EnumSet;
import java.util.Set;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ContinuationScope;

interface LiveStackFrame extends StackWalker.StackFrame {
    Object[] getMonitors();

    Object[] getLocals();

    Object[] getStack();

    public static abstract class PrimitiveSlot {
        public abstract int size();

        public int intValue() {
            throw new UnsupportedOperationException("this " + size() + "-byte primitive");
        }

        public long longValue() {
            throw new UnsupportedOperationException("this " + size() + "-byte primitive");
        }
    }

    static StackWalker getStackWalker() {
        return getStackWalker(EnumSet.noneOf(StackWalker.Option.class));
    }

    static StackWalker getStackWalker(Set<StackWalker.Option> options) {
        return getStackWalker(options, null);
    }

    static StackWalker getStackWalker(Set<StackWalker.Option> options, ContinuationScope contScope) {
        return StackWalker.newInstance(options, StackWalker.ExtendedOption.LOCALS_AND_OPERANDS, contScope);
    }

    static StackWalker getStackWalker(Continuation continuation) {
        return getStackWalker(EnumSet.noneOf(StackWalker.Option.class), continuation.getScope(), continuation);
    }

    static StackWalker getStackWalker(Set<StackWalker.Option> options, ContinuationScope contScope, Continuation continuation) {
        return StackWalker.newInstance(options, StackWalker.ExtendedOption.LOCALS_AND_OPERANDS, contScope, continuation);
    }
}
