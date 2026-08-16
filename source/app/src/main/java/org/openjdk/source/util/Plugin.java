package org.openjdk.source.util;

public interface Plugin {
    String getName();

    void init(JavacTask javacTask, String... strArr);
}
