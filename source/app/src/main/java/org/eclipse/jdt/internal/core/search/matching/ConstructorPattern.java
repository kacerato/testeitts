package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class ConstructorPattern extends JavaSearchPattern {
    protected static char[][] DECL_CATEGORIES = null;
    public static final int FINE_GRAIN_MASK = 520093696;
    protected static char[][] REF_AND_DECL_CATEGORIES;
    protected static char[][] REF_CATEGORIES;
    char[][] constructorArguments;
    boolean constructorParameters;
    public char[] declaringQualification;
    public char[] declaringSimpleName;
    protected boolean findDeclarations;
    protected boolean findReferences;
    public int parameterCount;
    public char[][] parameterQualifications;
    public char[][] parameterSimpleNames;
    char[][][][] parametersTypeArguments;
    char[][][] parametersTypeSignatures;
    public boolean varargs;

    static {
        char[] cArr = IIndexConstants.CONSTRUCTOR_REF;
        REF_CATEGORIES = new char[][]{cArr};
        char[] cArr2 = IIndexConstants.CONSTRUCTOR_DECL;
        REF_AND_DECL_CATEGORIES = new char[][]{cArr, cArr2};
        DECL_CATEGORIES = new char[][]{cArr2};
    }

    public ConstructorPattern(int i10) {
        super(32, i10);
        this.findDeclarations = true;
        this.findReferences = true;
        this.varargs = false;
        this.constructorParameters = false;
    }

    public static char[] createDeclarationIndexKey(char[] cArr, int i10, char[] cArr2, char[][] cArr3, char[][] cArr4, int i11, char[] cArr5, int i12, int i13) {
        char[] charArray;
        int i14;
        char[] cArr6;
        char[] cArr7;
        int i15;
        char[] cArr8 = null;
        if (i10 < 0) {
            charArray = IIndexConstants.DEFAULT_CONSTRUCTOR;
            cArr6 = null;
            i14 = i13;
        } else {
            charArray = i10 < 10 ? IIndexConstants.COUNTS[i10] : ("/" + String.valueOf(i10)).toCharArray();
            if (i10 > 0) {
                if (cArr2 != null) {
                    i14 = i13 | 16;
                } else if (cArr3 == null || cArr3.length != i10) {
                    i14 = i13;
                } else {
                    char[][] cArr9 = new char[i10];
                    for (int i16 = 0; i16 < cArr3.length; i16++) {
                        cArr9[i16] = getTypeErasure(cArr3[i16]);
                    }
                    cArr7 = CharOperation.concatWith(cArr9, IIndexConstants.PARAMETER_SEPARATOR);
                    i14 = i13;
                    if (cArr4 != null && cArr4.length == i10) {
                        cArr8 = CharOperation.concatWith(cArr4, IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    cArr6 = cArr8;
                    cArr8 = cArr7;
                }
                cArr7 = null;
                if (cArr4 != null) {
                    cArr8 = CharOperation.concatWith(cArr4, IIndexConstants.PARAMETER_SEPARATOR);
                }
                cArr6 = cArr8;
                cArr8 = cArr7;
            } else {
                i14 = i13;
                cArr6 = null;
            }
        }
        boolean z10 = (i14 & 2) != 0;
        int length = cArr == null ? 0 : cArr.length;
        int length2 = cArr5 == null ? 0 : cArr5.length;
        int length3 = charArray.length;
        int length4 = cArr2 == null ? cArr8 == null ? 0 : cArr8.length : cArr2.length;
        int length5 = cArr6 == null ? 0 : cArr6.length;
        int i17 = length + length3 + 3;
        if (!z10) {
            i17 += length2 + 1;
            if (i10 >= 0) {
                i17 += 3;
            }
            if (i10 > 0) {
                i17 += length4 + length5 + 2;
            }
        }
        char[] cArr10 = new char[i17];
        char[] cArr11 = cArr6;
        if (length > 0) {
            System.arraycopy(cArr, 0, cArr10, 0, length);
        } else {
            length = 0;
        }
        if (length3 > 0) {
            System.arraycopy(charArray, 0, cArr10, length, length3);
            length += length3;
        }
        int encodeExtraFlags = i12 | encodeExtraFlags(i14);
        cArr10[length] = '/';
        cArr10[length + 1] = (char) encodeExtraFlags;
        int i18 = length + 3;
        cArr10[length + 2] = (char) (encodeExtraFlags >> 16);
        if (!z10) {
            int i19 = length + 4;
            cArr10[i18] = '/';
            if (length2 > 0) {
                System.arraycopy(cArr5, 0, cArr10, i19, length2);
                i19 += length2;
            }
            if (i10 == 0) {
                cArr10[i19] = '/';
                cArr10[i19 + 1] = (char) i11;
                cArr10[i19 + 2] = (char) (i11 >> 16);
            } else if (i10 > 0) {
                int i20 = i19 + 1;
                cArr10[i19] = '/';
                if (length4 > 0) {
                    if (cArr2 == null) {
                        i15 = 0;
                        System.arraycopy(cArr8, 0, cArr10, i20, length4);
                    } else {
                        i15 = 0;
                        System.arraycopy(CharOperation.replaceOnCopy(cArr2, '/', JavaElement.JEM_ESCAPE), 0, cArr10, i20, length4);
                    }
                    i20 += length4;
                } else {
                    i15 = 0;
                }
                int i21 = i20 + 1;
                cArr10[i20] = '/';
                if (length5 > 0) {
                    System.arraycopy(cArr11, i15, cArr10, i21, length5);
                    i21 += length5;
                }
                cArr10[i21] = '/';
                cArr10[i21 + 1] = (char) i11;
                cArr10[i21 + 2] = (char) (i11 >> 16);
            }
        }
        return cArr10;
    }

    public static char[] createDefaultDeclarationIndexKey(char[] cArr, char[] cArr2, int i10, int i11) {
        return createDeclarationIndexKey(cArr, -1, null, null, null, 0, cArr2, i10, i11);
    }

    public static char[] createIndexKey(char[] cArr, int i10) {
        char[] charArray;
        if (i10 < 10) {
            charArray = IIndexConstants.COUNTS[i10];
        } else {
            charArray = ("/" + String.valueOf(i10)).toCharArray();
        }
        return CharOperation.concat(cArr, charArray);
    }

    public static int decodeExtraFlags(int i10) {
        int i11 = (134217728 & i10) != 0 ? 16 : 0;
        if ((268435456 & i10) != 0) {
            i11 |= 4;
        }
        if ((536870912 & i10) != 0) {
            i11 |= 2;
        }
        return (i10 & 1073741824) != 0 ? i11 | 1 : i11;
    }

    public static int decodeModifers(int i10) {
        return i10 & (-2013265921);
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

    @Override
    public void decodeIndexKey(char[] cArr) {
        int i10 = 1;
        int length = cArr.length - 1;
        int indexOf = CharOperation.indexOf('/', cArr, 0);
        this.declaringSimpleName = CharOperation.subarray(cArr, 0, indexOf);
        int i11 = indexOf + 1;
        int indexOf2 = CharOperation.indexOf('/', cArr, i11);
        if (indexOf2 != -1) {
            length = indexOf2 - 1;
        }
        if (cArr[length] == '#') {
            this.parameterCount = -1;
            return;
        }
        this.parameterCount = 0;
        for (int i12 = length; i12 >= i11; i12--) {
            if (i12 == length) {
                this.parameterCount = cArr[i12] - '0';
            } else {
                i10 *= 10;
                this.parameterCount += (cArr[i12] - '0') * i10;
            }
        }
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new ConstructorPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return this.findReferences ? this.findDeclarations ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES : this.findDeclarations ? DECL_CATEGORIES : CharOperation.NO_CHAR_CHAR;
    }

    public boolean hasConstructorArguments() {
        char[][] cArr = this.constructorArguments;
        return cArr != null && cArr.length > 0;
    }

    public boolean hasConstructorParameters() {
        return this.constructorParameters;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        ConstructorPattern constructorPattern = (ConstructorPattern) searchPattern;
        int i10 = constructorPattern.parameterCount;
        if (i10 == -1) {
            return false;
        }
        int i11 = this.parameterCount;
        return (i11 == i10 || i11 == -1 || this.varargs) && matchesName(this.declaringSimpleName, constructorPattern.declaringSimpleName);
    }

    public boolean mustResolve() {
        if (this.declaringQualification != null) {
            return true;
        }
        char[][] cArr = this.parameterSimpleNames;
        if (cArr != null) {
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (this.parameterQualifications[i10] != null) {
                    return true;
                }
            }
        }
        return this.findReferences;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        if (this.findDeclarations) {
            stringBuffer.append(this.findReferences ? "ConstructorCombinedPattern: " : "ConstructorDeclarationPattern: ");
        } else {
            stringBuffer.append("ConstructorReferencePattern: ");
        }
        char[] cArr = this.declaringQualification;
        if (cArr != null) {
            stringBuffer.append(cArr);
            stringBuffer.append('.');
        }
        char[] cArr2 = this.declaringSimpleName;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
        } else if (this.declaringQualification != null) {
            stringBuffer.append("*");
        }
        stringBuffer.append('(');
        char[][] cArr3 = this.parameterSimpleNames;
        if (cArr3 == null) {
            stringBuffer.append("...");
        } else {
            int length = cArr3.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                char[] cArr4 = this.parameterQualifications[i10];
                if (cArr4 != null) {
                    stringBuffer.append(cArr4);
                    stringBuffer.append('.');
                }
                char[] cArr5 = this.parameterSimpleNames[i10];
                if (cArr5 == null) {
                    stringBuffer.append('*');
                } else {
                    stringBuffer.append(cArr5);
                }
            }
        }
        stringBuffer.append(')');
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        int i10;
        char[] cArr = this.declaringSimpleName;
        int matchRule = getMatchRule();
        int matchMode = getMatchMode();
        if (matchMode == 0) {
            char[] cArr2 = this.declaringSimpleName;
            if (cArr2 != null && (i10 = this.parameterCount) >= 0 && !this.varargs) {
                cArr = createIndexKey(cArr2, i10);
            }
            matchRule |= 1;
        } else if (matchMode == 2) {
            int i11 = this.parameterCount;
            if (i11 < 0 || this.varargs) {
                char[] cArr3 = this.declaringSimpleName;
                if (cArr3 != null && cArr3[cArr3.length - 1] != '*') {
                    cArr = CharOperation.concat(cArr3, IIndexConstants.ONE_STAR, '/');
                } else if (cArr != null) {
                    cArr = CharOperation.concat(cArr, IIndexConstants.ONE_STAR);
                }
            } else {
                char[] cArr4 = this.declaringSimpleName;
                if (cArr4 == null) {
                    cArr4 = IIndexConstants.ONE_STAR;
                }
                cArr = CharOperation.concat(createIndexKey(cArr4, i11), IIndexConstants.ONE_STAR);
            }
        }
        return index.query(getIndexCategories(), cArr, matchRule);
    }

    public ConstructorPattern(char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, int i10, int i11) {
        this(i11);
        int i12 = 520093696 & i10;
        this.fineGrain = i12;
        if (i12 != 0) {
            this.findDeclarations = false;
        } else if (i10 == 0) {
            this.findReferences = false;
        } else if (i10 == 2) {
            this.findDeclarations = false;
        }
        this.declaringQualification = this.isCaseSensitive ? cArr2 : CharOperation.toLowerCase(cArr2);
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr = CharOperation.toLowerCase(cArr);
        }
        this.declaringSimpleName = cArr;
        if (cArr4 != null) {
            int length = cArr4.length;
            this.parameterCount = length;
            int i13 = 1;
            if (length > 0 && cArr2 != null && CharOperation.equals(CharOperation.concat(cArr3[0], cArr4[0], '.'), cArr2)) {
                this.parameterCount--;
            } else {
                i13 = 0;
            }
            int i14 = this.parameterCount;
            this.parameterQualifications = new char[i14];
            this.parameterSimpleNames = new char[i14];
            for (int i15 = 0; i15 < this.parameterCount; i15++) {
                this.parameterQualifications[i15] = this.isCaseSensitive ? cArr3[i15 + i13] : CharOperation.toLowerCase(cArr3[i15 + i13]);
                this.parameterSimpleNames[i15] = this.isCaseSensitive ? cArr4[i15 + i13] : CharOperation.toLowerCase(cArr4[i15 + i13]);
            }
        } else {
            this.parameterCount = -1;
        }
        this.mustResolve = mustResolve();
    }

    public ConstructorPattern(char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, String[] strArr, IMethod iMethod, int i10, int i11) {
        this(cArr, cArr2, cArr3, cArr4, i10, i11);
        int length;
        String declaringTypeSignature;
        try {
            this.varargs = (iMethod.getFlags() & 128) != 0;
        } catch (JavaModelException unused) {
        }
        if (iMethod.isResolved()) {
            String key = iMethod.getKey();
            if (new BindingKey(key).isParameterizedType() && (declaringTypeSignature = Util.getDeclaringTypeSignature(key)) != null) {
                char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(declaringTypeSignature);
                this.typeSignatures = splitTypeLevelsSignature;
                setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
            }
        } else {
            this.constructorParameters = true;
            storeTypeSignaturesAndArguments(iMethod.getDeclaringType());
        }
        if (strArr != null && (length = strArr.length) > 0) {
            this.parametersTypeSignatures = new char[length][];
            this.parametersTypeArguments = new char[length][][];
            for (int i12 = 0; i12 < length; i12++) {
                this.parametersTypeSignatures[i12] = Util.splitTypeLevelsSignature(strArr[i12]);
                this.parametersTypeArguments[i12] = Util.getAllTypeArguments(this.parametersTypeSignatures[i12]);
            }
        }
        this.constructorArguments = extractMethodArguments(iMethod);
        if (hasConstructorArguments()) {
            this.mustResolve = true;
        }
    }

    public ConstructorPattern(char[] cArr, char[] cArr2, String str, char[][] cArr3, char[][] cArr4, String[] strArr, char[][] cArr5, int i10, int i11) {
        this(cArr, cArr2, cArr3, cArr4, i10, i11);
        int length;
        if (str != null) {
            char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(str);
            this.typeSignatures = splitTypeLevelsSignature;
            setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
        }
        if (strArr != null && (length = strArr.length) > 0) {
            this.parametersTypeSignatures = new char[length][];
            this.parametersTypeArguments = new char[length][][];
            for (int i12 = 0; i12 < length; i12++) {
                this.parametersTypeSignatures[i12] = Util.splitTypeLevelsSignature(strArr[i12]);
                this.parametersTypeArguments[i12] = Util.getAllTypeArguments(this.parametersTypeSignatures[i12]);
            }
        }
        this.constructorArguments = cArr5;
        if ((cArr5 == null || cArr5.length == 0) && getTypeArguments() != null && getTypeArguments().length > 0) {
            this.constructorArguments = getTypeArguments()[0];
        }
        if (hasConstructorArguments()) {
            this.mustResolve = true;
        }
    }
}
