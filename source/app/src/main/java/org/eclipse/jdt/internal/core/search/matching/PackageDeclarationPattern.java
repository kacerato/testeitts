package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;

public class PackageDeclarationPattern extends JavaSearchPattern {
    protected char[] pkgName;

    public PackageDeclarationPattern(char[] cArr, int i10) {
        super(2, i10);
        this.pkgName = cArr;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        stringBuffer.append("PackageDeclarationPattern: <");
        char[] cArr = this.pkgName;
        if (cArr != null) {
            stringBuffer.append(cArr);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">");
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) {
        return null;
    }
}
