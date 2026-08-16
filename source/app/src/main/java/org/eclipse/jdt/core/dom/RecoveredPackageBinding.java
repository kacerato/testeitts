package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.Util;

public class RecoveredPackageBinding implements IPackageBinding {
    private static final char PACKAGE_NAME_SEPARATOR = '.';
    private org.eclipse.jdt.internal.compiler.lookup.PackageBinding binding;
    private BindingResolver resolver;
    private static final String[] NO_NAME_COMPONENTS = CharOperation.NO_STRINGS;
    private static final String UNNAMED = Util.EMPTY_STRING;
    private String name = null;
    private String[] components = null;

    public RecoveredPackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding, BindingResolver bindingResolver) {
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

    @Override
    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    @Override
    public IJavaElement getJavaElement() {
        return null;
    }

    @Override
    public String getKey() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Recovered#");
        stringBuffer.append(this.binding.computeUniqueKey());
        return stringBuffer.toString();
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
        if (iBinding.isRecovered() && iBinding.getKind() == 1) {
            return getKey().equals(iBinding.getKey());
        }
        return false;
    }

    @Override
    public boolean isRecovered() {
        return true;
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public boolean isUnnamed() {
        return false;
    }
}
