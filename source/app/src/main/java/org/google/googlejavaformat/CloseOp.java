package org.google.googlejavaformat;

import w2.z;

public enum CloseOp implements Op {
    CLOSE;

    public static Op make() {
        return CLOSE;
    }

    @Override
    public void add(DocBuilder builder) {
        builder.close();
    }

    @Override
    public String toString() {
        return z.c(this).toString();
    }
}
