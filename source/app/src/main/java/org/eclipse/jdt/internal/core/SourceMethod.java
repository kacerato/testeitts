package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;
import yd.C16181m;

public class SourceMethod extends NamedMember implements IMethod {
    protected String[] parameterTypes;

    public SourceMethod(JavaElement javaElement, String str, String[] strArr) {
        super(javaElement, str);
        if (strArr == null) {
            this.parameterTypes = CharOperation.NO_STRINGS;
        } else {
            this.parameterTypes = strArr;
        }
    }

    @Override
    public void closing(Object obj) throws JavaModelException {
        super.closing(obj);
        for (ITypeParameter iTypeParameter : ((SourceMethodElementInfo) obj).typeParameters) {
            ((TypeParameter) iTypeParameter).close();
        }
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof SourceMethod) && super.equals(obj) && Util.equalArraysOrNull(this.parameterTypes, ((SourceMethod) obj).parameterTypes);
    }

    @Override
    public IMemberValuePair getDefaultValue() throws JavaModelException {
        SourceMethodElementInfo sourceMethodElementInfo = (SourceMethodElementInfo) getElementInfo();
        if (sourceMethodElementInfo.isAnnotationMethod()) {
            return ((SourceAnnotationMethodInfo) sourceMethodElementInfo).defaultValue;
        }
        return null;
    }

    @Override
    public int getElementType() {
        return 9;
    }

    @Override
    public String[] getExceptionTypes() throws JavaModelException {
        return CompilationUnitStructureRequestor.convertTypeNamesToSigs(((SourceMethodElementInfo) getElementInfo()).getExceptionTypeNames());
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

    public String getKey() {
        try {
            return getKey((IMethod) this, false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public int getNumberOfParameters() {
        String[] strArr = this.parameterTypes;
        if (strArr == null) {
            return 0;
        }
        return strArr.length;
    }

    @Override
    public String[] getParameterNames() throws JavaModelException {
        return CharOperation.toStrings(((SourceMethodElementInfo) getElementInfo()).getArgumentNames());
    }

    @Override
    public String[] getParameterTypes() {
        return this.parameterTypes;
    }

    @Override
    public ILocalVariable[] getParameters() throws JavaModelException {
        ILocalVariable[] iLocalVariableArr = ((SourceMethodElementInfo) getElementInfo()).arguments;
        return iLocalVariableArr == null ? LocalVariable.NO_LOCAL_VARIABLES : iLocalVariableArr;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return (z10 && ((CompilationUnit) getAncestor(5)).isPrimary()) ? this : ((IType) this.parent.getPrimaryElement(false)).getMethod(this.name, this.parameterTypes);
    }

    @Override
    public String[] getRawParameterNames() throws JavaModelException {
        return getParameterNames();
    }

    public String getReturnType() throws JavaModelException {
        return Signature.createTypeSignature(((SourceMethodElementInfo) getElementInfo()).getReturnTypeName(), false);
    }

    public String getSignature() throws JavaModelException {
        return Signature.createMethodSignature(this.parameterTypes, Signature.createTypeSignature(((SourceMethodElementInfo) getElementInfo()).getReturnTypeName(), false));
    }

    public ITypeParameter getTypeParameter(String str) {
        return new TypeParameter(this, str);
    }

    @Override
    public String[] getTypeParameterSignatures() throws JavaModelException {
        ITypeParameter[] typeParameters = getTypeParameters();
        int length = typeParameters.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeParameter typeParameter = (TypeParameter) typeParameters[i10];
            char[][] cArr = ((TypeParameterElementInfo) typeParameter.getElementInfo()).bounds;
            if (cArr == null) {
                strArr[i10] = Signature.createTypeParameterSignature(typeParameter.getElementName(), CharOperation.NO_STRINGS);
            } else {
                int length2 = cArr.length;
                char[][] cArr2 = new char[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    cArr2[i11] = Signature.createCharArrayTypeSignature(cArr[i11], false);
                }
                strArr[i10] = new String(Signature.createTypeParameterSignature(typeParameter.getElementName().toCharArray(), cArr2));
            }
        }
        return strArr;
    }

    @Override
    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        return ((SourceMethodElementInfo) getElementInfo()).typeParameters;
    }

    @Override
    public int hashCode() {
        int hashCode = super.hashCode();
        int length = this.parameterTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            hashCode = Util.combineHashCodes(hashCode, this.parameterTypes[i10].hashCode());
        }
        return hashCode;
    }

    @Override
    public boolean isConstructor() throws JavaModelException {
        if (getElementName().equals(this.parent.getElementName())) {
            return ((SourceMethodElementInfo) getElementInfo()).isConstructor();
        }
        return false;
    }

    public boolean isLambdaMethod() {
        return false;
    }

    @Override
    public boolean isMainMethod() throws JavaModelException {
        return isMainMethod(this);
    }

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
        stringBuffer.append('(');
        String[] strArr = this.parameterTypes;
        if (strArr != null && (length = strArr.length) > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(Signature.toString(this.parameterTypes[i10]));
                if (i10 < length - 1) {
                    stringBuffer.append(", ");
                }
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    @Override
    public JavaElement resolved(Binding binding) {
        ResolvedSourceMethod resolvedSourceMethod = new ResolvedSourceMethod(this.parent, this.name, this.parameterTypes, new String(binding.computeUniqueKey()));
        resolvedSourceMethod.occurrenceCount = this.occurrenceCount;
        return resolvedSourceMethod;
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
        SourceMethodElementInfo sourceMethodElementInfo = (SourceMethodElementInfo) obj;
        int modifiers = sourceMethodElementInfo.getModifiers();
        if (Flags.isStatic(modifiers)) {
            stringBuffer.append("static ");
        }
        if (!sourceMethodElementInfo.isConstructor()) {
            stringBuffer.append(sourceMethodElementInfo.getReturnTypeName());
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
}
