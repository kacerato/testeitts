package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public class UnresolvedReferenceBinding extends ReferenceBinding {
    UnresolvedReferenceBinding prototype;
    ReferenceBinding resolvedType;
    TypeBinding[] wrappers;

    public UnresolvedReferenceBinding(char[][] cArr, PackageBinding packageBinding) {
        this.compoundName = cArr;
        this.sourceName = cArr[cArr.length - 1];
        this.fPackage = packageBinding;
        this.wrappers = null;
        this.prototype = this;
        computeId();
    }

    public void addWrapper(TypeBinding typeBinding, LookupEnvironment lookupEnvironment) {
        ReferenceBinding referenceBinding = this.resolvedType;
        if (referenceBinding != null) {
            typeBinding.swapUnresolved(this, referenceBinding, lookupEnvironment);
            return;
        }
        TypeBinding[] typeBindingArr = this.wrappers;
        if (typeBindingArr == null) {
            this.wrappers = new TypeBinding[]{typeBinding};
            return;
        }
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length + 1];
        this.wrappers = typeBindingArr2;
        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
        this.wrappers[length] = typeBinding;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        ReferenceBinding referenceBinding = this.resolvedType;
        if (referenceBinding != null) {
            return referenceBinding.clone(typeBinding);
        }
        UnresolvedReferenceBinding unresolvedReferenceBinding = new UnresolvedReferenceBinding(this);
        addWrapper(unresolvedReferenceBinding, null);
        return unresolvedReferenceBinding;
    }

    @Override
    public String debugName() {
        return toString();
    }

    @Override
    public int depth() {
        char[][] cArr = this.compoundName;
        return CharOperation.occurencesOf('$', cArr[cArr.length - 1], 1);
    }

    @Override
    public boolean hasTypeBit(int i10) {
        return false;
    }

    @Override
    public boolean isUnresolvedType() {
        return true;
    }

    @Override
    public TypeBinding prototype() {
        return this.prototype;
    }

    public ReferenceBinding resolve(LookupEnvironment lookupEnvironment, boolean z10) {
        UnresolvedReferenceBinding unresolvedReferenceBinding = this.prototype;
        if (this != unresolvedReferenceBinding) {
            ReferenceBinding resolve = unresolvedReferenceBinding.resolve(lookupEnvironment, z10);
            return (z10 && resolve != null && resolve.isRawType()) ? (ReferenceBinding) lookupEnvironment.createAnnotatedType(resolve, this.typeAnnotations) : this.resolvedType;
        }
        ReferenceBinding referenceBinding = this.resolvedType;
        if (referenceBinding == null) {
            char[] cArr = this.compoundName[r0.length - 1];
            ReferenceBinding type0 = this.fPackage.getType0(cArr);
            if (type0 == this || type0 == null) {
                PackageBinding packageBinding = this.fPackage;
                if (packageBinding instanceof SplitPackageBinding) {
                    type0 = lookupEnvironment.askForType(packageBinding, cArr, packageBinding.enclosingModule);
                } else if (type0 == this) {
                    type0 = lookupEnvironment.askForType(this.compoundName, packageBinding.enclosingModule);
                }
            }
            if ((type0 == null || type0 == this) && CharOperation.contains('.', cArr)) {
                type0 = lookupEnvironment.askForType(this.fPackage, CharOperation.replaceOnCopy(cArr, '.', '$'), this.fPackage.enclosingModule);
            }
            if (type0 == null || type0 == this) {
                if ((this.tagBits & 128) == 0 && !lookupEnvironment.mayTolerateMissingType) {
                    lookupEnvironment.problemReporter.isClassPathCorrect(this.compoundName, lookupEnvironment.root.unitBeingCompleted, lookupEnvironment.missingClassFileLocation);
                }
                referenceBinding = lookupEnvironment.createMissingType(null, this.compoundName);
            } else {
                referenceBinding = type0;
            }
            setResolvedType(referenceBinding, lookupEnvironment);
        }
        return z10 ? (ReferenceBinding) lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding) : referenceBinding;
    }

    public void setResolvedType(ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
        if (this.resolvedType == referenceBinding) {
            return;
        }
        this.resolvedType = referenceBinding;
        lookupEnvironment.updateCaches(this, referenceBinding);
        TypeBinding[] typeBindingArr = this.wrappers;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.wrappers[i10].swapUnresolved(this, referenceBinding, lookupEnvironment);
            }
        }
    }

    @Override
    public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
        if (this.resolvedType != null) {
            return;
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) referenceBinding.clone(null);
        this.resolvedType = referenceBinding2;
        referenceBinding2.setTypeAnnotations(getTypeAnnotations(), lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled);
        lookupEnvironment.updateCaches(this, referenceBinding2);
        TypeBinding[] typeBindingArr = this.wrappers;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.wrappers[i10].swapUnresolved(this, referenceBinding2, lookupEnvironment);
            }
        }
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return String.valueOf(super.annotatedDebugName()) + "(unresolved)";
        }
        StringBuilder sb2 = new StringBuilder("Unresolved type ");
        char[][] cArr = this.compoundName;
        sb2.append(cArr != null ? CharOperation.toString(cArr) : "UNNAMED");
        return sb2.toString();
    }

    public UnresolvedReferenceBinding(UnresolvedReferenceBinding unresolvedReferenceBinding) {
        super(unresolvedReferenceBinding);
        this.resolvedType = unresolvedReferenceBinding.resolvedType;
        this.wrappers = null;
        this.prototype = unresolvedReferenceBinding.prototype;
    }
}
