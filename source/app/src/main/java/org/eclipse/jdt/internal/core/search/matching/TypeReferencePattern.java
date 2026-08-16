package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeReferencePattern extends IntersectingPattern {
    private static final char[][] CATEGORIES;
    private static final char[][] CATEGORIES_ANNOT_REF;
    private char[][] categories;
    protected char[] currentCategory;
    protected int currentSegment;
    protected char[] qualification;
    protected char[][] segments;
    public int segmentsSize;
    protected char[] simpleName;
    char typeSuffix;

    static {
        char[] cArr = IIndexConstants.REF;
        char[] cArr2 = IIndexConstants.ANNOTATION_REF;
        CATEGORIES = new char[][]{cArr, cArr2};
        CATEGORIES_ANNOT_REF = new char[][]{cArr2};
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, int i10) {
        this(i10);
        this.qualification = this.isCaseSensitive ? cArr : CharOperation.toLowerCase(cArr);
        this.simpleName = (this.isCaseSensitive || this.isCamelCase) ? cArr2 : CharOperation.toLowerCase(cArr2);
        if (cArr2 == null) {
            char[] cArr3 = this.qualification;
            this.segments = cArr3 == null ? IIndexConstants.ONE_STAR_CHAR : CharOperation.splitOn('.', cArr3);
        } else {
            this.segments = null;
        }
        char[][] cArr4 = this.segments;
        if (cArr4 == null) {
            char[] cArr5 = this.qualification;
            if (cArr5 == null) {
                this.segmentsSize = 0;
            } else {
                this.segmentsSize = CharOperation.occurencesOf('.', cArr5) + 1;
            }
        } else {
            this.segmentsSize = cArr4.length;
        }
        this.mustResolve = true;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        this.simpleName = cArr;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new TypeReferencePattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return this.categories;
    }

    @Override
    public char[] getIndexKey() {
        char[] cArr = this.simpleName;
        if (cArr != null) {
            return cArr;
        }
        int i10 = this.currentSegment;
        if (i10 >= 0) {
            return this.segments[i10];
        }
        return null;
    }

    @Override
    public boolean hasNextQuery() {
        char[][] cArr = this.segments;
        if (cArr == null) {
            return false;
        }
        int i10 = this.currentSegment - 1;
        this.currentSegment = i10;
        return i10 >= (cArr.length >= 4 ? 2 : 0);
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        return true;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        String name = getClass().getName();
        stringBuffer.append(name.substring(name.lastIndexOf(46) + 1));
        stringBuffer.append(": qualification<");
        char[] cArr = this.qualification;
        if (cArr != null) {
            stringBuffer.append(cArr);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">, type<");
        char[] cArr2 = this.simpleName;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">");
        return super.print(stringBuffer);
    }

    @Override
    public void resetQuery() {
        if (this.segments != null) {
            this.currentSegment = r0.length - 1;
        }
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, String str, int i10) {
        this(cArr, cArr2, str, 0, (char) 0, i10);
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, String str, char c10, int i10) {
        this(cArr, cArr2, str, 0, c10, i10);
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, String str, int i10, char c10, int i11) {
        this(cArr, cArr2, i11);
        this.typeSuffix = c10;
        if (str != null) {
            char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(str);
            this.typeSignatures = splitTypeLevelsSignature;
            setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
            if (hasTypeArguments()) {
                this.segmentsSize = (getTypeArguments().length + CharOperation.occurencesOf('/', this.typeSignatures[0])) - 1;
            }
        }
        int i12 = i10 & (-16);
        this.fineGrain = i12;
        if (i12 == 65536) {
            this.categories = CATEGORIES_ANNOT_REF;
        }
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, IType iType, int i10) {
        this(cArr, cArr2, iType, 0, i10);
    }

    public TypeReferencePattern(char[] cArr, char[] cArr2, IType iType, int i10, int i11) {
        this(cArr, cArr2, i11);
        storeTypeSignaturesAndArguments(iType);
        this.fineGrain = i10 & (-16);
    }

    public TypeReferencePattern(int i10) {
        super(4, i10);
        this.typeSuffix = (char) 0;
        this.categories = CATEGORIES;
    }
}
