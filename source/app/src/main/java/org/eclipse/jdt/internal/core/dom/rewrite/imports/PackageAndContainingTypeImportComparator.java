package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Comparator;

final class PackageAndContainingTypeImportComparator implements Comparator<ImportName> {
    @Override
    public int compare(ImportName importName, ImportName importName2) {
        return importName.containerName.compareTo(importName2.containerName);
    }
}
