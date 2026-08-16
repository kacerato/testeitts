package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Comparator;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaProject;

final class PackageImportComparator implements Comparator<ImportName> {
    private final JavaProject javaProject;

    public PackageImportComparator(JavaProject javaProject) {
        this.javaProject = javaProject;
    }

    private String determinePackageName(ImportName importName) {
        int lastIndexOf;
        int i10;
        String str = importName.containerName;
        String str2 = str;
        while (this.javaProject.findPackageFragment(str2) == null) {
            try {
                lastIndexOf = str2.lastIndexOf(46);
                i10 = lastIndexOf + 1;
            } catch (JavaModelException unused) {
            }
            if (this.javaProject.findType(str2) == null && Character.isLowerCase(str2.charAt(i10))) {
                return str2;
            }
            if (i10 == 0) {
                return str;
            }
            str2 = str2.substring(0, lastIndexOf);
        }
        return str2;
    }

    @Override
    public int compare(ImportName importName, ImportName importName2) {
        return determinePackageName(importName).compareTo(determinePackageName(importName2));
    }
}
