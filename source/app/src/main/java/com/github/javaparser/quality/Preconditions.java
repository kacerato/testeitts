package com.github.javaparser.quality;

public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean expression, Object message) {
        if (!expression) {
            throw new IllegalArgumentException(String.valueOf(message));
        }
    }

    public static void checkNotNull(Object reference, Object message) {
        checkArgument(reference != null, message);
    }

    public static void checkArgument(boolean expression) {
        checkArgument(expression, "Invalid argument provided.");
    }

    public static void checkNotNull(Object reference) {
        checkNotNull(reference, "A null value is not allowed here.");
    }
}
