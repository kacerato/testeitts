package org.openjdk.tools.javac.util;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Path;
import java.util.Collection;
import java.util.ServiceLoader;

public class JDK9Wrappers {

    public static final class Configuration {
        private static Class<?> configurationClass;
        private static Method resolveAndBindMethod;
        private final Object theRealConfiguration;

        public static final Class<?> getConfigurationClass() {
            init();
            return configurationClass;
        }

        private static void init() {
            if (configurationClass == null) {
                try {
                    configurationClass = Class.forName("java.lang.module.Configuration", false, null);
                    Class<?> moduleFinderClass = ModuleFinder.getModuleFinderClass();
                    resolveAndBindMethod = configurationClass.getDeclaredMethod("resolveAndBind", moduleFinderClass, moduleFinderClass, Collection.class);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }

        public Configuration resolveAndBind(ModuleFinder moduleFinder, ModuleFinder moduleFinder2, Collection<String> collection) {
            try {
                return new Configuration(resolveAndBindMethod.invoke(this.theRealConfiguration, moduleFinder.theRealModuleFinder, moduleFinder2.theRealModuleFinder, collection));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        private Configuration(Object obj) {
            this.theRealConfiguration = obj;
            init();
        }
    }

    public static final class JmodFile {
        public static final String JMOD_FILE_CLASSNAME = "jdk.internal.jmod.JmodFile";
        private static Method checkMagicMethod;
        private static Class<?> jmodFileClass;

        public static void checkMagic(Path path) throws IOException {
            try {
                init();
                checkMagicMethod.invoke(null, path);
            } catch (IllegalAccessException e10) {
                e = e10;
                throw new Abort(e);
            } catch (IllegalArgumentException e11) {
                e = e11;
                throw new Abort(e);
            } catch (SecurityException e12) {
                e = e12;
                throw new Abort(e);
            } catch (InvocationTargetException e13) {
                if (!(e13.getCause() instanceof IOException)) {
                    throw new Abort(e13);
                }
                throw ((IOException) IOException.class.cast(e13.getCause()));
            }
        }

        private static void init() {
            if (jmodFileClass == null) {
                try {
                    Class<?> cls = Class.forName(JMOD_FILE_CLASSNAME, false, null);
                    jmodFileClass = cls;
                    checkMagicMethod = cls.getDeclaredMethod("checkMagic", Path.class);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }
    }

    public static final class Layer {
        private static Method bootMethod;
        private static Method configurationMethod;
        private static Method defineModulesWithOneLoaderMethod;
        private static Class<?> layerClass;
        private final Object theRealLayer;

        private Layer(Object obj) {
            this.theRealLayer = obj;
        }

        public static Layer boot() {
            try {
                init();
                return new Layer(bootMethod.invoke(null, null));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        private static void init() {
            if (layerClass == null) {
                try {
                    Class<?> cls = Class.forName("java.lang.ModuleLayer", false, null);
                    layerClass = cls;
                    bootMethod = cls.getDeclaredMethod("boot", null);
                    defineModulesWithOneLoaderMethod = layerClass.getDeclaredMethod("defineModulesWithOneLoader", Configuration.getConfigurationClass(), ClassLoader.class);
                    configurationMethod = layerClass.getDeclaredMethod("configuration", null);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }

        public Configuration configuration() {
            try {
                return new Configuration(configurationMethod.invoke(this.theRealLayer, null));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        public Layer defineModulesWithOneLoader(Configuration configuration, ClassLoader classLoader) {
            try {
                return new Layer(defineModulesWithOneLoaderMethod.invoke(this.theRealLayer, configuration.theRealConfiguration, classLoader));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }
    }

    public static class Module {
        private static Method addExportsMethod;
        private static Method addUsesMethod;
        private static Method getModuleMethod;
        private static Method getUnnamedModuleMethod;
        private final Object theRealModule;

        private Module(Object obj) {
            this.theRealModule = obj;
            init();
        }

        public static Module getModule(Class<?> cls) {
            try {
                init();
                return new Module(getModuleMethod.invoke(cls, null));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        public static Module getUnnamedModule(ClassLoader classLoader) {
            try {
                init();
                return new Module(getUnnamedModuleMethod.invoke(classLoader, null));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        private static void init() {
            if (addExportsMethod == null) {
                try {
                    Class<?> cls = Class.forName("java.lang.Module", false, null);
                    addUsesMethod = cls.getDeclaredMethod("addUses", Class.class);
                    addExportsMethod = cls.getDeclaredMethod("addExports", String.class, cls);
                    getModuleMethod = Class.class.getDeclaredMethod("getModule", null);
                    getUnnamedModuleMethod = ClassLoader.class.getDeclaredMethod("getUnnamedModule", null);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }

        public Module addExports(String str, Module module) {
            try {
                addExportsMethod.invoke(this.theRealModule, str, module.theRealModule);
                return this;
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        public Module addUses(Class<?> cls) {
            try {
                addUsesMethod.invoke(this.theRealModule, cls);
                return this;
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }
    }

    public static class ModuleDescriptor {

        public static class Version {
            public static final String CLASSNAME = "java.lang.module.ModuleDescriptor$Version";
            private static Method parseMethod;
            private static Class<?> versionClass;
            private final Object theRealVersion;

            private Version(Object obj) {
                this.theRealVersion = obj;
            }

            private static void init() {
                if (versionClass == null) {
                    try {
                        Class<?> cls = Class.forName(CLASSNAME, false, null);
                        versionClass = cls;
                        parseMethod = cls.getDeclaredMethod("parse", String.class);
                    } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                        throw new Abort(e10);
                    }
                }
            }

            public static Version parse(String str) {
                try {
                    init();
                    return new Version(parseMethod.invoke(null, str));
                } catch (IllegalAccessException e10) {
                    e = e10;
                    throw new Abort(e);
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    throw new Abort(e);
                } catch (SecurityException e12) {
                    e = e12;
                    throw new Abort(e);
                } catch (InvocationTargetException e13) {
                    if (e13.getCause() instanceof IllegalArgumentException) {
                        throw ((IllegalArgumentException) e13.getCause());
                    }
                    throw new Abort(e13);
                }
            }

            public String toString() {
                return this.theRealVersion.toString();
            }
        }
    }

    public static class ModuleFinder {
        private static Class<?> moduleFinderClass;
        private static Method ofMethod;
        private final Object theRealModuleFinder;

        private ModuleFinder(Object obj) {
            this.theRealModuleFinder = obj;
            init();
        }

        public static final Class<?> getModuleFinderClass() {
            init();
            return moduleFinderClass;
        }

        private static void init() {
            if (moduleFinderClass == null) {
                try {
                    Class<?> cls = Class.forName("java.lang.module.ModuleFinder", false, null);
                    moduleFinderClass = cls;
                    ofMethod = cls.getDeclaredMethod("of", Path[].class);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }

        public static ModuleFinder of(Path... pathArr) {
            try {
                init();
                return new ModuleFinder(ofMethod.invoke(null, pathArr));
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }
    }

    public static final class ServiceLoaderHelper {
        private static Method loadMethod;

        private static void init() {
            if (loadMethod == null) {
                try {
                    loadMethod = ServiceLoader.class.getDeclaredMethod("load", Layer.layerClass, Class.class);
                } catch (NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }

        public static <S> ServiceLoader<S> load(Layer layer, Class<S> cls) {
            try {
                init();
                return (ServiceLoader) loadMethod.invoke(null, layer.theRealLayer, cls);
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }
    }

    public static final class VMHelper {
        public static final String CLASSNAME = "jdk.internal.misc.VM";
        private static Method getRuntimeArgumentsMethod;
        private static Class<?> vmClass;

        public static String[] getRuntimeArguments() {
            try {
                init();
                return (String[]) getRuntimeArgumentsMethod.invoke(null, null);
            } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e10) {
                throw new Abort(e10);
            }
        }

        private static void init() {
            if (vmClass == null) {
                try {
                    Class<?> cls = Class.forName(CLASSNAME, false, null);
                    vmClass = cls;
                    getRuntimeArgumentsMethod = cls.getDeclaredMethod("getRuntimeArguments", null);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e10) {
                    throw new Abort(e10);
                }
            }
        }
    }
}
