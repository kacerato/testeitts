package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class PackageReferencePattern extends IntersectingPattern {
    protected static char[][] CATEGORIES = {IIndexConstants.REF};
    protected int currentSegment;
    protected char[] pkgName;
    protected char[][] segments;

    public PackageReferencePattern(char[] cArr, int i10) {
        this(i10);
        if (cArr != null && cArr.length != 0) {
            if (!this.isCaseSensitive && !this.isCamelCase) {
                cArr = CharOperation.toLowerCase(cArr);
            }
            this.pkgName = cArr;
            this.segments = CharOperation.splitOn('.', cArr);
            this.mustResolve = true;
            return;
        }
        this.pkgName = null;
        this.segments = new char[][]{CharOperation.NO_CHAR};
        this.mustResolve = false;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        this.pkgName = cArr;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new PackageReferencePattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    @Override
    public char[] getIndexKey() {
        int i10 = this.currentSegment;
        if (i10 >= 0) {
            return this.segments[i10];
        }
        return null;
    }

    @Override
    public boolean hasNextQuery() {
        int i10 = this.currentSegment - 1;
        this.currentSegment = i10;
        return i10 >= (this.segments.length >= 4 ? 2 : 0);
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        return true;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        stringBuffer.append("PackageReferencePattern: <");
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
    public void resetQuery() {
        this.currentSegment = this.segments.length - 1;
    }

    public PackageReferencePattern(int i10) {
        super(1, i10);
    }
}
