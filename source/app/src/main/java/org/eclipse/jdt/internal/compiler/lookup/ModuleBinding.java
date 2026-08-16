package org.eclipse.jdt.internal.compiler.lookup;

import com.android.tools.r8.internal.C10604zY0;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.util.HashtableOfPackage;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;

public class ModuleBinding extends Binding implements IUpdatableModule {
    public HashtableOfPackage declaredPackages;
    public int defaultNullness;
    public LookupEnvironment environment;
    private Map<PackageBinding, SimpleSetOfCharArray> exportRestrictions;
    protected PackageBinding[] exportedPackages;
    public Map<TypeBinding, TypeBinding[]> implementations;
    boolean isAuto;
    private boolean[] isComplete;
    boolean isPackageLookupActive;
    public char[] mainClassName;
    public int modifiers;
    public char[] moduleName;
    private Map<PackageBinding, SimpleSetOfCharArray> openRestrictions;
    protected PackageBinding[] openedPackages;
    private SimpleSetOfCharArray packageNames;
    ModuleBinding[] requiredModules;
    protected ModuleBinding[] requires;
    protected ModuleBinding[] requiresTransitive;
    protected TypeBinding[] services;
    SimpleLookupTable storedAnnotations;
    public long tagBits;
    private Set<ModuleBinding> transitiveRequires;
    protected TypeBinding[] uses;
    public static final char[] UNNAMED = "".toCharArray();
    public static final char[] ALL_UNNAMED = "ALL-UNNAMED".toCharArray();
    public static final char[] ANY = "".toCharArray();
    public static final char[] ANY_NAMED = "".toCharArray();

    public static class UnNamedModule extends ModuleBinding {
        private static final char[] UNNAMED_READABLE_NAME = "<unnamed>".toCharArray();

        public UnNamedModule(LookupEnvironment lookupEnvironment) {
            super(lookupEnvironment, (ModuleBinding) null);
        }

        @Override
        public boolean canAccess(PackageBinding packageBinding) {
            if (packageBinding instanceof SplitPackageBinding) {
                Iterator<PackageBinding> it = ((SplitPackageBinding) packageBinding).incarnations.iterator();
                while (it.hasNext()) {
                    if (canAccess(it.next())) {
                        return true;
                    }
                }
                return false;
            }
            ModuleBinding moduleBinding = packageBinding.enclosingModule;
            if (moduleBinding == null || moduleBinding == this) {
                return true;
            }
            return moduleBinding.isPackageExportedTo(packageBinding, this);
        }

        @Override
        public ModuleBinding[] getAllRequiredModules() {
            return Binding.NO_MODULES;
        }

        @Override
        public boolean isPackageExportedTo(PackageBinding packageBinding, ModuleBinding moduleBinding) {
            return packageBinding.isDeclaredIn(this) && packageBinding.hasCompilationUnit(false);
        }

        @Override
        public boolean isUnnamed() {
            return true;
        }

        @Override
        public char[] nameForCUCheck() {
            return ModuleBinding.UNNAMED;
        }

        @Override
        public char[] nameForLookup() {
            return ModuleBinding.ANY;
        }

        @Override
        public char[] readableName() {
            return UNNAMED_READABLE_NAME;
        }

        @Override
        public String toString() {
            return "The Unnamed Module";
        }
    }

    private ModuleBinding(LookupEnvironment lookupEnvironment) {
        this.defaultNullness = 0;
        this.requiredModules = null;
        this.isAuto = false;
        this.isComplete = new boolean[IUpdatableModule.UpdateKind.valuesCustom().length];
        this.isPackageLookupActive = false;
        this.storedAnnotations = null;
        this.moduleName = UNNAMED;
        this.environment = lookupEnvironment;
        ModuleBinding[] moduleBindingArr = Binding.NO_MODULES;
        this.requires = moduleBindingArr;
        this.requiresTransitive = moduleBindingArr;
        PackageBinding[] packageBindingArr = Binding.NO_PACKAGES;
        this.exportedPackages = packageBindingArr;
        this.openedPackages = packageBindingArr;
        this.declaredPackages = new HashtableOfPackage(0);
        Arrays.fill(this.isComplete, true);
    }

    private void collectAllDependencies(final Set<ModuleBinding> set) {
        getRequiredModules(false).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleBinding.lambda$0(Set.this, (ModuleBinding) obj);
            }
        });
    }

    private void collectTransitiveDependencies(final Set<ModuleBinding> set) {
        getRequiredModules(true).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleBinding.lambda$1(Set.this, (ModuleBinding) obj);
            }
        });
    }

    private PackageBinding combineWithPackagesFromOtherRelevantModules(PackageBinding packageBinding, char[][] cArr, char[][] cArr2) {
        boolean z10 = this.isPackageLookupActive;
        this.isPackageLookupActive = true;
        try {
            char[] cArr3 = cArr[cArr.length - 1];
            PackageBinding packageBinding2 = packageBinding != null ? packageBinding.parent : null;
            for (ModuleBinding moduleBinding : otherRelevantModules(cArr2)) {
                if (!moduleBinding.isPackageLookupActive) {
                    packageBinding = SplitPackageBinding.combine(packageBinding2 != null ? moduleBinding.getVisiblePackage(packageBinding2, cArr3, false) : moduleBinding.getVisiblePackage(cArr, false), packageBinding, this);
                }
            }
            this.isPackageLookupActive = z10;
            return packageBinding;
        } catch (Throwable th2) {
            this.isPackageLookupActive = z10;
            throw th2;
        }
    }

    private void completeIfNeeded(IUpdatableModule.UpdateKind updateKind) {
        if (this.isComplete[updateKind.ordinal()]) {
            return;
        }
        this.isComplete[updateKind.ordinal()] = true;
        INameEnvironment iNameEnvironment = this.environment.nameEnvironment;
        if (iNameEnvironment instanceof IModuleAwareNameEnvironment) {
            ((IModuleAwareNameEnvironment) iNameEnvironment).applyModuleUpdates(this, updateKind);
        }
    }

    public static void lambda$0(Set set, ModuleBinding moduleBinding) {
        if (set.add(moduleBinding)) {
            moduleBinding.collectAllDependencies(set);
        }
    }

    public static void lambda$1(Set set, ModuleBinding moduleBinding) {
        if (set.add(moduleBinding)) {
            moduleBinding.collectTransitiveDependencies(set);
        }
    }

    public static boolean lambda$10(char[] cArr) {
        return cArr != UNNAMED;
    }

    public ModuleBinding lambda$11(char[] cArr) {
        return this.environment.getModule(cArr);
    }

    public Collection lambda$2() {
        return (Collection) getRequiredModules(false).collect(new C10604zY0(), new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ModuleBinding.lambda$4((HashSet) obj, (ModuleBinding) obj2);
            }
        }, new r());
    }

    public static void lambda$4(HashSet hashSet, ModuleBinding moduleBinding) {
        hashSet.add(moduleBinding);
        moduleBinding.collectAllDependencies(hashSet);
    }

    public Collection lambda$6() {
        return (Collection) getRequiredModules(false).collect(new C10604zY0(), new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ModuleBinding.lambda$8((HashSet) obj, (ModuleBinding) obj2);
            }
        }, new r());
    }

    public static void lambda$8(HashSet hashSet, ModuleBinding moduleBinding) {
        hashSet.add(moduleBinding);
        moduleBinding.collectTransitiveDependencies(hashSet);
    }

    @Override
    public void addExports(char[] cArr, char[][] cArr2) {
        PackageBinding visiblePackage = getVisiblePackage(CharOperation.splitOn('.', cArr));
        if (visiblePackage == null || !visiblePackage.isValidBinding()) {
            return;
        }
        addResolvedExport(visiblePackage, cArr2);
    }

    public PackageBinding addPackage(PackageBinding packageBinding, boolean z10) {
        if (packageBinding.isDeclaredIn(this)) {
            char[] readableName = packageBinding.readableName();
            if (z10 && this.environment.useModuleSystem) {
                packageBinding = combineWithPackagesFromOtherRelevantModules(packageBinding, packageBinding.compoundName, isUnnamed() ? ((IModuleAwareNameEnvironment) this.environment.nameEnvironment).getUniqueModulesDeclaringPackage(null, readableName, ANY) : null);
            }
            this.declaredPackages.put(readableName, packageBinding);
            if (packageBinding.parent == null) {
                this.environment.knownPackages.put(readableName, packageBinding);
            }
        }
        return packageBinding;
    }

    @Override
    public void addReads(char[] cArr) {
        PackageBinding combine;
        ModuleBinding module = this.environment.getModule(cArr);
        if (module == null) {
            this.environment.problemReporter.missingModuleAddReads(cArr);
            return;
        }
        ModuleBinding[] moduleBindingArr = this.requires;
        int length = moduleBindingArr.length;
        int i10 = 0;
        if (length == 0) {
            this.requires = new ModuleBinding[]{module};
        } else {
            ModuleBinding[] moduleBindingArr2 = new ModuleBinding[length + 1];
            this.requires = moduleBindingArr2;
            System.arraycopy(moduleBindingArr, 0, moduleBindingArr2, 0, length);
            this.requires[length] = module;
        }
        HashtableOfPackage hashtableOfPackage = this.environment.knownPackages;
        while (true) {
            PackageBinding[] packageBindingArr = hashtableOfPackage.valueTable;
            if (i10 >= packageBindingArr.length) {
                return;
            }
            PackageBinding packageBinding = packageBindingArr[i10];
            if (packageBinding != null && packageBinding != (combine = SplitPackageBinding.combine(module.getVisiblePackage(packageBinding.compoundName), packageBinding, this))) {
                hashtableOfPackage.valueTable[i10] = combine;
                if (this.declaredPackages.containsKey(combine.readableName())) {
                    this.declaredPackages.put(combine.readableName(), combine);
                }
            }
            i10++;
        }
    }

    public void addResolvedExport(PackageBinding packageBinding, char[][] cArr) {
        int length = this.exportedPackages.length;
        if (packageBinding == null || !packageBinding.isValidBinding()) {
            return;
        }
        if (length == 0) {
            this.exportedPackages = new PackageBinding[]{packageBinding};
        } else {
            PackageBinding[] packageBindingArr = this.exportedPackages;
            PackageBinding[] packageBindingArr2 = new PackageBinding[length + 1];
            this.exportedPackages = packageBindingArr2;
            System.arraycopy(packageBindingArr, 0, packageBindingArr2, 0, length);
            this.exportedPackages[length] = packageBinding;
        }
        packageBinding.isExported = Boolean.TRUE;
        recordExportRestrictions(packageBinding, cArr);
    }

    public void addResolvedOpens(PackageBinding packageBinding, char[][] cArr) {
        int length = this.openedPackages.length;
        if (packageBinding == null || !packageBinding.isValidBinding()) {
            return;
        }
        if (length == 0) {
            this.openedPackages = new PackageBinding[]{packageBinding};
        } else {
            PackageBinding[] packageBindingArr = this.openedPackages;
            PackageBinding[] packageBindingArr2 = new PackageBinding[length + 1];
            this.openedPackages = packageBindingArr2;
            System.arraycopy(packageBindingArr, 0, packageBindingArr2, 0, length);
            this.openedPackages[length] = packageBinding;
        }
        recordOpensRestrictions(packageBinding, cArr);
    }

    public boolean canAccess(PackageBinding packageBinding) {
        if (packageBinding.isDeclaredIn(this)) {
            return true;
        }
        for (ModuleBinding moduleBinding : getAllRequiredModules()) {
            if (moduleBinding.isPackageExportedTo(packageBinding, this)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        return CharOperation.prepend('\"', this.moduleName);
    }

    public Supplier<Collection<ModuleBinding>> dependencyCollector() {
        return new Supplier() {
            @Override
            public final Object get() {
                Collection lambda$6;
                lambda$6 = ModuleBinding.this.lambda$6();
                return lambda$6;
            }
        };
    }

    public Supplier<Collection<ModuleBinding>> dependencyGraphCollector() {
        return new Supplier() {
            @Override
            public final Object get() {
                Collection lambda$2;
                lambda$2 = ModuleBinding.this.lambda$2();
                return lambda$2;
            }
        };
    }

    public ModuleBinding[] getAllRequiredModules() {
        ModuleBinding[] moduleBindingArr = this.requiredModules;
        if (moduleBindingArr != null) {
            return moduleBindingArr;
        }
        Collection<ModuleBinding> collection = dependencyCollector().get();
        if (collection.contains(this)) {
            return Binding.NO_MODULES;
        }
        ModuleBinding javaBaseModule = this.environment.javaBaseModule();
        if (!CharOperation.equals(this.moduleName, TypeConstants.JAVA_BASE) && javaBaseModule != null && javaBaseModule != this.environment.UnNamedModule) {
            collection.add(javaBaseModule);
        }
        ModuleBinding[] moduleBindingArr2 = collection.size() > 0 ? (ModuleBinding[]) collection.toArray(new ModuleBinding[collection.size()]) : Binding.NO_MODULES;
        this.requiredModules = moduleBindingArr2;
        return moduleBindingArr2;
    }

    public PackageBinding getDeclaredPackage(char[][] cArr, char[] cArr2) {
        char[][] arrayConcat = CharOperation.arrayConcat(cArr, cArr2);
        char[] concatWith = CharOperation.concatWith(arrayConcat, '.');
        PackageBinding packageBinding = this.declaredPackages.get(concatWith);
        if (packageBinding != null) {
            return packageBinding;
        }
        PackageBinding visiblePackage = cArr.length == 0 ? null : getVisiblePackage(cArr);
        PackageBinding packageBinding2 = new PackageBinding(arrayConcat, visiblePackage, this.environment, this);
        this.declaredPackages.put(concatWith, packageBinding2);
        if (visiblePackage == null) {
            this.environment.knownPackages.put(cArr2, packageBinding2);
        }
        return packageBinding2;
    }

    public int getDefaultNullness() {
        getAnnotationTagBits();
        return this.defaultNullness;
    }

    public String[] getExportRestrictions(PackageBinding packageBinding) {
        SimpleSetOfCharArray simpleSetOfCharArray;
        completeIfNeeded(IUpdatableModule.UpdateKind.PACKAGE);
        Map<PackageBinding, SimpleSetOfCharArray> map = this.exportRestrictions;
        if (map == null || (simpleSetOfCharArray = map.get(packageBinding)) == null) {
            return CharOperation.NO_STRINGS;
        }
        char[][] cArr = new char[simpleSetOfCharArray.elementSize];
        simpleSetOfCharArray.asArray(cArr);
        return CharOperation.charArrayToStringArray(cArr);
    }

    public PackageBinding[] getExports() {
        completeIfNeeded(IUpdatableModule.UpdateKind.PACKAGE);
        return this.exportedPackages;
    }

    public TypeBinding[] getImplementations(TypeBinding typeBinding) {
        Map<TypeBinding, TypeBinding[]> map = this.implementations;
        if (map != null) {
            return map.get(typeBinding);
        }
        return null;
    }

    public String[] getOpenRestrictions(PackageBinding packageBinding) {
        SimpleSetOfCharArray simpleSetOfCharArray;
        completeIfNeeded(IUpdatableModule.UpdateKind.PACKAGE);
        Map<PackageBinding, SimpleSetOfCharArray> map = this.openRestrictions;
        if (map == null || (simpleSetOfCharArray = map.get(packageBinding)) == null) {
            return CharOperation.NO_STRINGS;
        }
        char[][] cArr = new char[simpleSetOfCharArray.elementSize];
        simpleSetOfCharArray.asArray(cArr);
        return CharOperation.charArrayToStringArray(cArr);
    }

    public PackageBinding[] getOpens() {
        completeIfNeeded(IUpdatableModule.UpdateKind.PACKAGE);
        return this.openedPackages;
    }

    public PackageBinding getPackage(char[][] cArr, char[] cArr2) {
        if (cArr == null || cArr.length == 0) {
            return getVisiblePackage(null, cArr2, true);
        }
        PackageBinding visiblePackage = getVisiblePackage(cArr);
        PackageBinding visiblePackage2 = (visiblePackage == null || visiblePackage == LookupEnvironment.TheNotFoundPackage) ? null : getVisiblePackage(visiblePackage, cArr2, true);
        if (visiblePackage2 != null) {
            return addPackage(visiblePackage2, false);
        }
        return null;
    }

    public char[][] getPackageNamesForClassFile() {
        if (this.packageNames == null) {
            return null;
        }
        for (PackageBinding packageBinding : this.exportedPackages) {
            this.packageNames.add(packageBinding.readableName());
        }
        for (PackageBinding packageBinding2 : this.openedPackages) {
            this.packageNames.add(packageBinding2.readableName());
        }
        Map<TypeBinding, TypeBinding[]> map = this.implementations;
        if (map != null) {
            for (TypeBinding[] typeBindingArr : map.values()) {
                for (TypeBinding typeBinding : typeBindingArr) {
                    this.packageNames.add(((ReferenceBinding) typeBinding).fPackage.readableName());
                }
            }
        }
        return this.packageNames.values;
    }

    public Stream<ModuleBinding> getRequiredModules(boolean z10) {
        return Stream.of((Object[]) (z10 ? getRequiresTransitive() : getRequires()));
    }

    public ModuleBinding[] getRequires() {
        completeIfNeeded(IUpdatableModule.UpdateKind.MODULE);
        return this.requires;
    }

    public ModuleBinding[] getRequiresTransitive() {
        completeIfNeeded(IUpdatableModule.UpdateKind.MODULE);
        return this.requiresTransitive;
    }

    public TypeBinding[] getServices() {
        return this.services;
    }

    public PackageBinding getTopLevelPackage(char[] cArr) {
        PackageBinding packageBinding = this.declaredPackages.get(cArr);
        if (packageBinding != null) {
            return packageBinding;
        }
        PackageBinding package0 = this.environment.getPackage0(cArr);
        if (package0 != null) {
            return package0;
        }
        PackageBinding visiblePackage = getVisiblePackage(null, cArr, true);
        if (visiblePackage != null) {
            this.environment.knownPackages.put(cArr, visiblePackage);
            return addPackage(visiblePackage, false);
        }
        this.environment.knownPackages.put(cArr, LookupEnvironment.TheNotFoundPackage);
        return visiblePackage;
    }

    public TypeBinding[] getUses() {
        return this.uses;
    }

    public PackageBinding getVisiblePackage(PackageBinding packageBinding, char[] cArr, boolean z10) {
        PackageBinding package0;
        char[][] cArr2;
        PackageBinding packageBinding2;
        PackageBinding incarnation;
        char[][] cArr3 = packageBinding == null ? CharOperation.NO_CHAR_CHAR : packageBinding.compoundName;
        char[][] arrayConcat = CharOperation.arrayConcat(cArr3, cArr);
        PackageBinding packageBinding3 = this.declaredPackages.get(CharOperation.concatWith(arrayConcat, '.'));
        if (packageBinding3 != null) {
            return packageBinding3;
        }
        if (packageBinding != null) {
            package0 = packageBinding.getPackage0(cArr);
        } else {
            package0 = this.environment.getPackage0(cArr);
        }
        if (package0 != null) {
            if (package0 == LookupEnvironment.TheNotFoundPackage) {
                return null;
            }
            return addPackage(package0, false);
        }
        boolean z11 = !z10;
        LookupEnvironment lookupEnvironment = this.environment;
        if (lookupEnvironment.useModuleSystem) {
            cArr2 = ((IModuleAwareNameEnvironment) lookupEnvironment.nameEnvironment).getUniqueModulesDeclaringPackage(cArr3, cArr, nameForLookup());
            if (cArr2 != null) {
                if (CharOperation.containsEqual(cArr2, this.moduleName)) {
                    packageBinding2 = (!(packageBinding instanceof SplitPackageBinding) || (incarnation = ((SplitPackageBinding) packageBinding).getIncarnation(this)) == null) ? null : incarnation.getPackage0(cArr);
                    if (packageBinding2 == null) {
                        packageBinding2 = new PackageBinding(arrayConcat, packageBinding, this.environment, this);
                    }
                } else if (z10) {
                    PackageBinding packageBinding4 = null;
                    for (char[] cArr4 : cArr2) {
                        ModuleBinding module = this.environment.root.getModule(cArr4);
                        if (module != null) {
                            if (module.isPackageLookupActive) {
                                z11 = true;
                            } else {
                                PackageBinding declaredPackage = module.getDeclaredPackage(cArr3, cArr);
                                if (declaredPackage != null) {
                                    PackageBinding packageBinding5 = declaredPackage.parent;
                                    if (packageBinding5 != null) {
                                        packageBinding5.addPackage(declaredPackage, module);
                                    }
                                    packageBinding4 = SplitPackageBinding.combine(declaredPackage, packageBinding4, this);
                                    packageBinding = null;
                                }
                            }
                        }
                    }
                    packageBinding2 = packageBinding4;
                }
            }
            packageBinding2 = null;
        } else if (lookupEnvironment.nameEnvironment.isPackage(cArr3, cArr)) {
            packageBinding2 = new PackageBinding(arrayConcat, packageBinding, this.environment, this);
            cArr2 = null;
        } else {
            cArr2 = null;
            packageBinding2 = null;
        }
        if (z10) {
            if (packageBinding != null && packageBinding2 != null) {
                packageBinding.addPackage(packageBinding2, this);
            }
            packageBinding2 = combineWithPackagesFromOtherRelevantModules(packageBinding2, arrayConcat, cArr2);
        }
        if (packageBinding2 != null && packageBinding2.isValidBinding()) {
            if (cArr3.length == 0) {
                packageBinding2.environment.knownPackages.put(cArr, packageBinding2);
            } else if (packageBinding != null) {
                packageBinding2 = packageBinding.addPackage(packageBinding2, this);
            }
            return z11 ? packageBinding2 : addPackage(packageBinding2, false);
        }
        if (packageBinding != null && !z11 && !(packageBinding instanceof SplitPackageBinding)) {
            if (packageBinding2 == null) {
                packageBinding.addNotFoundPackage(cArr);
            } else {
                packageBinding.knownPackages.put(cArr, packageBinding2);
            }
        }
        return null;
    }

    public boolean hasUnstableAutoName() {
        return false;
    }

    public boolean isDeprecated() {
        return (this.tagBits & 70368744177664L) != 0;
    }

    public boolean isOpen() {
        return (this.modifiers & 32) != 0;
    }

    public boolean isPackageExportedTo(PackageBinding packageBinding, ModuleBinding moduleBinding) {
        SimpleSetOfCharArray simpleSetOfCharArray;
        PackageBinding incarnation = packageBinding instanceof SplitPackageBinding ? ((SplitPackageBinding) packageBinding).getIncarnation(this) : packageBinding.enclosingModule == this ? packageBinding : null;
        if (incarnation != null) {
            if (this.isAuto) {
                return packageBinding.enclosingModule == this;
            }
            for (PackageBinding packageBinding2 : getExports()) {
                if (packageBinding2.subsumes(incarnation)) {
                    Map<PackageBinding, SimpleSetOfCharArray> map = this.exportRestrictions;
                    if (map == null || (simpleSetOfCharArray = map.get(packageBinding2)) == null) {
                        return true;
                    }
                    return moduleBinding.isUnnamed() ? simpleSetOfCharArray.includes(ALL_UNNAMED) : simpleSetOfCharArray.includes(moduleBinding.name());
                }
            }
        }
        return false;
    }

    public boolean isTransitivelyRequired(ModuleBinding moduleBinding) {
        if (this.transitiveRequires == null) {
            HashSet hashSet = new HashSet();
            collectTransitiveDependencies(hashSet);
            this.transitiveRequires = hashSet;
        }
        return this.transitiveRequires.contains(moduleBinding);
    }

    public boolean isUnnamed() {
        return false;
    }

    @Override
    public int kind() {
        return 64;
    }

    @Override
    public char[] name() {
        return this.moduleName;
    }

    public char[] nameForCUCheck() {
        return nameForLookup();
    }

    public char[] nameForLookup() {
        return this.moduleName;
    }

    public List<ModuleBinding> otherRelevantModules(char[][] cArr) {
        return (!isUnnamed() || cArr == null) ? Arrays.asList(getAllRequiredModules()) : (List) Arrays.stream(cArr).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$10;
                lambda$10 = ModuleBinding.lambda$10((char[]) obj);
                return lambda$10;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ModuleBinding lambda$11;
                lambda$11 = ModuleBinding.this.lambda$11((char[]) obj);
                return lambda$11;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((ModuleBinding) obj);
            }
        }).collect(Collectors.toList());
    }

    @Override
    public char[] readableName() {
        return this.moduleName;
    }

    public void recordExportRestrictions(PackageBinding packageBinding, char[][] cArr) {
        SimpleSetOfCharArray simpleSetOfCharArray;
        if (cArr == null || cArr.length <= 0) {
            return;
        }
        Map<PackageBinding, SimpleSetOfCharArray> map = this.exportRestrictions;
        if (map != null) {
            simpleSetOfCharArray = map.get(packageBinding);
        } else {
            this.exportRestrictions = new HashMap();
            simpleSetOfCharArray = null;
        }
        if (simpleSetOfCharArray == null) {
            simpleSetOfCharArray = new SimpleSetOfCharArray(cArr.length);
            this.exportRestrictions.put(packageBinding, simpleSetOfCharArray);
        }
        for (char[] cArr2 : cArr) {
            simpleSetOfCharArray.add(cArr2);
        }
    }

    public void recordOpensRestrictions(PackageBinding packageBinding, char[][] cArr) {
        SimpleSetOfCharArray simpleSetOfCharArray;
        if (cArr == null || cArr.length <= 0) {
            return;
        }
        Map<PackageBinding, SimpleSetOfCharArray> map = this.openRestrictions;
        if (map != null) {
            simpleSetOfCharArray = map.get(packageBinding);
        } else {
            this.openRestrictions = new HashMap();
            simpleSetOfCharArray = null;
        }
        if (simpleSetOfCharArray == null) {
            simpleSetOfCharArray = new SimpleSetOfCharArray(cArr.length);
            this.openRestrictions.put(packageBinding, simpleSetOfCharArray);
        }
        for (char[] cArr2 : cArr) {
            simpleSetOfCharArray.add(cArr2);
        }
    }

    public AnnotationHolder retrieveAnnotationHolder(Binding binding, boolean z10) {
        SimpleLookupTable storedAnnotations = storedAnnotations(z10, false);
        if (storedAnnotations == null) {
            return null;
        }
        return (AnnotationHolder) storedAnnotations.get(binding);
    }

    public AnnotationBinding[] retrieveAnnotations(Binding binding) {
        AnnotationHolder retrieveAnnotationHolder = retrieveAnnotationHolder(binding, true);
        return retrieveAnnotationHolder == null ? Binding.NO_ANNOTATIONS : retrieveAnnotationHolder.getAnnotations();
    }

    @Override
    public void setAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        storeAnnotations(this, annotationBindingArr, z10);
    }

    @Override
    public void setMainClassName(char[] cArr) {
        this.mainClassName = cArr;
    }

    @Override
    public void setPackageNames(SimpleSetOfCharArray simpleSetOfCharArray) {
        this.packageNames = simpleSetOfCharArray;
    }

    public void storeAnnotationHolder(Binding binding, AnnotationHolder annotationHolder) {
        if (annotationHolder == null) {
            SimpleLookupTable storedAnnotations = storedAnnotations(false, false);
            if (storedAnnotations != null) {
                storedAnnotations.removeKey(binding);
                return;
            }
            return;
        }
        SimpleLookupTable storedAnnotations2 = storedAnnotations(true, false);
        if (storedAnnotations2 != null) {
            storedAnnotations2.put(binding, annotationHolder);
        }
    }

    public void storeAnnotations(Binding binding, AnnotationBinding[] annotationBindingArr, boolean z10) {
        AnnotationHolder annotationHolder;
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            SimpleLookupTable storedAnnotations = storedAnnotations(false, z10);
            annotationHolder = storedAnnotations != null ? (AnnotationHolder) storedAnnotations.get(binding) : null;
            if (annotationHolder == null) {
                return;
            }
        } else {
            SimpleLookupTable storedAnnotations2 = storedAnnotations(true, z10);
            if (storedAnnotations2 == null) {
                return;
            }
            annotationHolder = (AnnotationHolder) storedAnnotations2.get(binding);
            if (annotationHolder == null) {
                annotationHolder = new AnnotationHolder();
            }
        }
        storeAnnotationHolder(binding, annotationHolder.setAnnotations(annotationBindingArr));
    }

    public SimpleLookupTable storedAnnotations(boolean z10, boolean z11) {
        if (z10 && this.storedAnnotations == null) {
            if (!this.environment.globalOptions.storeAnnotations && !z11) {
                return null;
            }
            this.storedAnnotations = new SimpleLookupTable(3);
        }
        return this.storedAnnotations;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(30);
        if (isOpen()) {
            stringBuffer.append("open ");
        }
        stringBuffer.append("module " + new String(readableName()));
        if (this.requires.length > 0) {
            stringBuffer.append("\n/*    requires    */\n");
            for (int i10 = 0; i10 < this.requires.length; i10++) {
                stringBuffer.append("\n\t");
                ModuleBinding[] moduleBindingArr = this.requiresTransitive;
                if (moduleBindingArr != null) {
                    int length = moduleBindingArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length) {
                            if (moduleBindingArr[i11] == this.requires[i10]) {
                                stringBuffer.append("transitive ");
                                break;
                            }
                            i11++;
                        }
                    }
                }
                stringBuffer.append(this.requires[i10].moduleName);
            }
        } else {
            stringBuffer.append("\nNo Requires");
        }
        PackageBinding[] packageBindingArr = this.exportedPackages;
        if (packageBindingArr == null || packageBindingArr.length <= 0) {
            stringBuffer.append("\nNo Exports");
        } else {
            stringBuffer.append("\n/*    exports    */\n");
            int i12 = 0;
            while (true) {
                PackageBinding[] packageBindingArr2 = this.exportedPackages;
                if (i12 >= packageBindingArr2.length) {
                    break;
                }
                PackageBinding packageBinding = packageBindingArr2[i12];
                stringBuffer.append("\n\t");
                if (packageBinding == null) {
                    stringBuffer.append("<unresolved>");
                } else {
                    stringBuffer.append(packageBinding.readableName());
                    Map<PackageBinding, SimpleSetOfCharArray> map = this.exportRestrictions;
                    SimpleSetOfCharArray simpleSetOfCharArray = map != null ? map.get(packageBinding) : null;
                    if (simpleSetOfCharArray != null) {
                        stringBuffer.append(" to ");
                        int i13 = simpleSetOfCharArray.elementSize;
                        char[][] cArr = new char[i13];
                        simpleSetOfCharArray.asArray(cArr);
                        int i14 = 0;
                        String str = "";
                        while (i14 < i13) {
                            char[] cArr2 = cArr[i14];
                            stringBuffer.append(str);
                            stringBuffer.append(cArr2);
                            i14++;
                            str = ", ";
                        }
                    }
                }
                i12++;
            }
        }
        PackageBinding[] packageBindingArr3 = this.openedPackages;
        if (packageBindingArr3 == null || packageBindingArr3.length <= 0) {
            stringBuffer.append("\nNo Opens");
        } else {
            stringBuffer.append("\n/*    exports    */\n");
            int i15 = 0;
            while (true) {
                PackageBinding[] packageBindingArr4 = this.openedPackages;
                if (i15 >= packageBindingArr4.length) {
                    break;
                }
                PackageBinding packageBinding2 = packageBindingArr4[i15];
                stringBuffer.append("\n\t");
                if (packageBinding2 == null) {
                    stringBuffer.append("<unresolved>");
                } else {
                    stringBuffer.append(packageBinding2.readableName());
                    Map<PackageBinding, SimpleSetOfCharArray> map2 = this.openRestrictions;
                    SimpleSetOfCharArray simpleSetOfCharArray2 = map2 != null ? map2.get(packageBinding2) : null;
                    if (simpleSetOfCharArray2 != null) {
                        stringBuffer.append(" to ");
                        int i16 = simpleSetOfCharArray2.elementSize;
                        char[][] cArr3 = new char[i16];
                        simpleSetOfCharArray2.asArray(cArr3);
                        int i17 = 0;
                        String str2 = "";
                        while (i17 < i16) {
                            char[] cArr4 = cArr3[i17];
                            stringBuffer.append(str2);
                            stringBuffer.append(cArr4);
                            i17++;
                            str2 = ", ";
                        }
                    }
                }
                i15++;
            }
        }
        TypeBinding[] typeBindingArr = this.uses;
        if (typeBindingArr == null || typeBindingArr.length <= 0) {
            stringBuffer.append("\nNo Uses");
        } else {
            stringBuffer.append("\n/*    uses    /*\n");
            for (int i18 = 0; i18 < this.uses.length; i18++) {
                stringBuffer.append("\n\t");
                stringBuffer.append(this.uses[i18].debugName());
            }
        }
        TypeBinding[] typeBindingArr2 = this.services;
        if (typeBindingArr2 == null || typeBindingArr2.length <= 0) {
            stringBuffer.append("\nNo Services");
        } else {
            stringBuffer.append("\n/*    Services    */\n");
            for (int i19 = 0; i19 < this.services.length; i19++) {
                stringBuffer.append("\n\t");
                stringBuffer.append("provides ");
                stringBuffer.append(this.services[i19].debugName());
                stringBuffer.append(" with ");
                Map<TypeBinding, TypeBinding[]> map3 = this.implementations;
                if (map3 == null || !map3.containsKey(this.services[i19])) {
                    stringBuffer.append("<missing implementations>");
                } else {
                    TypeBinding[] typeBindingArr3 = this.implementations.get(this.services[i19]);
                    int length2 = typeBindingArr3.length;
                    int i20 = 0;
                    String str3 = "";
                    while (i20 < length2) {
                        TypeBinding typeBinding = typeBindingArr3[i20];
                        stringBuffer.append(str3);
                        stringBuffer.append(typeBinding.debugName());
                        i20++;
                        str3 = ", ";
                    }
                }
            }
        }
        return stringBuffer.toString();
    }

    public ModuleBinding(LookupEnvironment lookupEnvironment, ModuleBinding moduleBinding) {
        this(lookupEnvironment);
    }

    public ModuleBinding(char[] cArr) {
        this.defaultNullness = 0;
        this.requiredModules = null;
        this.isAuto = false;
        this.isComplete = new boolean[IUpdatableModule.UpdateKind.valuesCustom().length];
        this.isPackageLookupActive = false;
        this.storedAnnotations = null;
        this.moduleName = cArr;
        ModuleBinding[] moduleBindingArr = Binding.NO_MODULES;
        this.requires = moduleBindingArr;
        this.requiresTransitive = moduleBindingArr;
        PackageBinding[] packageBindingArr = Binding.NO_PACKAGES;
        this.exportedPackages = packageBindingArr;
        this.openedPackages = packageBindingArr;
        TypeBinding[] typeBindingArr = Binding.NO_TYPES;
        this.uses = typeBindingArr;
        this.services = typeBindingArr;
        this.declaredPackages = new HashtableOfPackage(5);
    }

    public ModuleBinding(char[] cArr, LookupEnvironment lookupEnvironment) {
        this.defaultNullness = 0;
        this.requiredModules = null;
        this.isAuto = false;
        this.isComplete = new boolean[IUpdatableModule.UpdateKind.valuesCustom().length];
        this.isPackageLookupActive = false;
        this.storedAnnotations = null;
        this.moduleName = cArr;
        ModuleBinding[] moduleBindingArr = Binding.NO_MODULES;
        this.requires = moduleBindingArr;
        this.requiresTransitive = moduleBindingArr;
        this.environment = new LookupEnvironment(lookupEnvironment.root, this);
        this.declaredPackages = new HashtableOfPackage(5);
    }

    public PackageBinding getVisiblePackage(char[][] cArr) {
        return getVisiblePackage(cArr, true);
    }

    public PackageBinding getVisiblePackage(char[][] cArr, boolean z10) {
        int i10;
        if (cArr != null && cArr.length != 0) {
            PackageBinding topLevelPackage = getTopLevelPackage(cArr[0]);
            if (topLevelPackage != null && topLevelPackage != LookupEnvironment.TheNotFoundPackage) {
                while (i10 < cArr.length) {
                    topLevelPackage = getVisiblePackage(topLevelPackage, cArr[i10], z10);
                    i10 = (topLevelPackage == null || topLevelPackage == LookupEnvironment.TheNotFoundPackage) ? 1 : i10 + 1;
                }
                return topLevelPackage;
            }
            return null;
        }
        return this.environment.defaultPackage;
    }
}
