package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;

final class StaticConflictingSimpleNameFinder implements ConflictingSimpleNameFinder {
    private final IJavaProject project;

    public StaticConflictingSimpleNameFinder(IJavaProject iJavaProject) {
        this.project = iJavaProject;
    }

    private Set<String> extractStaticMemberNames(IType iType) throws JavaModelException {
        HashSet hashSet = new HashSet();
        for (IField iField : iType.getFields()) {
            if (isStaticImportableMember(iField.getFlags())) {
                hashSet.add(iField.getElementName());
            }
        }
        for (IMethod iMethod : iType.getMethods()) {
            if (isStaticImportableMember(iMethod.getFlags())) {
                hashSet.add(iMethod.getElementName());
            }
        }
        return hashSet;
    }

    private static boolean isStaticImportableMember(int i10) {
        return (Flags.isStatic(i10) || Flags.isEnum(i10)) && !Flags.isPrivate(i10);
    }

    @Override
    public Set<String> findConflictingSimpleNames(Set<String> set, Set<String> set2, IProgressMonitor iProgressMonitor) throws JavaModelException {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<String> it = set2.iterator();
        while (it.hasNext()) {
            IType findType = this.project.findType(it.next(), iProgressMonitor);
            if (findType != null && findType.exists()) {
                for (String str : extractStaticMemberNames(findType)) {
                    if (set.contains(str)) {
                        if (hashSet2.contains(str)) {
                            hashSet.add(str);
                        } else {
                            hashSet2.add(str);
                        }
                    }
                }
            }
        }
        return hashSet;
    }
}
