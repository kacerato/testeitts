package java.lang;

import java.lang.invoke.MethodType;
import java.util.EnumSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ContinuationScope;

public final class StackWalker {
    static final EnumSet<Option> DEFAULT_EMPTY_OPTION = EnumSet.noneOf(Option.class);
    private static final StackWalker DEFAULT_WALKER = new StackWalker(DEFAULT_EMPTY_OPTION);
    private final Continuation continuation;
    private final ContinuationScope contScope;
    private final Set<Option> options;
    private final ExtendedOption extendedOption;
    private final int estimateDepth;
    final boolean retainClassRef;

    public enum ExtendedOption {
        LOCALS_AND_OPERANDS
    }

    public enum Option {
        RETAIN_CLASS_REFERENCE,
        DROP_METHOD_INFO,
        SHOW_REFLECT_FRAMES,
        SHOW_HIDDEN_FRAMES
    }

    public interface StackFrame {
        String getClassName();

        String getMethodName();

        Class<?> getDeclaringClass();

        int getByteCodeIndex();

        String getFileName();

        int getLineNumber();

        boolean isNativeMethod();

        StackTraceElement toStackTraceElement();

        default MethodType getMethodType() {
            throw new UnsupportedOperationException();
        }

        default String getDescriptor() {
            throw new UnsupportedOperationException();
        }
    }

    public static StackWalker getInstance() {
        return DEFAULT_WALKER;
    }

    public static StackWalker getInstance(Option option) {
        return getInstance(EnumSet.of((Option) Objects.requireNonNull(option)));
    }

    public static StackWalker getInstance(Set<Option> options) {
        if (options.isEmpty()) {
            return DEFAULT_WALKER;
        }
        EnumSet<Option> optionSet = toEnumSet(options);
        return new StackWalker(optionSet);
    }

    public static StackWalker getInstance(Set<Option> options, int estimateDepth) {
        if (estimateDepth <= 0) {
            throw new IllegalArgumentException("estimateDepth must be > 0");
        }
        EnumSet<Option> optionSet = toEnumSet(options);
        return new StackWalker(optionSet, estimateDepth);
    }

    private StackWalker(EnumSet<Option> options) {
        this(options, 0, null, null, null);
    }

    private StackWalker(EnumSet<Option> options, int estimateDepth) {
        this(options, estimateDepth, null, null, null);
    }

    private StackWalker(EnumSet<Option> options, int estimateDepth, ExtendedOption extendedOption, ContinuationScope contScope, Continuation continuation) {
        this.options = options;
        this.estimateDepth = estimateDepth;
        this.extendedOption = extendedOption;
        this.retainClassRef = hasOption(Option.RETAIN_CLASS_REFERENCE);
        this.contScope = contScope;
        this.continuation = continuation;
    }

    private static EnumSet<Option> toEnumSet(Set<Option> options) {
        Objects.requireNonNull(options);
        if (options.isEmpty()) {
            return DEFAULT_EMPTY_OPTION;
        }
        return EnumSet.copyOf(options);
    }

    @CallerSensitive
    public <T> T walk(Function<? super Stream<StackFrame>, ? extends T> function) {
        Objects.requireNonNull(function);
        return StackStreamFactory.makeStackTraverser(this, function).walk();
    }

    @CallerSensitive
    public void forEach(Consumer<? super StackFrame> action) {
        Objects.requireNonNull(action);
        StackStreamFactory.makeStackTraverser(this, s10 -> {
            s10.forEach(action);
            return null;
        }).walk();
    }

    @CallerSensitive
    public Class<?> getCallerClass() {
        if (!this.retainClassRef) {
            throw new UnsupportedOperationException("This stack walker does not have RETAIN_CLASS_REFERENCE access");
        }
        if (this.continuation != null) {
            throw new UnsupportedOperationException("This stack walker walks a continuation");
        }
        return StackStreamFactory.makeCallerFinder(this).findCaller();
    }

    static StackWalker newInstance(Set<Option> options, ExtendedOption extendedOption) {
        return newInstance(options, extendedOption, null);
    }

    static StackWalker newInstance(Set<Option> options, ContinuationScope contScope) {
        return newInstance(options, null, contScope);
    }

    public static StackWalker newInstance(Set<Option> options, ExtendedOption extendedOption, ContinuationScope contScope) {
        return newInstance(options, extendedOption, contScope, null);
    }

    public static StackWalker newInstance(Set<Option> options, ExtendedOption extendedOption, ContinuationScope contScope, Continuation continuation) {
        EnumSet<Option> optionSet = toEnumSet(options);
        return new StackWalker(optionSet, 0, extendedOption, contScope, continuation);
    }

    public int estimateDepth() {
        return this.estimateDepth;
    }

    public boolean hasOption(Option option) {
        return this.options.contains(option);
    }

    public boolean hasLocalsOperandsOption() {
        return this.extendedOption == ExtendedOption.LOCALS_AND_OPERANDS;
    }

    public ContinuationScope getContScope() {
        return this.contScope;
    }

    public Continuation getContinuation() {
        return this.continuation;
    }
}
