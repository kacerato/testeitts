package org.openjdk.tools.javac.api;

import com.android.dex.DexFormat;
import java.io.IOException;
import java.nio.CharBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.file.BaseFileManager;
import org.openjdk.tools.javac.main.Arguments;
import org.openjdk.tools.javac.main.JavaCompiler;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.processing.AnnotationProcessingError;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.ClientCodeException;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.FatalError;
import org.openjdk.tools.javac.util.JavacMessages;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.PropagatedException;

public class JavacTaskImpl extends BasicJavacTask {
    private ListBuffer<String> addModules;
    private final Arguments args;
    private JavaCompiler compiler;
    private JavaFileManager fileManager;
    private ListBuffer<Env<AttrContext>> genList;
    private Locale locale;
    private Map<JavaFileObject, JCTree.JCCompilationUnit> notYetEntered;
    private boolean parsed;
    private Iterable<? extends Processor> processors;
    private final AtomicBoolean used;

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.CLASSDEF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MODULEDEF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PACKAGEDEF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public abstract class Filter {
        public Filter() {
        }

        public abstract void process(Env<AttrContext> env);

        public void run(Queue<Env<AttrContext>> queue, Iterable<? extends Element> iterable) {
            Object outermostClass;
            HashSet hashSet = new HashSet();
            Iterator<? extends Element> it = iterable.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
            ListBuffer listBuffer = new ListBuffer();
            while (queue.peek() != null) {
                Env<AttrContext> remove = queue.remove();
                if (remove.tree.hasTag(JCTree.Tag.MODULEDEF)) {
                    outermostClass = ((JCTree.JCModuleDecl) remove.tree).sym;
                } else if (remove.tree.hasTag(JCTree.Tag.PACKAGEDEF)) {
                    outermostClass = remove.toplevel.packge;
                } else {
                    Symbol.ClassSymbol classSymbol = remove.enclClass.sym;
                    outermostClass = classSymbol != null ? classSymbol.outermostClass() : null;
                }
                if (outermostClass == null || !hashSet.contains(outermostClass)) {
                    listBuffer = listBuffer.append(remove);
                } else {
                    process(remove);
                }
            }
            queue.addAll(listBuffer);
        }
    }

    public JavacTaskImpl(Context context) {
        super(context, true);
        this.used = new AtomicBoolean();
        this.addModules = new ListBuffer<>();
        this.parsed = false;
        this.args = Arguments.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
    }

    private <T> T handleExceptions(Callable<T> callable, T t10, T t11) {
        JavaCompiler javaCompiler;
        try {
            return callable.call();
        } catch (IllegalStateException e10) {
            throw e10;
        } catch (AnnotationProcessingError e11) {
            e = e11;
            throw new RuntimeException(e.getCause());
        } catch (ClientCodeException e12) {
            e = e12;
            throw new RuntimeException(e.getCause());
        } catch (FatalError e13) {
            Log instance = Log.instance(this.context);
            Options instance2 = Options.instance(this.context);
            instance.printRawLines(e13.getMessage());
            if (e13.getCause() != null && instance2.isSet("dev")) {
                e13.getCause().printStackTrace(instance.getWriter(Log.WriterKind.NOTICE));
            }
            return t10;
        } catch (Error e14) {
            e = e14;
            javaCompiler = this.compiler;
            if (javaCompiler != null || javaCompiler.errorCount() == 0 || Options.instance(this.context).isSet("dev")) {
                Log instance3 = Log.instance(this.context);
                instance3.printLines(Log.PrefixKind.JAVAC, "msg.bug", JavaCompiler.version());
                e.printStackTrace(instance3.getWriter(Log.WriterKind.NOTICE));
            }
            return t11;
        } catch (PropagatedException e15) {
            throw e15.getCause();
        } catch (Exception e16) {
            e = e16;
            javaCompiler = this.compiler;
            if (javaCompiler != null) {
            }
            Log instance32 = Log.instance(this.context);
            instance32.printLines(Log.PrefixKind.JAVAC, "msg.bug", JavaCompiler.version());
            e.printStackTrace(instance32.getWriter(Log.WriterKind.NOTICE));
            return t11;
        }
    }

    public void handleFlowResults(Queue<Env<AttrContext>> queue, ListBuffer<Element> listBuffer) {
        Symbol.PackageSymbol packageSymbol;
        for (Env<AttrContext> env : queue) {
            int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[env.tree.getTag().ordinal()];
            if (i10 == 1) {
                Symbol.ClassSymbol classSymbol = ((JCTree.JCClassDecl) env.tree).sym;
                if (classSymbol != null) {
                    listBuffer.append(classSymbol);
                }
            } else if (i10 == 2) {
                Symbol.ModuleSymbol moduleSymbol = ((JCTree.JCModuleDecl) env.tree).sym;
                if (moduleSymbol != null) {
                    listBuffer.append(moduleSymbol);
                }
            } else if (i10 == 3 && (packageSymbol = env.toplevel.packge) != null) {
                listBuffer.append(packageSymbol);
            }
        }
        this.genList.addAll(queue);
    }

    public Iterable lambda$analyze$1() throws Exception {
        return analyze(null);
    }

    public Main.Result lambda$doCall$0() throws Exception {
        prepareCompiler(false);
        if (this.compiler.errorCount() > 0) {
            return Main.Result.ERROR;
        }
        this.compiler.compile(this.args.getFileObjects(), this.args.getClassNames(), this.processors, this.addModules);
        return this.compiler.errorCount() > 0 ? Main.Result.ERROR : Main.Result.OK;
    }

    public Iterable lambda$generate$2() throws Exception {
        return generate(null);
    }

    public Iterable<? extends CompilationUnitTree> parseInternal() {
        Log log;
        try {
            prepareCompiler(true);
            List<JCTree.JCCompilationUnit> parseFiles = this.compiler.parseFiles(this.args.getFileObjects());
            Iterator<JCTree.JCCompilationUnit> it = parseFiles.iterator();
            while (it.hasNext()) {
                JCTree.JCCompilationUnit next = it.next();
                JavaFileObject sourceFile = next.getSourceFile();
                if (this.notYetEntered.containsKey(sourceFile)) {
                    this.notYetEntered.put(sourceFile, next);
                }
            }
            return parseFiles;
        } finally {
            this.parsed = true;
            JavaCompiler javaCompiler = this.compiler;
            if (javaCompiler != null && (log = javaCompiler.log) != null) {
                log.flush();
            }
        }
    }

    private void prepareCompiler(boolean z10) {
        if (this.used.getAndSet(true)) {
            if (this.compiler == null) {
                throw new PropagatedException(new IllegalStateException());
            }
            return;
        }
        this.args.validate();
        this.context.put((Class<Class>) Locale.class, (Class) this.locale);
        JavacMessages javacMessages = (JavacMessages) this.context.get(JavacMessages.messagesKey);
        if (javacMessages != null && !javacMessages.getCurrentLocale().equals(this.locale)) {
            javacMessages.setCurrentLocale(this.locale);
        }
        initPlugins(this.args.getPluginOpts());
        initDocLint(this.args.getDocLintOpts());
        JavaCompiler instance = JavaCompiler.instance(this.context);
        this.compiler = instance;
        instance.keepComments = true;
        instance.genEndPos = true;
        this.notYetEntered = new HashMap();
        if (z10) {
            this.compiler.initProcessAnnotations(this.processors, this.args.getFileObjects(), this.args.getClassNames());
            Iterator<JavaFileObject> it = this.args.getFileObjects().iterator();
            while (it.hasNext()) {
                this.notYetEntered.put(it.next(), null);
            }
            this.genList = new ListBuffer<>();
        }
    }

    @Override
    public void addModules(Iterable<String> iterable) {
        Objects.requireNonNull(iterable);
        if (this.used.get()) {
            throw new IllegalStateException();
        }
        for (String str : iterable) {
            Objects.requireNonNull(str);
            this.addModules.add(str);
        }
    }

    @Override
    public Iterable<? extends Element> analyze() {
        return (Iterable) handleExceptions(new Callable() {
            @Override
            public final Object call() {
                Iterable lambda$analyze$1;
                lambda$analyze$1 = JavacTaskImpl.this.lambda$analyze$1();
                return lambda$analyze$1;
            }
        }, List.nil(), List.nil());
    }

    public void cleanup() {
        JavaCompiler javaCompiler = this.compiler;
        if (javaCompiler != null) {
            javaCompiler.close();
        }
        JavaFileManager javaFileManager = this.fileManager;
        if ((javaFileManager instanceof BaseFileManager) && ((BaseFileManager) javaFileManager).autoClose) {
            try {
                javaFileManager.close();
            } catch (IOException unused) {
            }
        }
        this.compiler = null;
        this.context = null;
        this.notYetEntered = null;
    }

    public Main.Result doCall() {
        try {
            Main.Result result = (Main.Result) handleExceptions(new Callable() {
                @Override
                public final Object call() {
                    Main.Result lambda$doCall$0;
                    lambda$doCall$0 = JavacTaskImpl.this.lambda$doCall$0();
                    return lambda$doCall$0;
                }
            }, Main.Result.SYSERR, Main.Result.ABNORMAL);
            try {
                cleanup();
                return result;
            } catch (ClientCodeException e10) {
                throw new RuntimeException(e10.getCause());
            }
        } catch (Throwable th2) {
            try {
                cleanup();
                throw th2;
            } catch (ClientCodeException e11) {
                throw new RuntimeException(e11.getCause());
            }
        }
    }

    public void ensureEntered() {
        this.args.allowEmpty();
        enter(null);
    }

    public Iterable<? extends Element> enter() {
        return enter(null);
    }

    @Override
    public Iterable<? extends JavaFileObject> generate() {
        return (Iterable) handleExceptions(new Callable() {
            @Override
            public final Object call() {
                Iterable lambda$generate$2;
                lambda$generate$2 = JavacTaskImpl.this.lambda$generate$2();
                return lambda$generate$2;
            }
        }, List.nil(), List.nil());
    }

    @Override
    public Iterable<? extends CompilationUnitTree> parse() {
        return (Iterable) handleExceptions(new Callable() {
            @Override
            public final Object call() {
                Iterable parseInternal;
                parseInternal = JavacTaskImpl.this.parseInternal();
                return parseInternal;
            }
        }, List.nil(), List.nil());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type parseType(String str, TypeElement typeElement) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException();
        }
        JavaCompiler instance = JavaCompiler.instance(this.context);
        this.compiler = instance;
        JavaFileObject useSource = instance.log.useSource(null);
        ParserFactory instance2 = ParserFactory.instance(this.context);
        try {
            return Attr.instance(this.context).attribType(instance2.newParser(CharBuffer.wrap((str + DexFormat.MAGIC_SUFFIX).toCharArray(), 0, str.length()), false, false, false).parseType(), (Symbol.TypeSymbol) typeElement);
        } finally {
            this.compiler.log.useSource(useSource);
        }
    }

    public Iterable<? extends Tree> pathFor(CompilationUnitTree compilationUnitTree, Tree tree) {
        return TreeInfo.pathFor((JCTree) tree, (JCTree.JCCompilationUnit) compilationUnitTree).reverse();
    }

    @Override
    public void setLocale(Locale locale) {
        if (this.used.get()) {
            throw new IllegalStateException();
        }
        this.locale = locale;
    }

    @Override
    public void setProcessors(Iterable<? extends Processor> iterable) {
        Objects.requireNonNull(iterable);
        if (this.used.get()) {
            throw new IllegalStateException();
        }
        this.processors = iterable;
    }

    public <T> String toString(Iterable<T> iterable, String str) {
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        for (T t10 : iterable) {
            sb2.append(str2);
            sb2.append(t10.toString());
            str2 = str;
        }
        return sb2.toString();
    }

    public Iterable<? extends Element> analyze(Iterable<? extends Element> iterable) {
        enter(null);
        final ListBuffer<Element> listBuffer = new ListBuffer<>();
        try {
            if (iterable == null) {
                JavaCompiler javaCompiler = this.compiler;
                handleFlowResults(javaCompiler.flow(javaCompiler.attribute(javaCompiler.todo)), listBuffer);
            } else {
                new Filter() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super();
                    }

                    @Override
                    public void process(Env<AttrContext> env) {
                        JavacTaskImpl javacTaskImpl = JavacTaskImpl.this;
                        javacTaskImpl.handleFlowResults(javacTaskImpl.compiler.flow(JavacTaskImpl.this.compiler.attribute(env)), listBuffer);
                    }
                }.run(this.compiler.todo, iterable);
            }
            this.compiler.log.flush();
            return listBuffer;
        } catch (Throwable th2) {
            this.compiler.log.flush();
            throw th2;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Boolean call() {
        return Boolean.valueOf(doCall().isOK());
    }

    public Iterable<? extends Element> enter(Iterable<? extends CompilationUnitTree> iterable) {
        Symbol.ModuleSymbol moduleSymbol;
        Map<JavaFileObject, JCTree.JCCompilationUnit> map;
        if (iterable == null && (map = this.notYetEntered) != null && map.isEmpty()) {
            return List.nil();
        }
        boolean z10 = this.compiler != null;
        prepareCompiler(true);
        ListBuffer listBuffer = null;
        if (iterable == null) {
            if (this.notYetEntered.size() > 0) {
                if (!this.parsed) {
                    parseInternal();
                }
                Iterator<JavaFileObject> it = this.args.getFileObjects().iterator();
                while (it.hasNext()) {
                    JCTree.JCCompilationUnit remove = this.notYetEntered.remove(it.next());
                    if (remove != null) {
                        if (listBuffer == null) {
                            listBuffer = new ListBuffer();
                        }
                        listBuffer.append(remove);
                    }
                }
                this.notYetEntered.clear();
            }
        } else {
            for (CompilationUnitTree compilationUnitTree : iterable) {
                if (compilationUnitTree instanceof JCTree.JCCompilationUnit) {
                    if (listBuffer == null) {
                        listBuffer = new ListBuffer();
                    }
                    listBuffer.append((JCTree.JCCompilationUnit) compilationUnitTree);
                    this.notYetEntered.remove(compilationUnitTree.getSourceFile());
                } else {
                    throw new IllegalArgumentException(compilationUnitTree.toString());
                }
            }
        }
        if (listBuffer == null) {
            if (iterable == null && !z10) {
                this.compiler.initModules(List.nil());
            }
            return List.nil();
        }
        try {
            List<JCTree.JCCompilationUnit> enterTrees = this.compiler.enterTrees(this.compiler.initModules(listBuffer.toList()));
            if (this.notYetEntered.isEmpty()) {
                this.compiler.processAnnotations(enterTrees);
            }
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<JCTree.JCCompilationUnit> it2 = enterTrees.iterator();
            while (it2.hasNext()) {
                JCTree.JCCompilationUnit next = it2.next();
                if (next.sourcefile.isNameCompatible("package-info", JavaFileObject.Kind.SOURCE)) {
                    listBuffer2.append(next.packge);
                } else {
                    Iterator<JCTree> it3 = next.defs.iterator();
                    while (it3.hasNext()) {
                        JCTree next2 = it3.next();
                        if (next2.hasTag(JCTree.Tag.CLASSDEF)) {
                            Symbol.ClassSymbol classSymbol = ((JCTree.JCClassDecl) next2).sym;
                            if (classSymbol != null) {
                                listBuffer2.append(classSymbol);
                            }
                        } else if (next2.hasTag(JCTree.Tag.MODULEDEF) && (moduleSymbol = ((JCTree.JCModuleDecl) next2).sym) != null) {
                            listBuffer2.append(moduleSymbol);
                        }
                    }
                }
            }
            List list = listBuffer2.toList();
            this.compiler.log.flush();
            return list;
        } catch (Throwable th2) {
            this.compiler.log.flush();
            throw th2;
        }
    }

    public Iterable<? extends JavaFileObject> generate(Iterable<? extends Element> iterable) {
        final ListBuffer listBuffer = new ListBuffer();
        try {
            analyze(null);
            if (iterable == null) {
                JavaCompiler javaCompiler = this.compiler;
                javaCompiler.generate(javaCompiler.desugar(this.genList), listBuffer);
                this.genList.clear();
            } else {
                new Filter() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super();
                    }

                    @Override
                    public void process(Env<AttrContext> env) {
                        JavacTaskImpl.this.compiler.generate(JavacTaskImpl.this.compiler.desugar(ListBuffer.of(env)), listBuffer);
                    }
                }.run(this.genList, iterable);
            }
            if (this.genList.isEmpty()) {
                this.compiler.reportDeferredDiagnostics();
                cleanup();
            }
            JavaCompiler javaCompiler2 = this.compiler;
            if (javaCompiler2 != null) {
                javaCompiler2.log.flush();
            }
            return listBuffer;
        } catch (Throwable th2) {
            JavaCompiler javaCompiler3 = this.compiler;
            if (javaCompiler3 != null) {
                javaCompiler3.log.flush();
            }
            throw th2;
        }
    }
}
