package org.eclipse.jdt.internal.compiler.batch;

import java.util.Arrays;
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
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.env.ISourceModule;
import org.eclipse.jdt.internal.compiler.env.ModuleReferenceImpl;
import org.eclipse.jdt.internal.compiler.env.PackageExportImpl;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class BasicModule implements ISourceModule {
    private ICompilationUnit compilationUnit;
    IModule.IPackageExport[] exports;
    boolean isAutomodule;
    private boolean isOpen;
    char[] name;
    IModule.IPackageExport[] opens;
    Service[] provides;
    IModule.IModuleReference[] requires;
    char[][] uses;

    public static class Service implements IModule.IService {
        char[] provides;
        char[][] with;

        @Override
        public char[] name() {
            return this.provides;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("provides");
            stringBuffer.append(this.provides);
            stringBuffer.append(" with ");
            stringBuffer.append((Object) this.with);
            stringBuffer.append(';');
            return stringBuffer.toString();
        }

        @Override
        public char[][] with() {
            return this.with;
        }
    }

    public BasicModule(ModuleDeclaration moduleDeclaration, IModulePathEntry iModulePathEntry) {
        this.isOpen = false;
        this.compilationUnit = moduleDeclaration.compilationResult().compilationUnit;
        this.name = moduleDeclaration.moduleName;
        if (moduleDeclaration.requiresCount > 0) {
            RequiresStatement[] requiresStatementArr = moduleDeclaration.requires;
            this.requires = new ModuleReferenceImpl[requiresStatementArr.length];
            for (int i10 = 0; i10 < requiresStatementArr.length; i10++) {
                ModuleReferenceImpl moduleReferenceImpl = new ModuleReferenceImpl();
                moduleReferenceImpl.name = CharOperation.concatWith(requiresStatementArr[i10].module.tokens, '.');
                moduleReferenceImpl.modifiers = requiresStatementArr[i10].modifiers;
                this.requires[i10] = moduleReferenceImpl;
            }
        } else {
            this.requires = new ModuleReferenceImpl[0];
        }
        if (moduleDeclaration.exportsCount > 0) {
            ExportsStatement[] exportsStatementArr = moduleDeclaration.exports;
            this.exports = new PackageExportImpl[exportsStatementArr.length];
            for (int i11 = 0; i11 < exportsStatementArr.length; i11++) {
                this.exports[i11] = createPackageExport(exportsStatementArr, i11);
            }
        } else {
            this.exports = new PackageExportImpl[0];
        }
        if (moduleDeclaration.usesCount > 0) {
            UsesStatement[] usesStatementArr = moduleDeclaration.uses;
            this.uses = new char[usesStatementArr.length];
            for (int i12 = 0; i12 < usesStatementArr.length; i12++) {
                this.uses[i12] = CharOperation.concatWith(usesStatementArr[i12].serviceInterface.getTypeName(), '.');
            }
        }
        int i13 = moduleDeclaration.servicesCount;
        if (i13 > 0) {
            ProvidesStatement[] providesStatementArr = moduleDeclaration.services;
            this.provides = new Service[i13];
            for (int i14 = 0; i14 < moduleDeclaration.servicesCount; i14++) {
                Service[] serviceArr = this.provides;
                ProvidesStatement providesStatement = providesStatementArr[i14];
                serviceArr[i14] = createService(providesStatement.serviceInterface, providesStatement.implementations);
            }
        }
        if (moduleDeclaration.opensCount > 0) {
            OpensStatement[] opensStatementArr = moduleDeclaration.opens;
            this.opens = new PackageExportImpl[opensStatementArr.length];
            for (int i15 = 0; i15 < opensStatementArr.length; i15++) {
                this.opens[i15] = createPackageOpen(opensStatementArr[i15]);
            }
        } else {
            this.opens = new PackageExportImpl[0];
        }
        this.isAutomodule = false;
        this.isOpen = moduleDeclaration.isOpen();
    }

    private static PackageExportImpl createPackageExport(ExportsStatement[] exportsStatementArr, int i10) {
        ExportsStatement exportsStatement = exportsStatementArr[i10];
        PackageExportImpl packageExportImpl = new PackageExportImpl();
        packageExportImpl.pack = exportsStatement.pkgName;
        ModuleReference[] moduleReferenceArr = exportsStatement.targets;
        if (moduleReferenceArr != null) {
            packageExportImpl.exportedTo = new char[moduleReferenceArr.length];
            for (ModuleReference moduleReference : moduleReferenceArr) {
                packageExportImpl.exportedTo = moduleReference.tokens;
            }
        }
        return packageExportImpl;
    }

    private static PackageExportImpl createPackageOpen(OpensStatement opensStatement) {
        PackageExportImpl packageExportImpl = new PackageExportImpl();
        packageExportImpl.pack = opensStatement.pkgName;
        ModuleReference[] moduleReferenceArr = opensStatement.targets;
        if (moduleReferenceArr != null) {
            packageExportImpl.exportedTo = new char[moduleReferenceArr.length];
            for (ModuleReference moduleReference : moduleReferenceArr) {
                packageExportImpl.exportedTo = moduleReference.tokens;
            }
        }
        return packageExportImpl;
    }

    private static Service createService(TypeReference typeReference, TypeReference[] typeReferenceArr) {
        Service service = new Service();
        service.provides = CharOperation.concatWith(typeReference.getTypeName(), '.');
        service.with = new char[typeReferenceArr.length];
        for (int i10 = 0; i10 < typeReferenceArr.length; i10++) {
            service.with[i10] = CharOperation.concatWith(typeReferenceArr[i10].getTypeName(), '.');
        }
        return service;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IModule)) {
            return false;
        }
        IModule iModule = (IModule) obj;
        if (CharOperation.equals(this.name, iModule.name())) {
            return Arrays.equals(this.requires, iModule.requires());
        }
        return false;
    }

    @Override
    public IModule.IPackageExport[] exports() {
        return this.exports;
    }

    @Override
    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public int hashCode() {
        return ((527 + CharOperation.hashCode(this.name)) * 31) + Arrays.hashCode(this.requires);
    }

    @Override
    public boolean isAutomatic() {
        return this.isAutomodule;
    }

    @Override
    public boolean isOpen() {
        return this.isOpen;
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
        return this.provides;
    }

    @Override
    public IModule.IModuleReference[] requires() {
        return this.requires;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringContent(StringBuffer stringBuffer) {
        stringBuffer.append("\nmodule ");
        stringBuffer.append(this.name);
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append('\n');
        if (this.requires != null) {
            for (int i10 = 0; i10 < this.requires.length; i10++) {
                stringBuffer.append("\trequires ");
                if (this.requires[i10].isTransitive()) {
                    stringBuffer.append(" public ");
                }
                stringBuffer.append(this.requires[i10].name());
                stringBuffer.append(';');
                stringBuffer.append('\n');
            }
        }
        if (this.exports != null) {
            stringBuffer.append('\n');
            for (int i11 = 0; i11 < this.exports.length; i11++) {
                stringBuffer.append("\texports ");
                stringBuffer.append(this.exports[i11].toString());
            }
        }
        if (this.uses != null) {
            stringBuffer.append('\n');
            for (char[] cArr : this.uses) {
                stringBuffer.append(cArr);
                stringBuffer.append(';');
                stringBuffer.append('\n');
            }
        }
        if (this.provides != null) {
            stringBuffer.append('\n');
            for (Service service : this.provides) {
                stringBuffer.append(service.toString());
            }
        }
        stringBuffer.append('\n');
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }

    @Override
    public char[][] uses() {
        return this.uses;
    }
}
