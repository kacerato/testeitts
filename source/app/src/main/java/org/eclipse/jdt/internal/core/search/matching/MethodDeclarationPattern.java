package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class MethodDeclarationPattern extends MethodPattern {
    public int declaringTypeModifiers;
    public int extraFlags;
    public char[] fusedDeclaringQualifier;
    public int modifiers;
    public char[][] parameterNames;
    public char[][] parameterTypes;
    public char[] signature;

    public MethodDeclarationPattern(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, int i10) {
        super(cArr4, cArr2, cArr3, null, null, null, null, null, 0, i10);
        this.fusedDeclaringQualifier = null;
        this.declaringPackageName = cArr;
    }

    public static char[] createDeclarationIndexKey(char[] cArr, char[] cArr2, char[] cArr3, int i10, char[] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, int i11, char[] cArr8, int i12, int i13) {
        int i14;
        char[] cArr9;
        char[] cArr10;
        char[] charArray = i10 < 10 ? new char[]{IIndexConstants.COUNTS[i10][1]} : String.valueOf(i10).toCharArray();
        char[] cArr11 = null;
        if (i10 > 0) {
            if (cArr4 != null) {
                i14 = i13 | 16;
            } else if (cArr5 == null || cArr5.length != i10) {
                i14 = i13;
            } else {
                cArr10 = CharOperation.concatWith(cArr5, IIndexConstants.PARAMETER_SEPARATOR);
                i14 = i13;
                if (cArr6 != null && cArr6.length == i10) {
                    cArr11 = CharOperation.concatWith(cArr6, IIndexConstants.PARAMETER_SEPARATOR);
                }
                cArr9 = cArr11;
                cArr11 = cArr10;
            }
            cArr10 = null;
            if (cArr6 != null) {
                cArr11 = CharOperation.concatWith(cArr6, IIndexConstants.PARAMETER_SEPARATOR);
            }
            cArr9 = cArr11;
            cArr11 = cArr10;
        } else {
            i14 = i13;
            cArr9 = null;
        }
        char[] typeErasure = cArr7 == null ? CharOperation.NO_CHAR : getTypeErasure(cArr7);
        int encodeExtraFlags = i12 | encodeExtraFlags(i14);
        char[][] cArr12 = new char[10];
        cArr12[0] = cArr3 != null ? cArr3 : CharOperation.NO_CHAR;
        cArr12[1] = charArray;
        cArr12[2] = cArr2 != null ? cArr2 : CharOperation.NO_CHAR;
        cArr12[3] = cArr != null ? cArr : CharOperation.NO_CHAR;
        char[] cArr13 = new char[2];
        cArr13[0] = (char) encodeExtraFlags;
        cArr13[1] = (char) (encodeExtraFlags >> 16);
        cArr12[4] = cArr13;
        cArr12[5] = cArr8 != null ? cArr8 : CharOperation.NO_CHAR;
        int i15 = 8;
        if (i10 == 0) {
            char[] cArr14 = CharOperation.NO_CHAR;
            cArr12[6] = cArr14;
            cArr12[7] = cArr14;
        } else if (i10 > 0) {
            if (cArr4 != null) {
                cArr11 = CharOperation.replaceOnCopy(cArr4, '/', JavaElement.JEM_ESCAPE);
            } else if (cArr11 == null) {
                cArr11 = CharOperation.NO_CHAR;
            }
            cArr12[6] = cArr11;
            if (cArr9 == null) {
                cArr9 = CharOperation.NO_CHAR;
            }
            cArr12[7] = cArr9;
        } else {
            i15 = 6;
        }
        char[] cArr15 = new char[2];
        cArr15[0] = (char) i11;
        cArr15[1] = (char) (i11 >> 16);
        cArr12[i15] = cArr15;
        cArr12[i15 + 1] = typeErasure;
        return CharOperation.concatWithAll(cArr12, '/');
    }

    private static int encodeExtraFlags(int i10) {
        int i11 = (i10 & 16) != 0 ? 134217728 : 0;
        if ((i10 & 4) != 0) {
            i11 |= 268435456;
        }
        if ((i10 & 2) != 0) {
            i11 |= 536870912;
        }
        return (i10 & 1) != 0 ? i11 | 1073741824 : i11;
    }

    private static char[] getTypeErasure(char[] cArr) {
        int indexOf = CharOperation.indexOf('<', cArr);
        if (indexOf == -1) {
            return cArr;
        }
        int length = cArr.length;
        char[] cArr2 = new char[length - 2];
        System.arraycopy(cArr, 0, cArr2, 0, indexOf);
        int i10 = 1;
        for (int i11 = indexOf + 1; i11 < length; i11++) {
            char c10 = cArr[i11];
            if (c10 == '<') {
                i10++;
            } else if (c10 == '>') {
                i10--;
            } else if (i10 == 0) {
                cArr2[indexOf] = c10;
                indexOf++;
            }
        }
        char[] cArr3 = new char[indexOf];
        System.arraycopy(cArr2, 0, cArr3, 0, indexOf);
        return cArr3;
    }

    private void removeInternalFlags() {
        this.extraFlags &= -17;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        int indexOf = CharOperation.indexOf('/', cArr, 0);
        this.selector = CharOperation.subarray(cArr, 0, indexOf);
        int i10 = indexOf + 1;
        int indexOf2 = CharOperation.indexOf('/', cArr, i10);
        int i11 = indexOf2 - 1;
        this.parameterCount = 0;
        int i12 = 1;
        for (int i13 = i11; i13 >= i10; i13--) {
            if (i13 == i11) {
                this.parameterCount = cArr[i13] - '0';
            } else {
                i12 *= 10;
                this.parameterCount += (cArr[i13] - '0') * i12;
            }
        }
        int i14 = indexOf2 + 1;
        int indexOf3 = CharOperation.indexOf('/', cArr, i14);
        this.declaringQualification = CharOperation.subarray(cArr, i14, indexOf3);
        int i15 = indexOf3 + 1;
        int indexOf4 = CharOperation.indexOf('/', cArr, i15);
        this.declaringSimpleName = CharOperation.subarray(cArr, i15, indexOf4);
        int indexOf5 = CharOperation.indexOf('/', cArr, indexOf4 + 1);
        int i16 = indexOf5 - 1;
        int i17 = indexOf5 - 2;
        int i18 = cArr[i17] + (cArr[i16] << 16);
        this.declaringTypeModifiers = ConstructorPattern.decodeModifers(i18);
        this.extraFlags = ConstructorPattern.decodeExtraFlags(i18);
        this.declaringPackageName = null;
        this.modifiers = 0;
        this.signature = null;
        this.parameterTypes = null;
        this.parameterNames = null;
        int i19 = indexOf5 + 1;
        int indexOf6 = CharOperation.indexOf('/', cArr, i19);
        this.declaringPackageName = CharOperation.subarray(cArr, i19, indexOf6);
        int i20 = indexOf6 + 1;
        int indexOf7 = CharOperation.indexOf('/', cArr, i20);
        int i21 = this.parameterCount;
        if (i21 == 0) {
            indexOf7 = CharOperation.indexOf('/', cArr, CharOperation.indexOf('/', cArr, indexOf7 + 1) + 1);
            this.modifiers = cArr[i17] + (cArr[i16] << 16);
        } else if (i21 > 0) {
            if ((this.extraFlags & 16) != 0) {
                char[] subarray = CharOperation.subarray(cArr, i20, indexOf7);
                this.signature = subarray;
                CharOperation.replace(subarray, JavaElement.JEM_ESCAPE, '/');
            } else {
                this.parameterTypes = CharOperation.splitOnWithEnclosures(IIndexConstants.PARAMETER_SEPARATOR, '<', '>', cArr, i20, indexOf7);
            }
            int i22 = indexOf7 + 1;
            int indexOf8 = CharOperation.indexOf('/', cArr, i22);
            if (indexOf8 != i22) {
                this.parameterNames = CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, cArr, i22, indexOf8);
            }
            indexOf7 = CharOperation.indexOf('/', cArr, indexOf8 + 1);
            this.modifiers = cArr[indexOf7 - 2] + (cArr[indexOf7 - 1] << 16);
        } else {
            this.modifiers = 1;
        }
        int i23 = indexOf7 + 1;
        this.returnSimpleName = CharOperation.subarray(cArr, i23, CharOperation.indexOf('/', cArr, i23));
        removeInternalFlags();
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new MethodDeclarationPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return new char[][]{IIndexConstants.METHOD_DECL_PLUS};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MethodDeclarationPattern(char[] cArr, char[] cArr2, int i10) {
        super(cArr2, r3, r3, null, null, null, null, null, 0, i10);
        char[] cArr3 = CharOperation.NO_CHAR;
        this.fusedDeclaringQualifier = cArr;
    }

    public MethodDeclarationPattern(int i10) {
        super(i10);
        this.fusedDeclaringQualifier = null;
    }
}
