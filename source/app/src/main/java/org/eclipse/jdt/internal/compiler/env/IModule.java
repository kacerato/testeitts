package org.eclipse.jdt.internal.compiler.env;

import java.util.jar.Manifest;

public interface IModule {
    public static final String MODULE_INFO = "module-info";
    public static final String MODULE_INFO_CLASS = "module-info.class";
    public static final String MODULE_INFO_JAVA = "module-info.java";
    public static final IModuleReference[] NO_MODULE_REFS = new IModuleReference[0];
    public static final IPackageExport[] NO_EXPORTS = new IPackageExport[0];
    public static final char[][] NO_USES = new char[0];
    public static final IService[] NO_PROVIDES = new IService[0];
    public static final IModule[] NO_MODULES = new IModule[0];
    public static final IPackageExport[] NO_OPENS = new IPackageExport[0];

    public interface IModuleReference {
        int getModifiers();

        default boolean isStatic() {
            return (getModifiers() & 64) != 0;
        }

        default boolean isTransitive() {
            return (getModifiers() & 32) != 0;
        }

        char[] name();
    }

    public interface IPackageExport {
        default boolean isQualified() {
            char[][] targets = targets();
            return targets != null && targets.length > 0;
        }

        char[] name();

        char[][] targets();
    }

    public interface IService {
        char[] name();

        char[][] with();
    }

    static IModule createAutomatic(char[] cArr, boolean z10) {
        return new IModule(cArr, z10) {
            char[] name;
            boolean nameFromManifest;

            {
                this.name = cArr;
                this.nameFromManifest = z10;
            }

            @Override
            public IPackageExport[] exports() {
                return IModule.NO_EXPORTS;
            }

            @Override
            public boolean isAutoNameFromManifest() {
                return this.nameFromManifest;
            }

            @Override
            public boolean isAutomatic() {
                return true;
            }

            @Override
            public boolean isOpen() {
                return false;
            }

            @Override
            public char[] name() {
                return this.name;
            }

            @Override
            public IPackageExport[] opens() {
                return IModule.NO_OPENS;
            }

            @Override
            public IService[] provides() {
                return IModule.NO_PROVIDES;
            }

            @Override
            public IModuleReference[] requires() {
                return IModule.NO_MODULE_REFS;
            }

            @Override
            public char[][] uses() {
                return IModule.NO_USES;
            }
        };
    }

    IPackageExport[] exports();

    default boolean isAutoNameFromManifest() {
        return false;
    }

    default boolean isAutomatic() {
        return false;
    }

    boolean isOpen();

    char[] name();

    IPackageExport[] opens();

    IService[] provides();

    IModuleReference[] requires();

    char[][] uses();

    static IModule createAutomatic(String str, boolean z10, Manifest manifest) {
        char[] determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromManifest(manifest);
        boolean z11 = true;
        if (determineAutomaticModuleNameFromManifest == null) {
            determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromFileName(str, true, z10);
            z11 = false;
        }
        return createAutomatic(determineAutomaticModuleNameFromManifest, z11);
    }
}
