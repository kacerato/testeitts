package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Comparator;

final class ImportComparator implements Comparator<ImportName> {
    private final Comparator<ImportName> importGroupComparator;
    private final Comparator<ImportName> qualifiedNameComparator = createQualifiedNameComparator();
    private final Comparator<ImportName> staticContainerComparator;
    private final Comparator<ImportName> typeContainerComparator;

    public ImportComparator(ImportGroupComparator importGroupComparator, Comparator<ImportName> comparator, Comparator<ImportName> comparator2) {
        this.importGroupComparator = importGroupComparator;
        this.typeContainerComparator = comparator;
        this.staticContainerComparator = comparator2;
    }

    private static Comparator<ImportName> createQualifiedNameComparator() {
        return new Comparator<ImportName>() {
            @Override
            public int compare(ImportName importName, ImportName importName2) {
                return importName.qualifiedName.compareTo(importName2.qualifiedName);
            }
        };
    }

    @Override
    public int compare(ImportName importName, ImportName importName2) {
        int compare = this.importGroupComparator.compare(importName, importName2);
        if (compare != 0) {
            return compare;
        }
        int compare2 = (importName.isStatic ? this.staticContainerComparator : this.typeContainerComparator).compare(importName, importName2);
        return compare2 != 0 ? compare2 : this.qualifiedNameComparator.compare(importName, importName2);
    }
}
