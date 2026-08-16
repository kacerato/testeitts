package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Predicate;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.util.HashtableOfPackage;
import org.eclipse.jdt.internal.compiler.util.HashtableOfType;

public class PackageBinding extends Binding implements TypeConstants {
    public char[][] compoundName;
    private int defaultNullness;
    public ModuleBinding enclosingModule;
    public LookupEnvironment environment;
    Boolean isExported;
    HashtableOfPackage knownPackages;
    public HashtableOfType knownTypes;
    PackageBinding parent;
    public long tagBits;
    ArrayList<SplitPackageBinding> wrappingSplitPackageBindings;

    public PackageBinding() {
        this.tagBits = 0L;
        this.defaultNullness = 0;
    }

    private void addNotFoundType(char[] cArr) {
        if (this.environment.suppressImportErrors) {
            return;
        }
        if (this.knownTypes == null) {
            this.knownTypes = new HashtableOfType(25);
        }
        this.knownTypes.put(cArr, LookupEnvironment.TheNotFoundType);
    }

    private boolean isPackageOfQualifiedTypeName(char[][] cArr, char[][] cArr2) {
        int length;
        if (cArr2 == null || (length = cArr.length) != cArr2.length - 1) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharOperation.equals(cArr[i10], cArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public void addNotFoundPackage(char[] cArr) {
        if (this.environment.suppressImportErrors) {
            return;
        }
        this.knownPackages.put(cArr, LookupEnvironment.TheNotFoundPackage);
    }

    public PackageBinding addPackage(PackageBinding packageBinding, ModuleBinding moduleBinding) {
        if ((packageBinding.tagBits & 128) == 0) {
            clearMissingTagBit();
        }
        this.knownPackages.put(packageBinding.compoundName[r0.length - 1], packageBinding);
        return packageBinding;
    }

    public void addType(ReferenceBinding referenceBinding) {
        ArrayList<SplitPackageBinding> arrayList;
        ReferenceBinding referenceBinding2;
        if ((referenceBinding.tagBits & 128) == 0) {
            clearMissingTagBit();
        }
        if (this.knownTypes == null) {
            this.knownTypes = new HashtableOfType(25);
        }
        char[] cArr = referenceBinding.compoundName[r0.length - 1];
        ReferenceBinding referenceBinding3 = this.knownTypes.getput(cArr, referenceBinding);
        if (referenceBinding3 != null && referenceBinding3.isUnresolvedType() && !referenceBinding.isUnresolvedType()) {
            ((UnresolvedReferenceBinding) referenceBinding3).setResolvedType(referenceBinding, this.environment);
        }
        if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled && (referenceBinding.isAnnotationType() || (referenceBinding instanceof UnresolvedReferenceBinding))) {
            checkIfNullAnnotationType(referenceBinding);
        }
        if (referenceBinding.isUnresolvedType() || (arrayList = this.wrappingSplitPackageBindings) == null) {
            return;
        }
        Iterator<SplitPackageBinding> it = arrayList.iterator();
        while (it.hasNext()) {
            SplitPackageBinding next = it.next();
            HashtableOfType hashtableOfType = next.knownTypes;
            if (hashtableOfType != null && (referenceBinding2 = hashtableOfType.get(cArr)) != null && referenceBinding2.isUnresolvedType() && !referenceBinding.isUnresolvedType()) {
                ((UnresolvedReferenceBinding) referenceBinding2).setResolvedType(referenceBinding, this.environment);
                next.knownTypes.put(cArr, null);
            }
        }
    }

    public void addWrappingSplitPackageBinding(SplitPackageBinding splitPackageBinding) {
        if (this.wrappingSplitPackageBindings == null) {
            this.wrappingSplitPackageBindings = new ArrayList<>();
        }
        this.wrappingSplitPackageBindings.add(splitPackageBinding);
    }

    public void checkIfNullAnnotationPackage() {
        LookupEnvironment lookupEnvironment = this.environment;
        if (lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (isPackageOfQualifiedTypeName(this.compoundName, lookupEnvironment.getNullableAnnotationName())) {
                lookupEnvironment.nullableAnnotationPackage = this;
            }
            if (isPackageOfQualifiedTypeName(this.compoundName, lookupEnvironment.getNonNullAnnotationName())) {
                lookupEnvironment.nonnullAnnotationPackage = this;
            }
            if (isPackageOfQualifiedTypeName(this.compoundName, lookupEnvironment.getNonNullByDefaultAnnotationName())) {
                lookupEnvironment.nonnullByDefaultAnnotationPackage = this;
            }
        }
    }

    public void checkIfNullAnnotationType(ReferenceBinding referenceBinding) {
        LookupEnvironment lookupEnvironment = this.environment;
        if (lookupEnvironment.nullableAnnotationPackage == this && CharOperation.equals(referenceBinding.compoundName, lookupEnvironment.getNullableAnnotationName())) {
            referenceBinding.typeBits |= 64;
            if (referenceBinding instanceof UnresolvedReferenceBinding) {
                return;
            }
            this.environment.nullableAnnotationPackage = null;
            return;
        }
        LookupEnvironment lookupEnvironment2 = this.environment;
        if (lookupEnvironment2.nonnullAnnotationPackage == this && CharOperation.equals(referenceBinding.compoundName, lookupEnvironment2.getNonNullAnnotationName())) {
            referenceBinding.typeBits |= 32;
            if (referenceBinding instanceof UnresolvedReferenceBinding) {
                return;
            }
            this.environment.nonnullAnnotationPackage = null;
            return;
        }
        LookupEnvironment lookupEnvironment3 = this.environment;
        if (lookupEnvironment3.nonnullByDefaultAnnotationPackage != this || !CharOperation.equals(referenceBinding.compoundName, lookupEnvironment3.getNonNullByDefaultAnnotationName())) {
            referenceBinding.typeBits |= this.environment.getNullAnnotationBit(referenceBinding.compoundName);
            return;
        }
        referenceBinding.typeBits |= 128;
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            return;
        }
        this.environment.nonnullByDefaultAnnotationPackage = null;
    }

    public void clearMissingTagBit() {
        PackageBinding packageBinding = this;
        do {
            packageBinding.tagBits &= -129;
            packageBinding = packageBinding.parent;
        } while (packageBinding != null);
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        return CharOperation.concatWith(this.compoundName, '/');
    }

    public Binding findDefaultNullnessTarget(Predicate<Integer> predicate) {
        if (predicate.test(Integer.valueOf(this.defaultNullness))) {
            return this;
        }
        if (this.defaultNullness == 0 && predicate.test(Integer.valueOf(this.enclosingModule.getDefaultNullness()))) {
            return this.enclosingModule;
        }
        return null;
    }

    public PackageBinding findPackage(char[] cArr, ModuleBinding moduleBinding) {
        return moduleBinding.getPackage(this.compoundName, cArr);
    }

    public ModuleBinding[] getDeclaringModules() {
        return new ModuleBinding[]{this.enclosingModule};
    }

    public int getDefaultNullness() {
        int i10 = this.defaultNullness;
        return i10 == 0 ? this.enclosingModule.getDefaultNullness() : i10;
    }

    public PackageBinding getPackage(char[] cArr, ModuleBinding moduleBinding) {
        PackageBinding package0 = getPackage0(cArr);
        if (package0 != null) {
            if (package0 == LookupEnvironment.TheNotFoundPackage) {
                return null;
            }
            return package0;
        }
        PackageBinding findPackage = findPackage(cArr, moduleBinding);
        if (findPackage != null) {
            return findPackage;
        }
        addNotFoundPackage(cArr);
        return null;
    }

    public PackageBinding getPackage0(char[] cArr) {
        return this.knownPackages.get(cArr);
    }

    public PackageBinding getPackage0Any(char[] cArr) {
        return this.knownPackages.get(cArr);
    }

    public ReferenceBinding getType(char[] cArr, ModuleBinding moduleBinding) {
        ReferenceBinding type0 = getType0(cArr);
        if (type0 == null && (type0 = this.environment.askForType(this, cArr, moduleBinding)) == null) {
            addNotFoundType(cArr);
            return null;
        }
        if (type0 == LookupEnvironment.TheNotFoundType) {
            return null;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) BinaryTypeBinding.resolveType(type0, this.environment, false);
        return referenceBinding.isNestedType() ? new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 4) : !moduleBinding.canAccess(this) ? new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 30) : referenceBinding;
    }

    public ReferenceBinding getType0(char[] cArr) {
        HashtableOfType hashtableOfType = this.knownTypes;
        if (hashtableOfType == null) {
            return null;
        }
        return hashtableOfType.get(cArr);
    }

    public Binding getTypeOrPackage(char[] cArr, ModuleBinding moduleBinding, boolean z10) {
        ReferenceBinding type0 = getType0(cArr);
        ProblemReferenceBinding problemReferenceBinding = null;
        if (type0 != null && type0 != LookupEnvironment.TheNotFoundType) {
            type0 = (ReferenceBinding) BinaryTypeBinding.resolveType(type0, this.environment, false);
            if (type0.isNestedType()) {
                return new ProblemReferenceBinding(new char[][]{cArr}, type0, 4);
            }
            if (!(this instanceof SplitPackageBinding) ? this.enclosingModule != moduleBinding : type0.module() != moduleBinding) {
                if (type0.isValidBinding() && !moduleBinding.canAccess(type0.fPackage)) {
                    problemReferenceBinding = new ProblemReferenceBinding(type0.compoundName, type0, 30);
                }
            }
            if ((type0.tagBits & 128) == 0) {
                return type0;
            }
        }
        PackageBinding package0 = getPackage0(cArr);
        if (package0 != null && package0 != LookupEnvironment.TheNotFoundPackage) {
            return (z10 || !(package0 instanceof SplitPackageBinding)) ? package0 : ((SplitPackageBinding) package0).getVisibleFor(moduleBinding, false);
        }
        if (type0 == null && problemReferenceBinding == null) {
            type0 = this.environment.askForType(this, cArr, moduleBinding);
            if (type0 == null) {
                addNotFoundType(cArr);
            } else {
                if (type0.isNestedType()) {
                    return new ProblemReferenceBinding(new char[][]{cArr}, type0, 4);
                }
                if (!type0.isValidBinding() || moduleBinding.canAccess(type0.fPackage)) {
                    return type0;
                }
                problemReferenceBinding = new ProblemReferenceBinding(type0.compoundName, type0, 30);
            }
        }
        if (package0 == null) {
            PackageBinding findPackage = findPackage(cArr, moduleBinding);
            if (findPackage != null) {
                return (z10 || !(findPackage instanceof SplitPackageBinding)) ? findPackage : ((SplitPackageBinding) findPackage).getVisibleFor(moduleBinding, false);
            }
            if (type0 != null && type0 != LookupEnvironment.TheNotFoundType) {
                return problemReferenceBinding != null ? problemReferenceBinding : type0;
            }
            addNotFoundPackage(cArr);
        }
        return problemReferenceBinding;
    }

    public PackageBinding getVisibleFor(ModuleBinding moduleBinding, boolean z10) {
        return this;
    }

    public boolean hasCompilationUnit(boolean z10) {
        HashtableOfType hashtableOfType = this.knownTypes;
        if (hashtableOfType != null) {
            for (ReferenceBinding referenceBinding : hashtableOfType.valueTable) {
                if (referenceBinding != null && referenceBinding != LookupEnvironment.TheNotFoundType && !referenceBinding.isUnresolvedType()) {
                    return true;
                }
            }
        }
        LookupEnvironment lookupEnvironment = this.environment;
        if (lookupEnvironment.useModuleSystem) {
            return ((IModuleAwareNameEnvironment) lookupEnvironment.nameEnvironment).hasCompilationUnit(this.compoundName, this.enclosingModule.nameForCUCheck(), z10);
        }
        return false;
    }

    public boolean isDeclaredIn(ModuleBinding moduleBinding) {
        return this.enclosingModule == moduleBinding;
    }

    public boolean isExported() {
        if (this.isExported == null) {
            ModuleBinding moduleBinding = this.enclosingModule;
            if (moduleBinding.isAuto) {
                this.isExported = Boolean.TRUE;
            } else {
                moduleBinding.getExports();
                if (this.isExported == null) {
                    this.isExported = Boolean.FALSE;
                }
            }
        }
        return this.isExported == Boolean.TRUE;
    }

    public final boolean isViewedAsDeprecated() {
        ReferenceBinding type;
        long j10 = this.tagBits;
        if ((j10 & 17179869184L) == 0) {
            this.tagBits = j10 | 17179869184L;
            if (this.compoundName != CharOperation.NO_CHAR_CHAR && (type = getType(TypeConstants.PACKAGE_INFO_NAME, this.enclosingModule)) != null) {
                type.initializeDeprecatedAnnotationTagBits();
                this.tagBits |= type.tagBits & TagBits.AllStandardAnnotationsMask;
            }
        }
        return (this.tagBits & 70368744177664L) != 0;
    }

    @Override
    public final int kind() {
        return 16;
    }

    @Override
    public int problemId() {
        return (this.tagBits & 128) != 0 ? 1 : 0;
    }

    @Override
    public char[] readableName() {
        return CharOperation.concatWith(this.compoundName, '.');
    }

    public void setDefaultNullness(int i10) {
        this.defaultNullness = i10;
    }

    public boolean subsumes(PackageBinding packageBinding) {
        return packageBinding == this;
    }

    public String toString() {
        String sb2;
        if (this.compoundName == CharOperation.NO_CHAR_CHAR) {
            sb2 = "The Default Package";
        } else {
            StringBuilder sb3 = new StringBuilder("package ");
            char[][] cArr = this.compoundName;
            sb3.append(cArr != null ? CharOperation.toString(cArr) : "UNNAMED");
            sb2 = sb3.toString();
        }
        if ((this.tagBits & 128) == 0) {
            return sb2;
        }
        return String.valueOf(sb2) + "[MISSING]";
    }

    public PackageBinding(char[] cArr, LookupEnvironment lookupEnvironment, ModuleBinding moduleBinding) {
        this(new char[][]{cArr}, null, lookupEnvironment, moduleBinding);
    }

    public PackageBinding(char[][] cArr, PackageBinding packageBinding, LookupEnvironment lookupEnvironment, ModuleBinding moduleBinding) {
        this.tagBits = 0L;
        this.defaultNullness = 0;
        this.compoundName = cArr;
        this.parent = packageBinding;
        this.environment = lookupEnvironment;
        this.knownTypes = null;
        this.knownPackages = new HashtableOfPackage(3);
        if (cArr != CharOperation.NO_CHAR_CHAR) {
            checkIfNullAnnotationPackage();
        }
        if (moduleBinding != null) {
            this.enclosingModule = moduleBinding;
        } else if (packageBinding != null) {
            this.enclosingModule = packageBinding.enclosingModule;
        }
        if (this.enclosingModule == null) {
            throw new IllegalStateException("Package should have an enclosing module");
        }
    }

    public PackageBinding(LookupEnvironment lookupEnvironment) {
        this(CharOperation.NO_CHAR_CHAR, null, lookupEnvironment, lookupEnvironment.module);
    }
}
