package org.openjdk.source.tree;

public interface LineMap {
    long getColumnNumber(long j10);

    long getLineNumber(long j10);

    long getPosition(long j10, long j11);

    long getStartPosition(long j10);
}
