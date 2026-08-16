package org.eclipse.jdt.core.dom;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public class PackageBinding implements IPackageBinding {
    private static final char PACKAGE_NAME_SEPARATOR = '.';
    private org.eclipse.jdt.internal.compiler.lookup.PackageBinding binding;
    private String[] components;
    private String name;
    private BindingResolver resolver;
    private static final String[] NO_NAME_COMPONENTS = CharOperation.NO_STRINGS;
    private static final String UNNAMED = Util.EMPTY_STRING;

    public PackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding, BindingResolver bindingResolver) {
        this.binding = packageBinding;
        this.resolver = bindingResolver;
    }

    private void computeNameAndComponents() {
        char[][] cArr = this.binding.compoundName;
        if (cArr == CharOperation.NO_CHAR_CHAR || cArr == null) {
            this.name = UNNAMED;
            this.components = NO_NAME_COMPONENTS;
            return;
        }
        int length = cArr.length;
        this.components = new String[length];
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (i10 >= i11) {
                this.components[i11] = new String(cArr[i11]);
                stringBuffer.append(cArr[i11]);
                this.name = stringBuffer.toString();
                return;
            } else {
                this.components[i10] = new String(cArr[i10]);
                stringBuffer.append(cArr[i10]);
                stringBuffer.append('.');
                i10++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public IAnnotationBinding[] getAnnotations() {
        NameLookup nameLookup;
        NameEnvironmentAnswer findType;
        try {
            INameEnvironment iNameEnvironment = this.binding.environment.nameEnvironment;
            if ((iNameEnvironment instanceof SearchableEnvironment) && (nameLookup = ((SearchableEnvironment) iNameEnvironment).nameLookup) != null) {
                int i10 = 0;
                IPackageFragment[] findPackageFragments = nameLookup.findPackageFragments(getName(), false);
                if (findPackageFragments == null) {
                    return AnnotationBinding.NoAnnotations;
                }
                int length = findPackageFragments.length;
                for (int i11 = 0; i11 < length; i11++) {
                    int kind = findPackageFragments[i11].getKind();
                    if (kind == 1) {
                        ICompilationUnit compilationUnit = findPackageFragments[i11].getCompilationUnit("package-info.java");
                        if (compilationUnit != null && compilationUnit.exists()) {
                            ASTParser newParser = ASTParser.newParser(3);
                            newParser.setSource(compilationUnit);
                            newParser.setResolveBindings(true);
                            newParser.setUnitName("package-info.java");
                            newParser.setFocalPosition(0);
                            newParser.setKind(8);
                            PackageDeclaration packageDeclaration = ((CompilationUnit) newParser.createAST(null)).getPackage();
                            if (packageDeclaration != null) {
                                List annotations = packageDeclaration.annotations();
                                if (annotations != null && !annotations.isEmpty()) {
                                    IAnnotationBinding[] iAnnotationBindingArr = new IAnnotationBinding[annotations.size()];
                                    Iterator it = annotations.iterator();
                                    while (it.hasNext()) {
                                        IAnnotationBinding resolveAnnotationBinding = ((Annotation) it.next()).resolveAnnotationBinding();
                                        iAnnotationBindingArr[i10] = resolveAnnotationBinding;
                                        if (resolveAnnotationBinding == null) {
                                            return AnnotationBinding.NoAnnotations;
                                        }
                                        i10++;
                                    }
                                    return iAnnotationBindingArr;
                                }
                                return AnnotationBinding.NoAnnotations;
                            }
                        }
                    } else if (kind == 2 && (findType = iNameEnvironment.findType(TypeConstants.PACKAGE_INFO_NAME, this.binding.compoundName)) != null && findType.isBinaryType()) {
                        IBinaryType binaryType = findType.getBinaryType();
                        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] addStandardAnnotations = org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding.addStandardAnnotations(BinaryTypeBinding.createAnnotations(binaryType.getAnnotations(), this.binding.environment, binaryType.getMissingTypeNames()), binaryType.getTagBits(), this.binding.environment);
                        int length2 = addStandardAnnotations.length;
                        AnnotationBinding[] annotationBindingArr = new AnnotationBinding[length2];
                        while (i10 < length2) {
                            IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(addStandardAnnotations[i10]);
                            if (annotationInstance == null) {
                                return AnnotationBinding.NoAnnotations;
                            }
                            annotationBindingArr[i10] = annotationInstance;
                            i10++;
                        }
                        return annotationBindingArr;
                    }
                }
                return AnnotationBinding.NoAnnotations;
            }
            return AnnotationBinding.NoAnnotations;
        } catch (JavaModelException unused) {
            return AnnotationBinding.NoAnnotations;
        }
    }

    public org.eclipse.jdt.internal.compiler.lookup.PackageBinding getCompilerBinding() {
        return this.binding;
    }

    @Override
    public IJavaElement getJavaElement() {
        NameLookup nameLookup;
        IPackageFragment[] findPackageFragments;
        INameEnvironment iNameEnvironment = this.binding.environment.nameEnvironment;
        if (!(iNameEnvironment instanceof SearchableEnvironment) || (nameLookup = ((SearchableEnvironment) iNameEnvironment).nameLookup) == null || (findPackageFragments = nameLookup.findPackageFragments(getName(), false)) == null) {
            return null;
        }
        if (findPackageFragments.length != 0) {
            return findPackageFragments[0];
        }
        org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(2, JavaCore.PLUGIN_ID, "Searching for package " + getName() + " returns an empty array"));
        return null;
    }

    @Override
    public String getKey() {
        return new String(this.binding.computeUniqueKey());
    }

    @Override
    public int getKind() {
        return 1;
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public IModuleBinding getModule() {
        org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding = this.binding.enclosingModule;
        if (moduleBinding != null) {
            return this.resolver.getModuleBinding(moduleBinding);
        }
        return null;
    }

    @Override
    public String getName() {
        if (this.name == null) {
            computeNameAndComponents();
        }
        return this.name;
    }

    @Override
    public String[] getNameComponents() {
        if (this.components == null) {
            computeNameAndComponents();
        }
        return this.components;
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
        if (iBinding == null || !(iBinding instanceof PackageBinding)) {
            return false;
        }
        return CharOperation.equals(this.binding.compoundName, ((PackageBinding) iBinding).binding.compoundName);
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
    public boolean isUnnamed() {
        return getName().equals(UNNAMED);
    }

    @Override
    public String toString() {
        return this.binding.toString();
    }
}
