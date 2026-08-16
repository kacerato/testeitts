package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.dom.IBinding;

public class IndexFilter {
    public static final IndexFilter ALL = new IndexFilter();

    public static IndexFilter getFilter() {
        return new IndexFilter();
    }

    public boolean acceptBinding(IBinding iBinding) throws CoreException {
        return true;
    }
}
