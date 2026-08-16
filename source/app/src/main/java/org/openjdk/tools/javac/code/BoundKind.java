package org.openjdk.tools.javac.code;

public enum BoundKind {
    EXTENDS("? extends "),
    SUPER("? super "),
    UNBOUND("?");

    private final String name;

    BoundKind(String str) {
        this.name = str;
    }

    @Override
    public String toString() {
        return this.name;
    }
}
