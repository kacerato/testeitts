package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.ModularClassFile;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class ModularClassFileMatchLocator implements IIndexConstants {
    private IBinaryModule binaryModule;
    private ModularClassFile modularClassFile;
    private ModuleBinding module;
    private IModuleDescription moduleDesc;
    private char[] moduleName;

    private void matchModuleDeclaration(SearchPattern searchPattern, MatchLocator matchLocator) throws CoreException {
        ModuleBinding moduleBinding;
        int i10;
        int i11 = searchPattern.kind;
        if (i11 == 256) {
            SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
            int length = searchPatternArr.length;
            while (r2 < length) {
                SearchPattern searchPattern2 = searchPatternArr[r2];
                if (searchPattern2.kind == 8192) {
                    matchModuleReferences(searchPattern2, matchLocator);
                }
                r2++;
            }
            return;
        }
        if (i11 == 8192 && matchLocator.patternLocator.matchesName(((ModulePattern) searchPattern).name, this.moduleName)) {
            if (matchLocator.patternLocator.mustResolve) {
                ModuleBinding module = matchLocator.lookupEnvironment.getModule(this.moduleName);
                i10 = matchLocator.patternLocator.resolveLevel(module);
                moduleBinding = module;
            } else {
                moduleBinding = null;
                i10 = 3;
            }
            if (i10 == 0) {
                return;
            }
            matchLocator.report(matchLocator.newDeclarationMatch(this.moduleDesc, moduleBinding, i10 != 3 ? 1 : 0, -1, 0));
        }
    }

    private void matchModuleReference(MatchLocator matchLocator, ModulePattern modulePattern, char[][] cArr, boolean z10) throws CoreException {
        if (cArr == null) {
            return;
        }
        for (char[] cArr2 : cArr) {
            if (cArr2 != null && cArr2.length != 0 && matchLocator.patternLocator.matchesName(modulePattern.name, cArr2)) {
                matchLocator.report(matchLocator.newModuleReferenceMatch(this.moduleDesc, null, !z10 ? 1 : 0, -1, 0, null));
            }
        }
    }

    private void matchModuleReferences(SearchPattern searchPattern, MatchLocator matchLocator) throws CoreException {
        int i10 = searchPattern.kind;
        if (i10 == 256) {
            for (SearchPattern searchPattern2 : ((OrPattern) searchPattern).patterns) {
                if (searchPattern2.kind == 8192) {
                    matchModuleReferences(searchPattern2, matchLocator);
                }
            }
            return;
        }
        if (i10 != 8192) {
            return;
        }
        ModulePattern modulePattern = (ModulePattern) searchPattern;
        if (modulePattern.findReferences) {
            matchModuleReferences(matchLocator, modulePattern, this.binaryModule.exports());
            matchModuleReferences(matchLocator, modulePattern, this.binaryModule.opens());
            ModuleBinding moduleBinding = this.module;
            if (moduleBinding != null) {
                matchModuleReferences(matchLocator, modulePattern, moduleBinding.getAllRequiredModules());
            }
        }
    }

    private void matchPackReferences(MatchLocator matchLocator, PackageReferencePattern packageReferencePattern, PackageBinding[] packageBindingArr) throws CoreException {
        if (packageBindingArr == null) {
            return;
        }
        for (PackageBinding packageBinding : packageBindingArr) {
            reportPackageMatch(matchLocator, packageBinding);
        }
    }

    private void matchPackageReferences(SearchPattern searchPattern, MatchLocator matchLocator) throws CoreException {
        int i10 = searchPattern.kind;
        int i11 = 0;
        if (i10 != 1) {
            if (i10 != 256) {
                return;
            }
            SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
            int length = searchPatternArr.length;
            while (i11 < length) {
                SearchPattern searchPattern2 = searchPatternArr[i11];
                if (searchPattern2.kind == 1) {
                    matchPackageReferences(searchPattern2, matchLocator);
                }
                i11++;
            }
            return;
        }
        PackageReferencePattern packageReferencePattern = (PackageReferencePattern) searchPattern;
        matchPackReferences(matchLocator, packageReferencePattern, this.module.getExports());
        matchPackReferences(matchLocator, packageReferencePattern, this.module.getOpens());
        matchPackReferences(matchLocator, packageReferencePattern, this.module.getUses());
        TypeBinding[] services = this.module.getServices();
        if (services != null) {
            matchPackReferences(matchLocator, packageReferencePattern, services);
            int length2 = services.length;
            while (i11 < length2) {
                matchPackReferences(matchLocator, packageReferencePattern, this.module.getImplementations(services[i11]));
                i11++;
            }
        }
    }

    private void matchTypeReferences(SearchPattern searchPattern, MatchLocator matchLocator) throws CoreException {
        int i10 = searchPattern.kind;
        int i11 = 0;
        if (i10 != 4) {
            if (i10 != 256) {
                return;
            }
            SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
            int length = searchPatternArr.length;
            while (i11 < length) {
                SearchPattern searchPattern2 = searchPatternArr[i11];
                if (searchPattern2.kind == 4) {
                    matchTypeReferences(searchPattern2, matchLocator);
                }
                i11++;
            }
            return;
        }
        TypeReferencePattern typeReferencePattern = (TypeReferencePattern) searchPattern;
        matchTypeReferences(matchLocator, typeReferencePattern, this.module.getUses());
        TypeBinding[] services = this.module.getServices();
        if (services != null) {
            matchTypeReferences(matchLocator, typeReferencePattern, services);
            int length2 = services.length;
            while (i11 < length2) {
                matchTypeReferences(matchLocator, typeReferencePattern, this.module.getImplementations(services[i11]));
                i11++;
            }
        }
    }

    private void reportPackageMatch(MatchLocator matchLocator, PackageBinding packageBinding) throws CoreException {
        int resolveLevel;
        if (packageBinding == null || (resolveLevel = matchLocator.patternLocator.resolveLevel(packageBinding)) == 0) {
            return;
        }
        matchLocator.report(matchLocator.newPackageReferenceMatch(this.moduleDesc, resolveLevel == 3 ? 0 : 1, -1, 0, null));
    }

    public void locateMatches(MatchLocator matchLocator, ModularClassFile modularClassFile) throws CoreException {
        SearchPattern searchPattern = matchLocator.pattern;
        this.modularClassFile = modularClassFile;
        IBinaryModule binaryModuleInfo = modularClassFile.getBinaryModuleInfo();
        this.binaryModule = binaryModuleInfo;
        if (binaryModuleInfo == null) {
            return;
        }
        this.moduleDesc = modularClassFile.getModule();
        char[] name = this.binaryModule.name();
        this.moduleName = name;
        this.module = matchLocator.lookupEnvironment.getModule(name);
        matchModuleDeclaration(searchPattern, matchLocator);
        matchModuleReferences(searchPattern, matchLocator);
        matchPackageReferences(searchPattern, matchLocator);
        matchTypeReferences(searchPattern, matchLocator);
    }

    private void matchPackReferences(MatchLocator matchLocator, PackageReferencePattern packageReferencePattern, TypeBinding[] typeBindingArr) throws CoreException {
        if (typeBindingArr == null) {
            return;
        }
        for (TypeBinding typeBinding : typeBindingArr) {
            reportPackageMatch(matchLocator, typeBinding.getPackage());
        }
    }

    private void matchTypeReferences(MatchLocator matchLocator, TypeReferencePattern typeReferencePattern, TypeBinding[] typeBindingArr) throws CoreException {
        if (typeBindingArr == null) {
            return;
        }
        for (TypeBinding typeBinding : typeBindingArr) {
            int resolveLevel = matchLocator.patternLocator.resolveLevel(typeBinding);
            if (resolveLevel != 0) {
                matchLocator.report(matchLocator.newTypeReferenceMatch(this.moduleDesc, null, resolveLevel == 3 ? 0 : 1, -1, 0, null));
            }
        }
    }

    private void matchModuleReferences(MatchLocator matchLocator, ModulePattern modulePattern, IModule.IPackageExport[] iPackageExportArr) throws CoreException {
        if (iPackageExportArr == null) {
            return;
        }
        for (IModule.IPackageExport iPackageExport : iPackageExportArr) {
            matchModuleReference(matchLocator, modulePattern, iPackageExport.targets(), true);
        }
    }

    private void matchModuleReferences(MatchLocator matchLocator, ModulePattern modulePattern, ModuleBinding[] moduleBindingArr) throws CoreException {
        int resolveLevel;
        if (moduleBindingArr == null) {
            return;
        }
        for (ModuleBinding moduleBinding : moduleBindingArr) {
            if (moduleBinding.name() != null && (resolveLevel = matchLocator.patternLocator.resolveLevel(moduleBinding)) != 0) {
                matchLocator.report(matchLocator.newModuleReferenceMatch(this.moduleDesc, null, resolveLevel == 3 ? 0 : 1, -1, 0, null));
            }
        }
    }
}
