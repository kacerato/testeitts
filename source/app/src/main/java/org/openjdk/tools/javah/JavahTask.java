package org.openjdk.tools.javah;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.constant.ConstantDescs;
import java.nio.file.NoSuchFileException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.ResourceBundle;
import java.util.Set;
import org.openjdk.javax.annotation.processing.AbstractProcessor;
import org.openjdk.javax.annotation.processing.Messager;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.annotation.processing.RoundEnvironment;
import org.openjdk.javax.annotation.processing.SupportedAnnotationTypes;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVisitor;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.javax.lang.model.util.SimpleTypeVisitor9;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.javax.tools.ToolProvider;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.main.CommandLine;
import org.openjdk.tools.javah.NativeHeaderTool;
import org.openjdk.tools.javah.Util;

public class JavahTask implements NativeHeaderTool.NativeHeaderTask {
    private static final String progname = "javah";
    static final Option[] recognizedOptions;
    private static ResourceBundle versionRB = null;
    private static final String versionRBName = "org.openjdk.tools.javah.resources.version";
    String bootcp;
    Map<Locale, ResourceBundle> bundles;
    List<String> classes;
    DiagnosticListener<? super JavaFileObject> diagnosticListener;
    boolean doubleAlign;
    JavaFileManager fileManager;
    boolean force;
    boolean fullVersion;
    boolean help;
    Set<String> javac_extras;
    boolean jni;
    boolean llni;
    PrintWriter log;
    boolean noArgs;
    File odir;
    File ofile;
    Locale task_locale;
    boolean trace;
    String usercp;
    boolean verbose;
    boolean version;

    public class BadArgs extends Exception {
        private static final long serialVersionUID = 1479361270874789045L;
        final Object[] args;
        final String key;
        boolean showUsage;

        public BadArgs(String str, Object... objArr) {
            super(JavahTask.this.getMessage(str, objArr));
            this.key = str;
            this.args = objArr;
        }

        public BadArgs showUsage(boolean z10) {
            this.showUsage = z10;
            return this;
        }
    }

    public static abstract class HiddenOption extends Option {
        public HiddenOption(boolean z10, String... strArr) {
            super(z10, strArr);
        }

        @Override
        public boolean isHidden() {
            return true;
        }
    }

    @SupportedAnnotationTypes({"*"})
    public class JavahProcessor extends AbstractProcessor {
        private TypeVisitor<Void, Types> checkMethodParametersVisitor = new SimpleTypeVisitor9<Void, Types>() {
            @Override
            public Void visitArray(ArrayType arrayType, Types types) {
                visit(arrayType.getComponentType(), types);
                return null;
            }

            @Override
            public Void visitDeclared(DeclaredType declaredType, Types types) {
                declaredType.asElement().getKind();
                Iterator<? extends TypeMirror> it = types.directSupertypes(declaredType).iterator();
                while (it.hasNext()) {
                    visit(it.next(), types);
                }
                return null;
            }
        };
        private Util.Exit exit;

        private Gen f103313g;
        private Messager messager;

        public JavahProcessor(Gen gen) {
            this.f103313g = gen;
        }

        private void checkMethodParameters(Set<TypeElement> set) {
            Types typeUtils = this.processingEnv.getTypeUtils();
            Iterator<TypeElement> it = set.iterator();
            while (it.hasNext()) {
                Iterator<ExecutableElement> it2 = ElementFilter.methodsIn(it.next().getEnclosedElements()).iterator();
                while (it2.hasNext()) {
                    Iterator<? extends VariableElement> it3 = it2.next().getParameters().iterator();
                    while (it3.hasNext()) {
                        this.checkMethodParametersVisitor.visit(it3.next().asType(), typeUtils);
                    }
                }
            }
        }

        private Set<TypeElement> getAllClasses(Set<? extends TypeElement> set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            getAllClasses0(set, linkedHashSet);
            return linkedHashSet;
        }

        private void getAllClasses0(Iterable<? extends TypeElement> iterable, Set<TypeElement> set) {
            for (TypeElement typeElement : iterable) {
                set.add(typeElement);
                getAllClasses0(ElementFilter.typesIn(typeElement.getEnclosedElements()), set);
            }
        }

        @Override
        public SourceVersion getSupportedSourceVersion() {
            return SourceVersion.latest();
        }

        @Override
        public void init(ProcessingEnvironment processingEnvironment) {
            super.init(processingEnvironment);
            this.messager = this.processingEnv.getMessager();
        }

        @Override
        public boolean process(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
            try {
                Set<TypeElement> allClasses = getAllClasses(ElementFilter.typesIn(roundEnvironment.getRootElements()));
                if (allClasses.size() <= 0) {
                    return true;
                }
                checkMethodParameters(allClasses);
                this.f103313g.setProcessingEnvironment(this.processingEnv);
                this.f103313g.setClasses(allClasses);
                this.f103313g.run();
                return true;
            } catch (IOException e10) {
                this.messager.printMessage(Diagnostic.Kind.ERROR, JavahTask.this.getMessage("io.exception", e10.getMessage()));
                return true;
            } catch (ClassNotFoundException e11) {
                this.messager.printMessage(Diagnostic.Kind.ERROR, JavahTask.this.getMessage("class.not.found", e11.getMessage()));
                return true;
            } catch (Symbol.CompletionFailure e12) {
                this.messager.printMessage(Diagnostic.Kind.ERROR, JavahTask.this.getMessage("class.not.found", e12.sym.getQualifiedName().toString()));
                return true;
            } catch (Util.Exit e13) {
                this.exit = e13;
                return true;
            }
        }
    }

    public static abstract class Option {
        final String[] aliases;
        final boolean hasArg;

        public Option(boolean z10, String... strArr) {
            this.hasArg = z10;
            this.aliases = strArr;
        }

        public boolean ignoreRest() {
            return false;
        }

        public boolean isHidden() {
            return false;
        }

        public boolean matches(String str) {
            for (String str2 : this.aliases) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        public abstract void process(JavahTask javahTask, String str, String str2) throws BadArgs;
    }

    static {
        boolean z10 = true;
        boolean z11 = false;
        recognizedOptions = new Option[]{new Option(z10, "-o") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.ofile = new File(str2);
            }
        }, new Option(z10, "-d") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.odir = new File(str2);
            }
        }, new HiddenOption(z10, "-td") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
            }
        }, new Option(z11, "-v", "-verbose") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.verbose = true;
            }
        }, new Option(z11, "-h", "-help", "--help", "-?") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.help = true;
            }
        }, new HiddenOption(z11, "-trace") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.trace = true;
            }
        }, new Option(z11, "-version") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.version = true;
            }
        }, new HiddenOption(z11, "-fullversion") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.fullVersion = true;
            }
        }, new Option(z11, "-jni") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.jni = true;
            }
        }, new Option(z11, "-force") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.force = true;
            }
        }, new HiddenOption(z11, "-Xnew") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
            }
        }, new HiddenOption(z11, "-llni", "-Xllni") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.llni = true;
            }
        }, new HiddenOption(z11, "-llnidouble") {
            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.llni = true;
                javahTask.doubleAlign = true;
            }
        }, new HiddenOption(z11, new String[0]) {
            @Override
            public boolean matches(String str) {
                return str.startsWith("-XD");
            }

            @Override
            public void process(JavahTask javahTask, String str, String str2) {
                javahTask.javac_extras.add(str);
            }
        }};
    }

    public JavahTask() {
        this.javac_extras = new LinkedHashSet();
    }

    private Diagnostic<JavaFileObject> createDiagnostic(final String str, final Object... objArr) {
        return new Diagnostic<JavaFileObject>() {
            @Override
            public String getCode() {
                return str;
            }

            @Override
            public long getColumnNumber() {
                return -1L;
            }

            @Override
            public long getEndPosition() {
                return -1L;
            }

            @Override
            public Diagnostic.Kind getKind() {
                return Diagnostic.Kind.ERROR;
            }

            @Override
            public long getLineNumber() {
                return -1L;
            }

            @Override
            public String getMessage(Locale locale) {
                return JavahTask.this.getMessage(locale, str, objArr);
            }

            @Override
            public long getPosition() {
                return -1L;
            }

            @Override
            public JavaFileObject getSource() {
                return null;
            }

            @Override
            public long getStartPosition() {
                return -1L;
            }
        };
    }

    private Iterable<String> expandAtArgs(Iterable<String> iterable) throws BadArgs {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return Arrays.asList(CommandLine.parse((String[]) arrayList.toArray(new String[arrayList.size()])));
        } catch (FileNotFoundException e10) {
            e = e10;
            throw new BadArgs("at.args.file.not.found", e.getLocalizedMessage());
        } catch (NoSuchFileException e11) {
            e = e11;
            throw new BadArgs("at.args.file.not.found", e.getLocalizedMessage());
        } catch (IOException e12) {
            throw new BadArgs("at.args.io.exception", e12.getLocalizedMessage());
        }
    }

    public static StandardJavaFileManager getDefaultFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener, PrintWriter printWriter) {
        return JavahFileManager.create(diagnosticListener, printWriter);
    }

    private DiagnosticListener<JavaFileObject> getDiagnosticListenerForStream(OutputStream outputStream) {
        return getDiagnosticListenerForWriter(getPrintWriterForStream(outputStream));
    }

    private DiagnosticListener<JavaFileObject> getDiagnosticListenerForWriter(Writer writer) {
        final PrintWriter printWriterForWriter = getPrintWriterForWriter(writer);
        return new DiagnosticListener() {
            @Override
            public final void report(Diagnostic diagnostic) {
                JavahTask.this.lambda$getDiagnosticListenerForWriter$0(printWriterForWriter, diagnostic);
            }
        };
    }

    public String getMessage(String str, Object... objArr) {
        return getMessage(this.task_locale, str, objArr);
    }

    public static PrintWriter getPrintWriterForStream(OutputStream outputStream) {
        return new PrintWriter(outputStream, true);
    }

    public static PrintWriter getPrintWriterForWriter(Writer writer) {
        return writer == null ? getPrintWriterForStream(null) : writer instanceof PrintWriter ? (PrintWriter) writer : new PrintWriter(writer, true);
    }

    private void handleOption(String str, Iterator<String> it) throws BadArgs {
        for (Option option : recognizedOptions) {
            if (option.matches(str)) {
                if (!option.hasArg) {
                    option.process(this, str, null);
                } else {
                    if (!it.hasNext()) {
                        throw new BadArgs("err.missing.arg", str).showUsage(true);
                    }
                    option.process(this, str, it.next());
                }
                if (option.ignoreRest()) {
                    while (it.hasNext()) {
                        it.next();
                    }
                    return;
                }
                return;
            }
        }
        if (!this.fileManager.handleOption(str, it)) {
            throw new BadArgs("err.unknown.option", str).showUsage(true);
        }
    }

    public void lambda$getDiagnosticListenerForWriter$0(PrintWriter printWriter, Diagnostic diagnostic) {
        if (diagnostic.getKind() == Diagnostic.Kind.ERROR) {
            printWriter.print(getMessage("err.prefix", new Object[0]));
            printWriter.print(" ");
        }
        printWriter.println(diagnostic.getMessage(null));
    }

    private void showHelp() {
        this.log.println(getMessage("main.usage", progname));
        for (Option option : recognizedOptions) {
            if (!option.isHidden()) {
                this.log.println(getMessage("main.opt." + option.aliases[0].substring(1), new Object[0]));
            }
        }
        String[] strArr = {"--module-path", "--system", "--class-path", "-classpath", "-cp", "-bootclasspath"};
        for (int i10 = 0; i10 < 6; i10++) {
            String str = strArr[i10];
            if (this.fileManager.isSupportedOption(str) != -1) {
                this.log.println(getMessage("main.opt." + str.replaceAll("^-+", "").replaceAll("-+", ConstantDescs.DEFAULT_NAME), new Object[0]));
            }
        }
        this.log.println(getMessage("main.usage.foot", new Object[0]));
    }

    private void showVersion(boolean z10) {
        this.log.println(version(z10));
    }

    private String version(boolean z10) {
        String str = z10 ? "javah.fullVersion" : "javah.version";
        String str2 = z10 ? "full" : "release";
        if (versionRB == null) {
            try {
                versionRB = ResourceBundle.getBundle(versionRBName);
            } catch (MissingResourceException unused) {
                return getMessage("version.resource.missing", System.getProperty("java.version"));
            }
        }
        try {
            return getMessage(str, progname, versionRB.getString(str2));
        } catch (MissingResourceException unused2) {
            return getMessage("version.unknown", System.getProperty("java.version"));
        }
    }

    public void handleOptions(String[] strArr) throws BadArgs {
        handleOptions(Arrays.asList(strArr), true);
    }

    public int run(String[] strArr) {
        int i10;
        try {
            try {
                handleOptions(strArr);
                i10 = !run() ? 1 : 0;
            } catch (InternalError e10) {
                this.diagnosticListener.report(createDiagnostic("err.internal.error", e10.getMessage()));
                return 1;
            } catch (BadArgs e11) {
                this.diagnosticListener.report(createDiagnostic(e11.key, e11.args));
                return 1;
            } catch (Util.Exit e12) {
                i10 = e12.exitValue;
            }
            return i10;
        } finally {
            this.log.flush();
        }
    }

    public void setDiagnosticListener(DiagnosticListener<? super JavaFileObject> diagnosticListener) {
        this.diagnosticListener = diagnosticListener;
    }

    @Override
    public void setLocale(Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        this.task_locale = locale;
    }

    public void setLog(PrintWriter printWriter) {
        this.log = printWriter;
    }

    public String getMessage(Locale locale, String str, Object... objArr) {
        if (this.bundles == null) {
            this.bundles = new HashMap();
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        ResourceBundle resourceBundle = this.bundles.get(locale);
        if (resourceBundle == null) {
            try {
                resourceBundle = ResourceBundle.getBundle("org.openjdk.tools.javah.resources.l10n", locale);
                this.bundles.put(locale, resourceBundle);
            } catch (MissingResourceException e10) {
                throw new InternalError("Cannot find javah resource bundle for locale " + ((Object) locale), e10);
            }
        }
        try {
            return MessageFormat.format(resourceBundle.getString(str), objArr);
        } catch (MissingResourceException unused) {
            return str;
        }
    }

    private void handleOptions(Iterable<String> iterable, boolean z10) throws BadArgs {
        PrintWriter printWriter = this.log;
        if (printWriter == null) {
            this.log = getPrintWriterForStream(System.out);
            if (this.diagnosticListener == null) {
                this.diagnosticListener = getDiagnosticListenerForStream(System.err);
            }
        } else if (this.diagnosticListener == null) {
            this.diagnosticListener = getDiagnosticListenerForWriter(printWriter);
        }
        if (this.fileManager == null) {
            this.fileManager = getDefaultFileManager(this.diagnosticListener, this.log);
        }
        Iterator<String> it = expandAtArgs(iterable).iterator();
        this.noArgs = !it.hasNext();
        while (it.hasNext()) {
            String next = it.next();
            if (next.startsWith("-")) {
                handleOption(next, it);
            } else if (z10) {
                if (this.classes == null) {
                    this.classes = new ArrayList();
                }
                this.classes.add(next);
                while (it.hasNext()) {
                    this.classes.add(it.next());
                }
            } else {
                throw new BadArgs("err.unknown.option", next).showUsage(true);
            }
        }
        List<String> list = this.classes;
        if ((list == null || list.size() == 0) && !this.noArgs && !this.help && !this.version && !this.fullVersion) {
            throw new BadArgs("err.no.classes.specified", new Object[0]);
        }
        if (this.jni && this.llni) {
            throw new BadArgs("jni.llni.mixed", new Object[0]);
        }
        if (this.odir != null && this.ofile != null) {
            throw new BadArgs("dir.file.mixed", new Object[0]);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Boolean call() {
        return Boolean.valueOf(run());
    }

    public void setDiagnosticListener(OutputStream outputStream) {
        setDiagnosticListener(getDiagnosticListenerForStream(outputStream));
    }

    public void setLog(OutputStream outputStream) {
        setLog(getPrintWriterForStream(outputStream));
    }

    public JavahTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Iterable<String> iterable, Iterable<String> iterable2) {
        this();
        this.log = getPrintWriterForWriter(writer);
        this.fileManager = javaFileManager;
        this.diagnosticListener = diagnosticListener;
        try {
            handleOptions(iterable, false);
            this.classes = new ArrayList();
            if (iterable2 != null) {
                for (String str : iterable2) {
                    Objects.requireNonNull(str);
                    this.classes.add(str);
                }
            }
        } catch (BadArgs e10) {
            throw new IllegalArgumentException(e10.getMessage());
        }
    }

    public boolean run() throws Util.Exit {
        Gen jni;
        if (!this.javac_extras.contains("-XDsuppress-tool-removal-message")) {
            this.log.println(getMessage("javah.misc.Deprecation", new Object[0]));
        }
        Util util = new Util(this.log, this.diagnosticListener);
        if (!this.noArgs && !this.help) {
            if (!this.version && !this.fullVersion) {
                util.verbose = this.verbose;
                if (this.llni) {
                    jni = new LLNI(this.doubleAlign, util);
                } else {
                    jni = new JNI(util);
                }
                File file = this.ofile;
                if (file != null) {
                    JavaFileManager javaFileManager = this.fileManager;
                    if (!(javaFileManager instanceof StandardJavaFileManager)) {
                        this.diagnosticListener.report(createDiagnostic("err.cant.use.option.for.fm", "-o"));
                        return false;
                    }
                    jni.setOutFile(((StandardJavaFileManager) javaFileManager).getJavaFileObjectsFromFiles(Collections.singleton(file)).iterator().next());
                } else {
                    File file2 = this.odir;
                    if (file2 != null) {
                        if (!(this.fileManager instanceof StandardJavaFileManager)) {
                            this.diagnosticListener.report(createDiagnostic("err.cant.use.option.for.fm", "-d"));
                            return false;
                        }
                        if (!file2.exists() && !this.odir.mkdirs()) {
                            util.error("cant.create.dir", this.odir.toString());
                        }
                        try {
                            ((StandardJavaFileManager) this.fileManager).setLocation(StandardLocation.CLASS_OUTPUT, Collections.singleton(this.odir));
                        } catch (IOException e10) {
                            e = e10;
                            String localizedMessage = e.getLocalizedMessage();
                            if (localizedMessage != null) {
                                e = localizedMessage;
                            }
                            this.diagnosticListener.report(createDiagnostic("err.ioerror", this.odir, e));
                            return false;
                        }
                    }
                    jni.setFileManager(this.fileManager);
                }
                jni.setForce(this.force);
                JavaFileManager javaFileManager2 = this.fileManager;
                if (javaFileManager2 instanceof JavahFileManager) {
                    ((JavahFileManager) javaFileManager2).setSymbolFileEnabled(false);
                }
                JavaCompiler systemJavaCompiler = ToolProvider.getSystemJavaCompiler();
                ArrayList arrayList = new ArrayList();
                arrayList.add("-proc:only");
                arrayList.addAll(this.javac_extras);
                try {
                    JavaCompiler.CompilationTask task = systemJavaCompiler.getTask(this.log, this.fileManager, this.diagnosticListener, arrayList, this.classes, null);
                    JavahProcessor javahProcessor = new JavahProcessor(jni);
                    task.setProcessors(Collections.singleton(javahProcessor));
                    boolean booleanValue = task.call().booleanValue();
                    if (javahProcessor.exit == null) {
                        return booleanValue;
                    }
                    throw new Util.Exit(javahProcessor.exit);
                } catch (IllegalArgumentException e11) {
                    util.error("bad.arg", e11.getMessage());
                    return false;
                }
            }
            showVersion(this.fullVersion);
            return true;
        }
        showHelp();
        return this.help;
    }
}
