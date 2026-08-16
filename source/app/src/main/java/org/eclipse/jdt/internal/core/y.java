package org.eclipse.jdt.internal.core;

import java.util.Map;
import java.util.function.Function;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IPackageFragmentRoot;

public final class y implements Function {

    public final Map f102570b;

    @Override
    public final Object apply(Object obj) {
        return (IClasspathEntry) this.f102570b.get((IPackageFragmentRoot) obj);
    }
}
