package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;

public class InferenceVariable extends TypeVariableBinding {
    public boolean isFromInitialSubstitution;
    long nullHints;
    private InferenceVariable prototype;
    InvocationSite site;
    TypeBinding typeParameter;
    int varId;

    public static class InferenceVarKey {
        long position;
        int rank;
        TypeBinding typeParameter;

        public InferenceVarKey(TypeBinding typeBinding, InvocationSite invocationSite, int i10) {
            this.typeParameter = typeBinding;
            this.position = (invocationSite.sourceStart() << 32) + invocationSite.sourceEnd();
            this.rank = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof InferenceVarKey)) {
                return false;
            }
            InferenceVarKey inferenceVarKey = (InferenceVarKey) obj;
            return this.position == inferenceVarKey.position && this.rank == inferenceVarKey.rank && !TypeBinding.notEquals(this.typeParameter, inferenceVarKey.typeParameter);
        }

        public int hashCode() {
            long j10 = this.position;
            return ((((((int) (j10 ^ (j10 >>> 32))) + 31) * 31) + this.rank) * 31) + this.typeParameter.f102482id;
        }
    }

    private InferenceVariable(TypeBinding typeBinding, int i10, int i11, InvocationSite invocationSite, LookupEnvironment lookupEnvironment, ReferenceBinding referenceBinding, boolean z10) {
        this(typeBinding, i10, invocationSite, makeName(typeBinding, i11), lookupEnvironment, referenceBinding);
        this.varId = i11;
        this.isFromInitialSubstitution = z10;
    }

    public static InferenceVariable get(TypeBinding typeBinding, int i10, InvocationSite invocationSite, Scope scope, ReferenceBinding referenceBinding, boolean z10) {
        InferenceVariable inferenceVariable;
        InferenceVarKey inferenceVarKey;
        Map<InferenceVarKey, InferenceVariable> map = scope.compilationUnitScope().uniqueInferenceVariables;
        if (invocationSite == null || typeBinding == null) {
            inferenceVariable = null;
            inferenceVarKey = null;
        } else {
            InferenceVarKey inferenceVarKey2 = new InferenceVarKey(typeBinding, invocationSite, i10);
            inferenceVariable = map.get(inferenceVarKey2);
            inferenceVarKey = inferenceVarKey2;
        }
        if (inferenceVariable != null) {
            return inferenceVariable;
        }
        InferenceVariable inferenceVariable2 = new InferenceVariable(typeBinding, i10, map.size(), invocationSite, scope.environment(), referenceBinding, z10);
        if (inferenceVarKey != null) {
            map.put(inferenceVarKey, inferenceVariable2);
        }
        return inferenceVariable2;
    }

    private static char[] makeName(TypeBinding typeBinding, int i10) {
        return typeBinding.getClass() == TypeVariableBinding.class ? CharOperation.concat(typeBinding.shortReadableName(), Integer.toString(i10).toCharArray(), JavaElement.JEM_IMPORTDECLARATION) : CharOperation.concat(CharOperation.concat('(', typeBinding.shortReadableName(), ')'), Integer.toString(i10).toCharArray(), JavaElement.JEM_IMPORTDECLARATION);
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        InferenceVariable inferenceVariable = new InferenceVariable(this.typeParameter, this.rank, this.site, this.sourceName, this.environment, this.superclass);
        inferenceVariable.tagBits = this.tagBits;
        inferenceVariable.nullHints = this.nullHints;
        inferenceVariable.varId = this.varId;
        inferenceVariable.isFromInitialSubstitution = this.isFromInitialSubstitution;
        inferenceVariable.prototype = this;
        return inferenceVariable;
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        set.add(this);
    }

    @Override
    public char[] constantPoolName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String debugName() {
        return String.valueOf(this.sourceName);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InferenceVariable)) {
            return false;
        }
        InferenceVariable inferenceVariable = (InferenceVariable) obj;
        return this.rank == inferenceVariable.rank && InferenceContext18.isSameSite(this.site, inferenceVariable.site) && TypeBinding.equalsEquals(this.typeParameter, inferenceVariable.typeParameter);
    }

    @Override
    public TypeBinding erasure() {
        if (this.superclass == null) {
            this.superclass = this.environment.getType(TypeConstants.JAVA_LANG_OBJECT);
        }
        return super.erasure();
    }

    @Override
    public PackageBinding getPackage() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean hasTypeBit(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int hashCode() {
        int hashCode = this.typeParameter.hashCode() + (this.rank * 17);
        InvocationSite invocationSite = this.site;
        return invocationSite != null ? (((hashCode * 31) + invocationSite.sourceStart()) * 31) + this.site.sourceEnd() : hashCode;
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return true;
    }

    @Override
    public boolean isProperType(boolean z10) {
        return false;
    }

    @Override
    public char[] qualifiedSourceName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] readableName() {
        return this.sourceName;
    }

    @Override
    public char[] sourceName() {
        return this.sourceName;
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        return TypeBinding.equalsEquals(this, inferenceVariable) ? typeBinding : this;
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        return Binding.NO_SUPERINTERFACES;
    }

    @Override
    public String toString() {
        return debugName();
    }

    @Override
    public InferenceVariable prototype() {
        return this.prototype;
    }

    private InferenceVariable(TypeBinding typeBinding, int i10, InvocationSite invocationSite, char[] cArr, LookupEnvironment lookupEnvironment, ReferenceBinding referenceBinding) {
        super(cArr, null, i10, lookupEnvironment);
        TypeBinding typeBinding2;
        this.site = invocationSite;
        this.typeParameter = typeBinding;
        this.tagBits |= typeBinding.tagBits & TagBits.AnnotationNullMASK;
        if (typeBinding.isTypeVariable() && (typeBinding2 = ((TypeVariableBinding) typeBinding).firstBound) != null) {
            long j10 = typeBinding2.tagBits & TagBits.AnnotationNullMASK;
            if (j10 == 72057594037927936L) {
                this.tagBits = j10 | this.tagBits;
            } else {
                this.nullHints = j10 | this.nullHints;
            }
        }
        this.superclass = referenceBinding;
        this.prototype = this;
    }
}
