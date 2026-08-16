package org.google.googlejavaformat;

import w2.z;

public final class OpenOp implements Op {
    private final Indent plusIndent;

    private OpenOp(Indent plusIndent) {
        this.plusIndent = plusIndent;
    }

    public static Op make(Indent plusIndent) {
        return new OpenOp(plusIndent);
    }

    @Override
    public void add(DocBuilder builder) {
        builder.open(this.plusIndent);
    }

    public String toString() {
        return z.c(this).f("plusIndent", this.plusIndent).toString();
    }
}
