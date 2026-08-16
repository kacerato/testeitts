package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.search.IJavaSearchScope;

public abstract class AbstractSearchScope implements IJavaSearchScope {
    @Override
    public boolean includesBinaries() {
        return true;
    }

    @Override
    public boolean includesClasspaths() {
        return true;
    }

    public abstract void processDelta(IJavaElementDelta iJavaElementDelta, int i10);

    @Override
    public void setIncludesBinaries(boolean z10) {
    }

    @Override
    public void setIncludesClasspaths(boolean z10) {
    }
}
