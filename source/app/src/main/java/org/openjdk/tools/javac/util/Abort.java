package org.openjdk.tools.javac.util;

public class Abort extends Error {
    private static final long serialVersionUID = 0;

    public Abort(Throwable th2) {
        super(th2);
    }

    public Abort() {
    }
}
