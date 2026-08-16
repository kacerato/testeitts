package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;

public class RawTypeBinding extends ParameterizedTypeBinding {
    public RawTypeBinding(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, LookupEnvironment lookupEnvironment) {
        super(referenceBinding, null, referenceBinding2, lookupEnvironment);
        long j10 = this.tagBits & (-129);
        this.tagBits = j10;
        if ((referenceBinding.tagBits & 128) != 0) {
            if (referenceBinding instanceof MissingTypeBinding) {
                this.tagBits = j10 | 128;
            } else if ((referenceBinding instanceof ParameterizedTypeBinding) && (((ParameterizedTypeBinding) referenceBinding).genericType() instanceof MissingTypeBinding)) {
                this.tagBits |= 128;
            }
        }
        if (referenceBinding2 != null && (referenceBinding2.tagBits & 128) != 0) {
            if (referenceBinding2 instanceof MissingTypeBinding) {
                this.tagBits |= 128;
            } else if ((referenceBinding2 instanceof ParameterizedTypeBinding) && (((ParameterizedTypeBinding) referenceBinding2).genericType() instanceof MissingTypeBinding)) {
                this.tagBits |= 128;
            }
        }
        if (referenceBinding2 == null || !hasEnclosingInstanceContext() || (referenceBinding2.modifiers & 1073741824) == 0) {
            this.modifiers &= -1073741825;
        }
    }

    @Override
    public String annotatedDebugName() {
        StringBuffer stringBuffer = new StringBuffer(super.annotatedDebugName());
        stringBuffer.append("#RAW");
        return stringBuffer.toString();
    }

    @Override
    public ParameterizedTypeBinding capture(Scope scope, int i10, int i11) {
        return this;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new RawTypeBinding(actualType(), (ReferenceBinding) typeBinding, this.environment);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType() && (enclosingType().isParameterizedType() || enclosingType().isRawType())) {
            if (hasEnclosingInstanceContext()) {
                stringBuffer.append(enclosingType().computeUniqueKey(false), 0, r0.length - 1);
                stringBuffer.append('.');
            } else {
                stringBuffer.append(enclosingType().signature(), 0, r0.length - 1);
                stringBuffer.append('$');
            }
            stringBuffer.append(sourceName());
            if (genericType().typeVariables() != Binding.NO_TYPE_VARIABLES) {
                stringBuffer.append('<');
                stringBuffer.append('>');
            }
            stringBuffer.append(';');
        } else {
            stringBuffer.append(genericType().computeUniqueKey(false));
            stringBuffer.insert(stringBuffer.length() - 1, "<>");
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public ParameterizedMethodBinding createParameterizedMethod(MethodBinding methodBinding) {
        return (methodBinding.typeVariables == Binding.NO_TYPE_VARIABLES || methodBinding.isStatic()) ? super.createParameterizedMethod(methodBinding) : this.environment.createParameterizedGenericMethod(methodBinding, this);
    }

    @Override
    public String debugName() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(actualType().sourceName());
        stringBuffer.append("#RAW");
        return stringBuffer.toString();
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    @Override
    public ReferenceBinding enclosingType() {
        return this.enclosingType;
    }

    @Override
    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            if ((this.modifiers & 1073741824) == 0) {
                this.genericTypeSignature = genericType().signature();
            } else {
                StringBuffer stringBuffer = new StringBuffer(10);
                if (isMemberType() && hasEnclosingInstanceContext()) {
                    ReferenceBinding enclosingType = enclosingType();
                    stringBuffer.append(enclosingType.genericTypeSignature(), 0, r4.length - 1);
                    if ((1073741824 & enclosingType.modifiers) != 0) {
                        stringBuffer.append('.');
                    } else {
                        stringBuffer.append('$');
                    }
                    stringBuffer.append(sourceName());
                } else {
                    stringBuffer.append(genericType().signature(), 0, r1.length - 1);
                }
                stringBuffer.append(';');
                int length = stringBuffer.length();
                char[] cArr = new char[length];
                this.genericTypeSignature = cArr;
                stringBuffer.getChars(0, length, cArr, 0);
            }
        }
        return this.genericTypeSignature;
    }

    @Override
    public MethodBinding getSingleAbstractMethod(Scope scope, boolean z10) {
        int i10 = !z10 ? 1 : 0;
        MethodBinding[] methodBindingArr = this.singleAbstractMethod;
        if (methodBindingArr != null) {
            MethodBinding methodBinding = methodBindingArr[i10];
            if (methodBinding != null) {
                return methodBinding;
            }
        } else {
            this.singleAbstractMethod = new MethodBinding[2];
        }
        ReferenceBinding genericType = genericType();
        MethodBinding singleAbstractMethod = genericType.getSingleAbstractMethod(scope, z10);
        if (singleAbstractMethod == null || !singleAbstractMethod.isValidBinding()) {
            this.singleAbstractMethod[i10] = singleAbstractMethod;
            return singleAbstractMethod;
        }
        MethodBinding[] methods = ((ReferenceBinding) ((ReferenceBinding) scope.environment().convertToRawType(genericType, true)).findSuperTypeOriginatingFrom(singleAbstractMethod.declaringClass)).getMethods(singleAbstractMethod.selector);
        int length = methods.length;
        int i11 = 0;
        while (true) {
            if (i11 < length) {
                MethodBinding methodBinding2 = methods[i11];
                if (methodBinding2.isAbstract() && !methodBinding2.redeclaresPublicObjectMethod(scope)) {
                    this.singleAbstractMethod[i10] = methodBinding2;
                    break;
                }
                i11++;
            } else {
                break;
            }
        }
        return this.singleAbstractMethod[i10];
    }

    @Override
    public void initializeArguments() {
        TypeVariableBinding[] typeVariables = genericType().typeVariables();
        int length = typeVariables.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr[i10] = this.environment.convertToRawType(typeVariables[i10].erasure(), false);
        }
        this.arguments = typeBindingArr;
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this, typeBinding) || TypeBinding.equalsEquals(erasure(), typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        int kind = typeBinding.kind();
        if (kind != 260) {
            if (kind != 516) {
                if (kind != 1028 && kind != 2052) {
                    if (kind != 8196) {
                        return false;
                    }
                }
            }
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        return TypeBinding.equalsEquals(erasure(), typeBinding.erasure());
    }

    @Override
    public boolean isParameterizedType() {
        return false;
    }

    @Override
    public boolean isProperType(boolean z10) {
        ReferenceBinding actualType = actualType();
        return actualType != null && actualType.isProperType(z10);
    }

    @Override
    public boolean isProvablyDistinct(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this, typeBinding) || TypeBinding.equalsEquals(erasure(), typeBinding)) {
            return false;
        }
        if (typeBinding == null) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 260 || kind == 1028 || kind == 2052) {
            return TypeBinding.notEquals(erasure(), typeBinding.erasure());
        }
        return true;
    }

    @Override
    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        if (z10) {
            typeBinding = this.environment.convertToRawType(typeBinding.erasure(), false);
        }
        return super.isSubtypeOf(typeBinding, z10);
    }

    @Override
    public int kind() {
        return 1028;
    }

    @Override
    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        return false;
    }

    @Override
    public char[] readableName(boolean z10) {
        if (isMemberType()) {
            return CharOperation.concat(enclosingType().readableName(z10 && hasEnclosingInstanceContext()), this.sourceName, '.');
        }
        return CharOperation.concatWith(actualType().compoundName, '.');
    }

    @Override
    public char[] shortReadableName(boolean z10) {
        if (isMemberType()) {
            return CharOperation.concat(enclosingType().shortReadableName(z10 && hasEnclosingInstanceContext()), this.sourceName, '.');
        }
        return actualType().sourceName;
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        return this;
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        return this;
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        return this.environment.createRawType((ReferenceBinding) this.environment.getUnannotatedType(genericType()), enclosingType(), this.environment.filterNullTypeAnnotations(this.typeAnnotations));
    }
}
