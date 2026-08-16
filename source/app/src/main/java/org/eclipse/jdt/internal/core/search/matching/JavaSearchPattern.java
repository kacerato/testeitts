package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchPattern extends SearchPattern implements IIndexConstants {
    static final int HAS_TYPE_ARGUMENTS = 1;
    public static final int MATCH_COMPATIBILITY_MASK = 112;
    public static final int MATCH_MODE_MASK = 391;
    public int fineGrain;
    private int flags;
    boolean isCamelCase;
    boolean isCaseSensitive;
    int matchCompatibility;
    int matchMode;
    private char[][][] typeArguments;
    char[][] typeSignatures;

    public JavaSearchPattern(int i10, int i11) {
        super(i11);
        this.fineGrain = 0;
        this.flags = 0;
        this.kind = i10;
        int matchRule = getMatchRule();
        this.isCaseSensitive = (matchRule & 8) != 0;
        this.isCamelCase = (matchRule & 384) != 0;
        this.matchCompatibility = matchRule & 112;
        this.matchMode = matchRule & MATCH_MODE_MASK;
    }

    public static String getFineGrainFlagString(int i10) {
        if (i10 == 0) {
            return "none";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 1; i11 <= 32; i11++) {
            int i12 = (1 << (i11 - 1)) & i10;
            if (i12 != 0 && stringBuffer.length() > 0) {
                stringBuffer.append(" | ");
            }
            switch (i12) {
                case 64:
                    stringBuffer.append("FIELD_DECLARATION_TYPE_REFERENCE");
                    break;
                case 128:
                    stringBuffer.append("LOCAL_VARIABLE_DECLARATION_TYPE_REFERENCE");
                    break;
                case 256:
                    stringBuffer.append("PARAMETER_DECLARATION_TYPE_REFERENCE");
                    break;
                case 512:
                    stringBuffer.append("SUPERTYPE_TYPE_REFERENCE");
                    break;
                case 1024:
                    stringBuffer.append("THROWS_CLAUSE_TYPE_REFERENCE");
                    break;
                case 2048:
                    stringBuffer.append("CAST_TYPE_REFERENCE");
                    break;
                case 4096:
                    stringBuffer.append("CATCH_TYPE_REFERENCE");
                    break;
                case 8192:
                    stringBuffer.append("CLASS_INSTANCE_CREATION_TYPE_REFERENCE");
                    break;
                case 16384:
                    stringBuffer.append("RETURN_TYPE_REFERENCE");
                    break;
                case 32768:
                    stringBuffer.append("IMPORT_DECLARATION_TYPE_REFERENCE");
                    break;
                case 65536:
                    stringBuffer.append("ANNOTATION_TYPE_REFERENCE");
                    break;
                case 131072:
                    stringBuffer.append("TYPE_ARGUMENT_TYPE_REFERENCE");
                    break;
                case 262144:
                    stringBuffer.append("TYPE_VARIABLE_BOUND_TYPE_REFERENCE");
                    break;
                case 524288:
                    stringBuffer.append("WILDCARD_BOUND_TYPE_REFERENCE");
                    break;
                case 16777216:
                    stringBuffer.append("SUPER_REFERENCE");
                    break;
                case 33554432:
                    stringBuffer.append("QUALIFIED_REFERENCE");
                    break;
                case 67108864:
                    stringBuffer.append("THIS_REFERENCE");
                    break;
                case 134217728:
                    stringBuffer.append("IMPLICIT_THIS_REFERENCE");
                    break;
                case 268435456:
                    stringBuffer.append("METHOD_REFERENCE_EXPRESSION");
                    break;
            }
        }
        return stringBuffer.toString();
    }

    public char[][] extractMethodArguments(IMethod iMethod) {
        int length;
        String[] typeArguments;
        int length2;
        if (!iMethod.isResolved()) {
            try {
                ITypeParameter[] typeParameters = iMethod.getTypeParameters();
                if (typeParameters != null && (length = typeParameters.length) > 0) {
                    char[][] cArr = new char[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        cArr[i10] = Signature.createTypeSignature(typeParameters[i10].getElementName(), false).toCharArray();
                    }
                    return cArr;
                }
            } catch (JavaModelException unused) {
            }
            return null;
        }
        BindingKey bindingKey = new BindingKey(iMethod.getKey());
        if (!bindingKey.isParameterizedMethod() || (length2 = (typeArguments = bindingKey.getTypeArguments()).length) <= 0) {
            return null;
        }
        char[][] cArr2 = new char[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            char[] charArray = typeArguments[i11].toCharArray();
            cArr2[i11] = charArray;
            CharOperation.replace(charArray, new char[]{'$', '/'}, '.');
        }
        return cArr2;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return null;
    }

    public final int getMatchMode() {
        return this.matchMode;
    }

    public final char[][][] getTypeArguments() {
        return this.typeArguments;
    }

    public final boolean hasSignatures() {
        char[][] cArr = this.typeSignatures;
        return cArr != null && cArr.length > 0;
    }

    public final boolean hasTypeArguments() {
        return (this.flags & 1) != 0;
    }

    public final boolean hasTypeParameters() {
        return !hasSignatures() && hasTypeArguments();
    }

    public final boolean isCamelCase() {
        return this.isCamelCase;
    }

    public final boolean isCaseSensitive() {
        return this.isCaseSensitive;
    }

    public final boolean isEquivalentMatch() {
        return (this.matchCompatibility & 32) != 0;
    }

    public final boolean isErasureMatch() {
        return (this.matchCompatibility & 16) != 0;
    }

    public boolean matchDifferentTypeSuffixes(int i10, int i11) {
        if (i10 == 65) {
            return i11 == 11;
        }
        if (i10 == 67) {
            return i11 == 9 || i11 == 10;
        }
        if (i10 == 69) {
            return i11 == 9;
        }
        if (i10 == 73) {
            return i11 == 10 || i11 == 11;
        }
        switch (i10) {
            case 9:
                return i11 == 67 || i11 == 69;
            case 10:
                return i11 == 67 || i11 == 73;
            case 11:
                return i11 == 65 || i11 == 73;
            default:
                return true;
        }
    }

    public StringBuffer print(StringBuffer stringBuffer) {
        stringBuffer.append(", ");
        if (hasTypeArguments() && hasSignatures()) {
            stringBuffer.append("signature:\"");
            stringBuffer.append(this.typeSignatures[0]);
            stringBuffer.append("\", ");
        }
        int matchMode = getMatchMode();
        if (matchMode == 0) {
            stringBuffer.append("exact match, ");
        } else if (matchMode == 1) {
            stringBuffer.append("prefix match, ");
        } else if (matchMode == 2) {
            stringBuffer.append("pattern match, ");
        } else if (matchMode == 4) {
            stringBuffer.append("regexp match, ");
        } else if (matchMode == 128) {
            stringBuffer.append("camel case match, ");
        } else if (matchMode == 256) {
            stringBuffer.append("camel case same part count match, ");
        }
        if (isCaseSensitive()) {
            stringBuffer.append("case sensitive, ");
        } else {
            stringBuffer.append("case insensitive, ");
        }
        if ((this.matchCompatibility & 64) != 0) {
            stringBuffer.append("generic full match, ");
        }
        if ((this.matchCompatibility & 16) != 0) {
            stringBuffer.append("generic erasure match, ");
        }
        if ((this.matchCompatibility & 32) != 0) {
            stringBuffer.append("generic equivalent match, ");
        }
        stringBuffer.append("fine grain: ");
        stringBuffer.append(getFineGrainFlagString(this.fineGrain));
        return stringBuffer;
    }

    public final void setTypeArguments(char[][][] cArr) {
        this.typeArguments = cArr;
        if (cArr != null) {
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                char[][] cArr2 = this.typeArguments[i10];
                if (cArr2 != null && cArr2.length > 0) {
                    this.flags |= 1;
                    return;
                }
            }
        }
    }

    public void storeTypeSignaturesAndArguments(IType iType) {
        int length;
        if (iType.isResolved()) {
            BindingKey bindingKey = new BindingKey(iType.getKey());
            if (bindingKey.isParameterizedType() || bindingKey.isRawType()) {
                char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(bindingKey.toSignature());
                this.typeSignatures = splitTypeLevelsSignature;
                setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
                return;
            }
            return;
        }
        char[][][] cArr = new char[10][];
        int i10 = -1;
        boolean z10 = false;
        for (IType iType2 = iType; iType2 != null; iType2 = iType2.getParent()) {
            try {
                if (iType2.getElementType() != 7) {
                    break;
                }
                i10++;
                if (i10 > cArr.length) {
                    char[][][] cArr2 = new char[cArr.length + 10][];
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                    cArr = cArr2;
                }
                ITypeParameter[] typeParameters = iType2.getTypeParameters();
                if (typeParameters != null && (length = typeParameters.length) > 0) {
                    cArr[i10] = new char[length];
                    for (int i11 = 0; i11 < length; i11++) {
                        cArr[i10][i11] = Signature.createTypeSignature(typeParameters[i11].getElementName(), false).toCharArray();
                    }
                    z10 = true;
                }
            } catch (JavaModelException unused) {
                return;
            }
        }
        if (z10) {
            int i12 = i10 + 1;
            if (i12 < cArr.length) {
                char[][][] cArr3 = new char[i12][];
                System.arraycopy(cArr, 0, cArr3, 0, i12);
                cArr = cArr3;
            }
            setTypeArguments(cArr);
        }
    }

    @Override
    public final String toString() {
        return print(new StringBuffer(30)).toString();
    }
}
