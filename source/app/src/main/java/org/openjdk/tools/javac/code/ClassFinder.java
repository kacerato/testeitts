package org.openjdk.tools.javac.code;

import android.provider.DocumentsContract;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.file.JRTIndex;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.jvm.ClassReader;
import org.openjdk.tools.javac.jvm.Profile;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class ClassFinder {
    protected static final Context.Key<ClassFinder> classFinderKey = new Context.Key<>();
    private boolean allowSigFiles;
    private final Annotate annotate;
    private boolean cacheCompletionFailure;
    private final Symbol.CompletionFailure cachedCompletionFailure;
    final Name completionFailureName;
    protected JavaFileManager.Location currentLoc;
    private final Dependencies dependencies;
    JCDiagnostic.Factory diagFactory;
    private final JavaFileManager fileManager;
    private final JRTIndex jrtIndex;
    final Log log;
    final Names names;
    private boolean preferCurrent;
    protected boolean preferSource;
    private final Profile profile;
    ClassReader reader;
    private Map<Symbol.PackageSymbol, Long> supplementaryFlags;
    Symtab syms;
    protected boolean userPathsFirst;
    boolean verbose;
    private boolean verbosePath;
    public Symbol.Completer sourceCompleter = Symbol.Completer.NULL_COMPLETER;
    protected JavaFileObject currentClassFile = null;
    protected Symbol currentOwner = null;
    private final Symbol.Completer thisCompleter = new Symbol.Completer() {
        @Override
        public final void complete(Symbol symbol) {
            ClassFinder.this.complete(symbol);
        }
    };

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$javax$tools$JavaFileObject$Kind;

        static {
            int[] iArr = new int[JavaFileObject.Kind.values().length];
            $SwitchMap$javax$tools$JavaFileObject$Kind = iArr;
            try {
                iArr[JavaFileObject.Kind.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$JavaFileObject$Kind[JavaFileObject.Kind.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$tools$JavaFileObject$Kind[JavaFileObject.Kind.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class BadClassFile extends Symbol.CompletionFailure {
        private static final long serialVersionUID = 0;

        public BadClassFile(Symbol.TypeSymbol typeSymbol, JavaFileObject javaFileObject, JCDiagnostic jCDiagnostic, JCDiagnostic.Factory factory) {
            super(typeSymbol, createBadClassFileDiagnostic(javaFileObject, jCDiagnostic, factory));
        }

        private static JCDiagnostic createBadClassFileDiagnostic(JavaFileObject javaFileObject, JCDiagnostic jCDiagnostic, JCDiagnostic.Factory factory) {
            return factory.fragment(javaFileObject.getKind() == JavaFileObject.Kind.SOURCE ? "bad.source.file.header" : "bad.class.file.header", javaFileObject, jCDiagnostic);
        }
    }

    public static class BadEnclosingMethodAttr extends BadClassFile {
        private static final long serialVersionUID = 0;

        public BadEnclosingMethodAttr(Symbol.TypeSymbol typeSymbol, JavaFileObject javaFileObject, JCDiagnostic jCDiagnostic, JCDiagnostic.Factory factory) {
            super(typeSymbol, javaFileObject, jCDiagnostic, factory);
        }
    }

    public ClassFinder(Context context) {
        JRTIndex jRTIndex = null;
        Symbol.CompletionFailure completionFailure = new Symbol.CompletionFailure((Symbol) null, (JCDiagnostic) null);
        this.cachedCompletionFailure = completionFailure;
        boolean z10 = false;
        completionFailure.setStackTrace(new StackTraceElement[0]);
        this.verbosePath = true;
        context.put((Context.Key<Context.Key<ClassFinder>>) classFinderKey, (Context.Key<ClassFinder>) this);
        this.reader = ClassReader.instance(context);
        Names instance = Names.instance(context);
        this.names = instance;
        this.syms = Symtab.instance(context);
        JavaFileManager javaFileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.fileManager = javaFileManager;
        this.dependencies = Dependencies.instance(context);
        if (javaFileManager == null) {
            throw new AssertionError((Object) "FileManager initialization error");
        }
        this.diagFactory = JCDiagnostic.Factory.instance(context);
        this.log = Log.instance(context);
        this.annotate = Annotate.instance(context);
        Options instance2 = Options.instance(context);
        this.verbose = instance2.isSet(Option.VERBOSE);
        this.cacheCompletionFailure = instance2.isUnset("dev");
        this.preferSource = "source".equals(instance2.get("-Xprefer"));
        this.userPathsFirst = instance2.isSet(Option.XXUSERPATHSFIRST);
        this.allowSigFiles = context.get(PlatformDescription.class) != null;
        this.completionFailureName = instance2.isSet("failcomplete") ? instance.fromString(instance2.get("failcomplete")) : null;
        JavaFileManager javaFileManager2 = (JavaFileManager) context.get(JavaFileManager.class);
        if (javaFileManager2 instanceof JavacFileManager) {
            JavacFileManager javacFileManager = (JavacFileManager) javaFileManager2;
            if (javacFileManager.isDefaultBootClassPath() && javacFileManager.isSymbolFileEnabled()) {
                z10 = true;
            }
        } else if (javaFileManager2.getClass().getName().equals("org.openjdk.tools.sjavac.comp.SmartFileManager")) {
            z10 = !instance2.isSet("ignore.symbol.file");
        }
        if (z10 && JRTIndex.isAvailable()) {
            jRTIndex = JRTIndex.getSharedInstance();
        }
        this.jrtIndex = jRTIndex;
        this.profile = Profile.instance(context);
    }

    private Symbol.CompletionFailure classFileNotFound(Symbol.ClassSymbol classSymbol) {
        return newCompletionFailure(classSymbol, this.diagFactory.fragment("class.file.not.found", classSymbol.flatname));
    }

    public void complete(Symbol symbol) throws Symbol.CompletionFailure {
        Kinds.Kind kind = symbol.kind;
        if (kind == Kinds.Kind.TYP) {
            try {
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
                this.dependencies.push(classSymbol, Dependencies.CompletionCause.CLASS_READER);
                this.annotate.blockAnnotations();
                classSymbol.members_field = new Scope.ErrorScope(classSymbol);
                completeOwners(classSymbol.owner);
                completeEnclosing(classSymbol);
                fillIn(classSymbol);
            } finally {
                this.annotate.unblockAnnotationsNoFlush();
                this.dependencies.pop();
            }
        } else if (kind == Kinds.Kind.PCK) {
            try {
                fillIn((Symbol.PackageSymbol) symbol);
            } catch (IOException e10) {
                throw new Symbol.CompletionFailure(symbol, e10.getLocalizedMessage()).initCause((Throwable) e10);
            }
        }
        if (this.reader.filling) {
            return;
        }
        this.annotate.flush();
    }

    private void completeEnclosing(Symbol.ClassSymbol classSymbol) {
        Symbol symbol = classSymbol.owner;
        if (symbol.kind == Kinds.Kind.PCK) {
            Iterator<Name> it = Convert.enclosingCandidates(Convert.shortName(classSymbol.name)).iterator();
            while (it.hasNext()) {
                Name next = it.next();
                Symbol findFirst = symbol.members().findFirst(next);
                if (findFirst == null) {
                    findFirst = this.syms.getClass(classSymbol.packge().modle, Symbol.TypeSymbol.formFlatName(next, symbol));
                }
                if (findFirst != null) {
                    findFirst.complete();
                }
            }
        }
    }

    private void completeOwners(Symbol symbol) {
        if (symbol.kind != Kinds.Kind.PCK) {
            completeOwners(symbol.owner);
        }
        symbol.complete();
    }

    public static ClassFinder instance(Context context) {
        ClassFinder classFinder = (ClassFinder) context.get(classFinderKey);
        return classFinder == null ? new ClassFinder(context) : classFinder;
    }

    public Iterator lambda$list$1(Iterable iterable, Symbol.PackageSymbol packageSymbol, Set set) {
        return new Iterator<JavaFileObject>(iterable, packageSymbol, set) {
            private JavaFileObject next;
            private final Iterator original;
            final Set val$kinds;
            final Iterable val$listed;
            final Symbol.PackageSymbol val$p;

            {
                this.val$listed = iterable;
                this.val$p = packageSymbol;
                this.val$kinds = set;
                this.original = iterable.iterator();
            }

            /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
            
                if (r1.isSigFile(r1.currentLoc, r0) != false) goto L13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
            
                r6.val$p.flags_field |= 72057594037927936L;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
            
                if (r6.val$kinds.contains(r0.getKind()) == false) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
            
                r6.next = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
            
                if (r6.next == null) goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
            
                return true;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
            
                return false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
            
                if (r6.next == null) goto L4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
            
                if (r6.original.hasNext() == false) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
            
                r0 = (org.openjdk.javax.tools.JavaFileObject) r6.original.next();
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
            
                if (r0.getKind() == org.openjdk.javax.tools.JavaFileObject.Kind.CLASS) goto L13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
            
                if (r0.getKind() == org.openjdk.javax.tools.JavaFileObject.Kind.SOURCE) goto L13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
            
                r1 = r6.this$0;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean hasNext() {
            }

            @Override
            public JavaFileObject next() {
                if (hasNext()) {
                    JavaFileObject javaFileObject = this.next;
                    this.next = null;
                    return javaFileObject;
                }
                throw new NoSuchElementException();
            }
        };
    }

    public static String lambda$loadClass$0(Symbol.ModuleSymbol moduleSymbol, Name name) {
        return "msym=" + ((Object) moduleSymbol) + "; flatName=" + ((Object) name);
    }

    private Symbol.CompletionFailure newCompletionFailure(Symbol.TypeSymbol typeSymbol, JCDiagnostic jCDiagnostic) {
        if (!this.cacheCompletionFailure) {
            return new Symbol.CompletionFailure(typeSymbol, jCDiagnostic);
        }
        Symbol.CompletionFailure completionFailure = this.cachedCompletionFailure;
        completionFailure.sym = typeSymbol;
        completionFailure.diag = jCDiagnostic;
        return completionFailure;
    }

    private void scanModulePaths(Symbol.PackageSymbol packageSymbol, Symbol.ModuleSymbol moduleSymbol) throws IOException {
        EnumSet<JavaFileObject.Kind> packageFileKinds = getPackageFileKinds();
        Set<JavaFileObject.Kind> copyOf = EnumSet.copyOf((Collection) packageFileKinds);
        copyOf.remove(JavaFileObject.Kind.SOURCE);
        boolean isEmpty = copyOf.isEmpty();
        Set<JavaFileObject.Kind> copyOf2 = EnumSet.copyOf((Collection) packageFileKinds);
        copyOf2.remove(JavaFileObject.Kind.CLASS);
        boolean isEmpty2 = copyOf2.isEmpty();
        String name = packageSymbol.fullname.toString();
        JavaFileManager.Location location = moduleSymbol.classLocation;
        JavaFileManager.Location location2 = moduleSymbol.sourceLocation;
        JavaFileManager.Location location3 = moduleSymbol.patchLocation;
        JavaFileManager.Location location4 = moduleSymbol.patchOutputLocation;
        boolean z10 = this.preferCurrent;
        try {
            this.preferCurrent = false;
            if (!isEmpty && location4 != null) {
                fillIn(packageSymbol, location4, list(location4, packageSymbol, name, copyOf));
            }
            if ((!isEmpty || !isEmpty2) && location3 != null) {
                Set<JavaFileObject.Kind> noneOf = EnumSet.noneOf(JavaFileObject.Kind.class);
                noneOf.addAll(copyOf);
                noneOf.addAll(copyOf2);
                fillIn(packageSymbol, location3, list(location3, packageSymbol, name, noneOf));
            }
            this.preferCurrent = true;
            if (!isEmpty && location != null) {
                fillIn(packageSymbol, location, list(location, packageSymbol, name, copyOf));
            }
            if (!isEmpty2 && location2 != null) {
                fillIn(packageSymbol, location2, list(location2, packageSymbol, name, copyOf2));
            }
            this.preferCurrent = z10;
        } catch (Throwable th2) {
            this.preferCurrent = z10;
            throw th2;
        }
    }

    private void scanPlatformPath(Symbol.PackageSymbol packageSymbol) throws IOException {
        StandardLocation standardLocation = StandardLocation.PLATFORM_CLASS_PATH;
        fillIn(packageSymbol, standardLocation, list(standardLocation, packageSymbol, packageSymbol.fullname.toString(), this.allowSigFiles ? EnumSet.of(JavaFileObject.Kind.CLASS, JavaFileObject.Kind.OTHER) : EnumSet.of(JavaFileObject.Kind.CLASS)));
    }

    private void scanUserPaths(Symbol.PackageSymbol packageSymbol, boolean z10) throws IOException {
        EnumSet<JavaFileObject.Kind> packageFileKinds = getPackageFileKinds();
        EnumSet copyOf = EnumSet.copyOf((Collection) packageFileKinds);
        copyOf.remove(JavaFileObject.Kind.SOURCE);
        boolean isEmpty = copyOf.isEmpty();
        EnumSet copyOf2 = EnumSet.copyOf((Collection) packageFileKinds);
        copyOf2.remove(JavaFileObject.Kind.CLASS);
        boolean isEmpty2 = copyOf2.isEmpty();
        boolean z11 = z10 && this.fileManager.hasLocation(StandardLocation.SOURCE_PATH);
        if (this.verbose && this.verbosePath) {
            this.verbosePath = false;
            JavaFileManager javaFileManager = this.fileManager;
            if (javaFileManager instanceof StandardJavaFileManager) {
                StandardJavaFileManager standardJavaFileManager = (StandardJavaFileManager) javaFileManager;
                if (z11 && !isEmpty2) {
                    List nil = List.nil();
                    Iterator<? extends Path> it = standardJavaFileManager.getLocationAsPaths(StandardLocation.SOURCE_PATH).iterator();
                    while (it.hasNext()) {
                        nil = nil.prepend(it.next());
                    }
                    this.log.printVerbose(ClasspathEntry.TAG_SOURCEPATH, nil.reverse().toString());
                } else if (!isEmpty2) {
                    List nil2 = List.nil();
                    Iterator<? extends Path> it2 = standardJavaFileManager.getLocationAsPaths(StandardLocation.CLASS_PATH).iterator();
                    while (it2.hasNext()) {
                        nil2 = nil2.prepend(it2.next());
                    }
                    this.log.printVerbose(ClasspathEntry.TAG_SOURCEPATH, nil2.reverse().toString());
                }
                if (!isEmpty) {
                    List nil3 = List.nil();
                    Iterator<? extends Path> it3 = standardJavaFileManager.getLocationAsPaths(StandardLocation.PLATFORM_CLASS_PATH).iterator();
                    while (it3.hasNext()) {
                        nil3 = nil3.prepend(it3.next());
                    }
                    Iterator<? extends Path> it4 = standardJavaFileManager.getLocationAsPaths(StandardLocation.CLASS_PATH).iterator();
                    while (it4.hasNext()) {
                        nil3 = nil3.prepend(it4.next());
                    }
                    this.log.printVerbose(ClasspathEntry.TAG_CLASSPATH, nil3.reverse().toString());
                }
            }
        }
        String name = packageSymbol.fullname.toString();
        if (!isEmpty2 && !z11) {
            StandardLocation standardLocation = StandardLocation.CLASS_PATH;
            fillIn(packageSymbol, standardLocation, list(standardLocation, packageSymbol, name, packageFileKinds));
            return;
        }
        if (!isEmpty) {
            StandardLocation standardLocation2 = StandardLocation.CLASS_PATH;
            fillIn(packageSymbol, standardLocation2, list(standardLocation2, packageSymbol, name, copyOf));
        }
        if (isEmpty2) {
            return;
        }
        StandardLocation standardLocation3 = StandardLocation.SOURCE_PATH;
        fillIn(packageSymbol, standardLocation3, list(standardLocation3, packageSymbol, name, copyOf2));
    }

    public void extraFileActions(Symbol.PackageSymbol packageSymbol, JavaFileObject javaFileObject) {
    }

    public void fillIn(Symbol.ClassSymbol classSymbol) {
        if (this.completionFailureName != classSymbol.fullname) {
            this.currentOwner = classSymbol;
            JavaFileObject javaFileObject = classSymbol.classfile;
            if (javaFileObject != null) {
                JavaFileObject javaFileObject2 = this.currentClassFile;
                try {
                    if (this.reader.filling) {
                        Assert.error("Filling " + ((Object) javaFileObject.toUri()) + " during " + ((Object) javaFileObject2));
                    }
                    this.currentClassFile = javaFileObject;
                    if (this.verbose) {
                        this.log.printVerbose(DocumentsContract.EXTRA_LOADING, javaFileObject.getName());
                    }
                    if (javaFileObject.getKind() != JavaFileObject.Kind.CLASS && javaFileObject.getKind() != JavaFileObject.Kind.OTHER) {
                        if (!this.sourceCompleter.isTerminal()) {
                            this.sourceCompleter.complete(classSymbol);
                            this.currentClassFile = javaFileObject2;
                            return;
                        } else {
                            throw new IllegalStateException("Source completer required to read " + ((Object) javaFileObject.toUri()));
                        }
                    }
                    this.reader.readClassFile(classSymbol);
                    classSymbol.flags_field |= getSupplementaryFlags(classSymbol);
                    this.currentClassFile = javaFileObject2;
                    return;
                } catch (Throwable th2) {
                    this.currentClassFile = javaFileObject2;
                    throw th2;
                }
            }
            throw classFileNotFound(classSymbol);
        }
        throw new Symbol.CompletionFailure(classSymbol, "user-selected completion failure by class name");
    }

    public Symbol.Completer getCompleter() {
        return this.thisCompleter;
    }

    public EnumSet<JavaFileObject.Kind> getPackageFileKinds() {
        return EnumSet.of(JavaFileObject.Kind.CLASS, JavaFileObject.Kind.SOURCE);
    }

    public long getSupplementaryFlags(Symbol.ClassSymbol classSymbol) {
        JRTIndex jRTIndex = this.jrtIndex;
        if (jRTIndex == null || !jRTIndex.isInJRT(classSymbol.classfile) || classSymbol.name == this.names.module_info) {
            return 0L;
        }
        if (this.supplementaryFlags == null) {
            this.supplementaryFlags = new HashMap();
        }
        Long l10 = this.supplementaryFlags.get(classSymbol.packge());
        if (l10 == null) {
            try {
                JRTIndex.CtSym ctSym = this.jrtIndex.getCtSym(classSymbol.packge().flatName());
                Profile profile = Profile.DEFAULT;
                r1 = ctSym.proprietary ? 274877906944L : 0L;
                String str = ctSym.minProfile;
                Profile lookup = str != null ? Profile.lookup(str) : profile;
                Profile profile2 = this.profile;
                if (profile2 != profile) {
                    if (lookup.value > profile2.value) {
                        r1 |= 35184372088832L;
                    }
                }
            } catch (IOException unused) {
            }
            Map<Symbol.PackageSymbol, Long> map = this.supplementaryFlags;
            Symbol.PackageSymbol packge = classSymbol.packge();
            Long valueOf = Long.valueOf(r1);
            map.put(packge, valueOf);
            l10 = valueOf;
        }
        return l10.longValue();
    }

    public void includeClassFile(Symbol.PackageSymbol packageSymbol, JavaFileObject javaFileObject) {
        JavaFileObject javaFileObject2;
        if ((packageSymbol.flags_field & 8388608) == 0) {
            for (Symbol symbol = packageSymbol; symbol != null && symbol.kind == Kinds.Kind.PCK; symbol = symbol.owner) {
                symbol.flags_field |= 8388608;
            }
        }
        JavaFileObject.Kind kind = javaFileObject.getKind();
        int i10 = (kind == JavaFileObject.Kind.CLASS || kind == JavaFileObject.Kind.OTHER) ? 33554432 : 67108864;
        String inferBinaryName = this.fileManager.inferBinaryName(this.currentLoc, javaFileObject);
        Name fromString = this.names.fromString(inferBinaryName.substring(inferBinaryName.lastIndexOf(".") + 1));
        boolean z10 = fromString == this.names.package_info;
        Symbol.ClassSymbol classSymbol = z10 ? packageSymbol.package_info : (Symbol.ClassSymbol) packageSymbol.members_field.findFirst(fromString);
        if (classSymbol == null) {
            classSymbol = this.syms.enterClass(packageSymbol.modle, fromString, packageSymbol);
            if (classSymbol.classfile == null) {
                classSymbol.classfile = javaFileObject;
            }
            if (z10) {
                packageSymbol.package_info = classSymbol;
            } else if (classSymbol.owner == packageSymbol) {
                packageSymbol.members_field.enter(classSymbol);
            }
        } else if (!this.preferCurrent && (javaFileObject2 = classSymbol.classfile) != null) {
            long j10 = classSymbol.flags_field;
            if ((i10 & j10) == 0 && (j10 & 100663296) != 0) {
                classSymbol.classfile = preferredFileObject(javaFileObject, javaFileObject2);
            }
        }
        classSymbol.flags_field |= i10;
    }

    public boolean isSigFile(JavaFileManager.Location location, JavaFileObject javaFileObject) {
        return location == StandardLocation.PLATFORM_CLASS_PATH && this.allowSigFiles && javaFileObject.getName().endsWith(".sig");
    }

    public Iterable<JavaFileObject> list(JavaFileManager.Location location, final Symbol.PackageSymbol packageSymbol, String str, final Set<JavaFileObject.Kind> set) throws IOException {
        final Iterable<JavaFileObject> list = this.fileManager.list(location, str, EnumSet.allOf(JavaFileObject.Kind.class), false);
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$list$1;
                lambda$list$1 = ClassFinder.this.lambda$list$1(list, packageSymbol, set);
                return lambda$list$1;
            }
        };
    }

    public Symbol.ClassSymbol loadClass(final Symbol.ModuleSymbol moduleSymbol, final Name name) throws Symbol.CompletionFailure {
        Assert.checkNonNull(moduleSymbol);
        Symbol.PackageSymbol lookupPackage = this.syms.lookupPackage(moduleSymbol, Convert.packagePart(name));
        Assert.checkNonNull(lookupPackage.modle, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                String lambda$loadClass$0;
                lambda$loadClass$0 = ClassFinder.lambda$loadClass$0(Symbol.ModuleSymbol.this, name);
                return lambda$loadClass$0;
            }
        });
        boolean z10 = this.syms.getClass(lookupPackage.modle, name) == null;
        Symbol.ClassSymbol enterClass = this.syms.enterClass(lookupPackage.modle, name);
        if (enterClass.members_field == null) {
            try {
                enterClass.complete();
            } catch (Symbol.CompletionFailure e10) {
                if (z10) {
                    this.syms.removeClass(lookupPackage.modle, name);
                }
                throw e10;
            }
        }
        return enterClass;
    }

    public JavaFileObject preferredFileObject(JavaFileObject javaFileObject, JavaFileObject javaFileObject2) {
        return this.preferSource ? javaFileObject.getKind() == JavaFileObject.Kind.SOURCE ? javaFileObject : javaFileObject2 : javaFileObject.getLastModified() > javaFileObject2.getLastModified() ? javaFileObject : javaFileObject2;
    }

    private void fillIn(final Symbol.PackageSymbol packageSymbol) throws IOException {
        if (packageSymbol.members_field == null) {
            packageSymbol.members_field = Scope.WriteableScope.create(packageSymbol);
        }
        Symbol.ModuleSymbol moduleSymbol = packageSymbol.modle;
        Assert.checkNonNull(moduleSymbol, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return Symbol.PackageSymbol.this.toString();
            }
        });
        moduleSymbol.complete();
        if (moduleSymbol == this.syms.noModule) {
            this.preferCurrent = false;
            if (this.userPathsFirst) {
                scanUserPaths(packageSymbol, true);
                this.preferCurrent = true;
                scanPlatformPath(packageSymbol);
                return;
            } else {
                scanPlatformPath(packageSymbol);
                scanUserPaths(packageSymbol, true);
                return;
            }
        }
        if (moduleSymbol.classLocation == StandardLocation.CLASS_PATH) {
            scanUserPaths(packageSymbol, moduleSymbol.sourceLocation == StandardLocation.SOURCE_PATH);
        } else {
            scanModulePaths(packageSymbol, moduleSymbol);
        }
    }

    private void fillIn(Symbol.PackageSymbol packageSymbol, JavaFileManager.Location location, Iterable<JavaFileObject> iterable) {
        String substring;
        this.currentLoc = location;
        for (JavaFileObject javaFileObject : iterable) {
            int i10 = AnonymousClass2.$SwitchMap$javax$tools$JavaFileObject$Kind[javaFileObject.getKind().ordinal()];
            if (i10 == 1) {
                if (!isSigFile(location, javaFileObject)) {
                    extraFileActions(packageSymbol, javaFileObject);
                } else {
                    String inferBinaryName = this.fileManager.inferBinaryName(this.currentLoc, javaFileObject);
                    substring = inferBinaryName.substring(inferBinaryName.lastIndexOf(".") + 1);
                    if (!SourceVersion.isIdentifier(substring)) {
                    }
                    includeClassFile(packageSymbol, javaFileObject);
                }
            } else {
                if (i10 != 2 && i10 != 3) {
                    extraFileActions(packageSymbol, javaFileObject);
                }
                String inferBinaryName2 = this.fileManager.inferBinaryName(this.currentLoc, javaFileObject);
                substring = inferBinaryName2.substring(inferBinaryName2.lastIndexOf(".") + 1);
                if (!SourceVersion.isIdentifier(substring) || substring.equals("package-info")) {
                    includeClassFile(packageSymbol, javaFileObject);
                }
            }
        }
    }
}
