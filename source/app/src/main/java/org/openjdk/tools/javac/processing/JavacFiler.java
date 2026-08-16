package org.openjdk.tools.javac.processing;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.FilterOutputStream;
import java.io.FilterWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.openjdk.javax.annotation.processing.Filer;
import org.openjdk.javax.annotation.processing.FilerException;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.ForwardingFileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.model.JavacElements;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class JavacFiler implements Filer, Closeable {
    private static final String ALREADY_OPENED = "Output stream or writer has already been opened.";
    private static final String NOT_FOR_READING = "FileObject was not opened for reading.";
    private static final String NOT_FOR_WRITING = "FileObject was not opened for writing.";
    Context context;
    private final String defaultTargetModule;
    JavacElements elementUtils;
    JavaFileManager fileManager;
    boolean lastRound;
    private final boolean lint;
    Log log;
    Modules modules;
    Names names;
    Symtab syms;
    private final Set<FileObject> initialInputs = Collections.synchronizedSet(new LinkedHashSet());
    private final Set<FileObject> fileObjectHistory = Collections.synchronizedSet(new LinkedHashSet());
    private Set<String> generatedSourceNames = Collections.synchronizedSet(new LinkedHashSet());
    private Set<JavaFileObject> generatedSourceFileObjects = Collections.synchronizedSet(new LinkedHashSet());
    private final Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> generatedClasses = Collections.synchronizedMap(new LinkedHashMap());
    private final Set<String> openTypeNames = Collections.synchronizedSet(new LinkedHashSet());
    private final Set<Pair<Symbol.ModuleSymbol, String>> aggregateGeneratedSourceNames = new LinkedHashSet();
    private final Set<Pair<Symbol.ModuleSymbol, String>> aggregateGeneratedClassNames = new LinkedHashSet();
    private final Set<String> initialClassNames = new LinkedHashSet();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$tools$JavaFileObject$Kind;

        static {
            int[] iArr = new int[JavaFileObject.Kind.values().length];
            $SwitchMap$javax$tools$JavaFileObject$Kind = iArr;
            try {
                iArr[JavaFileObject.Kind.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$JavaFileObject$Kind[JavaFileObject.Kind.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class FilerInputFileObject extends ForwardingFileObject<FileObject> {
        public FilerInputFileObject(FileObject fileObject) {
            super(fileObject);
        }

        @Override
        public boolean delete() {
            return false;
        }

        @Override
        public OutputStream openOutputStream() throws IOException {
            throw new IllegalStateException(JavacFiler.NOT_FOR_WRITING);
        }

        @Override
        public Writer openWriter() throws IOException {
            throw new IllegalStateException(JavacFiler.NOT_FOR_WRITING);
        }
    }

    public class FilerInputJavaFileObject extends FilerInputFileObject implements JavaFileObject {
        private final JavaFileObject javaFileObject;

        public FilerInputJavaFileObject(JavaFileObject javaFileObject) {
            super(javaFileObject);
            this.javaFileObject = javaFileObject;
        }

        @Override
        public Modifier getAccessLevel() {
            return this.javaFileObject.getAccessLevel();
        }

        @Override
        public JavaFileObject.Kind getKind() {
            return this.javaFileObject.getKind();
        }

        @Override
        public NestingKind getNestingKind() {
            return this.javaFileObject.getNestingKind();
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            return this.javaFileObject.isNameCompatible(str, kind);
        }
    }

    public class FilerOutputFileObject extends ForwardingFileObject<FileObject> {
        private Symbol.ModuleSymbol mod;
        private String name;
        private boolean opened;

        public FilerOutputFileObject(Symbol.ModuleSymbol moduleSymbol, String str, FileObject fileObject) {
            super(fileObject);
            this.opened = false;
            this.mod = moduleSymbol;
            this.name = str;
        }

        @Override
        public boolean delete() {
            return false;
        }

        @Override
        public CharSequence getCharContent(boolean z10) throws IOException {
            throw new IllegalStateException(JavacFiler.NOT_FOR_READING);
        }

        @Override
        public InputStream openInputStream() throws IOException {
            throw new IllegalStateException(JavacFiler.NOT_FOR_READING);
        }

        @Override
        public synchronized OutputStream openOutputStream() throws IOException {
            if (this.opened) {
                throw new IOException(JavacFiler.ALREADY_OPENED);
            }
            this.opened = true;
            return new FilerOutputStream(this.mod, this.name, this.fileObject);
        }

        @Override
        public Reader openReader(boolean z10) throws IOException {
            throw new IllegalStateException(JavacFiler.NOT_FOR_READING);
        }

        @Override
        public synchronized Writer openWriter() throws IOException {
            if (this.opened) {
                throw new IOException(JavacFiler.ALREADY_OPENED);
            }
            this.opened = true;
            return new FilerWriter(this.mod, this.name, this.fileObject);
        }
    }

    public class FilerOutputJavaFileObject extends FilerOutputFileObject implements JavaFileObject {
        private final JavaFileObject javaFileObject;

        public FilerOutputJavaFileObject(Symbol.ModuleSymbol moduleSymbol, String str, JavaFileObject javaFileObject) {
            super(moduleSymbol, str, javaFileObject);
            this.javaFileObject = javaFileObject;
        }

        @Override
        public Modifier getAccessLevel() {
            return this.javaFileObject.getAccessLevel();
        }

        @Override
        public JavaFileObject.Kind getKind() {
            return this.javaFileObject.getKind();
        }

        @Override
        public NestingKind getNestingKind() {
            return this.javaFileObject.getNestingKind();
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            return this.javaFileObject.isNameCompatible(str, kind);
        }
    }

    public class FilerOutputStream extends FilterOutputStream {
        boolean closed;
        FileObject fileObject;
        Symbol.ModuleSymbol mod;
        String typeName;

        public FilerOutputStream(Symbol.ModuleSymbol moduleSymbol, String str, FileObject fileObject) throws IOException {
            super(fileObject.openOutputStream());
            this.closed = false;
            this.mod = moduleSymbol;
            this.typeName = str;
            this.fileObject = fileObject;
        }

        @Override
        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                JavacFiler.this.closeFileObject(this.mod, this.typeName, this.fileObject);
                this.out.close();
            }
        }
    }

    public class FilerWriter extends FilterWriter {
        boolean closed;
        FileObject fileObject;
        Symbol.ModuleSymbol mod;
        String typeName;

        public FilerWriter(Symbol.ModuleSymbol moduleSymbol, String str, FileObject fileObject) throws IOException {
            super(fileObject.openWriter());
            this.closed = false;
            this.mod = moduleSymbol;
            this.typeName = str;
            this.fileObject = fileObject;
        }

        @Override
        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                JavacFiler.this.closeFileObject(this.mod, this.typeName, this.fileObject);
                this.out.close();
            }
        }
    }

    public static final class Tuple3<A, B, C> {

        final A f103295a;

        final B f103296b;

        final C f103297c;

        public Tuple3(A a10, B b10, C c10) {
            this.f103295a = a10;
            this.f103296b = b10;
            this.f103297c = c10;
        }
    }

    public JavacFiler(Context context) {
        this.context = context;
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.elementUtils = JavacElements.instance(context);
        this.log = Log.instance(context);
        this.modules = Modules.instance(context);
        this.names = Names.instance(context);
        this.syms = Symtab.instance(context);
        this.lint = Lint.instance(context).isEnabled(Lint.LintCategory.PROCESSING);
        this.defaultTargetModule = Options.instance(context).get(Option.DEFAULT_MODULE_FOR_CREATED_FILES);
    }

    private void checkFileReopening(FileObject fileObject, boolean z10) throws FilerException {
        if (!isInFileObjectHistory(fileObject, z10)) {
            if (z10) {
                this.fileObjectHistory.add(fileObject);
            }
        } else {
            if (this.lint) {
                this.log.warning("proc.file.reopening", fileObject.getName());
            }
            throw new FilerException("Attempt to reopen a file for path " + fileObject.getName());
        }
    }

    private void checkName(String str) throws FilerException {
        checkName(str, false);
    }

    private void checkNameAndExistence(Symbol.ModuleSymbol moduleSymbol, String str, boolean z10) throws FilerException {
        Symbol.ClassSymbol typeElement;
        checkName(str, z10);
        if (this.aggregateGeneratedSourceNames.contains(Pair.of(moduleSymbol, str)) || this.aggregateGeneratedClassNames.contains(Pair.of(moduleSymbol, str)) || this.initialClassNames.contains(str) || ((typeElement = this.elementUtils.getTypeElement((CharSequence) str)) != null && this.initialInputs.contains(typeElement.sourcefile))) {
            if (this.lint) {
                this.log.warning("proc.type.recreate", str);
            }
            throw new FilerException("Attempt to recreate a file for type " + str);
        }
        if (moduleSymbol.isUnnamed() || str.contains(".")) {
            return;
        }
        throw new FilerException("Attempt to create a type in unnamed package of a named module: " + str);
    }

    private Pair<Symbol.ModuleSymbol, String> checkOrInferModule(CharSequence charSequence) throws FilerException {
        String str;
        String charSequence2 = charSequence.toString();
        int indexOf = charSequence2.indexOf(47);
        if (indexOf == -1) {
            int lastIndexOf = charSequence2.lastIndexOf(46);
            Symbol.ModuleSymbol inferModule = inferModule(lastIndexOf != -1 ? charSequence2.substring(0, lastIndexOf) : "");
            if (inferModule != null) {
                return Pair.of(inferModule, charSequence2);
            }
            str = this.defaultTargetModule;
            if (str == null) {
                throw new FilerException("Cannot determine target module.");
            }
        } else {
            String substring = charSequence2.substring(0, indexOf);
            charSequence2 = charSequence2.substring(indexOf + 1);
            str = substring;
        }
        Symbol.ModuleSymbol module = this.syms.getModule(this.names.fromString(str));
        if (module != null) {
            if (this.modules.isRootModule(module)) {
                return Pair.of(module, charSequence2);
            }
            throw new FilerException("Cannot write to the given module.");
        }
        throw new FilerException("Module: " + str + " does not exist.");
    }

    private void clearRoundState() {
        this.generatedSourceNames.clear();
        this.generatedSourceFileObjects.clear();
        this.generatedClasses.clear();
    }

    public void closeFileObject(Symbol.ModuleSymbol moduleSymbol, String str, FileObject fileObject) {
        if (str != null) {
            if (!(fileObject instanceof JavaFileObject)) {
                throw new AssertionError((Object) ("JavaFileOject not found for " + ((Object) fileObject)));
            }
            JavaFileObject javaFileObject = (JavaFileObject) fileObject;
            int i10 = AnonymousClass1.$SwitchMap$javax$tools$JavaFileObject$Kind[javaFileObject.getKind().ordinal()];
            if (i10 == 1) {
                this.generatedSourceNames.add(str);
                this.generatedSourceFileObjects.add(javaFileObject);
                this.openTypeNames.remove(str);
            } else {
                if (i10 != 2) {
                    return;
                }
                this.generatedClasses.computeIfAbsent(moduleSymbol, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Map lambda$closeFileObject$0;
                        lambda$closeFileObject$0 = JavacFiler.lambda$closeFileObject$0((Symbol.ModuleSymbol) obj);
                        return lambda$closeFileObject$0;
                    }
                }).put(str, javaFileObject);
                this.openTypeNames.remove(str);
            }
        }
    }

    private JavaFileObject createSourceOrClassFile(Symbol.ModuleSymbol moduleSymbol, boolean z10, String str) throws IOException {
        int lastIndexOf;
        Assert.checkNonNull(moduleSymbol);
        if (this.lint && (lastIndexOf = str.lastIndexOf(".")) != -1) {
            String substring = str.substring(lastIndexOf);
            String str2 = z10 ? ".java" : ".class";
            if (substring.equals(str2)) {
                this.log.warning("proc.suspicious.class.name", str, str2);
            }
        }
        checkNameAndExistence(moduleSymbol, str, z10);
        JavaFileManager.Location location = z10 ? StandardLocation.SOURCE_OUTPUT : StandardLocation.CLASS_OUTPUT;
        if (this.modules.multiModuleMode) {
            location = this.fileManager.getLocationForModule(location, moduleSymbol.name.toString());
        }
        JavaFileObject javaFileForOutput = this.fileManager.getJavaFileForOutput(location, str, z10 ? JavaFileObject.Kind.SOURCE : JavaFileObject.Kind.CLASS, null);
        checkFileReopening(javaFileForOutput, true);
        if (this.lastRound) {
            this.log.warning("proc.file.create.last.round", str);
        }
        if (z10) {
            this.aggregateGeneratedSourceNames.add(Pair.of(moduleSymbol, str));
        } else {
            this.aggregateGeneratedClassNames.add(Pair.of(moduleSymbol, str));
        }
        this.openTypeNames.add(str);
        return new FilerOutputJavaFileObject(moduleSymbol, str, javaFileForOutput);
    }

    private Symbol.ModuleSymbol inferModule(String str) {
        Symbol.ModuleSymbol moduleSymbol;
        if (this.modules.getDefaultModule() == this.syms.noModule) {
            return this.modules.getDefaultModule();
        }
        Set<Symbol.ModuleSymbol> rootModules = this.modules.getRootModules();
        if (rootModules.size() == 1) {
            return rootModules.iterator().next();
        }
        Symbol.PackageSymbol packageElement = this.elementUtils.getPackageElement((CharSequence) str);
        if (packageElement == null || (moduleSymbol = packageElement.modle) == this.syms.unnamedModule) {
            return null;
        }
        return moduleSymbol;
    }

    private boolean isInFileObjectHistory(FileObject fileObject, boolean z10) {
        JavaFileObject javaFileObject;
        JavaFileObject javaFileObject2;
        if (z10) {
            Iterator<FileObject> it = this.initialInputs.iterator();
            while (it.hasNext()) {
                if (this.fileManager.isSameFile(it.next(), fileObject)) {
                    return true;
                }
            }
            Iterator<String> it2 = this.initialClassNames.iterator();
            while (it2.hasNext()) {
                try {
                    Symbol.ClassSymbol typeElement = this.elementUtils.getTypeElement((CharSequence) it2.next());
                    if (typeElement != null && (((javaFileObject = typeElement.sourcefile) != null && this.fileManager.isSameFile(javaFileObject, fileObject)) || ((javaFileObject2 = typeElement.classfile) != null && this.fileManager.isSameFile(javaFileObject2, fileObject)))) {
                        return true;
                    }
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        Iterator<FileObject> it3 = this.fileObjectHistory.iterator();
        while (it3.hasNext()) {
            if (this.fileManager.isSameFile(it3.next(), fileObject)) {
                return true;
            }
        }
        return false;
    }

    private boolean isPackageInfo(String str, boolean z10) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            return SourceVersion.isName(str.substring(0, lastIndexOf)) && str.substring(lastIndexOf + 1).equals("package-info");
        }
        if (z10) {
            return str.equals("package-info");
        }
        return false;
    }

    public static Map lambda$closeFileObject$0(Symbol.ModuleSymbol moduleSymbol) {
        return Collections.synchronizedMap(new LinkedHashMap());
    }

    private void locationCheck(JavaFileManager.Location location) {
        if (location instanceof StandardLocation) {
            StandardLocation standardLocation = (StandardLocation) location;
            if (standardLocation.isOutputLocation()) {
                return;
            }
            throw new IllegalArgumentException("Resource creation not supported in location " + ((Object) standardLocation));
        }
    }

    @Override
    public void close() {
        clearRoundState();
        this.initialClassNames.clear();
        this.initialInputs.clear();
        this.fileObjectHistory.clear();
        this.openTypeNames.clear();
        this.aggregateGeneratedSourceNames.clear();
        this.aggregateGeneratedClassNames.clear();
    }

    @Override
    public JavaFileObject createClassFile(CharSequence charSequence, Element... elementArr) throws IOException {
        Pair<Symbol.ModuleSymbol, String> checkOrInferModule = checkOrInferModule(charSequence);
        return createSourceOrClassFile(checkOrInferModule.fst, false, checkOrInferModule.snd);
    }

    @Override
    public FileObject createResource(JavaFileManager.Location location, CharSequence charSequence, CharSequence charSequence2, Element... elementArr) throws IOException {
        Tuple3<JavaFileManager.Location, Symbol.ModuleSymbol, String> checkOrInferModule = checkOrInferModule(location, charSequence, true);
        JavaFileManager.Location location2 = checkOrInferModule.f103295a;
        Symbol.ModuleSymbol moduleSymbol = checkOrInferModule.f103296b;
        String str = checkOrInferModule.f103297c;
        locationCheck(location2);
        String str2 = str.toString();
        if (str2.length() > 0) {
            checkName(str2);
        }
        FileObject fileForOutput = this.fileManager.getFileForOutput(location2, str2, charSequence2.toString(), null);
        checkFileReopening(fileForOutput, true);
        return fileForOutput instanceof JavaFileObject ? new FilerOutputJavaFileObject(moduleSymbol, null, (JavaFileObject) fileForOutput) : new FilerOutputFileObject(moduleSymbol, null, fileForOutput);
    }

    @Override
    public JavaFileObject createSourceFile(CharSequence charSequence, Element... elementArr) throws IOException {
        Pair<Symbol.ModuleSymbol, String> checkOrInferModule = checkOrInferModule(charSequence);
        return createSourceOrClassFile(checkOrInferModule.fst, true, checkOrInferModule.snd);
    }

    public void displayState() {
        PrintWriter writer = ((Log) this.context.get(Log.logKey)).getWriter(Log.WriterKind.STDERR);
        writer.println("File Object History : " + ((Object) this.fileObjectHistory));
        writer.println("Open Type Names     : " + ((Object) this.openTypeNames));
        writer.println("Gen. Src Names      : " + ((Object) this.generatedSourceNames));
        writer.println("Gen. Cls Names      : " + ((Object) this.generatedClasses.o()));
        writer.println("Agg. Gen. Src Names : " + ((Object) this.aggregateGeneratedSourceNames));
        writer.println("Agg. Gen. Cls Names : " + ((Object) this.aggregateGeneratedClassNames));
    }

    public Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> getGeneratedClasses() {
        return this.generatedClasses;
    }

    public Set<JavaFileObject> getGeneratedSourceFileObjects() {
        return this.generatedSourceFileObjects;
    }

    public Set<String> getGeneratedSourceNames() {
        return this.generatedSourceNames;
    }

    @Override
    public FileObject getResource(JavaFileManager.Location location, CharSequence charSequence, CharSequence charSequence2) throws IOException {
        String str;
        Tuple3<JavaFileManager.Location, Symbol.ModuleSymbol, String> checkOrInferModule = checkOrInferModule(location, charSequence, false);
        JavaFileManager.Location location2 = checkOrInferModule.f103295a;
        String str2 = checkOrInferModule.f103297c;
        if (str2.length() > 0) {
            checkName(str2);
        }
        FileObject fileForOutput = location2.isOutputLocation() ? this.fileManager.getFileForOutput(location2, str2, charSequence2.toString(), null) : this.fileManager.getFileForInput(location2, str2, charSequence2.toString());
        if (fileForOutput != null) {
            checkFileReopening(fileForOutput, false);
            return new FilerInputFileObject(fileForOutput);
        }
        if (str2.length() == 0) {
            str = charSequence2.toString();
        } else {
            str = str2 + "/" + ((Object) charSequence2);
        }
        throw new FileNotFoundException(str);
    }

    public boolean newFiles() {
        return (this.generatedSourceNames.isEmpty() && this.generatedClasses.isEmpty()) ? false : true;
    }

    public void newRound() {
        clearRoundState();
    }

    public void setInitialState(Collection<? extends JavaFileObject> collection, Collection<String> collection2) {
        this.initialInputs.addAll(collection);
        this.initialClassNames.addAll(collection2);
    }

    public void setLastRound(boolean z10) {
        this.lastRound = z10;
    }

    public String toString() {
        return "javac Filer";
    }

    public void warnIfUnclosedFiles() {
        if (this.openTypeNames.isEmpty()) {
            return;
        }
        this.log.warning("proc.unclosed.type.files", this.openTypeNames.toString());
    }

    private void checkName(String str, boolean z10) throws FilerException {
        if (SourceVersion.isName(str) || isPackageInfo(str, z10)) {
            return;
        }
        if (this.lint) {
            this.log.warning("proc.illegal.file.name", str);
        }
        throw new FilerException("Illegal name " + str);
    }

    private Tuple3<JavaFileManager.Location, Symbol.ModuleSymbol, String> checkOrInferModule(JavaFileManager.Location location, CharSequence charSequence, boolean z10) throws IOException {
        String str;
        Symbol.ModuleSymbol inferModule;
        String charSequence2 = charSequence.toString();
        int indexOf = charSequence2.indexOf(47);
        boolean z11 = location.isModuleOrientedLocation() || (this.modules.multiModuleMode && location.isOutputLocation());
        if (indexOf != -1) {
            String substring = charSequence2.substring(0, indexOf);
            charSequence2 = charSequence2.substring(indexOf + 1);
            str = substring;
        } else {
            if (!z11) {
                return new Tuple3<>(location, this.modules.getDefaultModule(), charSequence2);
            }
            if (location.isOutputLocation() && (inferModule = inferModule(charSequence2)) != null) {
                return new Tuple3<>(this.fileManager.getLocationForModule(location, inferModule.name.toString()), inferModule, charSequence2);
            }
            str = this.defaultTargetModule;
            if (str == null) {
                throw new FilerException("No module specified and the location is either a module-oriented location, or a multi-module output location.");
            }
        }
        if (z11) {
            Symbol.ModuleSymbol module = this.syms.getModule(this.names.fromString(str));
            if (module != null) {
                if (z10 && !this.modules.isRootModule(module)) {
                    throw new FilerException("Cannot write to the given module.");
                }
                return new Tuple3<>(this.fileManager.getLocationForModule(location, str), module, charSequence2);
            }
            throw new FilerException("Module: " + str + " does not exist.");
        }
        throw new FilerException("Module specified but the location is neither a module-oriented location, nor a multi-module output location.");
    }
}
