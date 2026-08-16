package org.eclipse.jdt.core.dom;

import java.util.Arrays;
import java.util.function.Function;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public class ModuleBinding implements IModuleBinding {
    protected static final ITypeBinding[] NO_TYPE_BINDINGS = new ITypeBinding[0];
    private IAnnotationBinding[] annotations;
    private org.eclipse.jdt.internal.compiler.lookup.ModuleBinding binding;
    private IPackageBinding[] exports;
    private boolean isOpen;
    private volatile String key;
    private String name = null;
    private IPackageBinding[] opens;
    private IModuleBinding[] requiredModules;
    protected BindingResolver resolver;
    private ITypeBinding[] services;
    private ITypeBinding[] uses;

    public ModuleBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding) {
        this.isOpen = false;
        this.resolver = bindingResolver;
        this.binding = moduleBinding;
        this.isOpen = moduleBinding.isOpen();
    }

    private ITypeBinding[] getTypes(org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr) {
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr2[i10] = (TypeBinding) this.resolver.getTypeBinding(typeBindingArr[i10]);
        }
        return typeBindingArr2;
    }

    public IPackageBinding lambda$0(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        return this.resolver.getPackageBinding(packageBinding);
    }

    public static IPackageBinding[] lambda$1(int i10) {
        return new IPackageBinding[i10];
    }

    public IPackageBinding lambda$2(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        return this.resolver.getPackageBinding(packageBinding);
    }

    private IAnnotationBinding[] resolveAnnotationBindings(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr) {
        int length = annotationBindingArr == null ? 0 : annotationBindingArr.length;
        if (length == 0) {
            return AnnotationBinding.NoAnnotations;
        }
        IAnnotationBinding[] iAnnotationBindingArr = new IAnnotationBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding = annotationBindingArr[i11];
            if (annotationBinding == null) {
                break;
            }
            IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(annotationBinding);
            if (annotationInstance != null) {
                iAnnotationBindingArr[i10] = annotationInstance;
                i10++;
            }
        }
        if (i10 == length) {
            return iAnnotationBindingArr;
        }
        if (i10 == 0) {
            AnnotationBinding[] annotationBindingArr2 = AnnotationBinding.NoAnnotations;
            this.annotations = annotationBindingArr2;
            return annotationBindingArr2;
        }
        IAnnotationBinding[] iAnnotationBindingArr2 = new IAnnotationBinding[i10];
        System.arraycopy(iAnnotationBindingArr, 0, iAnnotationBindingArr2, 0, i10);
        return iAnnotationBindingArr2;
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        if (this.annotations == null) {
            this.annotations = resolveAnnotationBindings(this.binding.getAnnotations());
        }
        return this.annotations;
    }

    @Override
    public IPackageBinding[] getExportedPackages() {
        if (this.exports == null) {
            this.exports = (IPackageBinding[]) Arrays.stream(this.binding.getExports()).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    IPackageBinding lambda$0;
                    lambda$0 = ModuleBinding.this.lambda$0((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) obj);
                    return lambda$0;
                }
            }).toArray(new h());
        }
        return this.exports;
    }

    @Override
    public String[] getExportedTo(IPackageBinding iPackageBinding) {
        return this.binding.getExportRestrictions(((PackageBinding) iPackageBinding).getCompilerBinding());
    }

    @Override
    public ITypeBinding[] getImplementations(ITypeBinding iTypeBinding) {
        return getTypes(this.binding.getImplementations(((TypeBinding) iTypeBinding).binding));
    }

    @Override
    public IJavaElement getJavaElement() {
        NameLookup nameLookup;
        NameLookup.Answer findModule;
        INameEnvironment iNameEnvironment = this.binding.environment.nameEnvironment;
        if (!(iNameEnvironment instanceof SearchableEnvironment) || (nameLookup = ((SearchableEnvironment) iNameEnvironment).nameLookup) == null || (findModule = nameLookup.findModule(getName().toCharArray())) == null) {
            return null;
        }
        return findModule.module;
    }

    @Override
    public String getKey() {
        if (this.key == null) {
            char[] computeUniqueKey = this.binding.computeUniqueKey();
            this.key = (computeUniqueKey == null || computeUniqueKey == CharOperation.NO_CHAR) ? Util.EMPTY_STRING : new String(computeUniqueKey);
        }
        return this.key;
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public String getName() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        char[] cArr = this.binding.moduleName;
        return (cArr == null || cArr.length == 0) ? Util.EMPTY_STRING : new String(cArr);
    }

    @Override
    public IPackageBinding[] getOpenedPackages() {
        if (this.opens == null) {
            this.opens = (IPackageBinding[]) Arrays.stream(this.binding.getOpens()).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    IPackageBinding lambda$2;
                    lambda$2 = ModuleBinding.this.lambda$2((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) obj);
                    return lambda$2;
                }
            }).toArray(new h());
        }
        return this.opens;
    }

    @Override
    public String[] getOpenedTo(IPackageBinding iPackageBinding) {
        return this.binding.getOpenRestrictions(((PackageBinding) iPackageBinding).getCompilerBinding());
    }

    @Override
    public IModuleBinding[] getRequiredModules() {
        IModuleBinding[] iModuleBindingArr = this.requiredModules;
        if (iModuleBindingArr != null) {
            return iModuleBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.ModuleBinding[] requires = this.binding.getRequires();
        int length = requires != null ? requires.length : 0;
        IModuleBinding[] iModuleBindingArr2 = new IModuleBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding = requires[i10];
            iModuleBindingArr2[i10] = moduleBinding != null ? this.resolver.getModuleBinding(moduleBinding) : null;
        }
        this.requiredModules = iModuleBindingArr2;
        return iModuleBindingArr2;
    }

    @Override
    public ITypeBinding[] getServices() {
        if (this.services == null) {
            this.services = getTypes(this.binding.getServices());
        }
        return this.services;
    }

    @Override
    public ITypeBinding[] getUses() {
        if (this.uses == null) {
            this.uses = getTypes(this.binding.getUses());
        }
        return this.uses;
    }

    @Override
    public boolean isDeprecated() {
        return false;
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding == this) {
            return true;
        }
        if (iBinding == null || !(iBinding instanceof ModuleBinding)) {
            return false;
        }
        return BindingComparator.isEqual(this.binding, ((ModuleBinding) iBinding).binding);
    }

    @Override
    public boolean isOpen() {
        return this.isOpen;
    }

    @Override
    public boolean isRecovered() {
        return false;
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public String toString() {
        return this.binding.toString();
    }
}
