package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Set;
import org.eclipse.jdt.core.compiler.InvalidInputException;

public class IntersectionTypeBinding18 extends ReferenceBinding {
    public ReferenceBinding[] intersectingTypes;
    private ReferenceBinding javaLangObject;
    int length;

    public IntersectionTypeBinding18(ReferenceBinding[] referenceBindingArr, LookupEnvironment lookupEnvironment) {
        this.intersectingTypes = referenceBindingArr;
        this.length = referenceBindingArr.length;
        if (referenceBindingArr[0].isClass()) {
            return;
        }
        this.javaLangObject = lookupEnvironment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null);
        this.modifiers |= 512;
    }

    @Override
    public boolean canBeInstantiated() {
        return false;
    }

    @Override
    public boolean canBeSeenBy(PackageBinding packageBinding) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (!this.intersectingTypes[i10].canBeSeenBy(packageBinding)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new IntersectionTypeBinding18(this);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        int i10 = 0;
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.intersectingTypes;
            if (i10 >= referenceBindingArr.length) {
                return;
            }
            referenceBindingArr[i10].collectInferenceVariables(set);
            i10++;
        }
    }

    @Override
    public char[] constantPoolName() {
        TypeBinding erasure = erasure();
        if (erasure != this) {
            return erasure.constantPoolName();
        }
        ReferenceBinding[] referenceBindingArr = this.intersectingTypes;
        ReferenceBinding referenceBinding = referenceBindingArr[0];
        return (referenceBinding.f102482id != 1 || referenceBindingArr.length <= 1) ? referenceBinding.constantPoolName() : referenceBindingArr[1].constantPoolName();
    }

    @Override
    public String debugName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.intersectingTypes[i10].debugName());
            if (i10 != this.length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding erasure() {
        int i10 = 0;
        int i11 = -1;
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.intersectingTypes;
            if (i10 >= referenceBindingArr.length) {
                break;
            }
            if (referenceBindingArr[i10].isClass() && this.intersectingTypes[i10].f102482id != 1) {
                if (i11 != -1) {
                    i11 = Integer.MAX_VALUE;
                    break;
                }
                i11 = i10;
            }
            i10++;
        }
        return (i11 <= -1 || i11 >= Integer.MAX_VALUE) ? this : this.intersectingTypes[i11].erasure();
    }

    @Override
    public MethodBinding[] getInterfaceAbstractContracts(Scope scope, boolean z10, boolean z11) throws InvalidInputException {
        int length = this.intersectingTypes.length;
        MethodBinding[][] methodBindingArr = new MethodBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            MethodBinding[] interfaceAbstractContracts = this.intersectingTypes[i11].getInterfaceAbstractContracts(scope, z10, true);
            methodBindingArr[i11] = interfaceAbstractContracts;
            i10 += interfaceAbstractContracts.length;
        }
        MethodBinding[] methodBindingArr2 = new MethodBinding[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            MethodBinding[] methodBindingArr3 = methodBindingArr[i13];
            int length2 = methodBindingArr3.length;
            System.arraycopy(methodBindingArr3, 0, methodBindingArr2, i12, length2);
            i12 += length2;
        }
        return methodBindingArr2;
    }

    @Override
    public ReferenceBinding[] getIntersectingTypes() {
        return this.intersectingTypes;
    }

    @Override
    public PackageBinding getPackage() {
        throw new UnsupportedOperationException();
    }

    public TypeBinding getSAMType(Scope scope) {
        int length = this.intersectingTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            ReferenceBinding referenceBinding = this.intersectingTypes[i10];
            MethodBinding singleAbstractMethod = referenceBinding.getSingleAbstractMethod(scope, true);
            if (singleAbstractMethod != null && singleAbstractMethod.problemId() != 17) {
                return referenceBinding;
            }
        }
        return null;
    }

    @Override
    public boolean hasTypeBit(int i10) {
        for (int i11 = 0; i11 < this.length; i11++) {
            if (this.intersectingTypes[i11].hasTypeBit(i10)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isBoxedPrimitiveType() {
        return this.intersectingTypes[0].isBoxedPrimitiveType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        r4 = r4 + 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        ReferenceBinding[] referenceBindingArr;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 8196 && typeBinding.boundKind() == 1) {
            TypeBinding allBounds = ((WildcardBinding) typeBinding).allBounds();
            if (allBounds instanceof IntersectionTypeBinding18) {
                referenceBindingArr = ((IntersectionTypeBinding18) allBounds).intersectingTypes;
            }
            referenceBindingArr = null;
        } else {
            if (kind == 32772) {
                referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
            }
            referenceBindingArr = null;
        }
        if (referenceBindingArr == null) {
            for (int i10 = 0; i10 < this.length; i10++) {
                if (this.intersectingTypes[i10].isCompatibleWith(typeBinding, scope)) {
                    return true;
                }
            }
            return false;
        }
        int length = referenceBindingArr.length;
        int i11 = 0;
        while (i11 < length) {
            ReferenceBinding referenceBinding = referenceBindingArr[i11];
            for (ReferenceBinding referenceBinding2 : this.intersectingTypes) {
                if (referenceBinding2.isCompatibleWith(referenceBinding, scope)) {
                    break;
                }
            }
            return false;
        }
        return true;
    }

    @Override
    public boolean isIntersectionType18() {
        return true;
    }

    @Override
    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        ReferenceBinding[] intersectingTypes;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if ((typeBinding instanceof ReferenceBinding) && (intersectingTypes = ((ReferenceBinding) typeBinding).getIntersectingTypes()) != null && intersectingTypes.length > 1) {
            int length = intersectingTypes.length;
            TypeBinding[] typeBindingArr = new TypeBinding[length];
            System.arraycopy(intersectingTypes, 0, typeBindingArr, 0, length);
            int i10 = length;
            for (int i11 = 0; i11 < this.length; i11++) {
                ReferenceBinding referenceBinding = this.intersectingTypes[i11];
                int i12 = 0;
                while (true) {
                    if (i12 < length) {
                        TypeBinding typeBinding2 = typeBindingArr[i12];
                        if (typeBinding2 != null && referenceBinding.isSubtypeOf(typeBinding2, z10)) {
                            typeBindingArr[i12] = null;
                            i10--;
                            if (i10 == 0) {
                                return true;
                            }
                        } else {
                            i12++;
                        }
                    }
                }
            }
            return false;
        }
        int i13 = 0;
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.intersectingTypes;
            if (i13 >= referenceBindingArr.length) {
                return false;
            }
            if (referenceBindingArr[i13].isSubtypeOf(typeBinding, false)) {
                return true;
            }
            i13++;
        }
    }

    @Override
    public int kind() {
        return 32772;
    }

    @Override
    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        if (super.mentionsAny(typeBindingArr, i10)) {
            return true;
        }
        int i11 = 0;
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.intersectingTypes;
            if (i11 >= referenceBindingArr.length) {
                return false;
            }
            if (referenceBindingArr[i11].mentionsAny(typeBindingArr, -1)) {
                return true;
            }
            i11++;
        }
    }

    @Override
    public char[] qualifiedSourceName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.intersectingTypes[i10].qualifiedSourceName());
            if (i10 != this.length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer.toString().toCharArray();
    }

    @Override
    public char[] readableName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.intersectingTypes[i10].readableName());
            if (i10 != this.length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer.toString().toCharArray();
    }

    @Override
    public char[] shortReadableName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.intersectingTypes[i10].shortReadableName());
            if (i10 != this.length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer.toString().toCharArray();
    }

    @Override
    public char[] sourceName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.intersectingTypes[i10].sourceName());
            if (i10 != this.length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer.toString().toCharArray();
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        if (!this.intersectingTypes[0].isClass()) {
            return this.intersectingTypes;
        }
        int i10 = this.length;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[i10 - 1];
        System.arraycopy(this.intersectingTypes, 1, referenceBindingArr, 0, i10 - 1);
        return referenceBindingArr;
    }

    @Override
    public ReferenceBinding superclass() {
        return this.intersectingTypes[0].isClass() ? this.intersectingTypes[0] : this.javaLangObject;
    }

    public String toString() {
        return debugName();
    }

    @Override
    public long updateTagBits() {
        for (ReferenceBinding referenceBinding : this.intersectingTypes) {
            this.tagBits |= referenceBinding.updateTagBits();
        }
        return super.updateTagBits();
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[this.intersectingTypes.length];
        int i10 = 0;
        while (true) {
            ReferenceBinding[] referenceBindingArr2 = this.intersectingTypes;
            if (i10 >= referenceBindingArr2.length) {
                return (ReferenceBinding) scope.environment().createIntersectionType18(referenceBindingArr);
            }
            referenceBindingArr[i10] = referenceBindingArr2[i10].downwardsProjection(scope, typeBindingArr);
            i10++;
        }
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[this.intersectingTypes.length];
        int i10 = 0;
        while (true) {
            ReferenceBinding[] referenceBindingArr2 = this.intersectingTypes;
            if (i10 >= referenceBindingArr2.length) {
                return (ReferenceBinding) scope.environment().createIntersectionType18(referenceBindingArr);
            }
            referenceBindingArr[i10] = referenceBindingArr2[i10].upwardsProjection(scope, typeBindingArr);
            i10++;
        }
    }

    @Override
    public boolean canBeSeenBy(Scope scope) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (!this.intersectingTypes[i10].canBeSeenBy(scope)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean canBeSeenBy(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (!this.intersectingTypes[i10].canBeSeenBy(referenceBinding, referenceBinding2)) {
                return false;
            }
        }
        return true;
    }

    private IntersectionTypeBinding18(IntersectionTypeBinding18 intersectionTypeBinding18) {
        ReferenceBinding[] referenceBindingArr = intersectionTypeBinding18.intersectingTypes;
        this.intersectingTypes = referenceBindingArr;
        this.length = intersectionTypeBinding18.length;
        if (referenceBindingArr[0].isClass()) {
            return;
        }
        this.javaLangObject = intersectionTypeBinding18.javaLangObject;
        this.modifiers |= 512;
    }
}
