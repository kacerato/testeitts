package java.lang;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;
import jdk.internal.event.ThrowableTracer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Throwable.class
 */
public class Throwable implements Serializable {
    private static final long serialVersionUID = -3042686055658047285L;
    static boolean jfrTracing;
    private transient Object backtrace;
    private String detailMessage;
    private static final StackTraceElement[] UNASSIGNED_STACK;
    private Throwable cause;
    private StackTraceElement[] stackTrace;
    private transient int depth;
    private static final List<Throwable> SUPPRESSED_SENTINEL;
    private List<Throwable> suppressedExceptions;
    private static final String NULL_CAUSE_MESSAGE = "Cannot suppress a null exception.";
    private static final String SELF_SUPPRESSION_MESSAGE = "Self-suppression not permitted";
    private static final String CAUSE_CAPTION = "Caused by: ";
    private static final String SUPPRESSED_CAPTION = "Suppressed: ";
    private static final Throwable[] EMPTY_THROWABLE_ARRAY;
    private static volatile Supplier<String> $$jb$additionalInfoSupplier;
    static final boolean $assertionsDisabled;

    private native Throwable fillInStackTrace(int i10);

    static {
        $assertionsDisabled = !Throwable.class.desiredAssertionStatus();
        UNASSIGNED_STACK = new StackTraceElement[0];
        SUPPRESSED_SENTINEL = Collections.emptyList();
        EMPTY_THROWABLE_ARRAY = new Throwable[0];
        $$jb$additionalInfoSupplier = null;
    }

    private static class SentinelHolder {
        public static final StackTraceElement STACK_TRACE_ELEMENT_SENTINEL = new StackTraceElement("", "", null, Integer.MIN_VALUE);
        public static final StackTraceElement[] STACK_TRACE_SENTINEL = {STACK_TRACE_ELEMENT_SENTINEL};

        private SentinelHolder() {
        }
    }

    public Throwable() {
        this.cause = this;
        this.stackTrace = UNASSIGNED_STACK;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        fillInStackTrace();
        if (jfrTracing) {
            ThrowableTracer.traceThrowable(getClass(), (String) null);
        }
    }

    public Throwable(String message) {
        this.cause = this;
        this.stackTrace = UNASSIGNED_STACK;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        fillInStackTrace();
        this.detailMessage = message;
        if (jfrTracing) {
            ThrowableTracer.traceThrowable(getClass(), message);
        }
    }

    public Throwable(String message, Throwable cause) {
        this.cause = this;
        this.stackTrace = UNASSIGNED_STACK;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        fillInStackTrace();
        this.detailMessage = message;
        this.cause = cause;
        if (jfrTracing) {
            ThrowableTracer.traceThrowable(getClass(), message);
        }
    }

    public Throwable(Throwable cause) {
        this.cause = this;
        this.stackTrace = UNASSIGNED_STACK;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        fillInStackTrace();
        this.detailMessage = cause == null ? null : cause.toString();
        this.cause = cause;
        if (jfrTracing) {
            ThrowableTracer.traceThrowable(getClass(), (String) null);
        }
    }

    public Throwable(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        this.cause = this;
        this.stackTrace = UNASSIGNED_STACK;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        if (writableStackTrace) {
            fillInStackTrace();
        } else {
            this.stackTrace = null;
        }
        this.detailMessage = message;
        this.cause = cause;
        if (!enableSuppression) {
            this.suppressedExceptions = null;
        }
        if (jfrTracing) {
            ThrowableTracer.traceThrowable(getClass(), message);
        }
    }

    public String getMessage() {
        return this.detailMessage;
    }

    public String getLocalizedMessage() {
        return getMessage();
    }

    public synchronized Throwable getCause() {
        if (this.cause == this) {
            return null;
        }
        return this.cause;
    }

    public synchronized Throwable initCause(Throwable cause) {
        if (this.cause != this) {
            throw new IllegalStateException("Can't overwrite cause with " + Objects.toString(cause, "a null"), this);
        }
        if (cause == this) {
            throw new IllegalArgumentException("Self-causation not permitted", this);
        }
        this.cause = cause;
        return this;
    }

    public final void setCause(Throwable t10) {
        this.cause = t10;
    }

    public String toString() {
        String s10 = getClass().getName();
        String message = getLocalizedMessage();
        return message != null ? s10 + ": " + message : s10;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void printStackTrace(PrintStream s10) {
        printStackTrace(new WrappedPrintStream(s10));
    }

    private void printStackTrace(PrintStreamOrWriter s10) {
        Set<Throwable> dejaVu = Collections.newSetFromMap(new IdentityHashMap());
        dejaVu.add(this);
        synchronized (s10.lock()) {
            s10.println(this);
            StackTraceElement[] trace = getOurStackTrace();
            for (StackTraceElement traceElement : trace) {
                s10.println("\tat " + ((Object) traceElement));
            }
            for (Throwable se2 : getSuppressed()) {
                se2.printEnclosedStackTrace(s10, trace, SUPPRESSED_CAPTION, "\t", dejaVu);
            }
            Throwable ourCause = getCause();
            if (ourCause != null) {
                ourCause.printEnclosedStackTrace(s10, trace, CAUSE_CAPTION, "", dejaVu);
            }
        }
    }

    private void printEnclosedStackTrace(PrintStreamOrWriter s10, StackTraceElement[] enclosingTrace, String caption, String prefix, Set<Throwable> dejaVu) {
        if (!$assertionsDisabled && !Thread.holdsLock(s10.lock())) {
            throw new AssertionError();
        }
        if (dejaVu.contains(this)) {
            s10.println(prefix + caption + "[CIRCULAR REFERENCE: " + ((Object) this) + "]");
            return;
        }
        dejaVu.add(this);
        StackTraceElement[] trace = getOurStackTrace();
        int m10 = trace.length - 1;
        for (int n10 = enclosingTrace.length - 1; m10 >= 0 && n10 >= 0 && trace[m10].equals(enclosingTrace[n10]); n10--) {
            m10--;
        }
        int framesInCommon = (trace.length - 1) - m10;
        s10.println(prefix + caption + ((Object) this));
        for (int i10 = 0; i10 <= m10; i10++) {
            s10.println(prefix + "\tat " + ((Object) trace[i10]));
        }
        if (framesInCommon != 0) {
            s10.println(prefix + "\t... " + framesInCommon + " more");
        }
        for (Throwable se2 : getSuppressed()) {
            se2.printEnclosedStackTrace(s10, trace, SUPPRESSED_CAPTION, prefix + "\t", dejaVu);
        }
        Throwable ourCause = getCause();
        if (ourCause != null) {
            ourCause.printEnclosedStackTrace(s10, trace, CAUSE_CAPTION, prefix, dejaVu);
        }
    }

    public void printStackTrace(PrintWriter s10) {
        printStackTrace(new WrappedPrintWriter(s10));
    }

    public static abstract class PrintStreamOrWriter {
        abstract Object lock();

        abstract void println(Object obj);

        private PrintStreamOrWriter() {
        }
    }

    public static class WrappedPrintStream extends PrintStreamOrWriter {
        private final PrintStream printStream;

        WrappedPrintStream(PrintStream printStream) {
            this.printStream = printStream;
        }

        @Override
        Object lock() {
            return this.printStream;
        }

        @Override
        void println(Object o10) {
            this.printStream.println(o10);
        }
    }

    private static class WrappedPrintWriter extends PrintStreamOrWriter {
        private final PrintWriter printWriter;

        WrappedPrintWriter(PrintWriter printWriter) {
            this.printWriter = printWriter;
        }

        @Override
        Object lock() {
            return this.printWriter;
        }

        @Override
        void println(Object o10) {
            this.printWriter.println(o10);
        }
    }

    public synchronized Throwable fillInStackTrace() {
        if (this.stackTrace != null || this.backtrace != null) {
            fillInStackTrace(0);
            this.stackTrace = UNASSIGNED_STACK;
        }
        return this;
    }

    public StackTraceElement[] getStackTrace() {
        return (StackTraceElement[]) getOurStackTrace().clone();
    }

    private synchronized StackTraceElement[] getOurStackTrace() {
        if (this.stackTrace == UNASSIGNED_STACK || this.stackTrace == null) {
            if (this.backtrace != null) {
                this.stackTrace = StackTraceElement.of(this.backtrace, this.depth);
            } else {
                return UNASSIGNED_STACK;
            }
        }
        return this.stackTrace;
    }

    public void setStackTrace(StackTraceElement[] stackTrace) {
        StackTraceElement[] defensiveCopy = (StackTraceElement[]) stackTrace.clone();
        for (int i10 = 0; i10 < defensiveCopy.length; i10++) {
            if (defensiveCopy[i10] == null) {
                throw new NullPointerException("stackTrace[" + i10 + "]");
            }
        }
        synchronized (this) {
            if (this.stackTrace == null && this.backtrace == null) {
                return;
            }
            this.stackTrace = defensiveCopy;
        }
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        s10.defaultReadObject();
        List<Throwable> candidateSuppressedExceptions = this.suppressedExceptions;
        this.suppressedExceptions = SUPPRESSED_SENTINEL;
        StackTraceElement[] candidateStackTrace = this.stackTrace;
        this.stackTrace = (StackTraceElement[]) UNASSIGNED_STACK.clone();
        if (candidateSuppressedExceptions != null) {
            int suppressedSize = validateSuppressedExceptionsList(candidateSuppressedExceptions);
            if (suppressedSize > 0) {
                ArrayList<Throwable> suppList = new ArrayList<>(Math.min(100, suppressedSize));
                for (Throwable t10 : candidateSuppressedExceptions) {
                    Objects.requireNonNull(t10, NULL_CAUSE_MESSAGE);
                    if (t10 == this) {
                        throw new IllegalArgumentException(SELF_SUPPRESSION_MESSAGE);
                    }
                    suppList.add(t10);
                }
                this.suppressedExceptions = suppList;
            }
        } else {
            this.suppressedExceptions = null;
        }
        if (candidateStackTrace != null) {
            StackTraceElement[] candidateStackTrace2 = (StackTraceElement[]) candidateStackTrace.clone();
            if (candidateStackTrace2.length >= 1) {
                if (candidateStackTrace2.length == 1 && SentinelHolder.STACK_TRACE_ELEMENT_SENTINEL.equals(candidateStackTrace2[0])) {
                    this.stackTrace = null;
                    return;
                }
                for (StackTraceElement ste : candidateStackTrace2) {
                    Objects.requireNonNull(ste, "null StackTraceElement in serial stream.");
                }
                this.stackTrace = candidateStackTrace2;
            }
        }
    }

    private int validateSuppressedExceptionsList(List<Throwable> deserSuppressedExceptions) throws IOException {
        if (!Object.class.getModule().equals(deserSuppressedExceptions.getClass().getModule())) {
            throw new StreamCorruptedException("List implementation not in base module.");
        }
        int size = deserSuppressedExceptions.size();
        if (size < 0) {
            throw new StreamCorruptedException("Negative list size reported.");
        }
        return size;
    }

    private synchronized void writeObject(ObjectOutputStream s10) throws IOException {
        getOurStackTrace();
        StackTraceElement[] oldStackTrace = this.stackTrace;
        try {
            if (this.stackTrace == null) {
                this.stackTrace = SentinelHolder.STACK_TRACE_SENTINEL;
            }
            s10.defaultWriteObject();
        } finally {
            this.stackTrace = oldStackTrace;
        }
    }

    public final synchronized void addSuppressed(Throwable exception) {
        if (exception == this) {
            throw new IllegalArgumentException(SELF_SUPPRESSION_MESSAGE, exception);
        }
        Objects.requireNonNull(exception, NULL_CAUSE_MESSAGE);
        if (this.suppressedExceptions == null) {
            return;
        }
        if (this.suppressedExceptions == SUPPRESSED_SENTINEL) {
            this.suppressedExceptions = new ArrayList(1);
        }
        this.suppressedExceptions.add(exception);
    }

    public final synchronized Throwable[] getSuppressed() {
        if (this.suppressedExceptions == SUPPRESSED_SENTINEL || this.suppressedExceptions == null) {
            return EMPTY_THROWABLE_ARRAY;
        }
        return (Throwable[]) this.suppressedExceptions.toArray(EMPTY_THROWABLE_ARRAY);
    }

    private static String $$jb$getAdditionalInfoForJstack() {
        Supplier<String> supplier = $$jb$additionalInfoSupplier;
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }
}
