package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;

public class SplitPackageBinding extends PackageBinding {
    Set<ModuleBinding> declaringModules;
    public Set<PackageBinding> incarnations;

    public SplitPackageBinding(PackageBinding packageBinding, ModuleBinding moduleBinding) {
        super(packageBinding.compoundName, packageBinding.parent, moduleBinding.environment, moduleBinding);
        this.declaringModules = new HashSet();
        this.incarnations = new HashSet();
        add(packageBinding);
    }

    public static PackageBinding combine(PackageBinding packageBinding, PackageBinding packageBinding2, ModuleBinding moduleBinding) {
        int rank = rank(packageBinding2);
        int rank2 = rank(packageBinding);
        if (rank < rank2) {
            return packageBinding;
        }
        if (rank > rank2) {
            return packageBinding2;
        }
        if (packageBinding2 == null) {
            return null;
        }
        if (packageBinding2.subsumes(packageBinding)) {
            return packageBinding2;
        }
        if (packageBinding.subsumes(packageBinding2)) {
            return packageBinding;
        }
        SplitPackageBinding splitPackageBinding = new SplitPackageBinding(packageBinding2, moduleBinding);
        splitPackageBinding.add(packageBinding);
        return splitPackageBinding;
    }

    private static int rank(PackageBinding packageBinding) {
        if (packageBinding == null) {
            return 0;
        }
        if (packageBinding == LookupEnvironment.TheNotFoundPackage) {
            return 1;
        }
        return !packageBinding.isValidBinding() ? 2 : 3;
    }

    public void add(PackageBinding packageBinding) {
        if (!(packageBinding instanceof SplitPackageBinding)) {
            this.declaringModules.add(packageBinding.enclosingModule);
            if (this.incarnations.add(packageBinding)) {
                packageBinding.addWrappingSplitPackageBinding(this);
                return;
            }
            return;
        }
        SplitPackageBinding splitPackageBinding = (SplitPackageBinding) packageBinding;
        this.declaringModules.addAll(splitPackageBinding.declaringModules);
        for (PackageBinding packageBinding2 : splitPackageBinding.incarnations) {
            if (this.incarnations.add(packageBinding2)) {
                packageBinding2.addWrappingSplitPackageBinding(this);
            }
        }
    }

    @Override
    public PackageBinding addPackage(PackageBinding packageBinding, ModuleBinding moduleBinding) {
        char[] cArr = packageBinding.compoundName[r0.length - 1];
        PackageBinding combineWithSiblings = combineWithSiblings(packageBinding, cArr, moduleBinding);
        this.knownPackages.put(cArr, combine(combineWithSiblings, this.knownPackages.get(cArr), this.enclosingModule));
        PackageBinding incarnation = getIncarnation(combineWithSiblings.enclosingModule);
        if (incarnation != null) {
            incarnation.addPackage(combineWithSiblings, moduleBinding);
        }
        return combineWithSiblings;
    }

    public PackageBinding combineWithSiblings(PackageBinding packageBinding, char[] cArr, ModuleBinding moduleBinding) {
        ModuleBinding moduleBinding2 = packageBinding != null ? packageBinding.enclosingModule : this.enclosingModule;
        boolean z10 = moduleBinding2.isPackageLookupActive;
        moduleBinding2.isPackageLookupActive = true;
        try {
            for (PackageBinding packageBinding2 : this.incarnations) {
                ModuleBinding moduleBinding3 = packageBinding2.enclosingModule;
                if (moduleBinding3 != moduleBinding && !packageBinding.isDeclaredIn(moduleBinding3)) {
                    packageBinding = combine(moduleBinding3.getVisiblePackage(packageBinding2, cArr, false), packageBinding, moduleBinding2);
                }
            }
            return packageBinding;
        } finally {
            moduleBinding2.isPackageLookupActive = z10;
        }
    }

    @Override
    public PackageBinding findPackage(char[] cArr, ModuleBinding moduleBinding) {
        PackageBinding packageBinding;
        HashSet hashSet = new HashSet();
        Iterator<ModuleBinding> it = this.declaringModules.iterator();
        while (it.hasNext()) {
            PackageBinding findPackage = super.findPackage(cArr, it.next());
            if (findPackage != null && findPackage != LookupEnvironment.TheNotFoundPackage && (findPackage.tagBits & 128) == 0) {
                hashSet.add(findPackage);
            }
        }
        int size = hashSet.size();
        if (size == 1) {
            packageBinding = (PackageBinding) hashSet.iterator().next();
        } else if (size > 1) {
            Iterator<E> it2 = hashSet.iterator();
            SplitPackageBinding splitPackageBinding = new SplitPackageBinding((PackageBinding) it2.next(), this.enclosingModule);
            while (it2.hasNext()) {
                splitPackageBinding.add((PackageBinding) it2.next());
            }
            packageBinding = splitPackageBinding;
        } else {
            packageBinding = null;
        }
        if (packageBinding == null) {
            addNotFoundPackage(cArr);
        } else {
            addPackage(packageBinding, moduleBinding);
        }
        return packageBinding;
    }

    @Override
    public ModuleBinding[] getDeclaringModules() {
        Set<ModuleBinding> set = this.declaringModules;
        return (ModuleBinding[]) set.toArray(new ModuleBinding[set.size()]);
    }

    public PackageBinding getIncarnation(ModuleBinding moduleBinding) {
        for (PackageBinding packageBinding : this.incarnations) {
            if (packageBinding.enclosingModule == moduleBinding) {
                return packageBinding;
            }
        }
        return null;
    }

    @Override
    public PackageBinding getPackage0(char[] cArr) {
        PackageBinding package0 = super.getPackage0(cArr);
        if (package0 != null) {
            return package0;
        }
        Iterator<PackageBinding> it = this.incarnations.iterator();
        PackageBinding packageBinding = null;
        while (it.hasNext()) {
            PackageBinding package02 = it.next().getPackage0(cArr);
            if (package02 == null) {
                return null;
            }
            packageBinding = combine(package02, packageBinding, this.enclosingModule);
        }
        if (packageBinding != null) {
            this.knownPackages.put(cArr, packageBinding);
        }
        return packageBinding;
    }

    @Override
    public PackageBinding getPackage0Any(char[] cArr) {
        PackageBinding package0 = super.getPackage0(cArr);
        if (package0 != null) {
            return package0;
        }
        Iterator<PackageBinding> it = this.incarnations.iterator();
        PackageBinding packageBinding = null;
        while (it.hasNext()) {
            PackageBinding package02 = it.next().getPackage0(cArr);
            if (package02 != null) {
                packageBinding = combine(package02, packageBinding, this.enclosingModule);
            }
        }
        return packageBinding;
    }

    @Override
    public ReferenceBinding getType(char[] cArr, ModuleBinding moduleBinding) {
        ReferenceBinding referenceBinding = null;
        boolean z10 = false;
        for (PackageBinding packageBinding : this.incarnations) {
            ReferenceBinding type = packageBinding.getType(cArr, moduleBinding);
            if (type != null) {
                if (referenceBinding == null || !z10) {
                    z10 = moduleBinding.canAccess(packageBinding);
                    referenceBinding = type;
                } else if (moduleBinding.canAccess(packageBinding)) {
                    return new ProblemReferenceBinding(type.compoundName, referenceBinding, 3);
                }
            }
        }
        return (referenceBinding == null || z10) ? referenceBinding : new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 30);
    }

    @Override
    public ReferenceBinding getType0(char[] cArr) {
        ReferenceBinding type0 = super.getType0(cArr);
        if (type0 != null && !(type0 instanceof UnresolvedReferenceBinding)) {
            return type0;
        }
        Iterator<PackageBinding> it = this.incarnations.iterator();
        ReferenceBinding referenceBinding = null;
        while (it.hasNext()) {
            ReferenceBinding type02 = it.next().getType0(cArr);
            if (type02 != null && type02.isValidBinding() && !(type0 instanceof UnresolvedReferenceBinding)) {
                if (referenceBinding != null) {
                    return null;
                }
                referenceBinding = type02;
            }
        }
        if (referenceBinding != null) {
            addType(referenceBinding);
        }
        return referenceBinding;
    }

    public ReferenceBinding getType0ForModule(ModuleBinding moduleBinding, char[] cArr) {
        if (this.declaringModules.contains(moduleBinding)) {
            return getIncarnation(moduleBinding).getType0(cArr);
        }
        return null;
    }

    @Override
    public PackageBinding getVisibleFor(ModuleBinding moduleBinding, boolean z10) {
        PackageBinding packageBinding = null;
        int i10 = 0;
        for (PackageBinding packageBinding2 : this.incarnations) {
            if (packageBinding2.hasCompilationUnit(false)) {
                if (z10 && packageBinding2.enclosingModule == moduleBinding) {
                    return packageBinding2;
                }
                if (moduleBinding.canAccess(packageBinding2)) {
                    i10++;
                    if (i10 > 1) {
                        return this;
                    }
                    packageBinding = packageBinding2;
                } else {
                    continue;
                }
            }
        }
        return packageBinding;
    }

    @Override
    public boolean isDeclaredIn(ModuleBinding moduleBinding) {
        return this.declaringModules.contains(moduleBinding);
    }

    @Override
    public boolean subsumes(PackageBinding packageBinding) {
        if (CharOperation.equals(this.compoundName, packageBinding.compoundName)) {
            return packageBinding instanceof SplitPackageBinding ? this.declaringModules.containsAll(((SplitPackageBinding) packageBinding).declaringModules) : this.declaringModules.contains(packageBinding.enclosingModule);
        }
        return false;
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append(" (from ");
        String str = "";
        for (ModuleBinding moduleBinding : this.declaringModules) {
            sb2.append(str);
            sb2.append(moduleBinding.readableName());
            str = ", ";
        }
        sb2.append(")");
        return sb2.toString();
    }
}
