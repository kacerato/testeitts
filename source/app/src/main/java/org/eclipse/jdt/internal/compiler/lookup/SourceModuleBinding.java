package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Collection;
import java.util.HashMap;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class SourceModuleBinding extends ModuleBinding {
    public final CompilationUnitScope scope;

    public SourceModuleBinding(char[] cArr, CompilationUnitScope compilationUnitScope, LookupEnvironment lookupEnvironment) {
        super(cArr);
        lookupEnvironment.knownModules.put(cArr, this);
        LookupEnvironment lookupEnvironment2 = new LookupEnvironment(lookupEnvironment, this);
        this.environment = lookupEnvironment2;
        this.scope = compilationUnitScope;
        compilationUnitScope.environment = lookupEnvironment2;
    }

    public static ModuleBinding[] lambda$0(int i10) {
        return new ModuleBinding[i10];
    }

    public static TypeBinding[] lambda$2(int i10) {
        return new TypeBinding[i10];
    }

    private <T> T[] merge(T[] tArr, T[] tArr2, T t10, IntFunction<T[]> intFunction) {
        if (tArr.length == 0 && t10 == null) {
            return tArr2.length > 0 ? tArr2 : tArr;
        }
        int i10 = t10 == null ? 0 : 1;
        int length = tArr.length;
        int length2 = tArr2.length;
        int i11 = i10 + length;
        T[] apply = intFunction.apply(i11 + length2);
        if (t10 != null) {
            apply[0] = t10;
        }
        System.arraycopy(tArr, 0, apply, i10, length);
        System.arraycopy(tArr2, 0, apply, i11, length2);
        return apply;
    }

    private void resolveTypes() {
        ModuleDeclaration moduleDeclaration;
        CompilationUnitScope compilationUnitScope = this.scope;
        if (compilationUnitScope == null || (moduleDeclaration = compilationUnitScope.referenceCompilationUnit().moduleDeclaration) == null) {
            return;
        }
        moduleDeclaration.resolveTypeDirectives(this.scope);
    }

    public void ensureAnnotationsResolved() {
        CompilationUnitScope compilationUnitScope;
        if ((this.tagBits & 8589934592L) != 0 || (compilationUnitScope = this.scope) == null) {
            return;
        }
        ModuleDeclaration moduleDeclaration = compilationUnitScope.referenceContext.moduleDeclaration;
        ASTNode.resolveAnnotations(moduleDeclaration.scope, moduleDeclaration.annotations, this);
        long j10 = this.tagBits;
        if ((70368744177664L & j10) != 0) {
            this.modifiers |= 1048576;
            this.tagBits = j10 | 17179869184L;
        }
        this.tagBits |= 8589934592L;
    }

    @Override
    public ModuleBinding[] getAllRequiredModules() {
        CompilationUnitScope compilationUnitScope = this.scope;
        compilationUnitScope.referenceContext.moduleDeclaration.resolveModuleDirectives(compilationUnitScope);
        return super.getAllRequiredModules();
    }

    @Override
    public long getAnnotationTagBits() {
        ensureAnnotationsResolved();
        return this.tagBits;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        ensureAnnotationsResolved();
        return retrieveAnnotations(this);
    }

    @Override
    public PackageBinding[] getExports() {
        CompilationUnitScope compilationUnitScope = this.scope;
        compilationUnitScope.referenceContext.moduleDeclaration.resolvePackageDirectives(compilationUnitScope);
        return super.getExports();
    }

    @Override
    public TypeBinding[] getImplementations(TypeBinding typeBinding) {
        resolveTypes();
        return super.getImplementations(typeBinding);
    }

    @Override
    public PackageBinding[] getOpens() {
        CompilationUnitScope compilationUnitScope = this.scope;
        compilationUnitScope.referenceContext.moduleDeclaration.resolvePackageDirectives(compilationUnitScope);
        return super.getOpens();
    }

    @Override
    public Stream<ModuleBinding> getRequiredModules(boolean z10) {
        CompilationUnitScope compilationUnitScope = this.scope;
        compilationUnitScope.referenceContext.moduleDeclaration.resolveModuleDirectives(compilationUnitScope);
        return super.getRequiredModules(z10);
    }

    @Override
    public TypeBinding[] getServices() {
        resolveTypes();
        return super.getServices();
    }

    @Override
    public TypeBinding[] getUses() {
        resolveTypes();
        return super.getUses();
    }

    public void setImplementations(TypeBinding typeBinding, Collection<TypeBinding> collection) {
        if (this.implementations == null) {
            this.implementations = new HashMap();
        }
        this.implementations.put(typeBinding, (TypeBinding[]) collection.toArray(new TypeBinding[collection.size()]));
    }

    public void setRequires(ModuleBinding[] moduleBindingArr, ModuleBinding[] moduleBindingArr2) {
        this.requires = (ModuleBinding[]) merge(this.requires, moduleBindingArr, this.environment.javaBaseModule(), new IntFunction() {
            @Override
            public final Object apply(int i10) {
                ModuleBinding[] lambda$0;
                lambda$0 = SourceModuleBinding.lambda$0(i10);
                return lambda$0;
            }
        });
        this.requiresTransitive = (ModuleBinding[]) merge(this.requiresTransitive, moduleBindingArr2, null, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                ModuleBinding[] lambda$0;
                lambda$0 = SourceModuleBinding.lambda$0(i10);
                return lambda$0;
            }
        });
    }

    public void setServices(TypeBinding[] typeBindingArr) {
        this.services = (TypeBinding[]) merge(this.services, typeBindingArr, null, new x());
    }

    public void setUses(TypeBinding[] typeBindingArr) {
        this.uses = (TypeBinding[]) merge(this.uses, typeBindingArr, null, new x());
    }

    @Override
    public SimpleLookupTable storedAnnotations(boolean z10, boolean z11) {
        if (this.scope == null) {
            return null;
        }
        SimpleLookupTable storedAnnotations = super.storedAnnotations(z10, z11);
        if (storedAnnotations != null) {
            this.scope.referenceCompilationUnit().compilationResult.hasAnnotations = true;
        }
        return storedAnnotations;
    }
}
