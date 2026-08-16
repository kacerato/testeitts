package org.openjdk.source.util;

public interface TaskListener {
    default void finished(TaskEvent taskEvent) {
    }

    default void started(TaskEvent taskEvent) {
    }
}
