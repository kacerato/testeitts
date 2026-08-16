package com.android.dex.util;

import java.io.PrintStream;
import java.io.PrintWriter;

public class ExceptionWithContext extends RuntimeException {
    private StringBuffer context;

    public ExceptionWithContext(String str) {
        this(str, null);
    }

    public static ExceptionWithContext withContext(Throwable th2, String str) {
        ExceptionWithContext exceptionWithContext = th2 instanceof ExceptionWithContext ? (ExceptionWithContext) th2 : new ExceptionWithContext(th2);
        exceptionWithContext.addContext(str);
        return exceptionWithContext;
    }

    public void addContext(String str) {
        if (str == null) {
            throw new NullPointerException("str == null");
        }
        this.context.append(str);
        if (str.endsWith("\n")) {
            return;
        }
        this.context.append('\n');
    }

    public String getContext() {
        return this.context.toString();
    }

    public void printContext(PrintStream printStream) {
        printStream.println(getMessage());
        printStream.print(this.context);
    }

    @Override
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println(this.context);
    }

    public ExceptionWithContext(Throwable th2) {
        this(null, th2);
    }

    public ExceptionWithContext(String str, Throwable th2) {
        super(str == null ? th2 != null ? th2.getMessage() : null : str, th2);
        if (th2 instanceof ExceptionWithContext) {
            String stringBuffer = ((ExceptionWithContext) th2).context.toString();
            StringBuffer stringBuffer2 = new StringBuffer(stringBuffer.length() + 200);
            this.context = stringBuffer2;
            stringBuffer2.append(stringBuffer);
            return;
        }
        this.context = new StringBuffer(200);
    }

    public void printContext(PrintWriter printWriter) {
        printWriter.println(getMessage());
        printWriter.print(this.context);
    }

    @Override
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.context);
    }
}
