package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class SuperTypeReferencePattern extends JavaSearchPattern {
    public static final int ALL_SUPER_TYPES = 0;
    protected static char[][] CATEGORIES = {IIndexConstants.SUPER_REF};
    public static final int ONLY_SUPER_CLASSES = 2;
    public static final int ONLY_SUPER_INTERFACES = 1;
    public char classOrInterface;
    public char[] enclosingTypeName;
    public int modifiers;
    public char[] pkgName;
    public char[] simpleName;
    public char superClassOrInterface;
    public char[] superQualification;
    protected int superRefKind;
    public char[] superSimpleName;
    public char[][] typeParameterSignatures;
    public char typeSuffix;

    public SuperTypeReferencePattern(char[] cArr, char[] cArr2, int i10, int i11) {
        this(i11);
        this.superQualification = this.isCaseSensitive ? cArr : CharOperation.toLowerCase(cArr);
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr2 = CharOperation.toLowerCase(cArr2);
        }
        this.superSimpleName = cArr2;
        this.mustResolve = cArr != null;
        this.superRefKind = i10;
    }

    public static char[] createIndexKey(int i10, char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, char c10, char[] cArr5, char c11) {
        char[] cArr6;
        int i11;
        char[] cArr7 = cArr5 == null ? IIndexConstants.OBJECT : cArr5;
        char[] lastSegment = CharOperation.lastSegment(cArr7, '.');
        if (lastSegment != cArr7) {
            int length = (cArr7.length - lastSegment.length) - 1;
            cArr6 = new char[length];
            System.arraycopy(cArr7, 0, cArr6, 0, length);
        } else {
            cArr6 = null;
        }
        char[] lastSegment2 = CharOperation.lastSegment(lastSegment, '$');
        if (lastSegment2 != lastSegment) {
            int length2 = cArr6 == null ? 0 : cArr6.length + 1;
            int length3 = lastSegment.length - lastSegment2.length;
            char[] cArr8 = new char[length2 + length3];
            if (cArr6 != null) {
                int i12 = length2 - 1;
                System.arraycopy(cArr6, 0, cArr8, 0, i12);
                cArr8[i12] = '.';
            }
            System.arraycopy(lastSegment, 0, cArr8, length2, length3);
            lastSegment = lastSegment2;
            cArr6 = cArr8;
        }
        char[] lastSegment3 = CharOperation.lastSegment(cArr2, '.');
        char[] concatWith = CharOperation.concatWith(cArr3, '$');
        char[] cArr9 = cArr;
        if (cArr6 != null && CharOperation.equals(cArr6, cArr9)) {
            cArr9 = IIndexConstants.ONE_ZERO;
        }
        char[] cArr10 = CharOperation.NO_CHAR;
        if (cArr4 != null) {
            StringBuffer stringBuffer = new StringBuffer();
            int length4 = cArr4.length;
            i11 = 0;
            for (int i13 = 0; i13 < length4; i13++) {
                char[] cArr11 = cArr4[i13];
                stringBuffer.append(cArr11);
                i11 += cArr11.length;
                if (i13 != length4 - 1) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    i11++;
                }
            }
            cArr10 = new char[i11];
            stringBuffer.getChars(0, i11, cArr10, 0);
        } else {
            i11 = 0;
        }
        int length5 = lastSegment == null ? 0 : lastSegment.length;
        int length6 = cArr6 == null ? 0 : cArr6.length;
        int length7 = lastSegment3 == null ? 0 : lastSegment3.length;
        int length8 = concatWith == null ? 0 : concatWith.length;
        int length9 = cArr9 == null ? 0 : cArr9.length;
        char[] cArr12 = new char[length5 + length6 + length7 + length8 + i11 + length9 + 9];
        if (length5 > 0) {
            System.arraycopy(lastSegment, 0, cArr12, 0, length5);
        } else {
            length5 = 0;
        }
        int i14 = length5 + 1;
        cArr12[length5] = '/';
        if (length6 > 0) {
            System.arraycopy(cArr6, 0, cArr12, i14, length6);
            i14 += length6;
        }
        int i15 = i14 + 1;
        cArr12[i14] = '/';
        if (length7 > 0) {
            System.arraycopy(lastSegment3, 0, cArr12, i15, length7);
            i15 += length7;
        }
        int i16 = i15 + 1;
        cArr12[i15] = '/';
        if (length8 > 0) {
            System.arraycopy(concatWith, 0, cArr12, i16, length8);
            i16 += length8;
        }
        int i17 = i16 + 1;
        cArr12[i16] = '/';
        if (i11 > 0) {
            System.arraycopy(cArr10, 0, cArr12, i17, i11);
            i17 += i11;
        }
        int i18 = i17 + 1;
        cArr12[i17] = '/';
        if (length9 > 0) {
            System.arraycopy(cArr9, 0, cArr12, i18, length9);
            i18 += length9;
        }
        cArr12[i18] = '/';
        cArr12[i18 + 1] = c11;
        cArr12[i18 + 2] = c10;
        cArr12[i18 + 3] = (char) i10;
        return cArr12;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        int indexOf = CharOperation.indexOf('/', cArr, 0);
        this.superSimpleName = CharOperation.subarray(cArr, 0, indexOf);
        int i10 = indexOf + 1;
        int indexOf2 = CharOperation.indexOf('/', cArr, i10);
        this.superQualification = indexOf2 == i10 ? null : CharOperation.subarray(cArr, i10, indexOf2);
        int i11 = indexOf2 + 1;
        int indexOf3 = CharOperation.indexOf('/', cArr, i11);
        this.simpleName = CharOperation.subarray(cArr, i11, indexOf3);
        int i12 = indexOf3 + 1;
        if (cArr[i12] == '/') {
            this.enclosingTypeName = null;
        } else {
            int indexOf4 = CharOperation.indexOf('/', cArr, i12);
            if (indexOf4 == indexOf3 + 2 && cArr[i12] == '0') {
                this.enclosingTypeName = IIndexConstants.ONE_ZERO;
            } else {
                this.enclosingTypeName = CharOperation.subarray(cArr, i12, indexOf4);
            }
            i12 = indexOf4;
        }
        int i13 = i12 + 1;
        if (cArr[i13] == '/') {
            this.typeParameterSignatures = null;
        } else {
            int indexOf5 = CharOperation.indexOf('/', cArr, i13);
            this.typeParameterSignatures = CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, cArr, i13, indexOf5);
            i13 = indexOf5;
        }
        int i14 = i13 + 1;
        if (cArr[i14] == '/') {
            this.pkgName = null;
        } else {
            int indexOf6 = CharOperation.indexOf('/', cArr, i14);
            if (indexOf6 == i13 + 2 && cArr[i14] == '0') {
                this.pkgName = this.superQualification;
            } else {
                this.pkgName = CharOperation.subarray(cArr, i14, indexOf6);
            }
            i14 = indexOf6;
        }
        this.superClassOrInterface = cArr[i14 + 1];
        this.classOrInterface = cArr[i14 + 2];
        this.modifiers = cArr[i14 + 3];
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new SuperTypeReferencePattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        char c10;
        SuperTypeReferencePattern superTypeReferencePattern = (SuperTypeReferencePattern) searchPattern;
        if (this.superRefKind == 2 && superTypeReferencePattern.enclosingTypeName != IIndexConstants.ONE_ZERO && ((c10 = superTypeReferencePattern.superClassOrInterface) == 'I' || c10 == 'A')) {
            return false;
        }
        char[] cArr = superTypeReferencePattern.superQualification;
        if (cArr == null || matchesName(this.superQualification, cArr)) {
            return matchesName(this.superSimpleName, superTypeReferencePattern.superSimpleName);
        }
        return false;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        int i10 = this.superRefKind;
        if (i10 == 0) {
            stringBuffer.append("SuperTypeReferencePattern: <");
        } else if (i10 == 1) {
            stringBuffer.append("SuperInterfaceReferencePattern: <");
        } else if (i10 == 2) {
            stringBuffer.append("SuperClassReferencePattern: <");
        }
        char[] cArr = this.superSimpleName;
        if (cArr != null) {
            stringBuffer.append(cArr);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">");
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        char[] cArr = this.superSimpleName;
        int matchRule = getMatchRule();
        if (getMatchMode() == 0) {
            matchRule |= 1;
            char[] cArr2 = this.superSimpleName;
            if (cArr2 != null) {
                cArr = CharOperation.append(cArr2, '/');
            }
        }
        return index.query(getIndexCategories(), cArr, matchRule);
    }

    public SuperTypeReferencePattern(char[] cArr, char[] cArr2, int i10, char c10, int i11) {
        this(cArr, cArr2, i10, i11);
        this.typeSuffix = c10;
        this.mustResolve = (cArr == null && c10 == 0) ? false : true;
    }

    public SuperTypeReferencePattern(int i10) {
        super(16, i10);
    }
}
