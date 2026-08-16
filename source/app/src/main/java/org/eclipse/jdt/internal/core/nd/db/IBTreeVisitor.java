package org.eclipse.jdt.internal.core.nd.db;

public interface IBTreeVisitor {
    int compare(long j10) throws IndexException;

    boolean visit(long j10) throws IndexException;
}
