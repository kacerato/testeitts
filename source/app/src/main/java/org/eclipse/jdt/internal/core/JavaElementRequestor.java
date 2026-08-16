package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;

public class JavaElementRequestor implements IJavaElementRequestor {
    protected static final IField[] EMPTY_FIELD_ARRAY = new IField[0];
    protected static final IInitializer[] EMPTY_INITIALIZER_ARRAY = new IInitializer[0];
    protected static final IType[] EMPTY_TYPE_ARRAY = new IType[0];
    protected static final IPackageFragment[] EMPTY_PACKAGE_FRAGMENT_ARRAY = new IPackageFragment[0];
    protected static final IMethod[] EMPTY_METHOD_ARRAY = new IMethod[0];
    protected static final IModuleDescription[] EMPTY_MODULE_ARRAY = new IModuleDescription[0];
    protected boolean canceled = false;
    protected ArrayList fields = null;
    protected ArrayList initializers = null;
    protected ArrayList memberTypes = null;
    protected ArrayList methods = null;
    protected ArrayList packageFragments = null;
    protected ArrayList types = null;
    protected ArrayList<IModuleDescription> modules = null;

    @Override
    public void acceptField(IField iField) {
        if (this.fields == null) {
            this.fields = new ArrayList();
        }
        this.fields.add(iField);
    }

    @Override
    public void acceptInitializer(IInitializer iInitializer) {
        if (this.initializers == null) {
            this.initializers = new ArrayList();
        }
        this.initializers.add(iInitializer);
    }

    @Override
    public void acceptMemberType(IType iType) {
        if (this.memberTypes == null) {
            this.memberTypes = new ArrayList();
        }
        this.memberTypes.add(iType);
    }

    @Override
    public void acceptMethod(IMethod iMethod) {
        if (this.methods == null) {
            this.methods = new ArrayList();
        }
        this.methods.add(iMethod);
    }

    @Override
    public void acceptModule(IModuleDescription iModuleDescription) {
        if (this.modules == null) {
            this.modules = new ArrayList<>();
        }
        this.modules.add(iModuleDescription);
    }

    @Override
    public void acceptPackageFragment(IPackageFragment iPackageFragment) {
        if (this.packageFragments == null) {
            this.packageFragments = new ArrayList();
        }
        this.packageFragments.add(iPackageFragment);
    }

    @Override
    public void acceptType(IType iType) {
        if (this.types == null) {
            this.types = new ArrayList();
        }
        this.types.add(iType);
    }

    public IField[] getFields() {
        ArrayList arrayList = this.fields;
        if (arrayList == null) {
            return EMPTY_FIELD_ARRAY;
        }
        IField[] iFieldArr = new IField[arrayList.size()];
        this.fields.toArray(iFieldArr);
        return iFieldArr;
    }

    public IInitializer[] getInitializers() {
        ArrayList arrayList = this.initializers;
        if (arrayList == null) {
            return EMPTY_INITIALIZER_ARRAY;
        }
        IInitializer[] iInitializerArr = new IInitializer[arrayList.size()];
        this.initializers.toArray(iInitializerArr);
        return iInitializerArr;
    }

    public IType[] getMemberTypes() {
        ArrayList arrayList = this.memberTypes;
        if (arrayList == null) {
            return EMPTY_TYPE_ARRAY;
        }
        IType[] iTypeArr = new IType[arrayList.size()];
        this.memberTypes.toArray(iTypeArr);
        return iTypeArr;
    }

    public IMethod[] getMethods() {
        ArrayList arrayList = this.methods;
        if (arrayList == null) {
            return EMPTY_METHOD_ARRAY;
        }
        IMethod[] iMethodArr = new IMethod[arrayList.size()];
        this.methods.toArray(iMethodArr);
        return iMethodArr;
    }

    public IModuleDescription[] getModules() {
        ArrayList<IModuleDescription> arrayList = this.modules;
        if (arrayList == null) {
            return EMPTY_MODULE_ARRAY;
        }
        IModuleDescription[] iModuleDescriptionArr = new IModuleDescription[arrayList.size()];
        this.modules.toArray(iModuleDescriptionArr);
        return iModuleDescriptionArr;
    }

    public IPackageFragment[] getPackageFragments() {
        ArrayList arrayList = this.packageFragments;
        if (arrayList == null) {
            return EMPTY_PACKAGE_FRAGMENT_ARRAY;
        }
        IPackageFragment[] iPackageFragmentArr = new IPackageFragment[arrayList.size()];
        this.packageFragments.toArray(iPackageFragmentArr);
        return iPackageFragmentArr;
    }

    public IType[] getTypes() {
        ArrayList arrayList = this.types;
        if (arrayList == null) {
            return EMPTY_TYPE_ARRAY;
        }
        IType[] iTypeArr = new IType[arrayList.size()];
        this.types.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public boolean isCanceled() {
        return this.canceled;
    }

    public void reset() {
        this.canceled = false;
        this.fields = null;
        this.initializers = null;
        this.memberTypes = null;
        this.methods = null;
        this.packageFragments = null;
        this.types = null;
    }

    public void setCanceled(boolean z10) {
        this.canceled = z10;
    }
}
