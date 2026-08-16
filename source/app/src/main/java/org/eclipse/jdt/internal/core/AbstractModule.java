package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.IntFunction;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import w2.C15883c;

public interface AbstractModule extends IModuleDescription {

    public static class AutoModule extends NamedMember implements AbstractModule {
        private boolean nameFromManifest;

        public AutoModule(JavaElement javaElement, String str, boolean z10) {
            super(javaElement, str);
            this.nameFromManifest = z10;
        }

        @Override
        public IJavaElement[] getChildren() throws JavaModelException {
            return JavaElement.NO_ELEMENTS;
        }

        @Override
        public int getFlags() throws JavaModelException {
            return 0;
        }

        @Override
        public char getHandleMementoDelimiter() {
            return JavaElement.JEM_MODULE;
        }

        @Override
        public IModule.IModuleReference[] getRequiredModules() throws JavaModelException {
            return ModuleDescriptionInfo.NO_REQUIRES;
        }

        @Override
        public ITypeRoot getTypeRoot() {
            return null;
        }

        @Override
        public boolean isAutoModule() {
            return true;
        }

        public boolean isAutoNameFromManifest() {
            return this.nameFromManifest;
        }

        @Override
        public void toStringContent(StringBuffer stringBuffer, String str) throws JavaModelException {
            stringBuffer.append("automatic module ");
            stringBuffer.append(this.name);
        }
    }

    static String lambda$0(IModule.IModuleReference iModuleReference) {
        return String.valueOf(iModuleReference.name());
    }

    static String[] lambda$1(int i10) {
        return new String[i10];
    }

    Object getElementInfo() throws JavaModelException;

    @Override
    default int getElementType() {
        return 17;
    }

    @Override
    default String[] getExportedPackageNames(IModuleDescription iModuleDescription) throws JavaModelException {
        IModule moduleInfo = getModuleInfo();
        if (moduleInfo == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        for (IModule.IPackageExport iPackageExport : moduleInfo.exports()) {
            if (iModuleDescription == null || !iPackageExport.isQualified() || CharOperation.containsEqual(iPackageExport.targets(), iModuleDescription.getElementName().toCharArray())) {
                arrayList.add(new String(iPackageExport.name()));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    default IModule.IPackageExport[] getExportedPackages() throws JavaModelException {
        return getModuleInfo().exports();
    }

    default IModule getModuleInfo() throws JavaModelException {
        return (IModule) getElementInfo();
    }

    @Override
    default String[] getOpenedPackageNames(IModuleDescription iModuleDescription) throws JavaModelException {
        IModule moduleInfo = getModuleInfo();
        if (moduleInfo == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        for (IModule.IPackageExport iPackageExport : moduleInfo.opens()) {
            if (iModuleDescription == null || !iPackageExport.isQualified() || CharOperation.containsEqual(iPackageExport.targets(), iModuleDescription.getElementName().toCharArray())) {
                arrayList.add(new String(iPackageExport.name()));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    default IModule.IPackageExport[] getOpenedPackages() throws JavaModelException {
        return getModuleInfo().opens();
    }

    @Override
    default String[] getProvidedServiceNames() throws JavaModelException {
        ArrayList arrayList = new ArrayList();
        for (IModule.IService iService : getProvidedServices()) {
            arrayList.add(new String(iService.name()));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    default IModule.IService[] getProvidedServices() throws JavaModelException {
        return getModuleInfo().provides();
    }

    @Override
    default String[] getRequiredModuleNames() throws JavaModelException {
        return (String[]) Arrays.stream(getRequiredModules()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$0;
                lambda$0 = AbstractModule.lambda$0((IModule.IModuleReference) obj);
                return lambda$0;
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                String[] lambda$1;
                lambda$1 = AbstractModule.lambda$1(i10);
                return lambda$1;
            }
        });
    }

    default IModule.IModuleReference[] getRequiredModules() throws JavaModelException {
        return getModuleInfo().requires();
    }

    @Override
    default String[] getUsedServiceNames() throws JavaModelException {
        ArrayList arrayList = new ArrayList();
        for (char[] cArr : getUsedServices()) {
            arrayList.add(new String(cArr));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    default char[][] getUsedServices() throws JavaModelException {
        return getModuleInfo().uses();
    }

    default String toString(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            toStringContent(stringBuffer, str);
        } catch (JavaModelException e10) {
            e10.printStackTrace();
        }
        return stringBuffer.toString();
    }

    default void toStringContent(StringBuffer stringBuffer, String str) throws JavaModelException {
        IModule.IPackageExport[] exportedPackages = getExportedPackages();
        IModule.IModuleReference[] requiredModules = getRequiredModules();
        stringBuffer.append("module ");
        stringBuffer.append(getElementName());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(str);
        if (exportedPackages != null) {
            for (IModule.IPackageExport iPackageExport : exportedPackages) {
                stringBuffer.append("\texports ");
                stringBuffer.append(iPackageExport.toString());
                stringBuffer.append(str);
            }
        }
        stringBuffer.append(str);
        if (requiredModules != null) {
            for (int i10 = 0; i10 < requiredModules.length; i10++) {
                stringBuffer.append("\trequires ");
                if (requiredModules[i10].isTransitive()) {
                    stringBuffer.append(" public ");
                }
                stringBuffer.append(requiredModules[i10].name());
                stringBuffer.append(';');
                stringBuffer.append(str);
            }
        }
        stringBuffer.append(str);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }
}
