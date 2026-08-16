package org.eclipse.jdt.internal.core;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.ISourceModule;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import w2.C15883c;

public class ModuleDescriptionInfo extends AnnotatableInfo implements ISourceModule {
    private Map<IJavaElement, String[]> categories;
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;
    PackageExportInfo[] exports;
    IModuleDescription handle;
    char[] name;
    PackageExportInfo[] opens;
    ModuleReferenceInfo[] requires;
    ServiceInfo[] services;
    char[][] usedServices;
    protected static final char[][] NO_USES = (char[][]) Array.newInstance(Character.TYPE, 0, 0);
    protected static final ModuleReferenceInfo[] NO_REQUIRES = new ModuleReferenceInfo[0];
    protected static final PackageExportInfo[] NO_EXPORTS = new PackageExportInfo[0];
    protected static final ServiceInfo[] NO_PROVIDES = new ServiceInfo[0];
    protected static final PackageExportInfo[] NO_OPENS = new PackageExportInfo[0];

    public static class ModuleReferenceInfo extends MemberElementInfo implements IModule.IModuleReference {
        int modifiers;
        char[] name;

        @Override
        public int getModifiers() {
            return this.modifiers;
        }

        @Override
        public char[] name() {
            return this.name;
        }
    }

    public static class PackageExportInfo extends MemberElementInfo implements IModule.IPackageExport {
        char[] pack;
        char[][] target;

        @Override
        public char[] name() {
            return this.pack;
        }

        @Override
        public char[][] targets() {
            return this.target;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.pack);
            if (this.target != null) {
                stringBuffer.append(" to ");
                for (char[] cArr : this.target) {
                    stringBuffer.append(cArr);
                }
            }
            stringBuffer.append(';');
            return stringBuffer.toString();
        }
    }

    public static class ServiceInfo extends MemberElementInfo implements IModule.IService {
        char[][] implNames;
        char[] serviceName;

        @Override
        public char[] name() {
            return this.serviceName;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.serviceName);
            stringBuffer.append(" with ");
            int i10 = 0;
            while (true) {
                char[][] cArr = this.implNames;
                if (i10 >= cArr.length) {
                    stringBuffer.append(';');
                    return stringBuffer.toString();
                }
                stringBuffer.append(cArr[i10]);
                if (i10 < this.implNames.length - 1) {
                    stringBuffer.append(", ");
                }
                i10++;
            }
        }

        @Override
        public char[][] with() {
            return this.implNames;
        }
    }

    public static ModuleDescriptionInfo createModule(ModuleDeclaration moduleDeclaration) {
        ModuleDescriptionInfo moduleDescriptionInfo = new ModuleDescriptionInfo();
        moduleDescriptionInfo.name = moduleDeclaration.moduleName;
        moduleDescriptionInfo.setFlags(moduleDeclaration.modifiers);
        if (moduleDeclaration.requiresCount > 0) {
            RequiresStatement[] requiresStatementArr = moduleDeclaration.requires;
            ModuleReferenceInfo[] moduleReferenceInfoArr = new ModuleReferenceInfo[requiresStatementArr.length + 1];
            moduleDescriptionInfo.requires = moduleReferenceInfoArr;
            moduleReferenceInfoArr[0] = getJavaBaseReference();
            int i10 = 0;
            while (i10 < requiresStatementArr.length) {
                int i11 = i10 + 1;
                moduleDescriptionInfo.requires[i11] = new ModuleReferenceInfo();
                moduleDescriptionInfo.requires[i11].name = CharOperation.concatWith(requiresStatementArr[i10].module.tokens, '.');
                moduleDescriptionInfo.requires[i11].modifiers = requiresStatementArr[i10].modifiers;
                i10 = i11;
            }
        } else {
            moduleDescriptionInfo.requires = CharOperation.equals(moduleDeclaration.moduleName, TypeConstants.JAVA_BASE) ? NO_REQUIRES : new ModuleReferenceInfo[]{getJavaBaseReference()};
        }
        if (moduleDeclaration.exportsCount > 0) {
            ExportsStatement[] exportsStatementArr = moduleDeclaration.exports;
            moduleDescriptionInfo.exports = new PackageExportInfo[exportsStatementArr.length];
            for (int i12 = 0; i12 < exportsStatementArr.length; i12++) {
                moduleDescriptionInfo.exports[i12] = createPackageExport(exportsStatementArr[i12]);
            }
        } else {
            moduleDescriptionInfo.exports = NO_EXPORTS;
        }
        if (moduleDeclaration.usesCount > 0) {
            UsesStatement[] usesStatementArr = moduleDeclaration.uses;
            moduleDescriptionInfo.usedServices = new char[usesStatementArr.length];
            for (int i13 = 0; i13 < usesStatementArr.length; i13++) {
                moduleDescriptionInfo.usedServices[i13] = CharOperation.concatWith(usesStatementArr[i13].serviceInterface.getTypeName(), '.');
            }
        } else {
            moduleDescriptionInfo.usedServices = NO_USES;
        }
        if (moduleDeclaration.servicesCount > 0) {
            ProvidesStatement[] providesStatementArr = moduleDeclaration.services;
            moduleDescriptionInfo.services = new ServiceInfo[providesStatementArr.length];
            for (int i14 = 0; i14 < providesStatementArr.length; i14++) {
                moduleDescriptionInfo.services[i14] = createService(providesStatementArr[i14]);
            }
        } else {
            moduleDescriptionInfo.services = NO_PROVIDES;
        }
        if (moduleDeclaration.opensCount > 0) {
            OpensStatement[] opensStatementArr = moduleDeclaration.opens;
            moduleDescriptionInfo.opens = new PackageExportInfo[opensStatementArr.length];
            for (int i15 = 0; i15 < opensStatementArr.length; i15++) {
                moduleDescriptionInfo.opens[i15] = createOpensInfo(opensStatementArr[i15]);
            }
        } else {
            moduleDescriptionInfo.opens = NO_OPENS;
        }
        return moduleDescriptionInfo;
    }

    private static PackageExportInfo createOpensInfo(OpensStatement opensStatement) {
        PackageExportInfo packageExportInfo = new PackageExportInfo();
        packageExportInfo.pack = opensStatement.pkgName;
        ModuleReference[] moduleReferenceArr = opensStatement.targets;
        if (moduleReferenceArr != null) {
            packageExportInfo.target = new char[moduleReferenceArr.length];
            for (int i10 = 0; i10 < moduleReferenceArr.length; i10++) {
                packageExportInfo.target[i10] = moduleReferenceArr[i10].moduleName;
            }
        }
        return packageExportInfo;
    }

    private static PackageExportInfo createPackageExport(ExportsStatement exportsStatement) {
        PackageExportInfo packageExportInfo = new PackageExportInfo();
        packageExportInfo.pack = exportsStatement.pkgName;
        ModuleReference[] moduleReferenceArr = exportsStatement.targets;
        if (moduleReferenceArr != null) {
            packageExportInfo.target = new char[moduleReferenceArr.length];
            for (int i10 = 0; i10 < moduleReferenceArr.length; i10++) {
                packageExportInfo.target[i10] = moduleReferenceArr[i10].moduleName;
            }
        }
        return packageExportInfo;
    }

    private static ServiceInfo createService(ProvidesStatement providesStatement) {
        ServiceInfo serviceInfo = new ServiceInfo();
        serviceInfo.serviceName = CharOperation.concatWith(providesStatement.serviceInterface.getTypeName(), '.');
        TypeReference[] typeReferenceArr = providesStatement.implementations;
        serviceInfo.implNames = new char[typeReferenceArr.length];
        for (int i10 = 0; i10 < typeReferenceArr.length; i10++) {
            serviceInfo.implNames[i10] = CharOperation.concatWith(typeReferenceArr[i10].getTypeName(), '.');
        }
        return serviceInfo;
    }

    private static ModuleReferenceInfo getJavaBaseReference() {
        ModuleReferenceInfo moduleReferenceInfo = new ModuleReferenceInfo();
        moduleReferenceInfo.name = TypeConstants.JAVA_BASE;
        return moduleReferenceInfo;
    }

    public void addCategories(IJavaElement iJavaElement, char[][] cArr) {
        if (cArr == null) {
            return;
        }
        if (this.categories == null) {
            this.categories = new HashMap();
        }
        this.categories.put(iJavaElement, CharOperation.toStrings(cArr));
    }

    @Override
    public IModule.IPackageExport[] exports() {
        return this.exports;
    }

    public Map<IJavaElement, String[]> getCategories() {
        return this.categories;
    }

    @Override
    public IJavaElement[] getChildren() {
        return this.children;
    }

    @Override
    public ICompilationUnit getCompilationUnit() {
        IJavaElement parent = this.handle.getParent();
        if (parent instanceof CompilationUnit) {
            return (CompilationUnit) parent;
        }
        return null;
    }

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    public IModuleDescription getHandle() {
        return this.handle;
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    @Override
    public boolean isOpen() {
        return (this.flags & 32) != 0;
    }

    @Override
    public char[] name() {
        return this.name;
    }

    @Override
    public IModule.IPackageExport[] opens() {
        return this.opens;
    }

    @Override
    public IModule.IService[] provides() {
        return this.services;
    }

    @Override
    public IModule.IModuleReference[] requires() {
        return this.requires;
    }

    public void setHandle(IModuleDescription iModuleDescription) {
        this.handle = iModuleDescription;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringContent(StringBuffer stringBuffer) {
        stringBuffer.append("\n");
        if (isOpen()) {
            stringBuffer.append("open ");
        }
        stringBuffer.append("module ");
        stringBuffer.append(this.name);
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append('\n');
        ModuleReferenceInfo[] moduleReferenceInfoArr = this.requires;
        if (moduleReferenceInfoArr != null && moduleReferenceInfoArr.length > 0) {
            stringBuffer.append('\n');
            for (int i10 = 0; i10 < this.requires.length; i10++) {
                stringBuffer.append("\trequires ");
                if (this.requires[i10].isTransitive()) {
                    stringBuffer.append("transitive ");
                }
                if (this.requires[i10].isStatic()) {
                    stringBuffer.append("static ");
                }
                stringBuffer.append(this.requires[i10].name);
                stringBuffer.append(';');
                stringBuffer.append('\n');
            }
        }
        PackageExportInfo[] packageExportInfoArr = this.exports;
        if (packageExportInfoArr != null && packageExportInfoArr.length > 0) {
            stringBuffer.append('\n');
            for (int i11 = 0; i11 < this.exports.length; i11++) {
                stringBuffer.append("\texports ");
                stringBuffer.append(this.exports[i11].toString());
                stringBuffer.append('\n');
            }
        }
        char[][] cArr = this.usedServices;
        if (cArr != null && cArr.length > 0) {
            stringBuffer.append('\n');
            for (int i12 = 0; i12 < this.usedServices.length; i12++) {
                stringBuffer.append("\tuses ");
                stringBuffer.append(this.usedServices[i12]);
                stringBuffer.append('\n');
            }
        }
        ServiceInfo[] serviceInfoArr = this.services;
        if (serviceInfoArr != null && serviceInfoArr.length > 0) {
            stringBuffer.append('\n');
            for (int i13 = 0; i13 < this.services.length; i13++) {
                stringBuffer.append("\tprovides ");
                stringBuffer.append(this.services[i13].toString());
                stringBuffer.append('\n');
            }
        }
        PackageExportInfo[] packageExportInfoArr2 = this.opens;
        if (packageExportInfoArr2 != null && packageExportInfoArr2.length > 0) {
            stringBuffer.append('\n');
            for (int i14 = 0; i14 < this.opens.length; i14++) {
                stringBuffer.append("\topens ");
                stringBuffer.append(this.opens[i14].toString());
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append('\n');
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }

    @Override
    public char[][] uses() {
        return this.usedServices;
    }
}
