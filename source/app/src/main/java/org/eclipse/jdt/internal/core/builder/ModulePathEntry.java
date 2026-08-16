package org.eclipse.jdt.internal.core.builder;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.env.IMultiModuleEntry;
import org.eclipse.jdt.internal.core.search.matching.ClasspathSourceDirectory;

public class ModulePathEntry implements IModulePathEntry {
    boolean isAutomaticModule;
    ClasspathLocation[] locations;
    IModule module;
    private IPath path;

    public static class Multi extends ModulePathEntry implements IMultiModuleEntry {
        public Multi(IPath iPath, IModule iModule, ClasspathLocation[] classpathLocationArr) {
            super(iPath, iModule, classpathLocationArr);
        }

        public void addPatchLocation(ClasspathLocation classpathLocation) {
            ClasspathLocation[] classpathLocationArr = this.locations;
            ClasspathLocation[] classpathLocationArr2 = (ClasspathLocation[]) Arrays.copyOf(classpathLocationArr, classpathLocationArr.length + 1);
            this.locations = classpathLocationArr2;
            classpathLocationArr2[classpathLocationArr2.length - 1] = classpathLocation;
            classpathLocation.setModule(this.module);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public IModule getModule(char[] cArr) {
            for (ClasspathSourceDirectory classpathSourceDirectory : this.locations) {
                if (classpathSourceDirectory instanceof IMultiModuleEntry) {
                    IModule module = ((IMultiModuleEntry) classpathSourceDirectory).getModule(cArr);
                    if (module != null) {
                        return module;
                    }
                } else {
                    IModule module2 = classpathSourceDirectory.getModule();
                    if (CharOperation.equals(module2.name(), cArr)) {
                        return module2;
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection<String> getModuleNames(Collection<String> collection) {
            HashSet hashSet = new HashSet();
            for (ClasspathSourceDirectory classpathSourceDirectory : this.locations) {
                if (classpathSourceDirectory instanceof IMultiModuleEntry) {
                    hashSet.addAll(((IMultiModuleEntry) classpathSourceDirectory).getModuleNames(collection));
                } else {
                    hashSet.add(String.valueOf(classpathSourceDirectory.getModule().name()));
                }
            }
            return hashSet;
        }
    }

    public ModulePathEntry(IPath iPath, IModule iModule, ClasspathLocation[] classpathLocationArr) {
        this.path = iPath;
        this.locations = classpathLocationArr;
        this.module = iModule;
        this.isAutomaticModule = iModule.isAutomatic();
        initializeModule();
    }

    public static IModule getAutomaticModule(ClasspathLocation classpathLocation) {
        if (classpathLocation instanceof ClasspathJar) {
            ClasspathJar classpathJar = (ClasspathJar) classpathLocation;
            return IModule.createAutomatic(classpathJar.zipFilename, true, classpathJar.getManifest());
        }
        if (classpathLocation instanceof ClasspathDirectory) {
            return IModule.createAutomatic(((ClasspathDirectory) classpathLocation).binaryFolder.getName(), false, null);
        }
        return null;
    }

    private void initModule(ClasspathLocation classpathLocation) {
        IModule initializeModule = classpathLocation instanceof ClasspathJar ? ((ClasspathJar) classpathLocation).initializeModule() : classpathLocation instanceof ClasspathDirectory ? ((ClasspathDirectory) classpathLocation).initializeModule() : null;
        if (initializeModule != null) {
            this.module = initializeModule;
            this.isAutomaticModule = false;
        } else {
            this.module = getAutomaticModule(classpathLocation);
            this.isAutomaticModule = true;
        }
        classpathLocation.setModule(this.module);
    }

    private void initializeModule() {
        int i10 = 0;
        while (true) {
            ClasspathLocation[] classpathLocationArr = this.locations;
            if (i10 >= classpathLocationArr.length) {
                return;
            }
            classpathLocationArr[i10].setModule(this.module);
            i10++;
        }
    }

    public ClasspathLocation[] getClasspathLocations() {
        return this.locations;
    }

    @Override
    public IModule getModule() {
        return this.module;
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        IModule iModule;
        if (str2 != null && ((iModule = this.module) == null || !str2.equals(String.valueOf(iModule.name())))) {
            return null;
        }
        char[][] cArr = CharOperation.NO_CHAR_CHAR;
        for (ClasspathLocation classpathLocation : this.locations) {
            char[][] modulesDeclaringPackage = classpathLocation.getModulesDeclaringPackage(str, str2);
            if (modulesDeclaringPackage != null) {
                cArr = CharOperation.arrayConcat(cArr, modulesDeclaringPackage);
            }
        }
        if (cArr == CharOperation.NO_CHAR_CHAR) {
            return null;
        }
        return cArr;
    }

    public IPath getPath() {
        return this.path;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        for (ClasspathLocation classpathLocation : this.locations) {
            if (classpathLocation.hasCompilationUnit(str, str2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isAutomaticModule() {
        return this.isAutomaticModule;
    }

    public ModulePathEntry(IPath iPath, ClasspathLocation classpathLocation) {
        this.path = iPath;
        initModule(classpathLocation);
        this.locations = new ClasspathLocation[]{classpathLocation};
    }
}
