package org.openjdk.tools.javac.code;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.jvm.ModuleNameReader;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class ModuleFinder {
    protected static final Context.Key<ModuleFinder> moduleFinderKey = new Context.Key<>();
    private final ClassFinder classFinder;
    private final JCDiagnostic.Factory diags;
    private final JavaFileManager fileManager;
    private final Log log;
    ModuleLocationIterator moduleLocationIterator = new ModuleLocationIterator();
    public ModuleNameFromSourceReader moduleNameFromSourceReader;
    private ModuleNameReader moduleNameReader;
    private final Names names;
    private final Symtab syms;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$javax$tools$JavaFileObject$Kind;
        static final int[] $SwitchMap$javax$tools$StandardLocation;

        static {
            int[] iArr = new int[StandardLocation.values().length];
            $SwitchMap$javax$tools$StandardLocation = iArr;
            try {
                iArr[StandardLocation.MODULE_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$StandardLocation[StandardLocation.MODULE_SOURCE_PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$tools$StandardLocation[StandardLocation.SYSTEM_MODULES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$tools$StandardLocation[StandardLocation.UPGRADE_MODULE_PATH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[JavaFileObject.Kind.values().length];
            $SwitchMap$javax$tools$JavaFileObject$Kind = iArr2;
            try {
                iArr2[JavaFileObject.Kind.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$tools$JavaFileObject$Kind[JavaFileObject.Kind.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class ModuleLocationIterator implements Iterator<Set<JavaFileManager.Location>> {
        StandardLocation outer;
        Set<JavaFileManager.Location> next = null;
        Iterator<StandardLocation> outerIter = Arrays.asList(StandardLocation.MODULE_SOURCE_PATH, StandardLocation.UPGRADE_MODULE_PATH, StandardLocation.SYSTEM_MODULES, StandardLocation.MODULE_PATH).iterator();
        Iterator<Set<JavaFileManager.Location>> innerIter = null;

        public ModuleLocationIterator() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        
            r4.next = r4.innerIter.next();
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        
            if (r4.innerIter.hasNext() == false) goto L29;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean hasNext() {
            while (this.next == null) {
                while (true) {
                    Iterator<Set<JavaFileManager.Location>> it = this.innerIter;
                    if (it != null && it.hasNext()) {
                        break;
                    }
                    if (!this.outerIter.hasNext()) {
                        return false;
                    }
                    this.outer = this.outerIter.next();
                    try {
                        this.innerIter = ModuleFinder.this.fileManager.listLocationsForModules(this.outer).iterator();
                    } catch (IOException e10) {
                        System.err.println("error listing module locations for " + ((Object) this.outer) + ": " + ((Object) e10));
                    }
                }
            }
            return true;
        }

        @Override
        public Set<JavaFileManager.Location> next() {
            hasNext();
            Set<JavaFileManager.Location> set = this.next;
            if (set != null) {
                this.next = null;
                return set;
            }
            throw new NoSuchElementException();
        }
    }

    public interface ModuleNameFromSourceReader {
        Name readModuleName(JavaFileObject javaFileObject);
    }

    public ModuleFinder(Context context) {
        context.put((Context.Key<Context.Key<ModuleFinder>>) moduleFinderKey, (Context.Key<ModuleFinder>) this);
        this.names = Names.instance(context);
        this.syms = Symtab.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.log = Log.instance(context);
        this.classFinder = ClassFinder.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
    }

    private void findModuleInfo(final Symbol.ModuleSymbol moduleSymbol) {
        JavaFileManager.Location location;
        try {
            JavaFileManager.Location location2 = moduleSymbol.patchOutputLocation;
            JavaFileObject.Kind kind = JavaFileObject.Kind.CLASS;
            JavaFileObject preferredFileObject = preferredFileObject(getModuleInfoFromLocation(moduleSymbol.patchLocation, kind), getModuleInfoFromLocation(location2, kind));
            JavaFileManager.Location location3 = moduleSymbol.patchLocation;
            JavaFileObject.Kind kind2 = JavaFileObject.Kind.SOURCE;
            JavaFileObject preferredFileObject2 = preferredFileObject(getModuleInfoFromLocation(location3, kind2), preferredFileObject);
            if (preferredFileObject2 == null) {
                preferredFileObject2 = preferredFileObject(getModuleInfoFromLocation(moduleSymbol.sourceLocation, kind2), getModuleInfoFromLocation(moduleSymbol.classLocation, kind));
            }
            if (preferredFileObject2 != null) {
                Symbol.ClassSymbol classSymbol = moduleSymbol.module_info;
                classSymbol.classfile = preferredFileObject2;
                classSymbol.completer = new Symbol.Completer() {
                    @Override
                    public void complete(Symbol symbol) throws Symbol.CompletionFailure {
                        ModuleFinder.this.classFinder.fillIn(moduleSymbol.module_info);
                    }

                    public String toString() {
                        return "ModuleInfoCompleter";
                    }
                };
            } else {
                if (((moduleSymbol.sourceLocation != null || (location = moduleSymbol.classLocation) == null) ? null : this.fileManager.inferModuleName(location)) == null) {
                    moduleSymbol.kind = Kinds.Kind.ERR;
                } else {
                    moduleSymbol.module_info.classfile = null;
                    moduleSymbol.flags_field |= 4503599627370496L;
                }
            }
        } catch (IOException unused) {
            moduleSymbol.kind = Kinds.Kind.ERR;
        }
    }

    private JavaFileObject getModuleInfoFromLocation(JavaFileManager.Location location, JavaFileObject.Kind kind) throws IOException {
        if (location == null || !this.fileManager.hasLocation(location)) {
            return null;
        }
        return this.fileManager.getJavaFileForInput(location, this.names.module_info.toString(), kind);
    }

    public static ModuleFinder instance(Context context) {
        ModuleFinder moduleFinder = (ModuleFinder) context.get(moduleFinderKey);
        return moduleFinder == null ? new ModuleFinder(context) : moduleFinder;
    }

    private JavaFileObject preferredFileObject(JavaFileObject javaFileObject, JavaFileObject javaFileObject2) {
        return javaFileObject == null ? javaFileObject2 : javaFileObject2 == null ? javaFileObject : this.classFinder.preferredFileObject(javaFileObject, javaFileObject2);
    }

    private Symbol.ModuleSymbol readModule(JavaFileObject javaFileObject) throws IOException {
        Name readModuleName;
        int i10 = AnonymousClass2.$SwitchMap$javax$tools$JavaFileObject$Kind[javaFileObject.getKind().ordinal()];
        if (i10 == 1) {
            readModuleName = this.moduleNameFromSourceReader.readModuleName(javaFileObject);
            if (readModuleName == null) {
                JCDiagnostic fragment = this.diags.fragment("file.does.not.contain.module", new Object[0]);
                Symtab symtab = this.syms;
                throw new ClassFinder.BadClassFile(symtab.defineClass(this.names.module_info, symtab.errModule), javaFileObject, fragment, this.diags);
            }
        } else if (i10 != 2) {
            Assert.error();
            readModuleName = this.names.error;
        } else {
            try {
                readModuleName = this.names.fromString(readModuleName(javaFileObject));
            } catch (IOException | ModuleNameReader.BadClassFile unused) {
                readModuleName = this.names.error;
            }
        }
        Symbol.ModuleSymbol enterModule = this.syms.enterModule(readModuleName);
        enterModule.module_info.classfile = javaFileObject;
        JavaFileManager javaFileManager = this.fileManager;
        StandardLocation standardLocation = StandardLocation.PATCH_MODULE_PATH;
        if (javaFileManager.hasLocation(standardLocation) && readModuleName != this.names.error) {
            JavaFileManager.Location locationForModule = this.fileManager.getLocationForModule(standardLocation, readModuleName.toString());
            enterModule.patchLocation = locationForModule;
            if (locationForModule != null) {
                StandardLocation standardLocation2 = StandardLocation.CLASS_OUTPUT;
                JavaFileObject.Kind kind = JavaFileObject.Kind.CLASS;
                JavaFileObject preferredFileObject = preferredFileObject(getModuleInfoFromLocation(enterModule.patchLocation, JavaFileObject.Kind.SOURCE), preferredFileObject(getModuleInfoFromLocation(enterModule.patchLocation, kind), getModuleInfoFromLocation(standardLocation2, kind)));
                if (preferredFileObject != null) {
                    enterModule.module_info.classfile = preferredFileObject;
                }
            }
        }
        enterModule.completer = Symbol.Completer.NULL_COMPLETER;
        this.classFinder.fillIn(enterModule.module_info);
        return enterModule;
    }

    private String readModuleName(JavaFileObject javaFileObject) throws IOException, ModuleNameReader.BadClassFile {
        if (this.moduleNameReader == null) {
            this.moduleNameReader = new ModuleNameReader();
        }
        return this.moduleNameReader.readModuleName(javaFileObject);
    }

    private List<Symbol.ModuleSymbol> scanModulePath(Symbol.ModuleSymbol moduleSymbol) {
        ListBuffer listBuffer = new ListBuffer();
        HashMap hashMap = new HashMap();
        boolean hasLocation = this.fileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH);
        while (this.moduleLocationIterator.hasNext()) {
            Set<JavaFileManager.Location> next = this.moduleLocationIterator.next();
            hashMap.clear();
            for (JavaFileManager.Location location : next) {
                try {
                    Name fromString = this.names.fromString(this.fileManager.inferModuleName(location));
                    if (hashMap.put(fromString, location) == 0) {
                        Symbol.ModuleSymbol enterModule = this.syms.enterModule(fromString);
                        if (enterModule.sourceLocation == null && enterModule.classLocation == null) {
                            JavaFileManager javaFileManager = this.fileManager;
                            StandardLocation standardLocation = StandardLocation.PATCH_MODULE_PATH;
                            if (javaFileManager.hasLocation(standardLocation) && enterModule.patchLocation == null) {
                                JavaFileManager.Location locationForModule = this.fileManager.getLocationForModule(standardLocation, enterModule.name.toString());
                                enterModule.patchLocation = locationForModule;
                                if (locationForModule != null && hasLocation) {
                                    JavaFileManager javaFileManager2 = this.fileManager;
                                    StandardLocation standardLocation2 = StandardLocation.CLASS_OUTPUT;
                                    if (javaFileManager2.hasLocation(standardLocation2)) {
                                        enterModule.patchOutputLocation = this.fileManager.getLocationForModule(standardLocation2, enterModule.name.toString());
                                    }
                                }
                            }
                            if (this.moduleLocationIterator.outer == StandardLocation.MODULE_SOURCE_PATH) {
                                enterModule.sourceLocation = location;
                                JavaFileManager javaFileManager3 = this.fileManager;
                                StandardLocation standardLocation3 = StandardLocation.CLASS_OUTPUT;
                                if (javaFileManager3.hasLocation(standardLocation3)) {
                                    enterModule.classLocation = this.fileManager.getLocationForModule(standardLocation3, enterModule.name.toString());
                                }
                            } else {
                                enterModule.classLocation = location;
                            }
                            StandardLocation standardLocation4 = this.moduleLocationIterator.outer;
                            if (standardLocation4 == StandardLocation.SYSTEM_MODULES || standardLocation4 == StandardLocation.UPGRADE_MODULE_PATH) {
                                enterModule.flags_field |= 9007199254740992L;
                            }
                            if (moduleSymbol == null || (moduleSymbol == enterModule && (enterModule.sourceLocation != null || enterModule.classLocation != null))) {
                                listBuffer.add(enterModule);
                            }
                        }
                    } else {
                        this.log.error(CompilerProperties.Errors.DuplicateModuleOnPath(getDescription(this.moduleLocationIterator.outer), fromString));
                    }
                } catch (IOException unused) {
                }
            }
            if (moduleSymbol != null && listBuffer.nonEmpty()) {
                return listBuffer.toList();
            }
        }
        return listBuffer.toList();
    }

    public List<Symbol.ModuleSymbol> findAllModules() {
        List<Symbol.ModuleSymbol> scanModulePath = scanModulePath(null);
        Iterator<Symbol.ModuleSymbol> it = scanModulePath.iterator();
        while (it.hasNext()) {
            Symbol.ModuleSymbol next = it.next();
            if (next.kind != Kinds.Kind.ERR) {
                Symbol.ClassSymbol classSymbol = next.module_info;
                if (classSymbol.sourcefile == null && classSymbol.classfile == null) {
                    findModuleInfo(next);
                }
            }
        }
        return scanModulePath;
    }

    public Symbol.ModuleSymbol findModule(Name name) {
        return findModule(this.syms.enterModule(name));
    }

    public Symbol.ModuleSymbol findSingleModule() {
        try {
            JavaFileObject moduleInfoFromLocation = getModuleInfoFromLocation(StandardLocation.SOURCE_PATH, JavaFileObject.Kind.SOURCE);
            StandardLocation standardLocation = StandardLocation.CLASS_OUTPUT;
            JavaFileObject moduleInfoFromLocation2 = getModuleInfoFromLocation(standardLocation, JavaFileObject.Kind.CLASS);
            if (moduleInfoFromLocation == null) {
                moduleInfoFromLocation = moduleInfoFromLocation2;
            } else if (moduleInfoFromLocation2 != null) {
                moduleInfoFromLocation = this.classFinder.preferredFileObject(moduleInfoFromLocation, moduleInfoFromLocation2);
            }
            Symbol.ModuleSymbol readModule = moduleInfoFromLocation == null ? this.syms.unnamedModule : readModule(moduleInfoFromLocation);
            if (readModule.patchLocation == null) {
                readModule.classLocation = standardLocation;
            } else {
                readModule.patchOutputLocation = standardLocation;
            }
            return readModule;
        } catch (IOException e10) {
            throw new Error(e10);
        }
    }

    public JCDiagnostic.Fragment getDescription(StandardLocation standardLocation) {
        int i10 = AnonymousClass2.$SwitchMap$javax$tools$StandardLocation[standardLocation.ordinal()];
        if (i10 == 1) {
            return CompilerProperties.Fragments.LocnModule_path;
        }
        if (i10 == 2) {
            return CompilerProperties.Fragments.LocnModule_source_path;
        }
        if (i10 == 3) {
            return CompilerProperties.Fragments.LocnSystem_modules;
        }
        if (i10 == 4) {
            return CompilerProperties.Fragments.LocnUpgrade_module_path;
        }
        throw new AssertionError();
    }

    public Symbol.ModuleSymbol findModule(Symbol.ModuleSymbol moduleSymbol) {
        Kinds.Kind kind = moduleSymbol.kind;
        Kinds.Kind kind2 = Kinds.Kind.ERR;
        if (kind != kind2 && moduleSymbol.sourceLocation == null && moduleSymbol.classLocation == null && scanModulePath(moduleSymbol).isEmpty()) {
            moduleSymbol.kind = kind2;
        }
        if (moduleSymbol.kind != kind2) {
            Symbol.ClassSymbol classSymbol = moduleSymbol.module_info;
            if (classSymbol.sourcefile == null && classSymbol.classfile == null) {
                findModuleInfo(moduleSymbol);
            }
        }
        return moduleSymbol;
    }
}
