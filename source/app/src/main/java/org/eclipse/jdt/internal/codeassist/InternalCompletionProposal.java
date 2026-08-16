package org.eclipse.jdt.internal.codeassist;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class InternalCompletionProposal extends CompletionProposal {
    private static Object NO_ATTACHED_SOURCE = new Object();
    private int additionalFlags;
    private Binding binding;
    private char[] completion;
    protected CompletionEngine completionEngine;
    private int completionKind;
    private int completionLocation;
    private char[] declarationKey;
    protected char[] declarationPackageName;
    private char[] declarationSignature;
    protected char[] declarationTypeName;
    private int flags;
    private char[] key;
    protected char[] moduleName;
    private char[] name;
    protected NameLookup nameLookup;
    protected char[] originalSignature;
    protected char[] packageName;
    private char[][] parameterNames;
    private boolean parameterNamesComputed;
    protected char[][] parameterPackageNames;
    protected char[][] parameterTypeNames;
    private int receiverEnd;
    private char[] receiverSignature;
    private int receiverStart;
    private int relevance;
    private int replaceEnd;
    private int replaceStart;
    private CompletionProposal[] requiredProposals;
    private char[] signature;
    protected char[] typeName;
    private boolean hasNoParameterNamesFromIndex = false;
    private boolean updateCompletion = false;
    protected int accessibility = 0;
    protected boolean isConstructor = false;
    private int tokenStart = 0;
    private int tokenEnd = 0;

    public InternalCompletionProposal(int i10, int i11) {
        char[] cArr = CharOperation.NO_CHAR;
        this.completion = cArr;
        this.replaceStart = 0;
        this.replaceEnd = 0;
        this.relevance = 1;
        this.declarationSignature = null;
        this.declarationKey = null;
        this.name = null;
        this.binding = null;
        this.signature = null;
        this.key = null;
        this.flags = 0;
        this.additionalFlags = 0;
        this.parameterNames = null;
        this.parameterNamesComputed = false;
        if (i10 < 1 || i10 > 29) {
            throw new IllegalArgumentException();
        }
        if (cArr == null || i11 < 0) {
            if (cArr == null || i11 != -1) {
                throw new IllegalArgumentException();
            }
            i11 = 0;
        }
        this.completionKind = i10;
        this.completionLocation = i11;
    }

    private IMethod findMethod(IType iType, char[] cArr, char[][] cArr2) throws JavaModelException {
        String[] strArr;
        int i10;
        IType declaringType = iType.getDeclaringType();
        if (declaringType == null || !CharOperation.equals(iType.getElementName().toCharArray(), cArr) || Flags.isStatic(iType.getFlags())) {
            strArr = new String[cArr2.length];
            i10 = 0;
        } else {
            i10 = 1;
            strArr = new String[cArr2.length + 1];
            strArr[0] = Signature.createTypeSignature(declaringType.getFullyQualifiedName(), true);
        }
        int length = strArr.length;
        for (int i11 = i10; i11 < length; i11++) {
            strArr[i11] = new String(cArr2[i11 - i10]);
        }
        IMethod method = iType.getMethod(new String(cArr), strArr);
        IMethod[] findMethods = iType.findMethods(method);
        return (findMethods == null || findMethods.length <= 0) ? method : findMethods[0];
    }

    private int getOpenedBinaryTypesThreshold() {
        return JavaModelManager.getJavaModelManager().getOpenableCacheSize() / 10;
    }

    @Override
    public boolean canUseDiamond(CompletionContext completionContext) {
        if (getKind() != 26 || !(completionContext instanceof InternalCompletionContext)) {
            return false;
        }
        InternalCompletionContext internalCompletionContext = (InternalCompletionContext) completionContext;
        if (internalCompletionContext.extendedContext == null) {
            return false;
        }
        char[] concat = CharOperation.concat(this.declarationPackageName, this.declarationTypeName, '.');
        char[] cArr = this.originalSignature;
        if (cArr == null) {
            cArr = getSignature();
        }
        if (cArr != null && cArr.length >= 2) {
            cArr = Signature.removeCapture(cArr);
        }
        char[][] parameterTypes = Signature.getParameterTypes(cArr);
        String[] strArr = new String[parameterTypes.length];
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            strArr[i10] = new String(Signature.toCharArray(parameterTypes[i10]));
        }
        return internalCompletionContext.extendedContext.canUseDiamond(strArr, concat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[][] findConstructorParameterNames(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4) {
        PlatformObject platformObject;
        SourceMapper sourceMapper;
        char[][] cArr5 = null;
        if (cArr4 == null || cArr2 == null) {
            return null;
        }
        int length = cArr4.length;
        char[] concat = CharOperation.concat(cArr, cArr2, '.');
        Object obj = this.completionEngine.typeCache.get(concat);
        if (obj != null) {
            if (obj != NO_ATTACHED_SOURCE && (obj instanceof BinaryType)) {
                platformObject = (BinaryType) obj;
            }
            platformObject = null;
        } else {
            NameLookup.Answer findType = this.nameLookup.findType(new String(cArr2), new String(cArr), false, 0, true, false, false, null);
            platformObject = findType == null ? null : findType.type;
            if (platformObject instanceof BinaryType) {
                this.completionEngine.typeCache.put(concat, platformObject);
            }
            platformObject = null;
        }
        if (platformObject != null) {
            try {
                IMethod findMethod = findMethod(platformObject, cArr3, cArr4);
                if (this.hasNoParameterNamesFromIndex) {
                    IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) platformObject.getAncestor(3);
                    if ((iPackageFragmentRoot.isArchive() || this.completionEngine.openedBinaryTypes < getOpenedBinaryTypesThreshold()) && (sourceMapper = ((JavaElement) findMethod).getSourceMapper()) != null) {
                        char[][] methodParameterNames = sourceMapper.getMethodParameterNames(findMethod);
                        if (methodParameterNames == null) {
                            if (!iPackageFragmentRoot.isArchive()) {
                                this.completionEngine.openedBinaryTypes++;
                            }
                            IBinaryType iBinaryType = (IBinaryType) ((BinaryType) platformObject).getElementInfo();
                            char[] findSource = sourceMapper.findSource((IType) platformObject, iBinaryType);
                            if (findSource != null) {
                                sourceMapper.mapSource((NamedMember) platformObject, findSource, iBinaryType);
                            }
                            methodParameterNames = sourceMapper.getMethodParameterNames(findMethod);
                        }
                        if (methodParameterNames != null) {
                            cArr5 = methodParameterNames;
                        }
                    }
                } else {
                    char[][] argumentNames = ((IBinaryMethod) ((JavaElement) findMethod).getElementInfo()).getArgumentNames();
                    if (argumentNames != null && argumentNames.length == length) {
                        return argumentNames;
                    }
                    char[][] cArr6 = new char[length];
                    String[] parameterNames = findMethod.getParameterNames();
                    for (int i10 = 0; i10 < length; i10++) {
                        cArr6[i10] = parameterNames[i10].toCharArray();
                    }
                    cArr5 = cArr6;
                }
            } catch (JavaModelException unused) {
            }
        }
        return cArr5 == null ? CompletionEngine.createDefaultParameterNames(length) : cArr5;
    }

    public char[][] findMethodParameterNames(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4) {
        IType iType;
        char[][] cArr5 = null;
        if (cArr4 == null || cArr2 == null) {
            return null;
        }
        int length = cArr4.length;
        char[] concat = CharOperation.concat(cArr, cArr2, '.');
        Object obj = this.completionEngine.typeCache.get(concat);
        if (obj != null) {
            if (obj != NO_ATTACHED_SOURCE && (obj instanceof BinaryType)) {
                iType = (BinaryType) obj;
            }
            iType = null;
        } else {
            NameLookup.Answer findType = this.nameLookup.findType(new String(cArr2), new String(cArr), false, 0, true, false, false, null);
            iType = findType == null ? null : findType.type;
            if (iType instanceof BinaryType) {
                this.completionEngine.typeCache.put(concat, iType);
            }
            iType = null;
        }
        if (iType != null) {
            try {
                char[][] cArr6 = new char[length];
                String[] parameterNames = findMethod(iType, cArr3, cArr4).getParameterNames();
                for (int i10 = 0; i10 < length; i10++) {
                    cArr6[i10] = parameterNames[i10].toCharArray();
                }
                cArr5 = cArr6;
            } catch (JavaModelException unused) {
            }
        }
        return cArr5 == null ? CompletionEngine.createDefaultParameterNames(length) : cArr5;
    }

    @Override
    public char[][] findParameterNames(IProgressMonitor iProgressMonitor) {
        if (!this.parameterNamesComputed) {
            this.parameterNamesComputed = true;
            int i10 = this.completionKind;
            if (i10 == 1) {
                try {
                    char[] cArr = this.declarationPackageName;
                    char[] cArr2 = this.declarationTypeName;
                    char[] lastSegment = CharOperation.lastSegment(cArr2, '.');
                    char[] cArr3 = this.originalSignature;
                    if (cArr3 == null) {
                        cArr3 = this.signature;
                    }
                    this.parameterNames = findMethodParameterNames(cArr, cArr2, lastSegment, Signature.getParameterTypes(cArr3));
                } catch (IllegalArgumentException unused) {
                    char[][] cArr4 = this.parameterTypeNames;
                    if (cArr4 != null) {
                        this.parameterNames = CompletionEngine.createDefaultParameterNames(cArr4.length);
                    } else {
                        this.parameterNames = null;
                    }
                }
            } else if (i10 == 24 || i10 == 6) {
                try {
                    char[] cArr5 = this.declarationPackageName;
                    char[] cArr6 = this.declarationTypeName;
                    char[] cArr7 = this.name;
                    char[] cArr8 = this.originalSignature;
                    if (cArr8 == null) {
                        cArr8 = this.signature;
                    }
                    this.parameterNames = findMethodParameterNames(cArr5, cArr6, cArr7, Signature.getParameterTypes(cArr8));
                } catch (IllegalArgumentException unused2) {
                    char[][] cArr9 = this.parameterTypeNames;
                    if (cArr9 != null) {
                        this.parameterNames = CompletionEngine.createDefaultParameterNames(cArr9.length);
                    } else {
                        this.parameterNames = null;
                    }
                }
            } else if (i10 == 7) {
                try {
                    char[] cArr10 = this.declarationPackageName;
                    char[] cArr11 = this.declarationTypeName;
                    char[] cArr12 = this.name;
                    char[] cArr13 = this.originalSignature;
                    if (cArr13 == null) {
                        cArr13 = this.signature;
                    }
                    this.parameterNames = findMethodParameterNames(cArr10, cArr11, cArr12, Signature.getParameterTypes(cArr13));
                } catch (IllegalArgumentException unused3) {
                    char[][] cArr14 = this.parameterTypeNames;
                    if (cArr14 != null) {
                        this.parameterNames = CompletionEngine.createDefaultParameterNames(cArr14.length);
                    } else {
                        this.parameterNames = null;
                    }
                }
                if (this.parameterNames != null) {
                    this.updateCompletion = true;
                }
            } else if (i10 == 26) {
                try {
                    char[] cArr15 = this.declarationPackageName;
                    char[] cArr16 = this.declarationTypeName;
                    char[] cArr17 = this.name;
                    char[] cArr18 = this.originalSignature;
                    if (cArr18 == null) {
                        cArr18 = this.signature;
                    }
                    this.parameterNames = findConstructorParameterNames(cArr15, cArr16, cArr17, Signature.getParameterTypes(cArr18));
                } catch (IllegalArgumentException unused4) {
                    char[][] cArr19 = this.parameterTypeNames;
                    if (cArr19 != null) {
                        this.parameterNames = CompletionEngine.createDefaultParameterNames(cArr19.length);
                    } else {
                        this.parameterNames = null;
                    }
                }
            } else if (i10 == 27) {
                try {
                    char[] cArr20 = this.declarationPackageName;
                    char[] cArr21 = this.declarationTypeName;
                    char[] lastSegment2 = CharOperation.lastSegment(cArr21, '.');
                    char[] cArr22 = this.originalSignature;
                    if (cArr22 == null) {
                        cArr22 = this.signature;
                    }
                    this.parameterNames = findConstructorParameterNames(cArr20, cArr21, lastSegment2, Signature.getParameterTypes(cArr22));
                } catch (IllegalArgumentException unused5) {
                    char[][] cArr23 = this.parameterTypeNames;
                    if (cArr23 != null) {
                        this.parameterNames = CompletionEngine.createDefaultParameterNames(cArr23.length);
                    } else {
                        this.parameterNames = null;
                    }
                }
            }
        }
        return this.parameterNames;
    }

    @Override
    public int getAccessibility() {
        return this.accessibility;
    }

    @Override
    public int getAdditionalFlags() {
        return this.additionalFlags;
    }

    public Binding getBinding() {
        return this.binding;
    }

    @Override
    public char[] getCompletion() {
        if (this.completionKind == 7) {
            findParameterNames(null);
            if (this.updateCompletion) {
                this.updateCompletion = false;
                char[][] cArr = this.parameterNames;
                if (cArr != null) {
                    int length = cArr.length;
                    StringBuffer stringBuffer = new StringBuffer(this.completion.length);
                    int indexOf = CharOperation.indexOf(JavaElement.JEM_PACKAGEDECLARATION, this.completion);
                    stringBuffer.append(this.completion, 0, indexOf);
                    int i10 = 0;
                    while (i10 < length) {
                        stringBuffer.append(this.parameterNames[i10]);
                        int i11 = indexOf + 1;
                        int indexOf2 = CharOperation.indexOf(JavaElement.JEM_PACKAGEDECLARATION, this.completion, i11);
                        if (indexOf2 > -1) {
                            stringBuffer.append(this.completion, i11, indexOf2 - i11);
                        } else {
                            char[] cArr2 = this.completion;
                            stringBuffer.append(cArr2, i11, cArr2.length - i11);
                        }
                        i10++;
                        indexOf = indexOf2;
                    }
                    int length2 = stringBuffer.length();
                    char[] cArr3 = new char[length2];
                    this.completion = cArr3;
                    stringBuffer.getChars(0, length2, cArr3, 0);
                }
            }
        }
        return this.completion;
    }

    @Override
    public int getCompletionLocation() {
        return this.completionLocation;
    }

    @Override
    public char[] getDeclarationKey() {
        return this.declarationKey;
    }

    public char[] getDeclarationPackageName() {
        return this.declarationPackageName;
    }

    @Override
    public char[] getDeclarationSignature() {
        return this.declarationSignature;
    }

    public char[] getDeclarationTypeName() {
        return this.declarationTypeName;
    }

    @Override
    public int getFlags() {
        return this.flags;
    }

    @Override
    public char[] getKey() {
        return this.key;
    }

    @Override
    public int getKind() {
        return this.completionKind;
    }

    public char[] getModuleName() {
        return this.moduleName;
    }

    @Override
    public char[] getName() {
        return this.name;
    }

    public char[] getPackageName() {
        return this.packageName;
    }

    public char[][] getParameterPackageNames() {
        return this.parameterPackageNames;
    }

    public char[][] getParameterTypeNames() {
        return this.parameterTypeNames;
    }

    @Override
    public int getReceiverEnd() {
        return this.receiverEnd;
    }

    @Override
    public char[] getReceiverSignature() {
        return this.receiverSignature;
    }

    @Override
    public int getReceiverStart() {
        return this.receiverStart;
    }

    @Override
    public int getRelevance() {
        return this.relevance;
    }

    @Override
    public int getReplaceEnd() {
        return this.replaceEnd;
    }

    @Override
    public int getReplaceStart() {
        return this.replaceStart;
    }

    @Override
    public CompletionProposal[] getRequiredProposals() {
        return this.requiredProposals;
    }

    @Override
    public char[] getSignature() {
        return this.signature;
    }

    @Override
    public int getTokenEnd() {
        return this.tokenEnd;
    }

    @Override
    public int getTokenStart() {
        return this.tokenStart;
    }

    public char[] getTypeName() {
        return this.typeName;
    }

    @Override
    public boolean isConstructor() {
        return this.isConstructor;
    }

    public void setAccessibility(int i10) {
        this.accessibility = i10;
    }

    @Override
    public void setAdditionalFlags(int i10) {
        this.additionalFlags = i10;
    }

    public void setBinding(Binding binding) {
        this.binding = binding;
    }

    @Override
    public void setCompletion(char[] cArr) {
        this.completion = cArr;
    }

    @Override
    public void setDeclarationKey(char[] cArr) {
        this.declarationKey = cArr;
    }

    public void setDeclarationPackageName(char[] cArr) {
        this.declarationPackageName = cArr;
    }

    @Override
    public void setDeclarationSignature(char[] cArr) {
        this.declarationSignature = cArr;
    }

    public void setDeclarationTypeName(char[] cArr) {
        this.declarationTypeName = cArr;
    }

    @Override
    public void setFlags(int i10) {
        this.flags = i10;
    }

    public void setHasNoParameterNamesFromIndex(boolean z10) {
        this.hasNoParameterNamesFromIndex = z10;
    }

    public void setIsContructor(boolean z10) {
        this.isConstructor = z10;
    }

    @Override
    public void setKey(char[] cArr) {
        this.key = cArr;
    }

    public void setModuleName(char[] cArr) {
        this.moduleName = cArr;
    }

    @Override
    public void setName(char[] cArr) {
        this.name = cArr;
    }

    public void setOriginalSignature(char[] cArr) {
        this.originalSignature = cArr;
    }

    public void setPackageName(char[] cArr) {
        this.packageName = cArr;
    }

    @Override
    public void setParameterNames(char[][] cArr) {
        this.parameterNames = cArr;
        this.parameterNamesComputed = true;
    }

    public void setParameterPackageNames(char[][] cArr) {
        this.parameterPackageNames = cArr;
    }

    public void setParameterTypeNames(char[][] cArr) {
        this.parameterTypeNames = cArr;
    }

    @Override
    public void setReceiverRange(int i10, int i11) {
        this.receiverStart = i10;
        this.receiverEnd = i11;
    }

    @Override
    public void setReceiverSignature(char[] cArr) {
        this.receiverSignature = cArr;
    }

    @Override
    public void setRelevance(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException();
        }
        this.relevance = i10;
    }

    @Override
    public void setReplaceRange(int i10, int i11) {
        if (i10 < 0 || i11 < i10) {
            throw new IllegalArgumentException();
        }
        this.replaceStart = i10;
        this.replaceEnd = i11;
    }

    @Override
    public void setRequiredProposals(CompletionProposal[] completionProposalArr) {
        this.requiredProposals = completionProposalArr;
    }

    @Override
    public void setSignature(char[] cArr) {
        this.signature = cArr;
    }

    @Override
    public void setTokenRange(int i10, int i11) {
        if (i10 < 0 || i11 < i10) {
            throw new IllegalArgumentException();
        }
        this.tokenStart = i10;
        this.tokenEnd = i11;
    }

    public void setTypeName(char[] cArr) {
        this.typeName = cArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        switch (this.completionKind) {
            case 1:
                stringBuffer.append("ANONYMOUS_CLASS_DECLARATION");
                break;
            case 2:
                stringBuffer.append("FIELD_REF");
                break;
            case 3:
                stringBuffer.append("KEYWORD");
                break;
            case 4:
                stringBuffer.append("LABEL_REF");
                break;
            case 5:
                stringBuffer.append("LOCAL_VARIABLE_REF");
                break;
            case 6:
                stringBuffer.append("METHOD_REF");
                if (this.isConstructor) {
                    stringBuffer.append("<CONSTRUCTOR>");
                    break;
                }
                break;
            case 7:
                stringBuffer.append("METHOD_DECLARATION");
                if (this.isConstructor) {
                    stringBuffer.append("<CONSTRUCTOR>");
                    break;
                }
                break;
            case 8:
                stringBuffer.append("PACKAGE_REF");
                break;
            case 9:
                stringBuffer.append("TYPE_REF");
                break;
            case 10:
                stringBuffer.append("VARIABLE_DECLARATION");
                break;
            case 11:
                stringBuffer.append("POTENTIAL_METHOD_DECLARATION");
                break;
            case 12:
                stringBuffer.append("METHOD_NAME_REFERENCE");
                break;
            case 13:
                stringBuffer.append("ANNOTATION_ATTRIBUTE_REF");
                break;
            case 14:
                stringBuffer.append("JAVADOC_FIELD_REF");
                break;
            case 15:
                stringBuffer.append("JAVADOC_METHOD_REF");
                break;
            case 16:
                stringBuffer.append("JAVADOC_TYPE_REF");
                break;
            case 17:
                stringBuffer.append("JAVADOC_VALUE_REF");
                break;
            case 18:
                stringBuffer.append("JAVADOC_PARAM_REF");
                break;
            case 19:
                stringBuffer.append("JAVADOC_BLOCK_TAG");
                break;
            case 20:
                stringBuffer.append("JAVADOC_INLINE_TAG");
                break;
            case 21:
                stringBuffer.append("FIELD_IMPORT");
                break;
            case 22:
                stringBuffer.append("METHOD_IMPORT");
                break;
            case 23:
                stringBuffer.append("TYPE_IMPORT");
                break;
            case 24:
                stringBuffer.append("METHOD_REF_WITH_CASTED_RECEIVER");
                break;
            case 25:
                stringBuffer.append("FIELD_REF_WITH_CASTED_RECEIVER");
                break;
            case 26:
                stringBuffer.append("CONSTRUCTOR_INVOCATION");
                break;
            case 27:
                stringBuffer.append("ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION");
                break;
            case 28:
                stringBuffer.append("MODULE_DECLARATION");
                break;
            case 29:
                stringBuffer.append("MODULE_REF");
                break;
            default:
                stringBuffer.append("PROPOSAL");
                break;
        }
        stringBuffer.append("]{completion:");
        char[] cArr = this.completion;
        if (cArr != null) {
            stringBuffer.append(cArr);
        }
        stringBuffer.append(", declSign:");
        char[] cArr2 = this.declarationSignature;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
        }
        stringBuffer.append(", sign:");
        char[] cArr3 = this.signature;
        if (cArr3 != null) {
            stringBuffer.append(cArr3);
        }
        stringBuffer.append(", declKey:");
        char[] cArr4 = this.declarationKey;
        if (cArr4 != null) {
            stringBuffer.append(cArr4);
        }
        stringBuffer.append(", key:");
        char[] cArr5 = this.key;
        if (cArr5 != null) {
            stringBuffer.append(cArr5);
        }
        stringBuffer.append(", name:");
        char[] cArr6 = this.name;
        if (cArr6 != null) {
            stringBuffer.append(cArr6);
        }
        stringBuffer.append(", replace:[");
        stringBuffer.append(this.replaceStart);
        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        stringBuffer.append(this.replaceEnd);
        stringBuffer.append("], token:[");
        stringBuffer.append(this.tokenStart);
        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        stringBuffer.append(this.tokenEnd);
        stringBuffer.append("], relevance:");
        stringBuffer.append(this.relevance);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }
}
