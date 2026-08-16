package org.eclipse.jdt.core;

import org.eclipse.jdt.core.compiler.IProblem;

public interface IProblemRequestor {
    void acceptProblem(IProblem iProblem);

    void beginReporting();

    void endReporting();

    boolean isActive();
}
