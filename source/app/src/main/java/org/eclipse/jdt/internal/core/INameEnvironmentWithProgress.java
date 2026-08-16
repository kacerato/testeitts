package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.compiler.env.INameEnvironmentExtension;

public interface INameEnvironmentWithProgress extends INameEnvironmentExtension {
    void setMonitor(IProgressMonitor iProgressMonitor);
}
