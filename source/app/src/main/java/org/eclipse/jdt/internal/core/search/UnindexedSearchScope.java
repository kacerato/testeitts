package org.eclipse.jdt.internal.core.search;

import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;

public class UnindexedSearchScope extends AbstractSearchScope {
    private IJavaSearchScope searchScope;

    private UnindexedSearchScope(IJavaSearchScope iJavaSearchScope) {
        this.searchScope = iJavaSearchScope;
    }

    public static IJavaSearchScope filterEntriesCoveredByTheNewIndex(IJavaSearchScope iJavaSearchScope) {
        return new UnindexedSearchScope(iJavaSearchScope);
    }

    private boolean isJarFile(String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith(".jar") || str.endsWith(".JAR");
    }

    @Override
    public boolean encloses(String str) {
        if (str.indexOf("|") == -1 && !isJarFile(str)) {
            return this.searchScope.encloses(str);
        }
        return false;
    }

    @Override
    public IPath[] enclosingProjectsAndJars() {
        IPath[] enclosingProjectsAndJars = this.searchScope.enclosingProjectsAndJars();
        ArrayList arrayList = new ArrayList();
        for (IPath iPath : enclosingProjectsAndJars) {
            if (!isJarFile(iPath.lastSegment())) {
                arrayList.add(iPath);
            }
        }
        return (IPath[]) arrayList.toArray(new IPath[arrayList.size()]);
    }

    @Override
    public void processDelta(IJavaElementDelta iJavaElementDelta, int i10) {
        IJavaSearchScope iJavaSearchScope = this.searchScope;
        if (iJavaSearchScope instanceof AbstractSearchScope) {
            ((AbstractSearchScope) iJavaSearchScope).processDelta(iJavaElementDelta, i10);
        }
    }

    @Override
    public boolean encloses(IJavaElement iJavaElement) {
        try {
            IResource underlyingResource = iJavaElement.getUnderlyingResource();
            if (underlyingResource != null) {
                if (isJarFile(underlyingResource.getName())) {
                    return false;
                }
            }
        } catch (JavaModelException e10) {
            JavaCore.getPlugin().getLog().log(e10.getStatus());
        }
        return this.searchScope.encloses(iJavaElement);
    }
}
