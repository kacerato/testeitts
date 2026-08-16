package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;
import yd.C16181m;

public class BinaryMethod extends BinaryMember implements IMethod {
    protected String[] erasedParamaterTypes;
    protected String[] exceptionTypes;
    protected String[] parameterNames;
    protected String[] parameterTypes;
    protected String returnType;

    public final class C1ParametersNameCollector {
        String javadoc;

        public C1ParametersNameCollector() {
        }

        public String getJavadoc() {
            return this.javadoc;
        }

        public void setJavadoc(String str) {
            this.javadoc = str;
        }
    }

    public BinaryMethod(JavaElement javaElement, String str, String[] strArr) {
        super(javaElement, str);
        if (strArr == null) {
            this.parameterTypes = CharOperation.NO_STRINGS;
        } else {
            this.parameterTypes = strArr;
        }
    }

    private String getErasedParameterType(int i10) {
        return getErasedParameterTypes()[i10];
    }

    private String[] getErasedParameterTypes() {
        if (this.erasedParamaterTypes == null) {
            int length = this.parameterTypes.length;
            String[] strArr = new String[length];
            boolean z10 = false;
            for (int i10 = 0; i10 < length; i10++) {
                String str = this.parameterTypes[i10];
                String typeErasure = Signature.getTypeErasure(str);
                strArr[i10] = typeErasure;
                if (typeErasure != str) {
                    z10 = true;
                }
            }
            if (!z10) {
                strArr = this.parameterTypes;
            }
            this.erasedParamaterTypes = strArr;
        }
        return this.erasedParamaterTypes;
    }

    private boolean isOpenParenForMethod(String str, String str2, int i10) {
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            int i12 = i10 - 1;
            if (i12 <= str2.length()) {
                return false;
            }
            char charAt = str.charAt(i12);
            if (i11 > 0) {
                if (!ScannerHelper.isJavaIdentifierPart(charAt) || !ScannerHelper.isJavaIdentifierStart(charAt)) {
                    break;
                }
            } else if (z10) {
                if (charAt == '<') {
                    z10 = false;
                }
            } else if (charAt == '>') {
                z10 = true;
            } else if (ScannerHelper.isJavaIdentifierPart(charAt) || ScannerHelper.isJavaIdentifierStart(charAt)) {
                i11 = i10;
            }
            i10 = i12;
        }
        return str2.equals(str.substring(i10, i11));
    }

    private char[][] splitParameters(char[] cArr, int i10) {
        char[][] cArr2 = new char[i10];
        int length = cArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 < length) {
            char c10 = cArr[i11];
            if (c10 != '&') {
                if (c10 != ',') {
                    if (c10 == '<') {
                        i13++;
                        do {
                            i11++;
                            if (i11 < length) {
                            }
                        } while (cArr[i11] != '>');
                    } else if (c10 == '>') {
                        i13--;
                    }
                } else if (i13 == 0 && i12 < i10) {
                    cArr2[i12] = CharOperation.subarray(cArr, i14, i11);
                    i14 = i11 + 1;
                    i12++;
                }
                i11++;
            } else {
                int i15 = i11 + 4;
                if (i15 < length) {
                    int i16 = i11 + 1;
                    char c11 = cArr[i16];
                    if (c11 == 'l' && cArr[i11 + 2] == 't' && cArr[i11 + 3] == ';') {
                        i13++;
                    } else if (c11 == 'g' && cArr[i11 + 2] == 't' && cArr[i11 + 3] == ';') {
                        i13--;
                    } else {
                        i11 = i16;
                    }
                    i11 = i15;
                } else {
                    i11++;
                }
            }
        }
        if (i12 < i10) {
            cArr2[i12] = CharOperation.subarray(cArr, i14, i11);
            i12++;
        }
        if (i12 == i10) {
            return cArr2;
        }
        char[][] cArr3 = new char[i12];
        System.arraycopy(cArr2, 0, cArr3, 0, i12);
        return cArr3;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof BinaryMethod) && super.equals(obj) && Util.equalArraysOrNull(getErasedParameterTypes(), ((BinaryMethod) obj).getErasedParameterTypes());
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryMethod iBinaryMethod = (IBinaryMethod) getElementInfo();
        return getAnnotations(iBinaryMethod.getAnnotations(), iBinaryMethod.getTagBits());
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents = ((BinaryType) getDeclaringType()).getJavadocContents(iProgressMonitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getMethodDoc(this);
    }

    @Override
    public IMemberValuePair getDefaultValue() throws JavaModelException {
        Object defaultValue = ((IBinaryMethod) getElementInfo()).getDefaultValue();
        if (defaultValue == null) {
            return null;
        }
        MemberValuePair memberValuePair = new MemberValuePair(getElementName());
        memberValuePair.value = Util.getAnnotationMemberValue(this, memberValuePair, defaultValue);
        return memberValuePair;
    }

    @Override
    public int getElementType() {
        return 9;
    }

    @Override
    public String[] getExceptionTypes() throws JavaModelException {
        if (this.exceptionTypes == null) {
            IBinaryMethod iBinaryMethod = (IBinaryMethod) getElementInfo();
            char[] genericSignature = iBinaryMethod.getGenericSignature();
            if (genericSignature != null) {
                this.exceptionTypes = Signature.getThrownExceptionTypes(new String(CharOperation.replaceOnCopy(genericSignature, '/', '.')));
            }
            String[] strArr = this.exceptionTypes;
            if (strArr == null || strArr.length == 0) {
                char[][] exceptionTypeNames = iBinaryMethod.getExceptionTypeNames();
                if (exceptionTypeNames == null || exceptionTypeNames.length == 0) {
                    this.exceptionTypes = CharOperation.NO_STRINGS;
                } else {
                    char[][] translatedNames = ClassFile.translatedNames(exceptionTypeNames);
                    this.exceptionTypes = new String[translatedNames.length];
                    int length = translatedNames.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        char[] cArr = translatedNames[i10];
                        int length2 = cArr.length;
                        char[] cArr2 = new char[length2 + 2];
                        System.arraycopy(cArr, 0, cArr2, 1, length2);
                        cArr2[0] = 'L';
                        cArr2[length2 + 1] = ';';
                        this.exceptionTypes[i10] = new String(cArr2);
                    }
                }
            }
        }
        return this.exceptionTypes;
    }

    @Override
    public int getFlags() throws JavaModelException {
        int modifiers = ((IBinaryMethod) getElementInfo()).getModifiers();
        return (((IType) this.parent).isInterface() && (modifiers & 1032) == 0) ? modifiers | 65536 : modifiers;
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        char handleMementoDelimiter = getHandleMementoDelimiter();
        stringBuffer.append(handleMementoDelimiter);
        escapeMementoName(stringBuffer, getElementName());
        for (int i10 = 0; i10 < this.parameterTypes.length; i10++) {
            stringBuffer.append(handleMementoDelimiter);
            escapeMementoName(stringBuffer, this.parameterTypes[i10]);
        }
        if (this.occurrenceCount > 1) {
            stringBuffer.append('!');
            stringBuffer.append(this.occurrenceCount);
        }
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_METHOD;
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return getKey(this, z10);
    }

    @Override
    public int getNumberOfParameters() {
        String[] strArr = this.parameterTypes;
        if (strArr == null) {
            return 0;
        }
        return strArr.length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00e3  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String[] getParameterNames() throws JavaModelException {
        JavadocContents javadocContents;
        long j10;
        String javadoc;
        String option;
        int indexOf;
        int i10 = 0;
        String[] strArr = this.parameterNames;
        if (strArr != null) {
            return strArr;
        }
        IType iType = (IType) getParent();
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null) {
            char[][] methodParameterNames = sourceMapper.getMethodParameterNames(this);
            if (methodParameterNames == null) {
                IBinaryType iBinaryType = (IBinaryType) ((BinaryType) getDeclaringType()).getElementInfo();
                char[] findSource = sourceMapper.findSource(iType, iBinaryType);
                if (findSource != null) {
                    sourceMapper.mapSource((NamedMember) iType, findSource, iBinaryType);
                }
                methodParameterNames = sourceMapper.getMethodParameterNames(this);
            }
            if (methodParameterNames != null) {
                String[] strArr2 = new String[methodParameterNames.length];
                while (i10 < methodParameterNames.length) {
                    strArr2[i10] = new String(methodParameterNames[i10]);
                    i10++;
                }
                this.parameterNames = strArr2;
                return strArr2;
            }
        }
        IBinaryMethod iBinaryMethod = (IBinaryMethod) getElementInfo();
        int parameterCount = Signature.getParameterCount(new String(iBinaryMethod.getMethodDescriptor()));
        if (isConstructor()) {
            IType declaringType = getDeclaringType();
            if (declaringType.isMember() && !Flags.isStatic(declaringType.getFlags())) {
                parameterCount--;
            } else if (declaringType.isEnum() && parameterCount >= 2) {
                parameterCount -= 2;
            }
        }
        if (parameterCount != 0) {
            if ((getFlags() & 4096) != 0) {
                String[] rawParameterNames = getRawParameterNames(parameterCount);
                this.parameterNames = rawParameterNames;
                return rawParameterNames;
            }
            IType declaringType2 = getDeclaringType();
            JavaModelManager.PerProjectInfo perProjectInfoCheckExistence = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(getJavaProject().getProject());
            synchronized (perProjectInfoCheckExistence.javadocCache) {
                try {
                    javadocContents = (JavadocContents) perProjectInfoCheckExistence.javadocCache.get(declaringType2);
                    if (javadocContents == null) {
                        perProjectInfoCheckExistence.javadocCache.put(declaringType2, BinaryType.EMPTY_JAVADOC);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (javadocContents == null) {
                try {
                    option = getJavaProject().getOption(JavaCore.TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC, true);
                } catch (NumberFormatException unused) {
                }
                if (option != null) {
                    j10 = Long.parseLong(option);
                    if (j10 != 0) {
                        return getRawParameterNames(parameterCount);
                    }
                    final C1ParametersNameCollector c1ParametersNameCollector = new C1ParametersNameCollector();
                    new Thread() {
                        @Override
                        public void run() {
                            try {
                                c1ParametersNameCollector.setJavadoc(BinaryMethod.this.getAttachedJavadoc(null));
                            } catch (JavaModelException unused2) {
                            }
                            synchronized (c1ParametersNameCollector) {
                                c1ParametersNameCollector.notify();
                            }
                        }
                    }.start();
                    synchronized (c1ParametersNameCollector) {
                        try {
                            c1ParametersNameCollector.wait(j10);
                        } catch (InterruptedException unused2) {
                        }
                    }
                    javadoc = c1ParametersNameCollector.getJavadoc();
                }
                j10 = 50;
                if (j10 != 0) {
                }
            } else {
                if (javadocContents != BinaryType.EMPTY_JAVADOC) {
                    try {
                        javadoc = javadocContents.getMethodDoc(this);
                    } catch (JavaModelException unused3) {
                    }
                }
                javadoc = null;
            }
            if (javadoc != null) {
                int indexOf2 = javadoc.indexOf(40);
                if (iBinaryMethod.getAnnotations() != null) {
                    while (indexOf2 != -1 && !isOpenParenForMethod(javadoc, getElementName(), indexOf2)) {
                        indexOf2 = javadoc.indexOf(40, indexOf2 + 1);
                    }
                }
                if (indexOf2 != -1 && (indexOf = javadoc.indexOf(41, indexOf2)) != -1) {
                    char[][] splitParameters = splitParameters(CharOperation.replace(javadoc.substring(indexOf2 + 1, indexOf).toCharArray(), "&nbsp;".toCharArray(), new char[]{C15883c.f126249O}), parameterCount);
                    int length = splitParameters.length;
                    String[] strArr3 = new String[length];
                    while (i10 < length) {
                        char[] cArr = splitParameters[i10];
                        int lastIndexOf = CharOperation.lastIndexOf(C15883c.f126249O, cArr);
                        if (lastIndexOf != -1) {
                            strArr3[i10] = String.valueOf(cArr, lastIndexOf + 1, (cArr.length - lastIndexOf) - 1);
                        } else {
                            strArr3[i10] = "arg" + i10;
                        }
                        i10++;
                    }
                    this.parameterNames = strArr3;
                    return strArr3;
                }
            }
            char[][] argumentNames = iBinaryMethod.getArgumentNames();
            if (argumentNames != null && argumentNames.length == parameterCount) {
                String[] strArr4 = new String[parameterCount];
                while (i10 < parameterCount) {
                    strArr4[i10] = new String(argumentNames[i10]);
                    i10++;
                }
                this.parameterNames = strArr4;
                return strArr4;
            }
        }
        return getRawParameterNames(parameterCount);
    }

    @Override
    public String[] getParameterTypes() {
        return this.parameterTypes;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ILocalVariable[] getParameters() throws JavaModelException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        IBinaryMethod iBinaryMethod = (IBinaryMethod) getElementInfo();
        int length = this.parameterTypes.length;
        if (length == 0) {
            return LocalVariable.NO_LOCAL_VARIABLES;
        }
        ILocalVariable[] iLocalVariableArr = new ILocalVariable[length];
        char[][] argumentNames = iBinaryMethod.getArgumentNames();
        if (argumentNames == null || argumentNames.length < length) {
            argumentNames = new char[length];
            for (int i16 = 0; i16 < length; i16++) {
                argumentNames[i16] = ("arg" + i16).toCharArray();
            }
        }
        char[][] cArr = argumentNames;
        if (isConstructor()) {
            IType declaringType = getDeclaringType();
            if (!declaringType.isEnum()) {
                if (declaringType.isMember()) {
                    i15 = Flags.isStatic(declaringType.getFlags()) ? 2 : 1;
                }
            }
            i10 = i15;
            i11 = 0;
            while (i11 < length) {
                if (i11 < i10) {
                    i12 = i11;
                    i13 = i10;
                    LocalVariable localVariable = new LocalVariable(this, new String(cArr[i11]), 0, -1, 0, -1, this.parameterTypes[i11], null, -1, true);
                    iLocalVariableArr[i12] = localVariable;
                    localVariable.annotations = Annotation.NO_ANNOTATIONS;
                    i14 = length;
                } else {
                    i12 = i11;
                    i13 = i10;
                    i14 = length;
                    LocalVariable localVariable2 = new LocalVariable(this, new String(cArr[i12]), 0, -1, 0, -1, this.parameterTypes[i12], null, -1, true);
                    iLocalVariableArr[i12] = localVariable2;
                    localVariable2.annotations = getAnnotations(localVariable2, iBinaryMethod.getParameterAnnotations(i12 - i13, getDeclaringType().getElementName().toCharArray()));
                }
                i11 = i12 + 1;
                i10 = i13;
                length = i14;
            }
            return iLocalVariableArr;
        }
        i10 = 0;
        i11 = 0;
        while (i11 < length) {
        }
        return iLocalVariableArr;
    }

    @Override
    public String[] getRawParameterNames() throws JavaModelException {
        return getRawParameterNames(Signature.getParameterCount(new String(((IBinaryMethod) getElementInfo()).getMethodDescriptor())));
    }

    @Override
    public String getReturnType() throws JavaModelException {
        if (this.returnType == null) {
            this.returnType = getReturnType((IBinaryMethod) getElementInfo());
        }
        return this.returnType;
    }

    @Override
    public String getSignature() throws JavaModelException {
        return new String(((IBinaryMethod) getElementInfo()).getMethodDescriptor());
    }

    @Override
    public ITypeParameter getTypeParameter(String str) {
        return new TypeParameter(this, str);
    }

    @Override
    public String[] getTypeParameterSignatures() throws JavaModelException {
        char[] genericSignature = ((IBinaryMethod) getElementInfo()).getGenericSignature();
        return genericSignature == null ? CharOperation.NO_STRINGS : CharOperation.toStrings(Signature.getTypeParameters(CharOperation.replaceOnCopy(genericSignature, '/', '.')));
    }

    @Override
    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        String[] typeParameterSignatures = getTypeParameterSignatures();
        int length = typeParameterSignatures.length;
        if (length == 0) {
            return TypeParameter.NO_TYPE_PARAMETERS;
        }
        ITypeParameter[] iTypeParameterArr = new ITypeParameter[length];
        for (int i10 = 0; i10 < typeParameterSignatures.length; i10++) {
            iTypeParameterArr[i10] = new TypeParameter(this, Signature.getTypeVariable(typeParameterSignatures[i10]));
        }
        return iTypeParameterArr;
    }

    @Override
    public int hashCode() {
        int hashCode = super.hashCode();
        int length = this.parameterTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            hashCode = Util.combineHashCodes(hashCode, getErasedParameterType(i10).hashCode());
        }
        return hashCode;
    }

    @Override
    public boolean isConstructor() throws JavaModelException {
        if (getElementName().equals(this.parent.getElementName())) {
            return ((IBinaryMethod) getElementInfo()).isConstructor();
        }
        return false;
    }

    @Override
    public boolean isLambdaMethod() {
        return false;
    }

    @Override
    public boolean isMainMethod() throws JavaModelException {
        return isMainMethod(this);
    }

    @Override
    public boolean isResolved() {
        return false;
    }

    @Override
    public boolean isSimilar(IMethod iMethod) {
        return Member.areSimilarMethods(getElementName(), getParameterTypes(), iMethod.getElementName(), iMethod.getParameterTypes(), null);
    }

    @Override
    public String readableName() {
        int length;
        StringBuffer stringBuffer = new StringBuffer(super.readableName());
        stringBuffer.append("(");
        String[] strArr = this.parameterTypes;
        if (strArr != null && (length = strArr.length) > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(Signature.toString(strArr[i10]));
                if (i10 < length - 1) {
                    stringBuffer.append(", ");
                }
            }
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    @Override
    public JavaElement resolved(Binding binding) {
        ResolvedBinaryMethod resolvedBinaryMethod = new ResolvedBinaryMethod(this.parent, this.name, this.parameterTypes, new String(binding.computeUniqueKey()));
        resolvedBinaryMethod.occurrenceCount = this.occurrenceCount;
        return resolvedBinaryMethod;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj == null) {
            toStringName(stringBuffer);
            stringBuffer.append(" (not open)");
            return;
        }
        if (obj == JavaElement.NO_INFO) {
            toStringName(stringBuffer);
            return;
        }
        IBinaryMethod iBinaryMethod = (IBinaryMethod) obj;
        int modifiers = iBinaryMethod.getModifiers();
        if (Flags.isStatic(modifiers)) {
            stringBuffer.append("static ");
        }
        if (!iBinaryMethod.isConstructor()) {
            stringBuffer.append(Signature.toString(getReturnType(iBinaryMethod)));
            stringBuffer.append(C15883c.f126249O);
        }
        toStringName(stringBuffer, modifiers);
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        toStringName(stringBuffer, 0);
    }

    public void toStringName(StringBuffer stringBuffer, int i10) {
        int length;
        stringBuffer.append(getElementName());
        stringBuffer.append('(');
        String[] parameterTypes = getParameterTypes();
        if (parameterTypes != null && (length = parameterTypes.length) > 0) {
            boolean isVarargs = Flags.isVarargs(i10);
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 < length - 1) {
                    try {
                        stringBuffer.append(Signature.toString(parameterTypes[i11]));
                        stringBuffer.append(", ");
                    } catch (IllegalArgumentException unused) {
                        stringBuffer.append("*** invalid signature: ");
                        stringBuffer.append(parameterTypes[i11]);
                    }
                } else if (isVarargs) {
                    stringBuffer.append(Signature.toString(parameterTypes[i11].substring(1)));
                    stringBuffer.append(" ...");
                } else {
                    stringBuffer.append(Signature.toString(parameterTypes[i11]));
                }
            }
        }
        stringBuffer.append(')');
        if (this.occurrenceCount > 1) {
            stringBuffer.append(C16181m.f130230g);
            stringBuffer.append(this.occurrenceCount);
        }
    }

    private IAnnotation[] getAnnotations(JavaElement javaElement, IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr == null) {
            return Annotation.NO_ANNOTATIONS;
        }
        int length = iBinaryAnnotationArr.length;
        IAnnotation[] iAnnotationArr = new IAnnotation[length];
        for (int i10 = 0; i10 < length; i10++) {
            iAnnotationArr[i10] = Util.getAnnotation(javaElement, iBinaryAnnotationArr[i10], null);
        }
        return iAnnotationArr;
    }

    private String[] getRawParameterNames(int i10) {
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "arg" + i11;
        }
        return strArr;
    }

    private String getReturnType(IBinaryMethod iBinaryMethod) {
        char[] genericSignature = iBinaryMethod.getGenericSignature();
        if (genericSignature == null) {
            genericSignature = iBinaryMethod.getMethodDescriptor();
        }
        return new String(ClassFile.translatedName(Signature.getReturnType(new String(CharOperation.replaceOnCopy(genericSignature, '/', '.'))).toCharArray()));
    }
}
