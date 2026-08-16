package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class LocalTypeBinding extends NestedTypeBinding {
    static final char[] LocalTypePrefix = {'$', 'L', 'o', 'c', 'a', 'l', '$'};
    private InnerEmulationDependency[] dependents;
    public CaseStatement enclosingCase;
    public MethodBinding enclosingMethod;
    public int sourceStart;

    public LocalTypeBinding(ClassScope classScope, SourceTypeBinding sourceTypeBinding, CaseStatement caseStatement) {
        super(new char[][]{CharOperation.concat(LocalTypePrefix, classScope.referenceContext.name)}, classScope, sourceTypeBinding);
        TypeDeclaration typeDeclaration = classScope.referenceContext;
        if ((typeDeclaration.bits & 512) != 0) {
            this.tagBits |= TagBits.AnonymousTypeMask;
        } else {
            this.tagBits |= TagBits.LocalTypeMask;
        }
        this.enclosingCase = caseStatement;
        this.sourceStart = typeDeclaration.sourceStart;
        MethodBinding referenceMethodBinding = classScope.enclosingMethodScope().referenceMethodBinding();
        if (referenceMethodBinding != null) {
            this.enclosingMethod = referenceMethodBinding;
        }
        MethodScope enclosingLambdaScope = classScope.enclosingLambdaScope();
        if (enclosingLambdaScope != null) {
            ((LambdaExpression) enclosingLambdaScope.referenceContext).addLocalType(this);
        }
    }

    public void addInnerEmulationDependent(BlockScope blockScope, boolean z10) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        InnerEmulationDependency[] innerEmulationDependencyArr = this.dependents;
        int i10 = 0;
        if (innerEmulationDependencyArr == null) {
            this.dependents = new InnerEmulationDependency[1];
        } else {
            int length = innerEmulationDependencyArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (this.dependents[i11].scope == blockScope) {
                    return;
                }
            }
            InnerEmulationDependency[] innerEmulationDependencyArr2 = this.dependents;
            InnerEmulationDependency[] innerEmulationDependencyArr3 = new InnerEmulationDependency[length + 1];
            this.dependents = innerEmulationDependencyArr3;
            System.arraycopy(innerEmulationDependencyArr2, 0, innerEmulationDependencyArr3, 0, length);
            i10 = length;
        }
        this.dependents[i10] = new InnerEmulationDependency(blockScope, z10);
    }

    public ReferenceBinding anonymousOriginalSuperType() {
        ClassScope classScope;
        TypeReference typeReference;
        ClassScope classScope2;
        if (!isPrototype()) {
            return ((LocalTypeBinding) this.prototype).anonymousOriginalSuperType();
        }
        ReferenceBinding referenceBinding = this.superclass;
        if (referenceBinding == null && (classScope2 = this.scope) != null) {
            return classScope2.getJavaLangObject();
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        return referenceBindingArr != Binding.NO_SUPERINTERFACES ? referenceBindingArr[0] : ((this.tagBits & 131072) == 0 || (classScope = this.scope) == null || (typeReference = classScope.referenceContext.allocation.type) == null) ? referenceBinding : (ReferenceBinding) typeReference.resolvedType;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        LocalTypeBinding localTypeBinding = new LocalTypeBinding(this);
        localTypeBinding.enclosingType = (SourceTypeBinding) typeBinding;
        return localTypeBinding;
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        if (!isPrototype()) {
            return this.prototype.computeUniqueKey(z10);
        }
        char[] computeUniqueKey = outermostEnclosingType().computeUniqueKey(z10);
        int lastIndexOf = CharOperation.lastIndexOf(';', computeUniqueKey);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(computeUniqueKey, 0, lastIndexOf);
        stringBuffer.append('$');
        stringBuffer.append(String.valueOf(this.sourceStart));
        if (!isAnonymousType()) {
            stringBuffer.append('$');
            stringBuffer.append(this.sourceName);
        }
        stringBuffer.append(computeUniqueKey, lastIndexOf, computeUniqueKey.length - lastIndexOf);
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public char[] constantPoolName() {
        ClassScope classScope;
        char[] cArr = this.constantPoolName;
        if (cArr != null) {
            return cArr;
        }
        if (!isPrototype()) {
            char[] constantPoolName = this.prototype.constantPoolName();
            this.constantPoolName = constantPoolName;
            return constantPoolName;
        }
        if (this.constantPoolName == null && (classScope = this.scope) != null) {
            this.constantPoolName = classScope.compilationUnitScope().computeConstantPoolName(this);
        }
        return this.constantPoolName;
    }

    @Override
    public MethodBinding enclosingMethod() {
        return this.enclosingMethod;
    }

    @Override
    public char[] genericTypeSignature() {
        if (!isPrototype()) {
            return this.prototype.genericTypeSignature();
        }
        if (this.genericReferenceTypeSignature == null && this.constantPoolName == null) {
            if (isAnonymousType()) {
                setConstantPoolName(superclass().sourceName());
            } else {
                setConstantPoolName(sourceName());
            }
        }
        return super.genericTypeSignature();
    }

    @Override
    public int hashCode() {
        return this.enclosingType.hashCode();
    }

    @Override
    public char[] readableName() {
        char[] concat = isAnonymousType() ? CharOperation.concat(TypeConstants.ANONYM_PREFIX, anonymousOriginalSuperType().readableName(), TypeConstants.ANONYM_SUFFIX) : isMemberType() ? CharOperation.concat(enclosingType().readableName(), this.sourceName, '.') : this.sourceName;
        TypeVariableBinding[] typeVariables = typeVariables();
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            return concat;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(concat);
        stringBuffer.append('<');
        int length = typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(typeVariables[i10].readableName());
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    public void setAsMemberType() {
        if (isPrototype()) {
            this.tagBits |= TagBits.MemberTypeMask;
        } else {
            this.tagBits |= TagBits.MemberTypeMask;
            ((LocalTypeBinding) this.prototype).setAsMemberType();
        }
    }

    public void setConstantPoolName(char[] cArr) {
        if (isPrototype()) {
            this.constantPoolName = cArr;
        } else {
            this.constantPoolName = cArr;
            ((LocalTypeBinding) this.prototype).setConstantPoolName(cArr);
        }
    }

    @Override
    public char[] shortReadableName() {
        char[] concat = isAnonymousType() ? CharOperation.concat(TypeConstants.ANONYM_PREFIX, anonymousOriginalSuperType().shortReadableName(), TypeConstants.ANONYM_SUFFIX) : isMemberType() ? CharOperation.concat(enclosingType().shortReadableName(), this.sourceName, '.') : this.sourceName;
        TypeVariableBinding[] typeVariables = typeVariables();
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            return concat;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(concat);
        stringBuffer.append('<');
        int length = typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(typeVariables[i10].shortReadableName());
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public char[] signature() {
        if (!isPrototype()) {
            return this.prototype.signature();
        }
        if (this.signature == null && this.constantPoolName == null) {
            if (isAnonymousType()) {
                setConstantPoolName(superclass().sourceName());
            } else {
                setConstantPoolName(sourceName());
            }
        }
        return super.signature();
    }

    @Override
    public char[] sourceName() {
        return isAnonymousType() ? CharOperation.concat(TypeConstants.ANONYM_PREFIX, anonymousOriginalSuperType().sourceName(), TypeConstants.ANONYM_SUFFIX) : this.sourceName;
    }

    @Override
    public String toString() {
        if (hasTypeAnnotations()) {
            return String.valueOf(annotatedDebugName()) + " (local)";
        }
        if (isAnonymousType()) {
            return "Anonymous type : " + super.toString();
        }
        if (isMemberType()) {
            return "Local member type : " + new String(sourceName()) + " " + super.toString();
        }
        return "Local type : " + new String(sourceName()) + " " + super.toString();
    }

    public void transferConstantPoolNameTo(TypeBinding typeBinding) {
        char[] cArr = this.constantPoolName;
        if (cArr == null || !(typeBinding instanceof LocalTypeBinding)) {
            return;
        }
        LocalTypeBinding localTypeBinding = (LocalTypeBinding) typeBinding;
        if (localTypeBinding.constantPoolName == null) {
            localTypeBinding.setConstantPoolName(cArr);
            this.scope.compilationUnitScope().constantPoolNameUsage.put(localTypeBinding.constantPoolName, localTypeBinding);
        }
    }

    @Override
    public void updateInnerEmulationDependents() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.dependents == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            InnerEmulationDependency[] innerEmulationDependencyArr = this.dependents;
            if (i10 >= innerEmulationDependencyArr.length) {
                return;
            }
            InnerEmulationDependency innerEmulationDependency = innerEmulationDependencyArr[i10];
            innerEmulationDependency.scope.propagateInnerEmulation(this, innerEmulationDependency.wasEnclosingInstanceSupplied);
            i10++;
        }
    }

    public LocalTypeBinding(LocalTypeBinding localTypeBinding) {
        super(localTypeBinding);
        this.dependents = localTypeBinding.dependents;
        this.enclosingCase = localTypeBinding.enclosingCase;
        this.sourceStart = localTypeBinding.sourceStart;
        this.enclosingMethod = localTypeBinding.enclosingMethod;
    }
}
