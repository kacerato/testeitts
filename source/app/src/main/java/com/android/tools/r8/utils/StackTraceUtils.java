package com.android.tools.r8.utils;

import java.io.IOException;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import org.openjdk.tools.doclint.DocLint;

public class StackTraceUtils {

    private static final PrintStream f58558a;

    private static final int f58559b;

    private static int f58560c;

    static {
        String property = System.getProperty("com.android.tools.r8.internalPathToStacktraces");
        if (property == null) {
            throw new RuntimeException("pathToWriteStacktrace is null");
        }
        try {
            f58558a = new PrintStream(property, StandardCharsets.UTF_8.name());
            String property2 = System.getProperty("com.android.tools.r8.internalStackTraceSamplingInterval");
            f58559b = property2 == null ? 1000 : Integer.parseInt(property2);
            f58560c = 0;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void printCurrentStack(long j10) {
        int i10 = f58560c;
        f58560c = i10 + 1;
        if (i10 < f58559b) {
            RuntimeException runtimeException = new RuntimeException("------(" + j10 + DocLint.SEPARATOR + f58560c + ")------");
            PrintStream printStream = f58558a;
            runtimeException.printStackTrace(printStream);
            printStream.println("@@@@");
        }
    }
}
