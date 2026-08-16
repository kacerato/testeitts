package org.openjdk.tools.javac;

import java.io.PrintWriter;

public class Main {
    public static int compile(String[] strArr) {
        return new org.openjdk.tools.javac.main.Main("javac").compile(strArr).exitCode;
    }

    public static void main(String[] strArr) throws Exception {
        System.exit(compile(strArr));
    }

    public static int compile(String[] strArr, PrintWriter printWriter) {
        return new org.openjdk.tools.javac.main.Main("javac", printWriter).compile(strArr).exitCode;
    }
}
