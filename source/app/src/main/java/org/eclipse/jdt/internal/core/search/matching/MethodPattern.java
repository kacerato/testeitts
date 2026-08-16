package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import okhttp3.C14587g;
import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class MethodPattern extends JavaSearchPattern {
    protected static char[][] DECL_CATEGORIES = null;
    public static final int FINE_GRAIN_MASK = 520093696;
    protected static char[][] REF_AND_DECL_CATEGORIES;
    protected static char[][] REF_CATEGORIES;
    public char[] declaringPackageName;
    public char[] declaringQualification;
    public char[] declaringSimpleName;
    protected IType declaringType;
    protected boolean findDeclarations;
    protected boolean findReferences;
    char[][] methodArguments;
    boolean methodParameters;
    public int parameterCount;
    public char[][] parameterQualifications;
    public char[][] parameterSimpleNames;
    char[][][][] parametersTypeArguments;
    char[][][] parametersTypeSignatures;
    public char[] returnQualification;
    public char[] returnSimpleName;
    char[][] returnTypeSignatures;
    public char[] selector;
    public boolean varargs;

    static {
        char[] cArr = IIndexConstants.METHOD_REF;
        REF_CATEGORIES = new char[][]{cArr};
        char[] cArr2 = IIndexConstants.METHOD_DECL;
        REF_AND_DECL_CATEGORIES = new char[][]{cArr, cArr2};
        DECL_CATEGORIES = new char[][]{cArr2};
    }

    public MethodPattern(int i10) {
        super(128, i10);
        this.findDeclarations = true;
        this.findReferences = true;
        this.varargs = false;
        this.methodParameters = false;
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

    @Override
    public void decodeIndexKey(char[] cArr) {
        int i10 = 1;
        int length = cArr.length - 1;
        this.parameterCount = 0;
        this.selector = null;
        for (int i11 = length; i11 >= 0; i11--) {
            char c10 = cArr[i11];
            if (c10 == '/') {
                char[] cArr2 = new char[i11];
                this.selector = cArr2;
                System.arraycopy(cArr, 0, cArr2, 0, i11);
                return;
            } else {
                if (i11 == length) {
                    this.parameterCount = c10 - '0';
                } else {
                    i10 *= 10;
                    this.parameterCount += (c10 - '0') * i10;
                }
            }
        }
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new MethodPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return this.findReferences ? this.findDeclarations ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES : this.findDeclarations ? DECL_CATEGORIES : CharOperation.NO_CHAR_CHAR;
    }

    public boolean hasMethodArguments() {
        char[][] cArr = this.methodArguments;
        return cArr != null && cArr.length > 0;
    }

    public boolean hasMethodParameters() {
        return this.methodParameters;
    }

    @Override
    public boolean isPolymorphicSearch() {
        return this.findReferences;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        MethodPattern methodPattern = (MethodPattern) searchPattern;
        int i10 = this.parameterCount;
        return (i10 == methodPattern.parameterCount || i10 == -1 || this.varargs) && matchesName(this.selector, methodPattern.selector);
    }

    public boolean mustResolve() {
        if (this.declaringSimpleName != null || this.declaringQualification != null || this.returnSimpleName != null || this.returnQualification != null) {
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
        return false;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        if (this.findDeclarations) {
            stringBuffer.append(this.findReferences ? "MethodCombinedPattern: " : "MethodDeclarationPattern: ");
        } else {
            stringBuffer.append("MethodReferencePattern: ");
        }
        char[] cArr = this.declaringQualification;
        if (cArr != null) {
            stringBuffer.append(cArr);
            stringBuffer.append('.');
        }
        char[] cArr2 = this.declaringSimpleName;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
            stringBuffer.append('.');
        } else if (this.declaringQualification != null) {
            stringBuffer.append(C14587g.b.f99238e);
        }
        char[] cArr3 = this.selector;
        if (cArr3 != null) {
            stringBuffer.append(cArr3);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append('(');
        char[][] cArr4 = this.parameterSimpleNames;
        if (cArr4 == null) {
            stringBuffer.append("...");
        } else {
            int length = cArr4.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                char[] cArr5 = this.parameterQualifications[i10];
                if (cArr5 != null) {
                    stringBuffer.append(cArr5);
                    stringBuffer.append('.');
                }
                char[] cArr6 = this.parameterSimpleNames[i10];
                if (cArr6 == null) {
                    stringBuffer.append('*');
                } else {
                    stringBuffer.append(cArr6);
                }
            }
        }
        stringBuffer.append(')');
        if (this.returnQualification != null) {
            stringBuffer.append(" --> ");
            stringBuffer.append(this.returnQualification);
            stringBuffer.append('.');
        } else if (this.returnSimpleName != null) {
            stringBuffer.append(" --> ");
        }
        char[] cArr7 = this.returnSimpleName;
        if (cArr7 != null) {
            stringBuffer.append(cArr7);
        } else if (this.returnQualification != null) {
            stringBuffer.append("*");
        }
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        int i10;
        char[] cArr = this.selector;
        int matchRule = getMatchRule();
        int matchMode = getMatchMode();
        if (matchMode == 0) {
            char[] cArr2 = this.selector;
            if (cArr2 == null || (i10 = this.parameterCount) < 0 || this.varargs) {
                matchRule |= 1;
            } else {
                cArr = createIndexKey(cArr2, i10);
            }
        } else if (matchMode == 2) {
            int i11 = this.parameterCount;
            if (i11 < 0 || this.varargs) {
                char[] cArr3 = this.selector;
                if (cArr3 != null && cArr3[cArr3.length - 1] != '*') {
                    cArr = CharOperation.concat(cArr3, IIndexConstants.ONE_STAR, '/');
                }
            } else {
                char[] cArr4 = this.selector;
                if (cArr4 == null) {
                    cArr4 = IIndexConstants.ONE_STAR;
                }
                cArr = createIndexKey(cArr4, i11);
            }
        }
        return index.query(getIndexCategories(), cArr, matchRule);
    }

    public MethodPattern(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[][] cArr6, char[][] cArr7, IType iType, int i10, int i11) {
        this(i11);
        int i12 = 520093696 & i10;
        this.fineGrain = i12;
        if (i12 == 0) {
            int i13 = i10 & 15;
            if (i13 == 0) {
                this.findReferences = false;
            } else if (i13 == 2) {
                this.findDeclarations = false;
            }
        } else {
            this.findDeclarations = false;
        }
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr = CharOperation.toLowerCase(cArr);
        }
        this.selector = cArr;
        this.declaringQualification = this.isCaseSensitive ? cArr2 : CharOperation.toLowerCase(cArr2);
        this.declaringSimpleName = this.isCaseSensitive ? cArr3 : CharOperation.toLowerCase(cArr3);
        this.returnQualification = this.isCaseSensitive ? cArr4 : CharOperation.toLowerCase(cArr4);
        this.returnSimpleName = this.isCaseSensitive ? cArr5 : CharOperation.toLowerCase(cArr5);
        if (cArr7 != null) {
            int length = cArr7.length;
            this.parameterCount = length;
            this.parameterQualifications = new char[length];
            this.parameterSimpleNames = new char[length];
            for (int i14 = 0; i14 < this.parameterCount; i14++) {
                this.parameterQualifications[i14] = this.isCaseSensitive ? cArr6[i14] : CharOperation.toLowerCase(cArr6[i14]);
                this.parameterSimpleNames[i14] = this.isCaseSensitive ? cArr7[i14] : CharOperation.toLowerCase(cArr7[i14]);
            }
        } else {
            this.parameterCount = -1;
        }
        this.declaringType = iType;
        if (iType != null) {
            this.declaringPackageName = iType.getPackageFragment().getElementName().toCharArray();
        }
        this.mustResolve = mustResolve();
    }

    public MethodPattern(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, String str, char[][] cArr6, char[][] cArr7, String[] strArr, IMethod iMethod, int i10, int i11) {
        this(cArr, cArr2, cArr3, cArr4, cArr5, cArr6, cArr7, iMethod.getDeclaringType(), i10, i11);
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
            this.methodParameters = true;
            storeTypeSignaturesAndArguments(this.declaringType);
        }
        if (str != null) {
            this.returnTypeSignatures = Util.splitTypeLevelsSignature(str);
        }
        if (strArr != null && (length = strArr.length) > 0) {
            this.parametersTypeSignatures = new char[length][];
            this.parametersTypeArguments = new char[length][][];
            for (int i12 = 0; i12 < length; i12++) {
                this.parametersTypeSignatures[i12] = Util.splitTypeLevelsSignature(strArr[i12]);
                this.parametersTypeArguments[i12] = Util.getAllTypeArguments(this.parametersTypeSignatures[i12]);
            }
        }
        this.methodArguments = extractMethodArguments(iMethod);
        if (hasMethodArguments()) {
            this.mustResolve = true;
        }
    }

    public MethodPattern(char[] cArr, char[] cArr2, char[] cArr3, String str, char[] cArr4, char[] cArr5, String str2, char[][] cArr6, char[][] cArr7, String[] strArr, char[][] cArr8, int i10, int i11) {
        this(cArr, cArr2, cArr3, cArr4, cArr5, cArr6, cArr7, null, i10, i11);
        int length;
        if (str != null) {
            char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(str);
            this.typeSignatures = splitTypeLevelsSignature;
            setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
        }
        if (str2 != null) {
            this.returnTypeSignatures = Util.splitTypeLevelsSignature(str2);
        }
        if (strArr != null && (length = strArr.length) > 0) {
            this.parametersTypeSignatures = new char[length][];
            this.parametersTypeArguments = new char[length][][];
            for (int i12 = 0; i12 < length; i12++) {
                this.parametersTypeSignatures[i12] = Util.splitTypeLevelsSignature(strArr[i12]);
                this.parametersTypeArguments[i12] = Util.getAllTypeArguments(this.parametersTypeSignatures[i12]);
            }
        }
        this.methodArguments = cArr8;
        if (hasMethodArguments()) {
            this.mustResolve = true;
        }
    }
}
