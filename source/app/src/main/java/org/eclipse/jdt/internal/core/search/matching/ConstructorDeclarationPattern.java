package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class ConstructorDeclarationPattern extends ConstructorPattern {
    public char[] declaringPackageName;
    public int declaringTypeModifiers;
    public int extraFlags;
    public int modifiers;
    public char[][] parameterNames;
    public char[][] parameterTypes;
    public char[] signature;

    public ConstructorDeclarationPattern(char[] cArr, char[] cArr2, int i10) {
        this(i10);
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr2 = CharOperation.toLowerCase(cArr2);
        }
        this.declaringSimpleName = cArr2;
        this.declaringPackageName = cArr;
        this.findDeclarations = true;
        this.findReferences = false;
        this.parameterCount = -1;
        this.mustResolve = false;
    }

    private void removeInternalFlags() {
        this.extraFlags &= -17;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        int length = cArr.length;
        int indexOf = CharOperation.indexOf('/', cArr, 0);
        this.declaringSimpleName = CharOperation.subarray(cArr, 0, indexOf);
        int i10 = indexOf + 1;
        int indexOf2 = CharOperation.indexOf('/', cArr, i10);
        int i11 = indexOf2 - 1;
        if (cArr[i11] == '#') {
            this.parameterCount = -1;
        } else {
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
        }
        int i14 = cArr[indexOf2 + 1] + (cArr[indexOf2 + 2] << 16);
        this.declaringTypeModifiers = ConstructorPattern.decodeModifers(i14);
        int decodeExtraFlags = ConstructorPattern.decodeExtraFlags(i14);
        this.extraFlags = decodeExtraFlags;
        this.declaringPackageName = null;
        this.modifiers = 0;
        this.signature = null;
        this.parameterTypes = null;
        this.parameterNames = null;
        if ((decodeExtraFlags & 2) == 0) {
            int i15 = indexOf2 + 4;
            int length2 = this.parameterCount == -1 ? cArr.length : CharOperation.indexOf('/', cArr, i15);
            this.declaringPackageName = CharOperation.subarray(cArr, i15, length2);
            int i16 = length2 + 1;
            int i17 = this.parameterCount;
            if (i17 == 0) {
                this.modifiers = cArr[length2 + 1] + (cArr[length2 + 2] << 16);
            } else if (i17 > 0) {
                int indexOf3 = CharOperation.indexOf('/', cArr, i16);
                if ((this.extraFlags & 16) != 0) {
                    char[] subarray = CharOperation.subarray(cArr, i16, indexOf3);
                    this.signature = subarray;
                    CharOperation.replace(subarray, JavaElement.JEM_ESCAPE, '/');
                } else {
                    this.parameterTypes = CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, cArr, i16, indexOf3);
                }
                int i18 = indexOf3 + 1;
                int indexOf4 = CharOperation.indexOf('/', cArr, i18);
                if (indexOf4 != i18) {
                    this.parameterNames = CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, cArr, i18, indexOf4);
                }
                this.modifiers = cArr[indexOf4 + 1] + (cArr[indexOf4 + 2] << 16);
            } else {
                this.modifiers = 1;
            }
        }
        removeInternalFlags();
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new ConstructorDeclarationPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return ConstructorPattern.DECL_CATEGORIES;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        ConstructorDeclarationPattern constructorDeclarationPattern = (ConstructorDeclarationPattern) searchPattern;
        if ((constructorDeclarationPattern.extraFlags & 2) != 0) {
            return false;
        }
        char[] cArr = this.declaringPackageName;
        if (cArr != null && !CharOperation.equals(cArr, constructorDeclarationPattern.declaringPackageName, true)) {
            return false;
        }
        int i10 = this.parameterCount;
        return (i10 == constructorDeclarationPattern.parameterCount || i10 == -1 || this.varargs) && matchesName(this.declaringSimpleName, constructorDeclarationPattern.declaringSimpleName);
    }

    public ConstructorDeclarationPattern(int i10) {
        super(i10);
    }
}
