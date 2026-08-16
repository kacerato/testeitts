package org.eclipse.jdt.internal.core.builder;

public class AdditionalTypeCollection extends ReferenceCollection {
    char[][] definedTypeNames;

    public AdditionalTypeCollection(char[][] cArr, char[][][] cArr2, char[][] cArr3, char[][] cArr4) {
        super(cArr2, cArr3, cArr4);
        this.definedTypeNames = cArr;
    }
}
