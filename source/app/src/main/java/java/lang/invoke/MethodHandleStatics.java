package java.lang.invoke;

import java.lang.reflect.ClassFileFormatVersion;
import java.util.Properties;
import jdk.internal.misc.CDS;
import jdk.internal.misc.Unsafe;
import jdk.internal.util.ClassFileDumper;

public class MethodHandleStatics {
    static final Unsafe UNSAFE = Unsafe.getUnsafe();
    static final int CLASSFILE_VERSION = ClassFileFormatVersion.latest().major();
    static final boolean DEBUG_METHOD_HANDLE_NAMES;
    static final boolean TRACE_INTERPRETER;
    static final boolean TRACE_METHOD_LINKAGE;
    static final boolean TRACE_RESOLVE;
    static final int COMPILE_THRESHOLD;
    static final boolean LOG_LF_COMPILATION_FAILURE;
    static final int DONT_INLINE_THRESHOLD;
    static final int PROFILE_LEVEL;
    static final boolean PROFILE_GWT;
    static final int CUSTOMIZE_THRESHOLD;
    static final boolean VAR_HANDLE_GUARDS;
    static final int MAX_ARITY;
    static final boolean VAR_HANDLE_IDENTITY_ADAPT;
    static final boolean VAR_HANDLE_SEGMENT_FORCE_EXACT;
    static final ClassFileDumper DUMP_CLASS_FILES;

    private MethodHandleStatics() {
    }

    static {
        Properties props = System.getProperties();
        DEBUG_METHOD_HANDLE_NAMES = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.DEBUG_NAMES"));
        TRACE_INTERPRETER = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.TRACE_INTERPRETER"));
        TRACE_METHOD_LINKAGE = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.TRACE_METHOD_LINKAGE"));
        TRACE_RESOLVE = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.TRACE_RESOLVE"));
        COMPILE_THRESHOLD = Integer.parseInt(props.getProperty("java.lang.invoke.MethodHandle.COMPILE_THRESHOLD", "0"));
        LOG_LF_COMPILATION_FAILURE = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.LOG_LF_COMPILATION_FAILURE", "false"));
        DONT_INLINE_THRESHOLD = Integer.parseInt(props.getProperty("java.lang.invoke.MethodHandle.DONT_INLINE_THRESHOLD", "30"));
        PROFILE_LEVEL = Integer.parseInt(props.getProperty("java.lang.invoke.MethodHandle.PROFILE_LEVEL", "0"));
        PROFILE_GWT = Boolean.parseBoolean(props.getProperty("java.lang.invoke.MethodHandle.PROFILE_GWT", "true"));
        CUSTOMIZE_THRESHOLD = Integer.parseInt(props.getProperty("java.lang.invoke.MethodHandle.CUSTOMIZE_THRESHOLD", "127"));
        VAR_HANDLE_GUARDS = Boolean.parseBoolean(props.getProperty("java.lang.invoke.VarHandle.VAR_HANDLE_GUARDS", "true"));
        VAR_HANDLE_IDENTITY_ADAPT = Boolean.parseBoolean(props.getProperty("java.lang.invoke.VarHandle.VAR_HANDLE_IDENTITY_ADAPT", "false"));
        VAR_HANDLE_SEGMENT_FORCE_EXACT = Boolean.parseBoolean(props.getProperty("java.lang.invoke.VarHandle.VAR_HANDLE_SEGMENT_FORCE_EXACT", "false"));
        MAX_ARITY = Integer.parseInt(props.getProperty("java.lang.invoke.MethodHandleImpl.MAX_ARITY", "255"));
        DUMP_CLASS_FILES = ClassFileDumper.getInstance("jdk.invoke.MethodHandle.dumpMethodHandleInternals", "DUMP_METHOD_HANDLE_INTERNALS");
        if (CUSTOMIZE_THRESHOLD < -1 || CUSTOMIZE_THRESHOLD > 127) {
            throw newInternalError("CUSTOMIZE_THRESHOLD should be in [-1...127] range");
        }
    }

    public static boolean debugEnabled() {
        return DEBUG_METHOD_HANDLE_NAMES | DUMP_CLASS_FILES.isEnabled() | TRACE_INTERPRETER | TRACE_METHOD_LINKAGE | LOG_LF_COMPILATION_FAILURE;
    }

    public static ClassFileDumper dumper() {
        return DUMP_CLASS_FILES;
    }

    public static void traceLambdaForm(String name, MethodType type, Class<?> holder, MemberName resolvedMember) {
        if (TRACE_RESOLVE) {
            System.out.println("[LF_RESOLVE] " + holder.getName() + " " + name + " " + LambdaForm.shortenSignature(LambdaForm.basicTypeSignature(type)) + (resolvedMember != null ? " (success)" : " (fail)"));
        }
        if (CDS.isLoggingLambdaFormInvokers()) {
            CDS.logLambdaFormInvoker("[LF_RESOLVE]", holder.getName(), name, LambdaForm.shortenSignature(LambdaForm.basicTypeSignature(type)));
        }
    }

    public static void traceSpeciesType(String cn2, Class<?> salvage) {
        if (TRACE_RESOLVE) {
            System.out.println("[SPECIES_RESOLVE] " + cn2 + (salvage != null ? " (salvaged)" : " (generated)"));
        }
        if (CDS.isLoggingLambdaFormInvokers()) {
            CDS.logSpeciesType("[SPECIES_RESOLVE]", cn2);
        }
    }

    public static InternalError newInternalError(String message) {
        return new InternalError(message);
    }

    public static InternalError newInternalError(String message, Exception cause) {
        return new InternalError(message, cause);
    }

    public static InternalError newInternalError(Exception cause) {
        return new InternalError(cause);
    }

    static RuntimeException newIllegalStateException(String message) {
        return new IllegalStateException(message);
    }

    static RuntimeException newIllegalStateException(String message, Object obj) {
        return new IllegalStateException(message(message, obj));
    }

    public static RuntimeException newIllegalArgumentException(String message) {
        return new IllegalArgumentException(message);
    }

    public static RuntimeException newIllegalArgumentException(String message, Object obj) {
        return new IllegalArgumentException(message(message, obj));
    }

    public static RuntimeException newIllegalArgumentException(String message, Object obj, Object obj2) {
        return new IllegalArgumentException(message(message, obj, obj2));
    }

    public static Error uncaughtException(Throwable ex) {
        if (ex instanceof Error) {
            Error error = (Error) ex;
            throw error;
        }
        if (!(ex instanceof RuntimeException)) {
            throw new InternalError("uncaught exception", ex);
        }
        RuntimeException re2 = (RuntimeException) ex;
        throw re2;
    }

    private static String message(String message, Object obj) {
        if (obj != null) {
            message = message + ": " + obj;
        }
        return message;
    }

    private static String message(String message, Object obj, Object obj2) {
        if (obj != null || obj2 != null) {
            message = message + ": " + obj + ", " + obj2;
        }
        return message;
    }
}
