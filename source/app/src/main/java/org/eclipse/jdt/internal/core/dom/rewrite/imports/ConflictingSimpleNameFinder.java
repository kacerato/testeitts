package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;

interface ConflictingSimpleNameFinder {
    Set<String> findConflictingSimpleNames(Set<String> set, Set<String> set2, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
