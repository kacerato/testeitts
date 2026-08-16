package org.openjdk.tools.javac.main;

import androidx.room.FtsOptions;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.MissingResourceException;
import java.util.Queue;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.function.Function;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.ElementVisitor;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.tools.javac.api.MultiTaskListener;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.ModuleFinder;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.CompileStates;
import org.openjdk.tools.javac.comp.Enter;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.comp.Flow;
import org.openjdk.tools.javac.comp.LambdaToMethod;
import org.openjdk.tools.javac.comp.Lower;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.comp.Todo;
import org.openjdk.tools.javac.comp.TransTypes;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.jvm.ClassReader;
import org.openjdk.tools.javac.jvm.ClassWriter;
import org.openjdk.tools.javac.jvm.Gen;
import org.openjdk.tools.javac.jvm.JNIWriter;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.Pretty;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.tree.TreeTranslator;
import org.openjdk.tools.javac.util.Abort;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.FatalError;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.RichDiagnosticFormatter;

public class JavaCompiler {
    private static ResourceBundle versionRB = null;
    private static final String versionRBName = "org.openjdk.tools.javac.resources.version";
    protected Annotate annotate;
    protected boolean annotationProcessingOccurred;
    protected Attr attr;
    protected Check chk;
    public List<Closeable> closeables;
    protected CompilePolicy compilePolicy;
    protected CompileStates compileStates;
    protected final Name completionFailureName;
    protected Context context;
    Log.DeferredDiagnosticHandler deferredDiagnosticHandler;
    protected boolean devVerbose;
    JCDiagnostic.Factory diagFactory;
    protected JCDiagnostic.Factory diags;
    protected Enter enter;
    private boolean enterDone;
    protected JavaFileManager fileManager;
    protected ClassFinder finder;
    protected Flow flow;
    protected Gen gen;
    public boolean genEndPos;
    protected boolean implicitSourceFilesRead;
    protected ImplicitSourcePolicy implicitSourcePolicy;
    protected JNIWriter jniWriter;
    public boolean lineDebugInfo;
    public Log log;
    protected Lower lower;
    protected TreeMaker make;
    protected ModuleFinder moduleFinder;
    protected Modules modules;
    protected Names names;
    protected Options options;
    protected ParserFactory parserFactory;
    protected boolean processPcks;
    protected ClassReader reader;
    private List<JCTree.JCClassDecl> rootClasses;
    public CompileStates.CompileState shouldStopPolicyIfError;
    public CompileStates.CompileState shouldStopPolicyIfNoError;
    private final Symbol silentFail;
    protected Source source;
    public boolean sourceOutput;
    protected Symtab syms;
    protected MultiTaskListener taskListener;
    public Todo todo;
    protected TransTypes transTypes;
    protected Types types;
    public boolean verbose;
    public boolean verboseCompilePolicy;
    protected boolean werror;
    protected ClassWriter writer;
    public static final Context.Key<JavaCompiler> compilerKey = new Context.Key<>();
    private static final CompilePolicy DEFAULT_COMPILE_POLICY = CompilePolicy.BY_TODO;
    protected final Symbol.Completer sourceCompleter = new Symbol.Completer() {
        @Override
        public final void complete(Symbol symbol) {
            JavaCompiler.this.lambda$new$0(symbol);
        }
    };
    protected boolean explicitAnnotationProcessingRequested = false;
    protected Set<JavaFileObject> inputFiles = new HashSet();
    public boolean keepComments = false;
    private boolean hasBeenUsed = false;
    private long start_msec = 0;
    public long elapsed_msec = 0;
    boolean processAnnotations = false;
    private JavacProcessingEnvironment procEnvImpl = null;
    HashMap<Env<AttrContext>, Queue<Pair<Env<AttrContext>, JCTree.JCClassDecl>>> desugaredEnvs = new HashMap<>();

    public class C1ScanNested extends TreeScanner {
        Set<Env<AttrContext>> dependencies = new LinkedHashSet();
        protected boolean hasLambdas;
        final Env val$env;

        public C1ScanNested(Env env) {
            this.val$env = env;
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            Type supertype = JavaCompiler.this.types.supertype(jCClassDecl.sym.type);
            boolean z10 = false;
            while (!z10 && supertype.hasTag(TypeTag.CLASS)) {
                Env<AttrContext> env = JavaCompiler.this.enter.getEnv(supertype.tsym.outermostClass());
                if (env != null && this.val$env != env) {
                    if (this.dependencies.add(env)) {
                        boolean z11 = this.hasLambdas;
                        try {
                            scan(env.tree);
                        } finally {
                            this.hasLambdas = z11;
                        }
                    }
                    z10 = true;
                }
                supertype = JavaCompiler.this.types.supertype(supertype);
            }
            super.visitClassDef(jCClassDecl);
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            this.hasLambdas = true;
            super.visitLambda(jCLambda);
        }

        @Override
        public void visitReference(JCTree.JCMemberReference jCMemberReference) {
            this.hasLambdas = true;
            super.visitReference(jCMemberReference);
        }
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.CLASSDEF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.METHODDEF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[CompilePolicy.values().length];
            $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy = iArr2;
            try {
                iArr2[CompilePolicy.ATTR_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy[CompilePolicy.CHECK_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy[CompilePolicy.SIMPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy[CompilePolicy.BY_FILE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy[CompilePolicy.BY_TODO.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public enum CompilePolicy {
        ATTR_ONLY,
        CHECK_ONLY,
        SIMPLE,
        BY_FILE,
        BY_TODO;

        public static CompilePolicy decode(String str) {
            return str == null ? JavaCompiler.DEFAULT_COMPILE_POLICY : str.equals("attr") ? ATTR_ONLY : str.equals("check") ? CHECK_ONLY : str.equals(FtsOptions.TOKENIZER_SIMPLE) ? SIMPLE : str.equals("byfile") ? BY_FILE : str.equals("bytodo") ? BY_TODO : JavaCompiler.DEFAULT_COMPILE_POLICY;
        }
    }

    public enum ImplicitSourcePolicy {
        NONE,
        CLASS,
        UNSET;

        public static ImplicitSourcePolicy decode(String str) {
            return str == null ? UNSET : str.equals("none") ? NONE : str.equals("class") ? CLASS : UNSET;
        }
    }

    public JavaCompiler(Context context) {
        this.closeables = List.nil();
        this.context = context;
        context.put((Context.Key<Context.Key<JavaCompiler>>) compilerKey, (Context.Key<JavaCompiler>) this);
        if (context.get(JavaFileManager.class) == null) {
            JavacFileManager.preRegister(context);
        }
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.diagFactory = JCDiagnostic.Factory.instance(context);
        this.finder = ClassFinder.instance(context);
        this.reader = ClassReader.instance(context);
        this.make = TreeMaker.instance(context);
        this.writer = ClassWriter.instance(context);
        this.jniWriter = JNIWriter.instance(context);
        this.enter = Enter.instance(context);
        this.todo = Todo.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.parserFactory = ParserFactory.instance(context);
        this.compileStates = CompileStates.instance(context);
        try {
            this.syms = Symtab.instance(context);
        } catch (Symbol.CompletionFailure e10) {
            this.log.error("cant.access", e10.sym, e10.getDetailValue());
            if (e10 instanceof ClassFinder.BadClassFile) {
                throw new Abort();
            }
        }
        this.source = Source.instance(context);
        this.attr = Attr.instance(context);
        this.chk = Check.instance(context);
        this.gen = Gen.instance(context);
        this.flow = Flow.instance(context);
        this.transTypes = TransTypes.instance(context);
        this.lower = Lower.instance(context);
        this.annotate = Annotate.instance(context);
        this.types = Types.instance(context);
        this.taskListener = MultiTaskListener.instance(context);
        this.modules = Modules.instance(context);
        this.moduleFinder = ModuleFinder.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.finder.sourceCompleter = this.sourceCompleter;
        this.modules.findPackageInFile = new Modules.PackageNameFinder() {
            @Override
            public final Name findPackageNameOf(JavaFileObject javaFileObject) {
                Name findPackageInFile;
                findPackageInFile = JavaCompiler.this.findPackageInFile(javaFileObject);
                return findPackageInFile;
            }
        };
        this.moduleFinder.moduleNameFromSourceReader = new ModuleFinder.ModuleNameFromSourceReader() {
            @Override
            public final Name readModuleName(JavaFileObject javaFileObject) {
                Name readModuleName;
                readModuleName = JavaCompiler.this.readModuleName(javaFileObject);
                return readModuleName;
            }
        };
        Options instance = Options.instance(context);
        this.options = instance;
        this.verbose = instance.isSet(Option.VERBOSE);
        this.sourceOutput = this.options.isSet(Option.PRINTSOURCE);
        Options options = this.options;
        Option option = Option.G_CUSTOM;
        this.lineDebugInfo = options.isUnset(option) || this.options.isSet(option, "lines");
        this.genEndPos = this.options.isSet(Option.XJCOV) || context.get(DiagnosticListener.class) != null;
        this.devVerbose = this.options.isSet("dev");
        this.processPcks = this.options.isSet("process.packages");
        this.werror = this.options.isSet(Option.WERROR);
        this.verboseCompilePolicy = this.options.isSet("verboseCompilePolicy");
        if (this.options.isSet("should-stop.at") && CompileStates.CompileState.valueOf(this.options.get("should-stop.at")) == CompileStates.CompileState.ATTR) {
            this.compilePolicy = CompilePolicy.ATTR_ONLY;
        } else {
            this.compilePolicy = CompilePolicy.decode(this.options.get("compilePolicy"));
        }
        this.implicitSourcePolicy = ImplicitSourcePolicy.decode(this.options.get("-implicit"));
        this.completionFailureName = this.options.isSet("failcomplete") ? this.names.fromString(this.options.get("failcomplete")) : null;
        this.shouldStopPolicyIfError = this.options.isSet("should-stop.at") ? CompileStates.CompileState.valueOf(this.options.get("should-stop.at")) : this.options.isSet("should-stop.ifError") ? CompileStates.CompileState.valueOf(this.options.get("should-stop.ifError")) : CompileStates.CompileState.INIT;
        this.shouldStopPolicyIfNoError = this.options.isSet("should-stop.ifNoError") ? CompileStates.CompileState.valueOf(this.options.get("should-stop.ifNoError")) : CompileStates.CompileState.GENERATE;
        if (this.options.isUnset("diags.legacy")) {
            this.log.setDiagnosticFormatter(RichDiagnosticFormatter.instance(context));
        }
        PlatformDescription platformDescription = (PlatformDescription) context.get(PlatformDescription.class);
        if (platformDescription != null) {
            this.closeables = this.closeables.prepend(platformDescription);
        }
        this.silentFail = new Symbol(Kinds.Kind.ABSENT_TYP, 0L, this.names.empty, Type.noType, this.syms.rootPackage) {
            @Override
            public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
                return elementVisitor.visitUnknown(this, p10);
            }

            @Override
            public boolean exists() {
                return false;
            }
        };
    }

    private void desugarByFile(Iterable<Env<AttrContext>> iterable) {
        HashSet hashSet = new HashSet();
        for (Env<AttrContext> env : iterable) {
            if (!this.compileStates.isDone(env, CompileStates.CompileState.FLOW)) {
                if (hashSet.add(env.toplevel)) {
                    flow(attribute(this.todo.groupByFile(env)));
                }
                this.desugaredEnvs.put(env, desugar(ListBuffer.of(env)));
            }
        }
    }

    private static long elapsed(long j10) {
        return now() - j10;
    }

    public Name findPackageInFile(JavaFileObject javaFileObject) {
        return parseAndGetName(javaFileObject, new Function() {
            @Override
            public final Object apply(Object obj) {
                Name lambda$findPackageInFile$2;
                lambda$findPackageInFile$2 = JavaCompiler.lambda$findPackageInFile$2((JCTree.JCCompilationUnit) obj);
                return lambda$findPackageInFile$2;
            }
        });
    }

    public static String fullVersion() {
        return version("full");
    }

    public static JavaCompiler instance(Context context) {
        JavaCompiler javaCompiler = (JavaCompiler) context.get(compilerKey);
        return javaCompiler == null ? new JavaCompiler(context) : javaCompiler;
    }

    public static Name lambda$findPackageInFile$2(JCTree.JCCompilationUnit jCCompilationUnit) {
        if (jCCompilationUnit.getPackage() != null) {
            return TreeInfo.fullName(jCCompilationUnit.getPackage().getPackageName());
        }
        return null;
    }

    public static Name lambda$readModuleName$1(JCTree.JCCompilationUnit jCCompilationUnit) {
        JCTree.JCModuleDecl moduleDecl = jCCompilationUnit.getModuleDecl();
        if (moduleDecl != null) {
            return TreeInfo.fullName(moduleDecl.getName());
        }
        return null;
    }

    private static long now() {
        return System.currentTimeMillis();
    }

    private Name parseAndGetName(JavaFileObject javaFileObject, Function<JCTree.JCCompilationUnit, Name> function) {
        Log.DiscardDiagnosticHandler discardDiagnosticHandler = new Log.DiscardDiagnosticHandler(this.log);
        try {
            Name apply = function.apply(parse(javaFileObject, javaFileObject.getCharContent(false)));
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
            return apply;
        } catch (IOException unused) {
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
            return null;
        } catch (Throwable th2) {
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
            throw th2;
        }
    }

    public Name readModuleName(JavaFileObject javaFileObject) {
        return parseAndGetName(javaFileObject, new Function() {
            @Override
            public final Object apply(Object obj) {
                Name lambda$readModuleName$1;
                lambda$readModuleName$1 = JavaCompiler.lambda$readModuleName$1((JCTree.JCCompilationUnit) obj);
                return lambda$readModuleName$1;
            }
        });
    }

    public void lambda$new$0(Symbol.ClassSymbol classSymbol) throws Symbol.CompletionFailure {
        readSourceFile(null, classSymbol);
    }

    private boolean unrecoverableError() {
        Log.DeferredDiagnosticHandler deferredDiagnosticHandler = this.deferredDiagnosticHandler;
        if (deferredDiagnosticHandler == null) {
            return false;
        }
        for (JCDiagnostic jCDiagnostic : deferredDiagnosticHandler.getDiagnostics()) {
            if (jCDiagnostic.getKind() == Diagnostic.Kind.ERROR && !jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.RECOVERABLE)) {
                return true;
            }
        }
        return false;
    }

    public static String version() {
        return version("release");
    }

    public Queue<Env<AttrContext>> attribute(Queue<Env<AttrContext>> queue) {
        ListBuffer listBuffer = new ListBuffer();
        while (!queue.isEmpty()) {
            listBuffer.append(attribute(queue.remove()));
        }
        return stopIfError(CompileStates.CompileState.ATTR, listBuffer);
    }

    public void checkReusable() {
        throw new AssertionError((Object) "attempt to reuse JavaCompiler");
    }

    public void close() {
        this.rootClasses = null;
        this.finder = null;
        this.reader = null;
        this.make = null;
        this.writer = null;
        this.enter = null;
        Todo todo = this.todo;
        if (todo != null) {
            todo.clear();
        }
        this.todo = null;
        this.parserFactory = null;
        this.syms = null;
        this.source = null;
        this.attr = null;
        this.chk = null;
        this.gen = null;
        this.flow = null;
        this.transTypes = null;
        this.lower = null;
        this.annotate = null;
        this.types = null;
        this.log.flush();
        try {
            try {
                this.fileManager.flush();
                Names names = this.names;
                if (names != null) {
                    names.dispose();
                }
                this.names = null;
                Iterator<Closeable> it = this.closeables.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().close();
                    } catch (IOException e10) {
                        throw new FatalError(this.diagFactory.fragment("fatal.err.cant.close", new Object[0]), e10);
                    }
                }
                this.closeables = List.nil();
            } catch (IOException e11) {
                throw new Abort(e11);
            }
        } catch (Throwable th2) {
            Names names2 = this.names;
            if (names2 != null) {
                names2.dispose();
            }
            this.names = null;
            Iterator<Closeable> it2 = this.closeables.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().close();
                } catch (IOException e12) {
                    throw new FatalError(this.diagFactory.fragment("fatal.err.cant.close", new Object[0]), e12);
                }
            }
            this.closeables = List.nil();
            throw th2;
        }
    }

    public void compile(List<JavaFileObject> list) throws Throwable {
        compile(list, List.nil(), null, List.nil());
    }

    public Queue<Pair<Env<AttrContext>, JCTree.JCClassDecl>> desugar(Queue<Env<AttrContext>> queue) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Env<AttrContext>> it = queue.iterator();
        while (it.hasNext()) {
            desugar(it.next(), listBuffer);
        }
        return stopIfError(CompileStates.CompileState.FLOW, listBuffer);
    }

    public void enterDone() {
        this.enterDone = true;
        this.annotate.enterDone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<JCTree.JCCompilationUnit> enterTrees(List<JCTree.JCCompilationUnit> list) {
        if (!this.taskListener.isEmpty()) {
            Iterator<JCTree.JCCompilationUnit> it = list.iterator();
            while (it.hasNext()) {
                this.taskListener.started(new TaskEvent(TaskEvent.Kind.ENTER, it.next()));
            }
        }
        this.enter.main(list);
        enterDone();
        if (!this.taskListener.isEmpty()) {
            Iterator<JCTree.JCCompilationUnit> it2 = list.iterator();
            while (it2.hasNext()) {
                this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ENTER, it2.next()));
            }
        }
        if (this.sourceOutput) {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<JCTree.JCCompilationUnit> it3 = list.iterator();
            while (it3.hasNext()) {
                for (List list2 = it3.next().defs; list2.nonEmpty(); list2 = list2.tail) {
                    A a10 = list2.head;
                    if (a10 instanceof JCTree.JCClassDecl) {
                        listBuffer.append((JCTree.JCClassDecl) a10);
                    }
                }
            }
            this.rootClasses = listBuffer.toList();
        }
        Iterator<JCTree.JCCompilationUnit> it4 = list.iterator();
        while (it4.hasNext()) {
            this.inputFiles.add(it4.next().sourcefile);
        }
        return list;
    }

    public List<JCTree.JCCompilationUnit> enterTreesIfNeeded(List<JCTree.JCCompilationUnit> list) {
        return shouldStop(CompileStates.CompileState.ATTR) ? List.nil() : enterTrees(initModules(list));
    }

    public int errorCount() {
        if (this.werror) {
            Log log = this.log;
            if (log.nerrors == 0 && log.nwarnings > 0) {
                log.error("warnings.and.werror", new Object[0]);
            }
        }
        return this.log.nerrors;
    }

    public boolean explicitAnnotationProcessingRequested() {
        return this.explicitAnnotationProcessingRequested || explicitAnnotationProcessingRequested(this.options);
    }

    public Queue<Env<AttrContext>> flow(Queue<Env<AttrContext>> queue) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Env<AttrContext>> it = queue.iterator();
        while (it.hasNext()) {
            flow(it.next(), listBuffer);
        }
        return stopIfError(CompileStates.CompileState.FLOW, listBuffer);
    }

    public JavaFileObject genCode(Env<AttrContext> env, JCTree.JCClassDecl jCClassDecl) throws IOException {
        try {
            if (this.gen.genClass(env, jCClassDecl) && errorCount() == 0) {
                return this.writer.writeClass(jCClassDecl.sym);
            }
            return null;
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(jCClassDecl.pos(), e10);
            return null;
        } catch (ClassWriter.PoolOverflow unused) {
            this.log.error(jCClassDecl.pos(), "limit.pool", new Object[0]);
            return null;
        } catch (ClassWriter.StringOverflow e11) {
            this.log.error(jCClassDecl.pos(), "limit.string.overflow", e11.value.substring(0, 20));
            return null;
        }
    }

    public void generate(Queue<Pair<Env<AttrContext>, JCTree.JCClassDecl>> queue) {
        generate(queue, null);
    }

    public List<JCTree.JCCompilationUnit> initModules(List<JCTree.JCCompilationUnit> list) {
        this.modules.initModules(list);
        if (list.isEmpty()) {
            enterDone();
        }
        return list;
    }

    public void initProcessAnnotations(Iterable<? extends Processor> iterable, Collection<? extends JavaFileObject> collection, Collection<String> collection2) {
        if (this.options.isSet(Option.PROC, "none")) {
            this.processAnnotations = false;
            return;
        }
        if (this.procEnvImpl == null) {
            JavacProcessingEnvironment instance = JavacProcessingEnvironment.instance(this.context);
            this.procEnvImpl = instance;
            instance.setProcessors(iterable);
            boolean atLeastOneProcessor = this.procEnvImpl.atLeastOneProcessor();
            this.processAnnotations = atLeastOneProcessor;
            if (!atLeastOneProcessor) {
                this.procEnvImpl.close();
                return;
            }
            this.options.put("parameters", "parameters");
            this.reader.saveParameterNames = true;
            this.keepComments = true;
            this.genEndPos = true;
            if (!this.taskListener.isEmpty()) {
                this.taskListener.started(new TaskEvent(TaskEvent.Kind.ANNOTATION_PROCESSING));
            }
            this.deferredDiagnosticHandler = new Log.DeferredDiagnosticHandler(this.log);
            this.procEnvImpl.getFiler().setInitialState(collection, collection2);
        }
    }

    public boolean isEnterDone() {
        return this.enterDone;
    }

    public boolean keepComments() {
        return this.keepComments || this.sourceOutput;
    }

    public void newRound() {
        this.inputFiles.clear();
        this.todo.clear();
    }

    public JCTree.JCCompilationUnit parse(JavaFileObject javaFileObject, CharSequence charSequence) {
        long now = now();
        JCTree.JCCompilationUnit TopLevel = this.make.TopLevel(List.nil());
        if (charSequence != null) {
            if (this.verbose) {
                this.log.printVerbose("parsing.started", javaFileObject);
            }
            if (!this.taskListener.isEmpty()) {
                this.taskListener.started(new TaskEvent(TaskEvent.Kind.PARSE, javaFileObject));
                this.keepComments = true;
                this.genEndPos = true;
            }
            TopLevel = this.parserFactory.newParser(charSequence, keepComments(), this.genEndPos, this.lineDebugInfo, javaFileObject.isNameCompatible("module-info", JavaFileObject.Kind.SOURCE)).parseCompilationUnit();
            if (this.verbose) {
                this.log.printVerbose("parsing.done", Long.toString(elapsed(now)));
            }
        }
        TopLevel.sourcefile = javaFileObject;
        if (charSequence != null && !this.taskListener.isEmpty()) {
            this.taskListener.finished(new TaskEvent(TaskEvent.Kind.PARSE, TopLevel));
        }
        return TopLevel;
    }

    public List<JCTree.JCCompilationUnit> parseFiles(Iterable<JavaFileObject> iterable) {
        if (shouldStop(CompileStates.CompileState.PARSE)) {
            return List.nil();
        }
        ListBuffer listBuffer = new ListBuffer();
        HashSet hashSet = new HashSet();
        for (JavaFileObject javaFileObject : iterable) {
            if (!hashSet.contains(javaFileObject)) {
                hashSet.add(javaFileObject);
                listBuffer.append(parse(javaFileObject));
            }
        }
        return listBuffer.toList();
    }

    public void printCount(String str, int i10) {
        String str2;
        if (i10 != 0) {
            if (i10 == 1) {
                str2 = "count." + str;
            } else {
                str2 = "count." + str + ".plural";
            }
            Log log = this.log;
            Log.WriterKind writerKind = Log.WriterKind.ERROR;
            log.printLines(writerKind, str2, String.valueOf(i10));
            this.log.flush(writerKind);
        }
    }

    public void printNote(String str) {
        this.log.printRawLines(Log.WriterKind.NOTICE, str);
    }

    public JavaFileObject printSource(Env<AttrContext> env, JCTree.JCClassDecl jCClassDecl) throws IOException {
        JavaFileObject javaFileForOutput = this.fileManager.getJavaFileForOutput(StandardLocation.CLASS_OUTPUT, jCClassDecl.sym.flatname.toString(), JavaFileObject.Kind.SOURCE, null);
        if (this.inputFiles.contains(javaFileForOutput)) {
            this.log.error(jCClassDecl.pos(), "source.cant.overwrite.input.file", javaFileForOutput);
            return null;
        }
        BufferedWriter bufferedWriter = new BufferedWriter(javaFileForOutput.openWriter());
        try {
            new Pretty(bufferedWriter, true).printUnit(env.toplevel, jCClassDecl);
            if (this.verbose) {
                this.log.printVerbose("wrote.file", javaFileForOutput);
            }
            bufferedWriter.close();
            return javaFileForOutput;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th4) {
                    th2.addSuppressed(th4);
                }
                throw th3;
            }
        }
    }

    public void processAnnotations(List<JCTree.JCCompilationUnit> list) {
        processAnnotations(list, List.nil());
    }

    public CharSequence readSource(JavaFileObject javaFileObject) {
        try {
            this.inputFiles.add(javaFileObject);
            return javaFileObject.getCharContent(false);
        } catch (IOException e10) {
            this.log.error("error.reading.file", javaFileObject, JavacFileManager.getMessage(e10));
            return null;
        }
    }

    public JCTree.JCClassDecl removeMethodBodies(JCTree.JCClassDecl jCClassDecl) {
        final boolean z10 = (jCClassDecl.mods.flags & 512) != 0;
        return (JCTree.JCClassDecl) new TreeTranslator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void visitClassDef(JCTree.JCClassDecl jCClassDecl2) {
                ListBuffer listBuffer = new ListBuffer();
                for (List list = jCClassDecl2.defs; list.tail != null; list = list.tail) {
                    JCTree jCTree = (JCTree) list.head;
                    int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
                    if (i10 == 1) {
                        if (!z10) {
                            JCTree.JCClassDecl jCClassDecl3 = (JCTree.JCClassDecl) jCTree;
                            long j10 = jCClassDecl3.mods.flags;
                            if ((5 & j10) == 0) {
                                if ((j10 & 2) == 0) {
                                    if (jCClassDecl3.sym.packge().getQualifiedName() != JavaCompiler.this.names.java_lang) {
                                    }
                                }
                            }
                        }
                        listBuffer.append(jCTree);
                    } else if (i10 == 2) {
                        if (!z10) {
                            JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) jCTree;
                            long j11 = jCMethodDecl.mods.flags;
                            if ((5 & j11) == 0) {
                                Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
                                if (methodSymbol.name != JavaCompiler.this.names.init) {
                                    if ((j11 & 2) == 0) {
                                        if (methodSymbol.packge().getQualifiedName() != JavaCompiler.this.names.java_lang) {
                                        }
                                    }
                                }
                            }
                        }
                        listBuffer.append(jCTree);
                    } else if (i10 == 3) {
                        if (!z10) {
                            JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) jCTree;
                            long j12 = jCVariableDecl.mods.flags;
                            if ((5 & j12) == 0) {
                                if ((j12 & 2) == 0) {
                                    if (jCVariableDecl.sym.packge().getQualifiedName() != JavaCompiler.this.names.java_lang) {
                                    }
                                }
                            }
                        }
                        listBuffer.append(jCTree);
                    }
                }
                jCClassDecl2.defs = listBuffer.toList();
                super.visitClassDef(jCClassDecl2);
            }

            @Override
            public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
                jCMethodDecl.mods.flags &= -33;
                Iterator<JCTree.JCVariableDecl> it = jCMethodDecl.params.iterator();
                while (it.hasNext()) {
                    it.next().mods.flags &= -17;
                }
                jCMethodDecl.body = null;
                super.visitMethodDef(jCMethodDecl);
            }

            @Override
            public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
                JCTree.JCExpression jCExpression = jCVariableDecl.init;
                if (jCExpression != null && jCExpression.type.constValue() == null) {
                    jCVariableDecl.init = null;
                }
                super.visitVarDef(jCVariableDecl);
            }
        }.translate((TreeTranslator) jCClassDecl);
    }

    public void reportDeferredDiagnostics() {
        if (errorCount() == 0 && this.annotationProcessingOccurred && this.implicitSourceFilesRead && this.implicitSourcePolicy == ImplicitSourcePolicy.UNSET) {
            if (explicitAnnotationProcessingRequested()) {
                this.log.warning("proc.use.implicit", new Object[0]);
            } else {
                this.log.warning("proc.use.proc.or.implicit", new Object[0]);
            }
        }
        this.chk.reportDeferredDiagnostics();
        Log log = this.log;
        if (log.compressedOutput) {
            log.mandatoryNote(null, "compressed.diags", new Object[0]);
        }
    }

    public Symbol resolveBinaryNameOrIdent(String str) {
        Symbol.ModuleSymbol moduleSymbol;
        int indexOf = str.indexOf(47);
        if (indexOf == -1) {
            moduleSymbol = this.modules.getDefaultModule();
        } else if (this.source.allowModules()) {
            Symbol.ModuleSymbol findModule = this.moduleFinder.findModule(this.names.fromString(str.substring(0, indexOf)));
            str = str.substring(indexOf + 1);
            moduleSymbol = findModule;
        } else {
            this.log.error(CompilerProperties.Errors.InvalidModuleSpecifier(str));
            return this.silentFail;
        }
        return resolveBinaryNameOrIdent(moduleSymbol, str);
    }

    public Symbol resolveIdent(Symbol.ModuleSymbol moduleSymbol, String str) {
        if (str.equals("")) {
            return this.syms.errSymbol;
        }
        JCTree.JCExpression jCExpression = null;
        JavaFileObject useSource = this.log.useSource(null);
        try {
            for (String str2 : str.split("\\.", -1)) {
                if (!SourceVersion.isIdentifier(str2)) {
                    return this.syms.errSymbol;
                }
                jCExpression = jCExpression == null ? this.make.Ident(this.names.fromString(str2)) : this.make.Select(jCExpression, this.names.fromString(str2));
            }
            JCTree.JCCompilationUnit TopLevel = this.make.TopLevel(List.nil());
            TopLevel.modle = moduleSymbol;
            TopLevel.packge = moduleSymbol.unnamedPackage;
            return this.attr.attribIdent(jCExpression, TopLevel);
        } finally {
            this.log.useSource(useSource);
        }
    }

    public void setDeferredDiagnosticHandler(Log.DeferredDiagnosticHandler deferredDiagnosticHandler) {
        this.deferredDiagnosticHandler = deferredDiagnosticHandler;
    }

    public boolean shouldStop(CompileStates.CompileState compileState) {
        return compileState.isAfter((errorCount() > 0 || unrecoverableError()) ? this.shouldStopPolicyIfError : this.shouldStopPolicyIfNoError);
    }

    public final <T> Queue<T> stopIfError(CompileStates.CompileState compileState, Queue<T> queue) {
        return shouldStop(compileState) ? new ListBuffer() : queue;
    }

    public int warningCount() {
        return this.log.nwarnings;
    }

    private static String version(String str) {
        if (versionRB == null) {
            try {
                versionRB = ResourceBundle.getBundle(versionRBName);
            } catch (MissingResourceException unused) {
                return Log.getLocalizedString("version.not.available", new Object[0]);
            }
        }
        try {
            return versionRB.getString(str);
        } catch (MissingResourceException unused2) {
            return Log.getLocalizedString("version.not.available", new Object[0]);
        }
    }

    public void compile(Collection<JavaFileObject> collection, Collection<String> collection2, Iterable<? extends Processor> iterable, Collection<String> collection3) {
        JavacProcessingEnvironment javacProcessingEnvironment;
        if (!this.taskListener.isEmpty()) {
            this.taskListener.started(new TaskEvent(TaskEvent.Kind.COMPILATION));
        }
        if (iterable != null && iterable.iterator().hasNext()) {
            this.explicitAnnotationProcessingRequested = true;
        }
        if (this.hasBeenUsed) {
            checkReusable();
        }
        this.hasBeenUsed = true;
        Options options = this.options;
        StringBuilder sb2 = new StringBuilder();
        Option option = Option.XLINT_CUSTOM;
        sb2.append(option.primaryName);
        sb2.append("-");
        Lint.LintCategory lintCategory = Lint.LintCategory.OPTIONS;
        sb2.append(lintCategory.option);
        options.put(sb2.toString(), "true");
        this.options.remove(option.primaryName + lintCategory.option);
        this.start_msec = now();
        try {
            try {
                initProcessAnnotations(iterable, collection, collection2);
                for (String str : collection2) {
                    int indexOf = str.indexOf(47);
                    if (indexOf != -1) {
                        this.modules.addExtraAddModules(str.substring(0, indexOf));
                    }
                }
                Iterator<String> it = collection3.iterator();
                while (it.hasNext()) {
                    this.modules.addExtraAddModules(it.next());
                }
                CompileStates.CompileState compileState = CompileStates.CompileState.PARSE;
                processAnnotations(enterTrees(stopIfError(compileState, initModules(stopIfError(compileState, parseFiles(collection))))), collection2);
                if (this.taskListener.isEmpty() && this.implicitSourcePolicy == ImplicitSourcePolicy.NONE) {
                    this.todo.retainFiles(this.inputFiles);
                }
                int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy[this.compilePolicy.ordinal()];
                if (i10 == 1) {
                    attribute(this.todo);
                } else if (i10 == 2) {
                    flow(attribute(this.todo));
                } else if (i10 == 3) {
                    generate(desugar(flow(attribute(this.todo))));
                } else if (i10 == 4) {
                    Queue<Queue<Env<AttrContext>>> groupByFile = this.todo.groupByFile();
                    while (!groupByFile.isEmpty() && !shouldStop(CompileStates.CompileState.ATTR)) {
                        generate(desugar(flow(attribute(groupByFile.remove()))));
                    }
                } else if (i10 != 5) {
                    Assert.error("unknown compile policy");
                } else {
                    while (!this.todo.isEmpty()) {
                        generate(desugar(flow(attribute(this.todo.remove()))));
                    }
                }
                if (this.verbose) {
                    long elapsed = elapsed(this.start_msec);
                    this.elapsed_msec = elapsed;
                    this.log.printVerbose("total", Long.toString(elapsed));
                }
                reportDeferredDiagnostics();
                if (!this.log.hasDiagnosticListener()) {
                    printCount("error", errorCount());
                    printCount("warn", warningCount());
                }
                if (!this.taskListener.isEmpty()) {
                    this.taskListener.finished(new TaskEvent(TaskEvent.Kind.COMPILATION));
                }
                close();
                javacProcessingEnvironment = this.procEnvImpl;
                if (javacProcessingEnvironment == null) {
                    return;
                }
            } catch (Abort e10) {
                if (this.devVerbose) {
                    e10.printStackTrace(System.err);
                }
                if (this.verbose) {
                    long elapsed2 = elapsed(this.start_msec);
                    this.elapsed_msec = elapsed2;
                    this.log.printVerbose("total", Long.toString(elapsed2));
                }
                reportDeferredDiagnostics();
                if (!this.log.hasDiagnosticListener()) {
                    printCount("error", errorCount());
                    printCount("warn", warningCount());
                }
                if (!this.taskListener.isEmpty()) {
                    this.taskListener.finished(new TaskEvent(TaskEvent.Kind.COMPILATION));
                }
                close();
                javacProcessingEnvironment = this.procEnvImpl;
                if (javacProcessingEnvironment == null) {
                    return;
                }
            }
            javacProcessingEnvironment.close();
        } catch (Throwable th2) {
            if (this.verbose) {
                long elapsed3 = elapsed(this.start_msec);
                this.elapsed_msec = elapsed3;
                this.log.printVerbose("total", Long.toString(elapsed3));
            }
            reportDeferredDiagnostics();
            if (!this.log.hasDiagnosticListener()) {
                printCount("error", errorCount());
                printCount("warn", warningCount());
            }
            if (!this.taskListener.isEmpty()) {
                this.taskListener.finished(new TaskEvent(TaskEvent.Kind.COMPILATION));
            }
            close();
            JavacProcessingEnvironment javacProcessingEnvironment2 = this.procEnvImpl;
            if (javacProcessingEnvironment2 != null) {
                javacProcessingEnvironment2.close();
            }
            throw th2;
        }
    }

    public void generate(Queue<Pair<Env<AttrContext>, JCTree.JCClassDecl>> queue, Queue<JavaFileObject> queue2) {
        JavaFileObject genCode;
        if (shouldStop(CompileStates.CompileState.GENERATE)) {
            return;
        }
        for (Pair<Env<AttrContext>, JCTree.JCClassDecl> pair : queue) {
            Env<AttrContext> env = pair.fst;
            JCTree.JCClassDecl jCClassDecl = pair.snd;
            if (this.verboseCompilePolicy) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("[generate ");
                sb2.append(this.sourceOutput ? " source" : "code");
                sb2.append(" ");
                sb2.append((Object) jCClassDecl.sym);
                sb2.append("]");
                printNote(sb2.toString());
            }
            if (!this.taskListener.isEmpty()) {
                this.taskListener.started(new TaskEvent(TaskEvent.Kind.GENERATE, env.toplevel, jCClassDecl.sym));
            }
            Log log = this.log;
            JavaFileObject javaFileObject = env.enclClass.sym.sourcefile;
            if (javaFileObject == null) {
                javaFileObject = env.toplevel.sourcefile;
            }
            JavaFileObject useSource = log.useSource(javaFileObject);
            try {
                try {
                    if (this.sourceOutput) {
                        genCode = printSource(env, jCClassDecl);
                    } else {
                        if (this.fileManager.hasLocation(StandardLocation.NATIVE_HEADER_OUTPUT) && this.jniWriter.needsHeader(jCClassDecl.sym)) {
                            this.jniWriter.write(jCClassDecl.sym);
                        }
                        genCode = genCode(env, jCClassDecl);
                    }
                    if (queue2 != null && genCode != null) {
                        queue2.add(genCode);
                    }
                    this.log.useSource(useSource);
                    if (!this.taskListener.isEmpty()) {
                        this.taskListener.finished(new TaskEvent(TaskEvent.Kind.GENERATE, env.toplevel, jCClassDecl.sym));
                    }
                } catch (IOException e10) {
                    this.log.error(jCClassDecl.pos(), "class.cant.write", jCClassDecl.sym, e10.getMessage());
                    this.log.useSource(useSource);
                    return;
                }
            } catch (Throwable th2) {
                this.log.useSource(useSource);
                throw th2;
            }
        }
    }

    public void processAnnotations(List<JCTree.JCCompilationUnit> list, Collection<String> collection) {
        Kinds.Kind kind;
        Kinds.Kind kind2;
        if (shouldStop(CompileStates.CompileState.PROCESS) && unrecoverableError()) {
            this.deferredDiagnosticHandler.reportDeferredDiagnostics();
            this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
            return;
        }
        if (!this.processAnnotations) {
            if (this.options.isSet(Option.PROC, "only")) {
                this.log.warning("proc.proc-only.requested.no.procs", new Object[0]);
                this.todo.clear();
            }
            if (!collection.isEmpty()) {
                this.log.error("proc.no.explicit.annotation.processing.requested", collection);
            }
            Assert.checkNull(this.deferredDiagnosticHandler);
            return;
        }
        Assert.checkNonNull(this.deferredDiagnosticHandler);
        try {
            List<Symbol.ClassSymbol> nil = List.nil();
            List nil2 = List.nil();
            if (!collection.isEmpty()) {
                if (!explicitAnnotationProcessingRequested()) {
                    this.log.error("proc.no.explicit.annotation.processing.requested", collection);
                    this.deferredDiagnosticHandler.reportDeferredDiagnostics();
                    this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
                    return;
                }
                boolean z10 = false;
                for (String str : collection) {
                    Symbol resolveBinaryNameOrIdent = resolveBinaryNameOrIdent(str);
                    if (resolveBinaryNameOrIdent != null && (((kind = resolveBinaryNameOrIdent.kind) != (kind2 = Kinds.Kind.PCK) || this.processPcks) && kind != Kinds.Kind.ABSENT_TYP)) {
                        if (kind == kind2) {
                            try {
                                resolveBinaryNameOrIdent.complete();
                            } catch (Symbol.CompletionFailure unused) {
                                this.log.error(CompilerProperties.Errors.ProcCantFindClass(str));
                            }
                        }
                        if (resolveBinaryNameOrIdent.exists()) {
                            if (resolveBinaryNameOrIdent.kind == kind2) {
                                nil2 = nil2.prepend((Symbol.PackageSymbol) resolveBinaryNameOrIdent);
                            } else {
                                nil = nil.prepend((Symbol.ClassSymbol) resolveBinaryNameOrIdent);
                            }
                        } else {
                            Assert.check(resolveBinaryNameOrIdent.kind == kind2);
                            this.log.warning(CompilerProperties.Warnings.ProcPackageDoesNotExist(str));
                            nil2 = nil2.prepend((Symbol.PackageSymbol) resolveBinaryNameOrIdent);
                        }
                    } else if (resolveBinaryNameOrIdent != this.silentFail) {
                        this.log.error(CompilerProperties.Errors.ProcCantFindClass(str));
                    }
                    z10 = true;
                }
                if (z10) {
                    this.deferredDiagnosticHandler.reportDeferredDiagnostics();
                    this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
                    return;
                }
            }
            try {
                this.annotationProcessingOccurred = this.procEnvImpl.doProcessing(list, nil, nil2, this.deferredDiagnosticHandler);
                this.procEnvImpl.close();
            } catch (Throwable th2) {
                this.procEnvImpl.close();
                throw th2;
            }
        } catch (Symbol.CompletionFailure e10) {
            this.log.error("cant.access", e10.sym, e10.getDetailValue());
            Log.DeferredDiagnosticHandler deferredDiagnosticHandler = this.deferredDiagnosticHandler;
            if (deferredDiagnosticHandler != null) {
                deferredDiagnosticHandler.reportDeferredDiagnostics();
                this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
            }
        }
    }

    public void readSourceFile(JCTree.JCCompilationUnit jCCompilationUnit, Symbol.ClassSymbol classSymbol) throws Symbol.CompletionFailure {
        if (this.completionFailureName != classSymbol.fullname) {
            JavaFileObject javaFileObject = classSymbol.classfile;
            JavaFileObject useSource = this.log.useSource(javaFileObject);
            if (jCCompilationUnit == null) {
                try {
                    try {
                        jCCompilationUnit = parse(javaFileObject, javaFileObject.getCharContent(false));
                    } catch (IOException e10) {
                        this.log.error("error.reading.file", javaFileObject, JavacFileManager.getMessage(e10));
                        jCCompilationUnit = this.make.TopLevel(List.nil());
                    }
                } finally {
                    this.log.useSource(useSource);
                }
            }
            if (!this.taskListener.isEmpty()) {
                this.taskListener.started(new TaskEvent(TaskEvent.Kind.ENTER, jCCompilationUnit));
            }
            if (this.modules.enter(List.of(jCCompilationUnit), classSymbol)) {
                this.enter.complete(List.of(jCCompilationUnit), classSymbol);
                if (!this.taskListener.isEmpty()) {
                    this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ENTER, jCCompilationUnit));
                }
                if (this.enter.getEnv(classSymbol) == null) {
                    JavaFileObject javaFileObject2 = jCCompilationUnit.sourcefile;
                    JavaFileObject.Kind kind = JavaFileObject.Kind.SOURCE;
                    boolean isNameCompatible = javaFileObject2.isNameCompatible("package-info", kind);
                    if (jCCompilationUnit.sourcefile.isNameCompatible("module-info", kind)) {
                        if (this.enter.getEnv(jCCompilationUnit.modle) == null) {
                            throw new ClassFinder.BadClassFile(classSymbol, javaFileObject, this.diagFactory.fragment("file.does.not.contain.module", new Object[0]), this.diagFactory);
                        }
                    } else if (isNameCompatible) {
                        if (this.enter.getEnv(jCCompilationUnit.packge) == null) {
                            throw new ClassFinder.BadClassFile(classSymbol, javaFileObject, this.diagFactory.fragment("file.does.not.contain.package", classSymbol.location()), this.diagFactory);
                        }
                    } else {
                        throw new ClassFinder.BadClassFile(classSymbol, javaFileObject, this.diagFactory.fragment("file.doesnt.contain.class", classSymbol.getQualifiedName()), this.diagFactory);
                    }
                }
                this.implicitSourceFilesRead = true;
                return;
            }
            throw new Symbol.CompletionFailure(classSymbol, this.diags.fragment("cant.resolve.modules", new Object[0]));
        }
        throw new Symbol.CompletionFailure(classSymbol, "user-selected completion failure by class name");
    }

    public final <T> List<T> stopIfError(CompileStates.CompileState compileState, List<T> list) {
        return shouldStop(compileState) ? List.nil() : list;
    }

    public static boolean explicitAnnotationProcessingRequested(Options options) {
        return options.isSet(Option.PROCESSOR) || options.isSet(Option.PROCESSOR_PATH) || options.isSet(Option.PROCESSOR_MODULE_PATH) || options.isSet(Option.PROC, "only") || options.isSet(Option.XPRINT);
    }

    public Env<AttrContext> attribute(Env<AttrContext> env) {
        CompileStates compileStates = this.compileStates;
        CompileStates.CompileState compileState = CompileStates.CompileState.ATTR;
        if (compileStates.isDone(env, compileState)) {
            return env;
        }
        if (this.verboseCompilePolicy) {
            printNote("[attribute " + ((Object) env.enclClass.sym) + "]");
        }
        if (this.verbose) {
            this.log.printVerbose("checking.attribution", env.enclClass.sym);
        }
        if (!this.taskListener.isEmpty()) {
            this.taskListener.started(new TaskEvent(TaskEvent.Kind.ANALYZE, env.toplevel, env.enclClass.sym));
        }
        Log log = this.log;
        JavaFileObject javaFileObject = env.enclClass.sym.sourcefile;
        if (javaFileObject == null) {
            javaFileObject = env.toplevel.sourcefile;
        }
        JavaFileObject useSource = log.useSource(javaFileObject);
        try {
            this.attr.attrib(env);
            if (errorCount() > 0 && !shouldStop(compileState)) {
                this.attr.postAttr(env.tree);
            }
            this.compileStates.put(env, compileState);
            this.log.useSource(useSource);
            return env;
        } catch (Throwable th2) {
            this.log.useSource(useSource);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void desugar(Env<AttrContext> env, Queue<Pair<Env<AttrContext>, JCTree.JCClassDecl>> queue) {
        if (shouldStop(CompileStates.CompileState.TRANSTYPES)) {
            return;
        }
        if (this.implicitSourcePolicy != ImplicitSourcePolicy.NONE || this.inputFiles.contains(env.toplevel.sourcefile)) {
            Modules modules = this.modules;
            if (modules.multiModuleMode || env.toplevel.modle == modules.getDefaultModule()) {
                if (this.compileStates.isDone(env, CompileStates.CompileState.LOWER)) {
                    queue.addAll(this.desugaredEnvs.get(env));
                    return;
                }
                C1ScanNested c1ScanNested = new C1ScanNested(env);
                c1ScanNested.scan(env.tree);
                if (this.compilePolicy == CompilePolicy.BY_FILE) {
                    desugarByFile(c1ScanNested.dependencies);
                } else {
                    for (Env<AttrContext> env2 : c1ScanNested.dependencies) {
                        if (!this.compileStates.isDone(env2, CompileStates.CompileState.FLOW)) {
                            this.desugaredEnvs.put(env2, desugar(flow(attribute(env2))));
                        }
                    }
                }
                CompileStates.CompileState compileState = CompileStates.CompileState.TRANSTYPES;
                if (shouldStop(compileState)) {
                    return;
                }
                if (this.verboseCompilePolicy) {
                    printNote("[desugar " + ((Object) env.enclClass.sym) + "]");
                }
                Log log = this.log;
                JavaFileObject javaFileObject = env.enclClass.sym.sourcefile;
                if (javaFileObject == null) {
                    javaFileObject = env.toplevel.sourcefile;
                }
                JavaFileObject useSource = log.useSource(javaFileObject);
                try {
                    JCTree jCTree = env.tree;
                    this.make.at(0);
                    TreeMaker forToplevel = this.make.forToplevel(env.toplevel);
                    if (!env.tree.hasTag(JCTree.Tag.PACKAGEDEF) && !env.tree.hasTag(JCTree.Tag.MODULEDEF)) {
                        if (shouldStop(compileState)) {
                            this.log.useSource(useSource);
                            return;
                        }
                        env.tree = this.transTypes.translateTopLevelClass(env.tree, forToplevel);
                        this.compileStates.put(env, compileState);
                        if (this.source.allowLambda() && c1ScanNested.hasLambdas) {
                            CompileStates.CompileState compileState2 = CompileStates.CompileState.UNLAMBDA;
                            if (shouldStop(compileState2)) {
                                this.log.useSource(useSource);
                                return;
                            } else {
                                env.tree = LambdaToMethod.instance(this.context).translateTopLevelClass(env, env.tree, forToplevel);
                                this.compileStates.put(env, compileState2);
                            }
                        }
                        CompileStates.CompileState compileState3 = CompileStates.CompileState.LOWER;
                        if (shouldStop(compileState3)) {
                            this.log.useSource(useSource);
                            return;
                        }
                        if (this.sourceOutput) {
                            JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) env.tree;
                            if ((jCTree instanceof JCTree.JCClassDecl) && this.rootClasses.contains((JCTree.JCClassDecl) jCTree)) {
                                queue.add(new Pair<>(env, jCClassDecl));
                            }
                            this.log.useSource(useSource);
                            return;
                        }
                        this.compileStates.put(env, compileState3);
                        if (shouldStop(compileState3)) {
                            this.log.useSource(useSource);
                            return;
                        }
                        for (List translateTopLevelClass = this.lower.translateTopLevelClass(env, env.tree, forToplevel); translateTopLevelClass.nonEmpty(); translateTopLevelClass = translateTopLevelClass.tail) {
                            queue.add(new Pair<>(env, (JCTree.JCClassDecl) translateTopLevelClass.head));
                        }
                        this.log.useSource(useSource);
                        return;
                    }
                    if (!this.sourceOutput) {
                        if (shouldStop(CompileStates.CompileState.LOWER)) {
                            this.log.useSource(useSource);
                            return;
                        }
                        List<JCTree> translateTopLevelClass2 = this.lower.translateTopLevelClass(env, env.tree, forToplevel);
                        if (translateTopLevelClass2.head != null) {
                            Assert.check(translateTopLevelClass2.tail.isEmpty());
                            queue.add(new Pair<>(env, (JCTree.JCClassDecl) translateTopLevelClass2.head));
                        }
                    }
                    this.log.useSource(useSource);
                } catch (Throwable th2) {
                    this.log.useSource(useSource);
                    throw th2;
                }
            }
        }
    }

    public Queue<Env<AttrContext>> flow(Env<AttrContext> env) {
        ListBuffer listBuffer = new ListBuffer();
        flow(env, listBuffer);
        return stopIfError(CompileStates.CompileState.FLOW, listBuffer);
    }

    public void flow(Env<AttrContext> env, Queue<Env<AttrContext>> queue) {
        CompileStates compileStates = this.compileStates;
        CompileStates.CompileState compileState = CompileStates.CompileState.FLOW;
        if (compileStates.isDone(env, compileState)) {
            queue.add(env);
            return;
        }
        try {
            if (shouldStop(compileState)) {
                if (this.taskListener.isEmpty()) {
                    return;
                }
                this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANALYZE, env.toplevel, env.enclClass.sym));
                return;
            }
            if (this.verboseCompilePolicy) {
                printNote("[flow " + ((Object) env.enclClass.sym) + "]");
            }
            Log log = this.log;
            JavaFileObject javaFileObject = env.enclClass.sym.sourcefile;
            if (javaFileObject == null) {
                javaFileObject = env.toplevel.sourcefile;
            }
            JavaFileObject useSource = log.useSource(javaFileObject);
            try {
                this.make.at(0);
                this.flow.analyzeTree(env, this.make.forToplevel(env.toplevel));
                this.compileStates.put(env, compileState);
                if (shouldStop(compileState)) {
                    if (this.taskListener.isEmpty()) {
                        return;
                    }
                    this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANALYZE, env.toplevel, env.enclClass.sym));
                    return;
                }
                queue.add(env);
                if (this.taskListener.isEmpty()) {
                    return;
                }
                this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANALYZE, env.toplevel, env.enclClass.sym));
            } finally {
                this.log.useSource(useSource);
            }
        } catch (Throwable th2) {
            if (!this.taskListener.isEmpty()) {
                this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANALYZE, env.toplevel, env.enclClass.sym));
            }
            throw th2;
        }
    }

    public Symbol resolveBinaryNameOrIdent(Symbol.ModuleSymbol moduleSymbol, String str) {
        try {
            return this.finder.loadClass(moduleSymbol, this.names.fromString(str.replace("/", ".")));
        } catch (Symbol.CompletionFailure unused) {
            return resolveIdent(moduleSymbol, str);
        }
    }

    @Deprecated
    public JCTree.JCCompilationUnit parse(String str) {
        return parse(((JavacFileManager) this.fileManager).getJavaFileObjectsFromStrings(List.of(str)).iterator().next());
    }

    public JCTree.JCCompilationUnit parse(JavaFileObject javaFileObject) {
        JavaFileObject useSource = this.log.useSource(javaFileObject);
        try {
            JCTree.JCCompilationUnit parse = parse(javaFileObject, readSource(javaFileObject));
            EndPosTable endPosTable = parse.endPositions;
            if (endPosTable != null) {
                this.log.setEndPosTable(javaFileObject, endPosTable);
            }
            return parse;
        } finally {
            this.log.useSource(useSource);
        }
    }
}
