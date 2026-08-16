package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashMap;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.BinaryModuleBinding;

public class BinaryModuleBinding extends ModuleBinding {
    private IModule.IPackageExport[] unresolvedExports;
    private IModule.IPackageExport[] unresolvedOpens;
    private IModule.IService[] unresolvedProvides;
    private char[][] unresolvedUses;

    public static class AutomaticModuleBinding extends ModuleBinding {
        boolean autoNameFromManifest;

        public AutomaticModuleBinding(IModule iModule, LookupEnvironment lookupEnvironment) {
            super(iModule.name(), lookupEnvironment);
            lookupEnvironment.root.knownModules.put(this.moduleName, this);
            this.isAuto = true;
            this.autoNameFromManifest = iModule.isAutoNameFromManifest();
            ModuleBinding[] moduleBindingArr = Binding.NO_MODULES;
            this.requires = moduleBindingArr;
            this.requiresTransitive = moduleBindingArr;
            this.exportedPackages = Binding.NO_PACKAGES;
        }

        public boolean lambda$0(char[] cArr) {
            return !CharOperation.equals(cArr, this.moduleName);
        }

        public ModuleBinding lambda$1(char[] cArr) {
            return this.environment.getModule(cArr);
        }

        public static boolean lambda$2(ModuleBinding moduleBinding) {
            return moduleBinding != null;
        }

        public static ModuleBinding[] lambda$3(int i10) {
            return new ModuleBinding[i10];
        }

        @Override
        public ModuleBinding[] getRequiresTransitive() {
            if (this.requiresTransitive == Binding.NO_MODULES) {
                this.requiresTransitive = (ModuleBinding[]) Stream.of((Object[]) ((IModuleAwareNameEnvironment) this.environment.nameEnvironment).getAllAutomaticModules()).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$0;
                        lambda$0 = BinaryModuleBinding.AutomaticModuleBinding.this.lambda$0((char[]) obj);
                        return lambda$0;
                    }
                }).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        ModuleBinding lambda$1;
                        lambda$1 = BinaryModuleBinding.AutomaticModuleBinding.this.lambda$1((char[]) obj);
                        return lambda$1;
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$2;
                        lambda$2 = BinaryModuleBinding.AutomaticModuleBinding.lambda$2((ModuleBinding) obj);
                        return lambda$2;
                    }
                }).toArray(new IntFunction() {
                    @Override
                    public final Object apply(int i10) {
                        ModuleBinding[] lambda$3;
                        lambda$3 = BinaryModuleBinding.AutomaticModuleBinding.lambda$3(i10);
                        return lambda$3;
                    }
                });
            }
            return this.requiresTransitive;
        }

        @Override
        public boolean hasUnstableAutoName() {
            return !this.autoNameFromManifest;
        }

        @Override
        public char[] nameForCUCheck() {
            return this.moduleName;
        }

        @Override
        public char[] nameForLookup() {
            return ModuleBinding.ANY_NAMED;
        }
    }

    private BinaryModuleBinding(IBinaryModule iBinaryModule, LookupEnvironment lookupEnvironment) {
        super(iBinaryModule.name(), lookupEnvironment);
        lookupEnvironment.root.knownModules.put(this.moduleName, this);
        cachePartsFrom(iBinaryModule);
    }

    public static ModuleBinding create(IModule iModule, LookupEnvironment lookupEnvironment) {
        return iModule.isAutomatic() ? new AutomaticModuleBinding(iModule, lookupEnvironment) : new BinaryModuleBinding((IBinaryModule) iModule, lookupEnvironment);
    }

    private void resolvePackages() {
        this.exportedPackages = new PackageBinding[this.unresolvedExports.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            IModule.IPackageExport[] iPackageExportArr = this.unresolvedExports;
            if (i10 >= iPackageExportArr.length) {
                break;
            }
            IModule.IPackageExport iPackageExport = iPackageExportArr[i10];
            PackageBinding forcedGetExportedPackage = forcedGetExportedPackage(CharOperation.splitOn('.', iPackageExport.name()));
            if (forcedGetExportedPackage != null) {
                int i12 = i11 + 1;
                this.exportedPackages[i11] = forcedGetExportedPackage;
                if (forcedGetExportedPackage instanceof SplitPackageBinding) {
                    forcedGetExportedPackage = ((SplitPackageBinding) forcedGetExportedPackage).getIncarnation(this);
                }
                if (forcedGetExportedPackage != null) {
                    forcedGetExportedPackage.isExported = Boolean.TRUE;
                    recordExportRestrictions(forcedGetExportedPackage, iPackageExport.targets());
                }
                i11 = i12;
            }
            i10++;
        }
        PackageBinding[] packageBindingArr = this.exportedPackages;
        if (i11 < packageBindingArr.length) {
            PackageBinding[] packageBindingArr2 = new PackageBinding[i11];
            this.exportedPackages = packageBindingArr2;
            System.arraycopy(packageBindingArr, 0, packageBindingArr2, 0, i11);
        }
        this.openedPackages = new PackageBinding[this.unresolvedOpens.length];
        int i13 = 0;
        int i14 = 0;
        while (true) {
            IModule.IPackageExport[] iPackageExportArr2 = this.unresolvedOpens;
            if (i13 >= iPackageExportArr2.length) {
                break;
            }
            IModule.IPackageExport iPackageExport2 = iPackageExportArr2[i13];
            PackageBinding visiblePackage = getVisiblePackage(CharOperation.splitOn('.', iPackageExport2.name()));
            if (visiblePackage != null) {
                int i15 = i14 + 1;
                this.openedPackages[i14] = visiblePackage;
                if (visiblePackage instanceof SplitPackageBinding) {
                    visiblePackage = ((SplitPackageBinding) visiblePackage).getIncarnation(this);
                }
                if (visiblePackage != null) {
                    recordOpensRestrictions(visiblePackage, iPackageExport2.targets());
                }
                i14 = i15;
            }
            i13++;
        }
        PackageBinding[] packageBindingArr3 = this.openedPackages;
        if (i14 < packageBindingArr3.length) {
            PackageBinding[] packageBindingArr4 = new PackageBinding[i14];
            this.openedPackages = packageBindingArr4;
            System.arraycopy(packageBindingArr3, 0, packageBindingArr4, 0, i14);
        }
    }

    private void resolveServices() {
        this.services = new TypeBinding[this.unresolvedProvides.length];
        this.implementations = new HashMap();
        int i10 = 0;
        while (true) {
            IModule.IService[] iServiceArr = this.unresolvedProvides;
            if (i10 >= iServiceArr.length) {
                return;
            }
            this.services[i10] = this.environment.getType(CharOperation.splitOn('.', iServiceArr[i10].name()), this);
            char[][] with = this.unresolvedProvides[i10].with();
            TypeBinding[] typeBindingArr = new TypeBinding[with.length];
            for (int i11 = 0; i11 < with.length; i11++) {
                typeBindingArr[i11] = this.environment.getType(CharOperation.splitOn('.', with[i11]), this);
            }
            this.implementations.put(this.services[i10], typeBindingArr);
            i10++;
        }
    }

    private void scanForNullDefaultAnnotation(IBinaryModule iBinaryModule) {
        IBinaryAnnotation[] annotations;
        if (this.environment.getNonNullByDefaultAnnotationName() == null || (annotations = iBinaryModule.getAnnotations()) == null) {
            return;
        }
        int length = annotations.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char[] typeName = annotations[i11].getTypeName();
            if (typeName[0] == 'L' && this.environment.getNullAnnotationBit(BinaryTypeBinding.signature2qualifiedTypeName(typeName)) == 128) {
                i10 |= BinaryTypeBinding.getNonNullByDefaultValue(annotations[i11], this.environment);
            }
        }
        this.defaultNullness = i10;
    }

    public void cachePartsFrom(IBinaryModule iBinaryModule) {
        if (iBinaryModule.isOpen()) {
            this.modifiers |= 32;
        }
        this.tagBits |= iBinaryModule.getTagBits();
        IModule.IModuleReference[] requires = iBinaryModule.requires();
        this.requires = new ModuleBinding[requires.length];
        this.requiresTransitive = new ModuleBinding[requires.length];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < requires.length; i12++) {
            ModuleBinding module = this.environment.getModule(requires[i12].name());
            if (module != null) {
                int i13 = i10 + 1;
                this.requires[i10] = module;
                if (requires[i12].isTransitive()) {
                    this.requiresTransitive[i11] = module;
                    i11++;
                }
                i10 = i13;
            }
        }
        ModuleBinding[] moduleBindingArr = this.requires;
        if (i10 < moduleBindingArr.length) {
            ModuleBinding[] moduleBindingArr2 = new ModuleBinding[i10];
            this.requires = moduleBindingArr2;
            System.arraycopy(moduleBindingArr, 0, moduleBindingArr2, 0, i10);
        }
        ModuleBinding[] moduleBindingArr3 = this.requiresTransitive;
        if (i11 < moduleBindingArr3.length) {
            ModuleBinding[] moduleBindingArr4 = new ModuleBinding[i11];
            this.requiresTransitive = moduleBindingArr4;
            System.arraycopy(moduleBindingArr3, 0, moduleBindingArr4, 0, i11);
        }
        this.unresolvedExports = iBinaryModule.exports();
        this.unresolvedOpens = iBinaryModule.opens();
        this.unresolvedUses = iBinaryModule.uses();
        this.unresolvedProvides = iBinaryModule.provides();
        if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            scanForNullDefaultAnnotation(iBinaryModule);
        }
        if ((this.tagBits & 70368744177664L) != 0 || this.environment.globalOptions.storeAnnotations) {
            setAnnotations(BinaryTypeBinding.createAnnotations(iBinaryModule.getAnnotations(), this.environment, null), true);
        }
    }

    public PackageBinding forcedGetExportedPackage(char[][] cArr) {
        PackageBinding visiblePackage = getVisiblePackage(cArr);
        if (visiblePackage != null) {
            return visiblePackage;
        }
        if (cArr.length <= 1) {
            PackageBinding packageBinding = new PackageBinding(cArr[0], this.environment, this);
            addPackage(packageBinding, true);
            return packageBinding;
        }
        PackageBinding forcedGetExportedPackage = forcedGetExportedPackage(CharOperation.subarray(cArr, 0, cArr.length - 1));
        PackageBinding packageBinding2 = new PackageBinding(cArr, forcedGetExportedPackage, this.environment, this);
        forcedGetExportedPackage.addPackage(packageBinding2, this);
        return packageBinding2;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        return retrieveAnnotations(this);
    }

    @Override
    public PackageBinding[] getExports() {
        if (this.exportedPackages == null && this.unresolvedExports != null) {
            resolvePackages();
        }
        return super.getExports();
    }

    @Override
    public TypeBinding[] getImplementations(TypeBinding typeBinding) {
        if (this.implementations == null) {
            resolveServices();
        }
        return super.getImplementations(typeBinding);
    }

    @Override
    public PackageBinding[] getOpens() {
        if (this.openedPackages == null && this.unresolvedOpens != null) {
            resolvePackages();
        }
        return super.getOpens();
    }

    @Override
    public TypeBinding[] getServices() {
        if (this.services == null) {
            resolveServices();
        }
        return super.getServices();
    }

    @Override
    public TypeBinding[] getUses() {
        if (this.uses == null) {
            this.uses = new TypeBinding[this.unresolvedUses.length];
            int i10 = 0;
            while (true) {
                char[][] cArr = this.unresolvedUses;
                if (i10 >= cArr.length) {
                    break;
                }
                this.uses[i10] = this.environment.getType(CharOperation.splitOn('.', cArr[i10]), this);
                i10++;
            }
        }
        return super.getUses();
    }
}
