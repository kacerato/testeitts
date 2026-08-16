package org.eclipse.jdt.internal.compiler.ast;

import com.jme3.audio.openal.AL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SplitPackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.core.JavaElement;

public class ModuleDeclaration extends ASTNode implements ReferenceContext {
    public Annotation[] annotations;
    public SourceModuleBinding binding;
    public int bodyEnd;
    public int bodyStart;
    CompilationResult compilationResult;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    public ExportsStatement[] exports;
    boolean hasResolvedModuleDirectives;
    boolean hasResolvedPackageDirectives;
    boolean hasResolvedTypeDirectives;
    boolean ignoreFurtherInvestigation;
    public int modifiersSourceStart;
    public char[] moduleName;
    public OpensStatement[] opens;
    public int opensCount;
    public RequiresStatement[] requires;
    public BlockScope scope;
    public ProvidesStatement[] services;
    public int servicesCount;
    public long[] sourcePositions;
    public char[][] tokens;
    public UsesStatement[] uses;
    public int usesCount;
    public int modifiers = 0;
    public int exportsCount = 0;
    public int requiresCount = 0;

    public ModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr) {
        this.compilationResult = compilationResult;
        this.tokens = cArr;
        this.moduleName = CharOperation.concatWith(cArr, '.');
        this.sourcePositions = jArr;
        this.sourceEnd = (int) jArr[jArr.length - 1];
        this.sourceStart = (int) (jArr[0] >>> 32);
    }

    private void analyseOneDependency(RequiresStatement requiresStatement, ModuleBinding moduleBinding, CompilationUnitScope compilationUnitScope, Map<String, Set<ModuleBinding>> map) {
        for (PackageBinding packageBinding : moduleBinding.getExports()) {
            Set<ModuleBinding> set = map.get(String.valueOf(packageBinding.readableName()));
            if (set != null && set.size() > 1 && !compilationUnitScope.compilerOptions().enableJdtDebugCompileMode) {
                compilationUnitScope.problemReporter().conflictingPackagesFromModules(packageBinding, set, requiresStatement.sourceStart, requiresStatement.sourceEnd);
            }
        }
    }

    private void analyseReferencedPackages(CompilationUnitScope compilationUnitScope) {
        ExportsStatement[] exportsStatementArr = this.exports;
        if (exportsStatementArr != null) {
            for (ExportsStatement exportsStatement : exportsStatementArr) {
                PackageBinding packageBinding = exportsStatement.resolvedPackage;
                if (packageBinding != null) {
                    if (packageBinding instanceof SplitPackageBinding) {
                        packageBinding = ((SplitPackageBinding) packageBinding).getIncarnation(this.binding);
                    }
                    if (!packageBinding.hasCompilationUnit(true)) {
                        compilationUnitScope.problemReporter().invalidPackageReference(IProblem.PackageDoesNotExistOrIsEmpty, exportsStatement);
                    }
                }
            }
        }
    }

    @Override
    public void abort(int i10, CategorizedProblem categorizedProblem) {
        if (i10 == 2) {
            throw new AbortCompilation(this.compilationResult, categorizedProblem);
        }
        if (i10 == 4) {
            throw new AbortCompilationUnit(this.compilationResult, categorizedProblem);
        }
        if (i10 == 16) {
            throw new AbortMethod(this.compilationResult, categorizedProblem);
        }
        throw new AbortType(this.compilationResult, categorizedProblem);
    }

    public void analyseCode(CompilationUnitScope compilationUnitScope) {
        analyseModuleGraph(compilationUnitScope);
        analyseReferencedPackages(compilationUnitScope);
    }

    public void analyseModuleGraph(CompilationUnitScope compilationUnitScope) {
        if (this.requires != null) {
            HashMap hashMap = new HashMap();
            for (ModuleBinding moduleBinding : this.binding.getAllRequiredModules()) {
                for (PackageBinding packageBinding : moduleBinding.getExports()) {
                    PackageBinding visibleFor = packageBinding.getVisibleFor(moduleBinding, true);
                    if (this.binding.canAccess(visibleFor)) {
                        String valueOf = String.valueOf(visibleFor.readableName());
                        Set<ModuleBinding> set = hashMap.get(valueOf);
                        if (set == null) {
                            set = new HashSet<>();
                            hashMap.put(valueOf, set);
                        }
                        set.add(moduleBinding);
                    }
                }
            }
            for (RequiresStatement requiresStatement : this.requires) {
                ModuleBinding moduleBinding2 = requiresStatement.resolvedBinding;
                if (moduleBinding2 != null) {
                    if (moduleBinding2.isDeprecated()) {
                        compilationUnitScope.problemReporter().deprecatedModule(requiresStatement.module, moduleBinding2);
                    }
                    analyseOneDependency(requiresStatement, moduleBinding2, compilationUnitScope, hashMap);
                    if (requiresStatement.isTransitive()) {
                        for (ModuleBinding moduleBinding3 : moduleBinding2.getAllRequiredModules()) {
                            analyseOneDependency(requiresStatement, moduleBinding3, compilationUnitScope, hashMap);
                        }
                    }
                }
            }
        }
    }

    public void checkAndSetModifiers() {
        int i10 = this.modifiers;
        int i11 = 65535 & i10;
        if ((61407 & i10) != 0) {
            this.scope.problemReporter().illegalModifierForModule(this);
            i11 = i10 & AL.AL_REFERENCE_DISTANCE;
        }
        int i12 = 32768 | i11;
        this.binding.modifiers = i12;
        this.modifiers = i12;
    }

    @Override
    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public void createScope(final Scope scope) {
        this.scope = new MethodScope(scope, null, true) {
            @Override
            public boolean isModuleScope() {
                return true;
            }

            @Override
            public ProblemReporter problemReporter() {
                return scope.problemReporter();
            }

            @Override
            public ReferenceContext referenceContext() {
                return ModuleDeclaration.this;
            }
        };
    }

    public void generateCode() {
        int i10 = this.bits;
        if ((i10 & 8192) != 0) {
            return;
        }
        this.bits = i10 | 8192;
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            LookupEnvironment environment = this.scope.environment();
            ClassFile acquireForModule = environment.classFilePool.acquireForModule(this.binding, environment.globalOptions);
            acquireForModule.initializeForModule(this.binding);
            acquireForModule.addModuleAttributes(this.binding, this.annotations, this.scope.referenceCompilationUnit());
            this.scope.referenceCompilationUnit().compilationResult.record(this.binding.moduleName, acquireForModule);
        } catch (AbortType unused) {
        }
    }

    @Override
    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        return this.scope.referenceCompilationUnit();
    }

    @Override
    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public boolean isOpen() {
        return (this.modifiers & 32) != 0;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        printHeader(0, stringBuffer);
        return printBody(i10, stringBuffer);
    }

    public StringBuffer printBody(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(" {");
        if (this.requires != null) {
            for (int i11 = 0; i11 < this.requiresCount; i11++) {
                stringBuffer.append('\n');
                ASTNode.printIndent(i10 + 1, stringBuffer);
                this.requires[i11].print(0, stringBuffer);
            }
        }
        if (this.exports != null) {
            for (int i12 = 0; i12 < this.exportsCount; i12++) {
                stringBuffer.append('\n');
                this.exports[i12].print(i10 + 1, stringBuffer);
            }
        }
        if (this.opens != null) {
            for (int i13 = 0; i13 < this.opensCount; i13++) {
                stringBuffer.append('\n');
                this.opens[i13].print(i10 + 1, stringBuffer);
            }
        }
        if (this.uses != null) {
            for (int i14 = 0; i14 < this.usesCount; i14++) {
                stringBuffer.append('\n');
                this.uses[i14].print(i10 + 1, stringBuffer);
            }
        }
        if (this.servicesCount != 0) {
            for (int i15 = 0; i15 < this.servicesCount; i15++) {
                stringBuffer.append('\n');
                this.services[i15].print(i10 + 1, stringBuffer);
            }
        }
        stringBuffer.append('\n');
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(JavaElement.JEM_ANNOTATION);
        return printIndent;
    }

    public StringBuffer printHeader(int i10, StringBuffer stringBuffer) {
        if (this.annotations != null) {
            int i11 = 0;
            while (true) {
                Annotation[] annotationArr = this.annotations;
                if (i11 >= annotationArr.length) {
                    break;
                }
                annotationArr[i11].print(i10, stringBuffer);
                if (i11 != this.annotations.length - 1) {
                    stringBuffer.append(" ");
                }
                i11++;
            }
            stringBuffer.append('\n');
        }
        if (isOpen()) {
            stringBuffer.append("open ");
        }
        stringBuffer.append("module ");
        stringBuffer.append(CharOperation.charToString(this.moduleName));
        return stringBuffer;
    }

    public void resolveModuleDirectives(CompilationUnitScope compilationUnitScope) {
        if (this.binding == null) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
        if (this.hasResolvedModuleDirectives) {
            return;
        }
        this.hasResolvedModuleDirectives = true;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (int i10 = 0; i10 < this.requiresCount; i10++) {
            RequiresStatement requiresStatement = this.requires[i10];
            if (requiresStatement != null && requiresStatement.resolve(compilationUnitScope) != null) {
                if (!hashSet.add(requiresStatement.resolvedBinding)) {
                    compilationUnitScope.problemReporter().duplicateModuleReference(IProblem.DuplicateRequires, requiresStatement.module);
                }
                if (requiresStatement.isTransitive()) {
                    hashSet2.add(requiresStatement.resolvedBinding);
                }
                if (requiresStatement.resolvedBinding.dependencyGraphCollector().get().contains(this.binding)) {
                    compilationUnitScope.problemReporter().cyclicModuleDependency(this.binding, requiresStatement.module);
                    hashSet.remove(requiresStatement.module.binding);
                }
            }
        }
        this.binding.setRequires((ModuleBinding[]) hashSet.toArray(new ModuleBinding[hashSet.size()]), (ModuleBinding[]) hashSet2.toArray(new ModuleBinding[hashSet2.size()]));
    }

    public void resolvePackageDirectives(CompilationUnitScope compilationUnitScope) {
        char[][] cArr;
        if (this.binding == null) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
        if (this.hasResolvedPackageDirectives) {
            return;
        }
        this.hasResolvedPackageDirectives = true;
        HashSet hashSet = new HashSet();
        int i10 = 0;
        while (true) {
            char[][] cArr2 = null;
            if (i10 >= this.exportsCount) {
                break;
            }
            ExportsStatement exportsStatement = this.exports[i10];
            if (exportsStatement != null && exportsStatement.resolve(compilationUnitScope)) {
                if (!hashSet.add(exportsStatement.resolvedPackage)) {
                    compilationUnitScope.problemReporter().invalidPackageReference(IProblem.DuplicateExports, exportsStatement);
                }
                ModuleReference[] moduleReferenceArr = exportsStatement.targets;
                if (moduleReferenceArr != null) {
                    int length = moduleReferenceArr.length;
                    char[][] cArr3 = new char[length];
                    for (int i11 = 0; i11 < length; i11++) {
                        cArr3[i11] = exportsStatement.targets[i11].moduleName;
                    }
                    cArr2 = cArr3;
                }
                this.binding.addResolvedExport(exportsStatement.resolvedPackage, cArr2);
            }
            i10++;
        }
        HashtableOfObject hashtableOfObject = new HashtableOfObject();
        for (int i12 = 0; i12 < this.opensCount; i12++) {
            OpensStatement opensStatement = this.opens[i12];
            if (isOpen()) {
                compilationUnitScope.problemReporter().invalidOpensStatement(opensStatement, this);
            } else {
                if (hashtableOfObject.containsKey(opensStatement.pkgName)) {
                    compilationUnitScope.problemReporter().invalidPackageReference(IProblem.DuplicateOpens, opensStatement);
                } else {
                    hashtableOfObject.put(opensStatement.pkgName, opensStatement);
                    opensStatement.resolve(compilationUnitScope);
                }
                ModuleReference[] moduleReferenceArr2 = opensStatement.targets;
                if (moduleReferenceArr2 != null) {
                    int length2 = moduleReferenceArr2.length;
                    cArr = new char[length2];
                    for (int i13 = 0; i13 < length2; i13++) {
                        cArr[i13] = opensStatement.targets[i13].moduleName;
                    }
                } else {
                    cArr = null;
                }
                this.binding.addResolvedOpens(opensStatement.resolvedPackage, cArr);
            }
        }
    }

    public void resolveTypeDirectives(CompilationUnitScope compilationUnitScope) {
        SourceModuleBinding sourceModuleBinding = this.binding;
        if (sourceModuleBinding == null) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
        if (this.hasResolvedTypeDirectives) {
            return;
        }
        this.hasResolvedTypeDirectives = true;
        ASTNode.resolveAnnotations(this.scope, this.annotations, sourceModuleBinding);
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.usesCount; i10++) {
            TypeBinding resolveType = this.uses[i10].serviceInterface.resolveType(this.scope);
            if (resolveType != null && resolveType.isValidBinding()) {
                if (!resolveType.isClass() && !resolveType.isInterface() && !resolveType.isAnnotationType()) {
                    compilationUnitScope.problemReporter().invalidServiceRef(IProblem.InvalidServiceIntfType, this.uses[i10].serviceInterface);
                }
                if (!hashSet.add(this.uses[i10].serviceInterface.resolvedType)) {
                    compilationUnitScope.problemReporter().duplicateTypeReference(IProblem.DuplicateUses, this.uses[i10].serviceInterface);
                }
            }
        }
        this.binding.setUses((TypeBinding[]) hashSet.toArray(new TypeBinding[hashSet.size()]));
        HashSet hashSet2 = new HashSet();
        for (int i11 = 0; i11 < this.servicesCount; i11++) {
            this.services[i11].resolve(this.scope);
            TypeBinding typeBinding = this.services[i11].serviceInterface.resolvedType;
            if (typeBinding != null && typeBinding.isValidBinding()) {
                if (!hashSet2.add(this.services[i11].serviceInterface.resolvedType)) {
                    compilationUnitScope.problemReporter().duplicateTypeReference(IProblem.DuplicateServices, this.services[i11].serviceInterface);
                }
                this.binding.setImplementations(typeBinding, this.services[i11].getResolvedImplementations());
            }
        }
        this.binding.setServices((TypeBinding[]) hashSet2.toArray(new TypeBinding[hashSet2.size()]));
    }

    public ModuleBinding setBinding(SourceModuleBinding sourceModuleBinding) {
        this.binding = sourceModuleBinding;
        return sourceModuleBinding;
    }

    @Override
    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    @Override
    public void tagAsHavingIgnoredMandatoryErrors(int i10) {
    }

    public void traverse(ASTVisitor aSTVisitor, CompilationUnitScope compilationUnitScope) {
        aSTVisitor.visit(this, compilationUnitScope);
    }
}
