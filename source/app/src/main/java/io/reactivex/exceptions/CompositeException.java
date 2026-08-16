package io.reactivex.exceptions;

import Ce.f;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    public static final class CompositeExceptionCausalChain extends RuntimeException {
        static final String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        @Override
        public String getMessage() {
            return MESSAGE;
        }
    }

    public static abstract class a {
        public abstract void a(Object obj);
    }

    public static final class b extends a {

        public final PrintStream f92432a;

        public b(PrintStream printStream) {
            this.f92432a = printStream;
        }

        @Override
        public void a(Object obj) {
            this.f92432a.println(obj);
        }
    }

    public static final class c extends a {

        public final PrintWriter f92433a;

        public c(PrintWriter printWriter) {
            this.f92433a = printWriter;
        }

        @Override
        public void a(Object obj) {
            this.f92433a.println(obj);
        }
    }

    public CompositeException(@f Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void appendStackTrace(StringBuilder sb2, Throwable th2, String str) {
        sb2.append(str);
        sb2.append((Object) th2);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            sb2.append("\t\tat ");
            sb2.append((Object) stackTraceElement);
            sb2.append('\n');
        }
        if (th2.getCause() != null) {
            sb2.append("\tCaused by: ");
            appendStackTrace(sb2, th2.getCause(), "");
        }
    }

    private List<Throwable> getListOfCauses(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th2.getCause();
        if (cause != null && cause != th2) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    @Override
    @f
    public synchronized Throwable getCause() {
        try {
            if (this.cause == null) {
                CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
                HashSet hashSet = new HashSet();
                Iterator<Throwable> it = this.exceptions.iterator();
                Throwable th2 = compositeExceptionCausalChain;
                while (it.hasNext()) {
                    Throwable next = it.next();
                    if (!hashSet.contains(next)) {
                        hashSet.add(next);
                        for (Throwable th3 : getListOfCauses(next)) {
                            if (hashSet.contains(th3)) {
                                next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th3);
                            }
                        }
                        try {
                            th2.initCause(next);
                        } catch (Throwable unused) {
                        }
                        th2 = getRootCause(th2);
                    }
                }
                this.cause = compositeExceptionCausalChain;
            }
        } catch (Throwable th4) {
            throw th4;
        }
        return this.cause;
    }

    @f
    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override
    @f
    public String getMessage() {
        return this.message;
    }

    public Throwable getRootCause(Throwable th2) {
        Throwable cause = th2.getCause();
        if (cause == null || th2 == cause) {
            return th2;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    @Override
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.exceptions.size();
    }

    @Override
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new b(printStream));
    }

    @Override
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new c(printWriter));
    }

    public CompositeException(@f Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th2 : iterable) {
                if (th2 instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th2).getExceptions());
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
            this.exceptions = unmodifiableList;
            this.message = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    private void printStackTrace(a aVar) {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append((Object) this);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb2.append("\tat ");
            sb2.append((Object) stackTraceElement);
            sb2.append('\n');
        }
        int i10 = 1;
        for (Throwable th2 : this.exceptions) {
            sb2.append("  ComposedException ");
            sb2.append(i10);
            sb2.append(" :\n");
            appendStackTrace(sb2, th2, "\t");
            i10++;
        }
        aVar.a(sb2.toString());
    }
}
