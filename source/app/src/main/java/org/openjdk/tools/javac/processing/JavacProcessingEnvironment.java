package org.openjdk.tools.javac.processing;

import java.io.Closeable;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.javax.annotation.processing.Messager;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.javax.annotation.processing.RoundEnvironment;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.util.ElementScanner9;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.api.MultiTaskListener;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.CompileStates;
import org.openjdk.tools.javac.comp.Enter;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.main.JavaCompiler;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.model.JavacElements;
import org.openjdk.tools.javac.model.JavacTypes;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.processing.ServiceProxy;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Abort;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.ClientCodeException;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.Iterators;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.JDK9Wrappers;
import org.openjdk.tools.javac.util.JavacMessages;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.MatchingUtils;
import org.openjdk.tools.javac.util.ModuleHelper;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class JavacProcessingEnvironment implements ProcessingEnvironment, Closeable {
    public static final Pattern noMatches = Pattern.compile("(\\P{all})+");
    private final boolean allowModules;
    private final Annotate annotate;
    private final Check chk;
    private final JavaCompiler compiler;
    private final Context context;
    JCDiagnostic.Factory diags;
    private DiscoveredProcessors discoveredProcs;
    private final JavacElements elementUtils;
    private final Enter enter;
    private final boolean fatalErrors;
    private final JavaFileManager fileManager;
    private final JavacFiler filer;
    private final Symbol.Completer initialCompleter;
    private final boolean lint;
    final Log log;
    private final JavacMessager messager;
    private JavacMessages messages;
    private final Modules modules;
    private final Names names;
    private final Options options;
    private final Set<String> platformAnnotations;
    private final boolean printProcessorInfo;
    private final boolean printRounds;
    private ClassLoader processorClassLoader;
    private SecurityException processorLoaderException;
    private final Map<String, String> processorOptions;
    private ServiceLoader<Processor> serviceLoader;
    private final boolean showResolveErrors;
    Source source;
    private final Symtab symtab;
    private MultiTaskListener taskListener;
    private final JavacTypes typeUtils;
    private final Types types;
    private final Set<String> unmatchedProcessorOptions;
    private final boolean verbose;
    private final boolean werror;
    private Set<Symbol.PackageSymbol> specifiedPackages = Collections.emptySet();
    private final TreeScanner treeCleaner = new AnonymousClass1();

    public class AnonymousClass1 extends TreeScanner {
        JCTree.JCCompilationUnit topLevel;

        public AnonymousClass1() {
        }

        public void lambda$visitTopLevel$0(JCTree.JCCompilationUnit jCCompilationUnit, Symbol symbol) throws Symbol.CompletionFailure {
            JavacProcessingEnvironment.this.modules.enter(List.of(jCCompilationUnit), jCCompilationUnit.modle.module_info);
        }

        @Override
        public void scan(JCTree jCTree) {
            super.scan(jCTree);
            if (jCTree != null) {
                jCTree.type = null;
            }
        }

        @Override
        public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
            jCAnnotation.attribute = null;
            super.visitAnnotation(jCAnnotation);
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            jCAssignOp.operator = null;
            super.visitAssignop(jCAssignOp);
        }

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            jCBinary.operator = null;
            super.visitBinary(jCBinary);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            super.visitClassDef(jCClassDecl);
            List nil = List.nil();
            List list = jCClassDecl.defs;
            while (list.nonEmpty() && !((JCTree) list.head).hasTag(JCTree.Tag.METHODDEF)) {
                nil = nil.prepend(list.head);
                list = list.tail;
            }
            if (list.nonEmpty() && (((JCTree.JCMethodDecl) list.head).mods.flags & 68719476736L) != 0) {
                List list2 = list.tail;
                while (nil.nonEmpty()) {
                    List prepend = list2.prepend(nil.head);
                    nil = nil.tail;
                    list2 = prepend;
                }
                jCClassDecl.defs = list2;
            }
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            if (classSymbol != null) {
                classSymbol.completer = new ImplicitCompleter(this.topLevel);
            }
            jCClassDecl.sym = null;
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            jCIdent.sym = null;
            super.visitIdent(jCIdent);
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            Symbol.MethodSymbol methodSymbol;
            if (TreeInfo.isConstructor(jCMethodDecl) && (methodSymbol = jCMethodDecl.sym) != null && methodSymbol.owner.isEnum() && jCMethodDecl.body.stats.nonEmpty() && TreeInfo.isSuperCall(jCMethodDecl.body.stats.head)) {
                JCTree.JCBlock jCBlock = jCMethodDecl.body;
                List<JCTree.JCStatement> list = jCBlock.stats;
                if (list.head.pos == jCBlock.pos) {
                    jCBlock.stats = list.tail;
                }
            }
            jCMethodDecl.sym = null;
            super.visitMethodDef(jCMethodDecl);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            jCNewClass.constructor = null;
            super.visitNewClass(jCNewClass);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            jCFieldAccess.sym = null;
            super.visitSelect(jCFieldAccess);
        }

        @Override
        public void visitTopLevel(final JCTree.JCCompilationUnit jCCompilationUnit) {
            Symbol.PackageSymbol packageSymbol = jCCompilationUnit.packge;
            if (packageSymbol != null) {
                Symbol.ClassSymbol classSymbol = packageSymbol.package_info;
                if (classSymbol != null) {
                    classSymbol.reset();
                }
                jCCompilationUnit.packge.reset();
            }
            if (jCCompilationUnit.sourcefile.isNameCompatible("module-info", JavaFileObject.Kind.SOURCE)) {
                jCCompilationUnit.modle.reset();
                jCCompilationUnit.modle.completer = new Symbol.Completer() {
                    @Override
                    public final void complete(Symbol symbol) {
                        JavacProcessingEnvironment.AnonymousClass1.this.lambda$visitTopLevel$0(jCCompilationUnit, symbol);
                    }
                };
                jCCompilationUnit.modle.module_info.reset();
                Symbol.ClassSymbol classSymbol2 = jCCompilationUnit.modle.module_info;
                classSymbol2.members_field = Scope.WriteableScope.create(classSymbol2);
            }
            jCCompilationUnit.packge = null;
            this.topLevel = jCCompilationUnit;
            try {
                super.visitTopLevel(jCCompilationUnit);
            } finally {
                this.topLevel = null;
            }
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            jCUnary.operator = null;
            super.visitUnary(jCUnary);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            jCVariableDecl.sym = null;
            super.visitVarDef(jCVariableDecl);
        }
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$javax$tools$Diagnostic$Kind;

        static {
            int[] iArr = new int[Diagnostic.Kind.values().length];
            $SwitchMap$javax$tools$Diagnostic$Kind = iArr;
            try {
                iArr[Diagnostic.Kind.WARNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$Diagnostic$Kind[Diagnostic.Kind.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class ComputeAnnotationSet extends ElementScanner9<Set<TypeElement>, Set<TypeElement>> {
        final Elements elements;

        public ComputeAnnotationSet(Elements elements) {
            this.elements = elements;
        }

        public void addAnnotations(Element element, Set<TypeElement> set) {
            Iterator<? extends AnnotationMirror> it = this.elements.getAllAnnotationMirrors(element).iterator();
            while (it.hasNext()) {
                set.add((TypeElement) it.next().getAnnotationType().asElement());
            }
        }

        @Override
        public Set<TypeElement> visitPackage(PackageElement packageElement, Set<TypeElement> set) {
            return set;
        }

        @Override
        public Set<TypeElement> scan(Element element, Set<TypeElement> set) {
            addAnnotations(element, set);
            return (Set) super.scan(element, (Element) set);
        }

        @Override
        public Set<TypeElement> visitExecutable(ExecutableElement executableElement, Set<TypeElement> set) {
            scan((Iterable<? extends Element>) executableElement.getTypeParameters(), (java.util.List<? extends TypeParameterElement>) set);
            return (Set) super.visitExecutable(executableElement, (ExecutableElement) set);
        }

        @Override
        public Set<TypeElement> visitType(TypeElement typeElement, Set<TypeElement> set) {
            scan((Iterable<? extends Element>) typeElement.getTypeParameters(), (java.util.List<? extends TypeParameterElement>) set);
            return (Set) super.visitType(typeElement, (TypeElement) set);
        }
    }

    public class DiscoveredProcessors implements Iterable<ProcessorState> {
        ArrayList<ProcessorState> procStateList = new ArrayList<>();
        Iterator<? extends Processor> processorIterator;

        public class ProcessorStateIterator implements Iterator<ProcessorState> {
            Iterator<ProcessorState> innerIter;
            boolean onProcInterator = false;
            DiscoveredProcessors psi;

            public ProcessorStateIterator(DiscoveredProcessors discoveredProcessors) {
                this.psi = discoveredProcessors;
                this.innerIter = discoveredProcessors.procStateList.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.onProcInterator ? this.psi.processorIterator.hasNext() : this.innerIter.hasNext() || this.psi.processorIterator.hasNext();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            public void runContributingProcs(RoundEnvironment roundEnvironment) {
                if (this.onProcInterator) {
                    return;
                }
                Set emptySet = Collections.emptySet();
                while (this.innerIter.hasNext()) {
                    ProcessorState next = this.innerIter.next();
                    if (next.contributed) {
                        JavacProcessingEnvironment.this.callProcessor(next.processor, emptySet, roundEnvironment);
                    }
                }
            }

            @Override
            public ProcessorState next() {
                if (!this.onProcInterator) {
                    if (this.innerIter.hasNext()) {
                        return this.innerIter.next();
                    }
                    this.onProcInterator = true;
                }
                if (this.psi.processorIterator.hasNext()) {
                    Processor next = this.psi.processorIterator.next();
                    JavacProcessingEnvironment javacProcessingEnvironment = JavacProcessingEnvironment.this;
                    ProcessorState processorState = new ProcessorState(next, javacProcessingEnvironment.log, javacProcessingEnvironment.source, javacProcessingEnvironment.allowModules, JavacProcessingEnvironment.this);
                    this.psi.procStateList.add(processorState);
                    return processorState;
                }
                throw new NoSuchElementException();
            }
        }

        public DiscoveredProcessors(Iterator<? extends Processor> it) {
            this.processorIterator = it;
        }

        public void close() {
            Iterator<? extends Processor> it = this.processorIterator;
            if (it == null || !(it instanceof ServiceIterator)) {
                return;
            }
            ((ServiceIterator) it).close();
        }

        @Override
        public ProcessorStateIterator iterator() {
            return new ProcessorStateIterator(this);
        }
    }

    public class ImplicitCompleter implements Symbol.Completer {
        private final JCTree.JCCompilationUnit topLevel;

        public ImplicitCompleter(JCTree.JCCompilationUnit jCCompilationUnit) {
            this.topLevel = jCCompilationUnit;
        }

        @Override
        public void complete(Symbol symbol) throws Symbol.CompletionFailure {
            JavacProcessingEnvironment.this.compiler.readSourceFile(this.topLevel, (Symbol.ClassSymbol) symbol);
        }
    }

    public static class NameProcessIterator implements Iterator<Processor> {
        Log log;
        Iterator<String> names;
        Processor nextProc = null;
        ClassLoader processorCL;

        public NameProcessIterator(String str, ClassLoader classLoader, Log log) {
            this.names = Arrays.asList(str.split(DocLint.SEPARATOR)).iterator();
            this.processorCL = classLoader;
            this.log = log;
        }

        private void ensureReadable(Class<?> cls) {
            try {
                Method method = Class.class.getMethod("getModule", null);
                Object invoke = method.invoke(getClass(), null);
                Object invoke2 = method.invoke(cls, null);
                Class<?> returnType = method.getReturnType();
                returnType.getMethod("addReads", returnType).invoke(invoke, invoke2);
            } catch (NoSuchMethodException unused) {
            } catch (Exception e10) {
                throw new InternalError(e10);
            }
        }

        private Processor getNextProcessor(String str) {
            try {
                try {
                    try {
                        Class<?> loadClass = this.processorCL.loadClass(str);
                        ensureReadable(loadClass);
                        return (Processor) loadClass.getConstructor(null).newInstance(null);
                    } catch (Throwable th2) {
                        throw new AnnotationProcessingError(th2);
                    }
                } catch (ClassCastException unused) {
                    this.log.error("proc.processor.wrong.type", str);
                    return null;
                } catch (ClassNotFoundException unused2) {
                    this.log.error("proc.processor.not.found", str);
                    return null;
                } catch (Exception unused3) {
                    this.log.error("proc.processor.cant.instantiate", str);
                    return null;
                }
            } catch (ClientCodeException e10) {
                throw e10;
            }
        }

        @Override
        public boolean hasNext() {
            Processor nextProcessor;
            if (this.nextProc != null) {
                return true;
            }
            if (!this.names.hasNext() || (nextProcessor = getNextProcessor(this.names.next())) == null) {
                return false;
            }
            this.nextProc = nextProcessor;
            return true;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Processor next() {
            if (hasNext()) {
                Processor processor = this.nextProc;
                this.nextProc = null;
                return processor;
            }
            throw new NoSuchElementException();
        }
    }

    public class NameServiceIterator extends ServiceIterator {
        private Map<String, Processor> namedProcessorsMap;
        private Processor nextProc;
        private Iterator<String> processorNames;

        public NameServiceIterator(ServiceLoader<Processor> serviceLoader, Log log, String str) {
            super(serviceLoader, log);
            this.namedProcessorsMap = new HashMap();
            this.processorNames = null;
            this.nextProc = null;
            this.processorNames = Arrays.asList(str.split(DocLint.SEPARATOR)).iterator();
        }

        @Override
        public boolean internalHasNext() {
            if (this.nextProc != null) {
                return true;
            }
            if (!this.processorNames.hasNext()) {
                this.namedProcessorsMap = null;
                return false;
            }
            String next = this.processorNames.next();
            Processor processor = this.namedProcessorsMap.get(next);
            if (processor != null) {
                this.namedProcessorsMap.remove(next);
                this.nextProc = processor;
                return true;
            }
            while (this.iterator.hasNext()) {
                Processor next2 = this.iterator.next();
                String name = next2.getClass().getName();
                if (name.equals(next)) {
                    this.nextProc = next2;
                    return true;
                }
                this.namedProcessorsMap.put(name, next2);
            }
            this.log.error(CompilerProperties.Errors.ProcProcessorNotFound(next));
            return false;
        }

        @Override
        public Processor internalNext() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Processor processor = this.nextProc;
            this.nextProc = null;
            return processor;
        }
    }

    public static class ProcessorState {
        public boolean contributed = false;
        public Processor processor;
        private ArrayList<Pattern> supportedAnnotationPatterns;
        private ArrayList<String> supportedOptionNames;

        public ProcessorState(Processor processor, Log log, Source source, boolean z10, ProcessingEnvironment processingEnvironment) {
            this.processor = processor;
            try {
                processor.init(processingEnvironment);
                checkSourceVersionCompatibility(source, log);
                this.supportedAnnotationPatterns = new ArrayList<>();
                Iterator<String> it = this.processor.getSupportedAnnotationTypes().iterator();
                while (it.hasNext()) {
                    this.supportedAnnotationPatterns.add(JavacProcessingEnvironment.importStringToPattern(z10, it.next(), this.processor, log));
                }
                this.supportedOptionNames = new ArrayList<>();
                for (String str : this.processor.getSupportedOptions()) {
                    if (checkOptionName(str, log)) {
                        this.supportedOptionNames.add(str);
                    }
                }
            } catch (ClientCodeException e10) {
                throw e10;
            } catch (Throwable th2) {
                throw new AnnotationProcessingError(th2);
            }
        }

        private boolean checkOptionName(String str, Log log) {
            boolean isValidOptionName = JavacProcessingEnvironment.isValidOptionName(str);
            if (!isValidOptionName) {
                log.error("proc.processor.bad.option.name", str, this.processor.getClass().getName());
            }
            return isValidOptionName;
        }

        private void checkSourceVersionCompatibility(Source source, Log log) {
            SourceVersion supportedSourceVersion = this.processor.getSupportedSourceVersion();
            if (supportedSourceVersion.compareTo(Source.toSourceVersion(source)) < 0) {
                log.warning("proc.processor.incompatible.source.version", supportedSourceVersion, this.processor.getClass().getName(), source.name);
            }
        }

        public boolean annotationSupported(String str) {
            Iterator<Pattern> it = this.supportedAnnotationPatterns.iterator();
            while (it.hasNext()) {
                if (it.next().matcher(str).matches()) {
                    return true;
                }
            }
            return false;
        }

        public void removeSupportedOptions(Set<String> set) {
            set.removeAll(this.supportedOptionNames);
        }
    }

    public class ServiceIterator implements Iterator<Processor> {
        Iterator<Processor> iterator;
        ServiceLoader<Processor> loader;
        Log log;

        public ServiceIterator(ClassLoader classLoader, Log log) {
            this.log = log;
            try {
                try {
                    ServiceLoader<Processor> load = ServiceLoader.load(Processor.class, classLoader);
                    this.loader = load;
                    this.iterator = load.iterator();
                } catch (Exception unused) {
                    this.iterator = JavacProcessingEnvironment.this.handleServiceLoaderUnavailability("proc.no.service", null);
                }
            } catch (Throwable th2) {
                log.error("proc.service.problem", new Object[0]);
                throw new Abort(th2);
            }
        }

        public void close() {
            ServiceLoader<Processor> serviceLoader = this.loader;
            if (serviceLoader != null) {
                try {
                    serviceLoader.reload();
                } catch (Exception unused) {
                }
            }
        }

        @Override
        public boolean hasNext() {
            try {
                return internalHasNext();
            } catch (ServiceConfigurationError e10) {
                this.log.error("proc.bad.config.file", e10.getLocalizedMessage());
                throw new Abort(e10);
            } catch (Throwable th2) {
                throw new Abort(th2);
            }
        }

        public boolean internalHasNext() {
            return this.iterator.hasNext();
        }

        public Processor internalNext() {
            return this.iterator.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Processor next() {
            try {
                return internalNext();
            } catch (ServiceConfigurationError e10) {
                this.log.error("proc.bad.config.file", e10.getLocalizedMessage());
                throw new Abort(e10);
            } catch (Throwable th2) {
                throw new Abort(th2);
            }
        }

        public ServiceIterator(ServiceLoader<Processor> serviceLoader, Log log) {
            this.log = log;
            this.loader = serviceLoader;
            this.iterator = serviceLoader.iterator();
        }
    }

    public JavacProcessingEnvironment(Context context) {
        this.context = context;
        context.put((Class<Class>) JavacProcessingEnvironment.class, (Class) this);
        this.log = Log.instance(context);
        this.source = Source.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        Options instance = Options.instance(context);
        this.options = instance;
        this.printProcessorInfo = instance.isSet(Option.XPRINTPROCESSORINFO);
        this.printRounds = instance.isSet(Option.XPRINTROUNDS);
        this.verbose = instance.isSet(Option.VERBOSE);
        this.lint = Lint.instance(context).isEnabled(Lint.LintCategory.PROCESSING);
        JavaCompiler instance2 = JavaCompiler.instance(context);
        this.compiler = instance2;
        if (instance.isSet(Option.PROC, "only") || instance.isSet(Option.XPRINT)) {
            instance2.shouldStopPolicyIfNoError = CompileStates.CompileState.PROCESS;
        }
        this.fatalErrors = instance.isSet("fatalEnterError");
        this.showResolveErrors = instance.isSet("showResolveErrors");
        this.werror = instance.isSet(Option.WERROR);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.platformAnnotations = initPlatformAnnotations();
        this.filer = new JavacFiler(context);
        this.messager = new JavacMessager(context, this);
        this.elementUtils = JavacElements.instance(context);
        this.typeUtils = JavacTypes.instance(context);
        this.modules = Modules.instance(context);
        this.types = Types.instance(context);
        this.annotate = Annotate.instance(context);
        this.processorOptions = initProcessorOptions();
        this.unmatchedProcessorOptions = initUnmatchedProcessorOptions();
        this.messages = JavacMessages.instance(context);
        this.taskListener = MultiTaskListener.instance(context);
        this.symtab = Symtab.instance(context);
        this.names = Names.instance(context);
        this.enter = Enter.instance(context);
        this.initialCompleter = ClassFinder.instance(context).getCompleter();
        this.chk = Check.instance(context);
        initProcessorLoader();
        this.allowModules = this.source.allowModules();
    }

    public boolean callProcessor(Processor processor, Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
        try {
            return processor.process(set, roundEnvironment);
        } catch (ClassFinder.BadClassFile e10) {
            this.log.error("proc.cant.access.1", e10.sym, e10.getDetailValue());
            return false;
        } catch (Symbol.CompletionFailure e11) {
            StringWriter stringWriter = new StringWriter();
            e11.printStackTrace(new PrintWriter(stringWriter));
            this.log.error("proc.cant.access", e11.sym, e11.getDetailValue(), stringWriter.toString());
            return false;
        } catch (ClientCodeException e12) {
            throw e12;
        } catch (Throwable th2) {
            throw new AnnotationProcessingError(th2);
        }
    }

    public void discoverAndRunProcs(Set<TypeElement> set, List<Symbol.ClassSymbol> list, List<Symbol.PackageSymbol> list2, List<Symbol.ModuleSymbol> list3) {
        HashMap hashMap = new HashMap(set.size());
        Iterator<TypeElement> it = set.iterator();
        while (true) {
            String str = "";
            if (!it.hasNext()) {
                break;
            }
            TypeElement next = it.next();
            ModuleElement moduleOf = this.elementUtils.getModuleOf(next);
            if (this.allowModules && moduleOf != null) {
                str = ((Object) moduleOf.getQualifiedName()) + "/";
            }
            hashMap.put(str + next.getQualifiedName().toString(), next);
        }
        if (hashMap.size() == 0) {
            hashMap.put("", null);
        }
        DiscoveredProcessors.ProcessorStateIterator it2 = this.discoveredProcs.iterator();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(list);
        linkedHashSet.addAll(list2);
        linkedHashSet.addAll(list3);
        JavacRoundEnvironment javacRoundEnvironment = new JavacRoundEnvironment(false, false, Collections.unmodifiableSet(linkedHashSet), this);
        while (hashMap.size() > 0 && it2.hasNext()) {
            ProcessorState next2 = it2.next();
            HashSet hashSet = new HashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            Iterator it3 = hashMap.entrySet().iterator();
            while (it3.hasNext()) {
                Map.Entry entry = (Map.Entry) it3.next();
                String str2 = (String) entry.getKey();
                if (next2.annotationSupported(str2)) {
                    hashSet.add(str2);
                    TypeElement typeElement = (TypeElement) entry.getValue();
                    if (typeElement != null) {
                        linkedHashSet2.add(typeElement);
                    }
                }
            }
            if (hashSet.size() > 0 || next2.contributed) {
                boolean callProcessor = callProcessor(next2.processor, linkedHashSet2, javacRoundEnvironment);
                next2.contributed = true;
                next2.removeSupportedOptions(this.unmatchedProcessorOptions);
                if (this.printProcessorInfo || this.verbose) {
                    this.log.printLines("x.print.processor.info", next2.processor.getClass().getName(), hashSet.toString(), Boolean.valueOf(callProcessor));
                }
                if (callProcessor) {
                    hashMap.o().removeAll(hashSet);
                }
            }
        }
        hashMap.remove("");
        if (this.lint && hashMap.size() > 0) {
            hashMap.o().removeAll(this.platformAnnotations);
            if (hashMap.size() > 0) {
                this.log.warning("proc.annotations.without.processors", hashMap.o());
            }
        }
        it2.runContributingProcs(javacRoundEnvironment);
    }

    public List<Symbol.ModuleSymbol> getModuleInfoFiles(List<? extends JCTree.JCCompilationUnit> list) {
        List nil = List.nil();
        Iterator<? extends JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCCompilationUnit next = it.next();
            if (isModuleInfo(next.sourcefile, JavaFileObject.Kind.SOURCE) && next.defs.nonEmpty() && next.defs.head.hasTag(JCTree.Tag.MODULEDEF)) {
                nil = nil.prepend(next.modle);
            }
        }
        return nil.reverse();
    }

    public List<Symbol.PackageSymbol> getPackageInfoFiles(List<? extends JCTree.JCCompilationUnit> list) {
        List nil = List.nil();
        Iterator<? extends JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCCompilationUnit next = it.next();
            if (isPkgInfo(next.sourcefile, JavaFileObject.Kind.SOURCE)) {
                nil = nil.prepend(next.packge);
            }
        }
        return nil.reverse();
    }

    public List<Symbol.PackageSymbol> getPackageInfoFilesFromClasses(List<? extends Symbol.ClassSymbol> list) {
        List nil = List.nil();
        Iterator<? extends Symbol.ClassSymbol> it = list.iterator();
        while (it.hasNext()) {
            Symbol.ClassSymbol next = it.next();
            if (isPkgInfo(next)) {
                nil = nil.prepend((Symbol.PackageSymbol) next.owner);
            }
        }
        return nil.reverse();
    }

    public List<Symbol.ClassSymbol> getTopLevelClasses(List<? extends JCTree.JCCompilationUnit> list) {
        List nil = List.nil();
        Iterator<? extends JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            Iterator<JCTree> it2 = it.next().defs.iterator();
            while (it2.hasNext()) {
                JCTree next = it2.next();
                if (next.hasTag(JCTree.Tag.CLASSDEF)) {
                    Symbol.ClassSymbol classSymbol = ((JCTree.JCClassDecl) next).sym;
                    Assert.checkNonNull(classSymbol);
                    nil = nil.prepend(classSymbol);
                }
            }
        }
        return nil.reverse();
    }

    public List<Symbol.ClassSymbol> getTopLevelClassesFromClasses(List<? extends Symbol.ClassSymbol> list) {
        List nil = List.nil();
        Iterator<? extends Symbol.ClassSymbol> it = list.iterator();
        while (it.hasNext()) {
            Symbol.ClassSymbol next = it.next();
            if (!isPkgInfo(next)) {
                nil = nil.prepend(next);
            }
        }
        return nil.reverse();
    }

    private void handleException(String str, Exception exc) {
        if (exc != null) {
            this.log.error(str, exc.getLocalizedMessage());
            throw new Abort(exc);
        }
        this.log.error(str, new Object[0]);
        throw new Abort();
    }

    public Iterator<Processor> handleServiceLoaderUnavailability(String str, Exception exc) {
        JavaFileManager javaFileManager = this.fileManager;
        if (javaFileManager instanceof JavacFileManager) {
            JavacFileManager javacFileManager = (JavacFileManager) javaFileManager;
            StandardLocation standardLocation = StandardLocation.ANNOTATION_PROCESSOR_PATH;
            if (needClassLoader(this.options.get(Option.PROCESSOR), javaFileManager.hasLocation(standardLocation) ? javacFileManager.getLocationAsPaths(standardLocation) : javacFileManager.getLocationAsPaths(StandardLocation.CLASS_PATH))) {
                handleException(str, exc);
            }
        } else {
            handleException(str, exc);
        }
        return Collections.emptyList().iterator();
    }

    public static Pattern importStringToPattern(boolean z10, String str, Processor processor, Log log) {
        String quote;
        String substring;
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            quote = Pattern.quote(str.substring(0, i10));
            substring = str.substring(i10);
        } else {
            if (str.equals("*")) {
                return MatchingUtils.validImportStringToPattern(str);
            }
            quote = z10 ? ".*/" : "";
            substring = str;
        }
        if (!MatchingUtils.isValidImportString(substring)) {
            log.warning("proc.malformed.supported.string", str, processor.getClass().getName());
            return noMatches;
        }
        return Pattern.compile(quote + MatchingUtils.validImportStringToPatternString(substring));
    }

    private Set<String> initPlatformAnnotations() {
        HashSet hashSet = new HashSet();
        hashSet.add("java.lang.Deprecated");
        hashSet.add("java.lang.Override");
        hashSet.add("java.lang.SuppressWarnings");
        hashSet.add("java.lang.annotation.Documented");
        hashSet.add("java.lang.annotation.Inherited");
        hashSet.add("java.lang.annotation.Retention");
        hashSet.add("java.lang.annotation.Target");
        return Collections.unmodifiableSet(hashSet);
    }

    private void initProcessorIterator(Iterable<? extends Processor> iterable) {
        Iterator<? extends Processor> it;
        Iterator<? extends Processor> nameProcessIterator;
        if (this.options.isSet(Option.XPRINT)) {
            try {
                it = List.of(new PrintingProcessor()).iterator();
            } catch (Throwable th2) {
                AssertionError assertionError = new AssertionError((Object) "Problem instantiating PrintingProcessor.");
                assertionError.initCause(th2);
                throw assertionError;
            }
        } else if (iterable != null) {
            it = iterable.iterator();
        } else {
            SecurityException securityException = this.processorLoaderException;
            if (securityException == null) {
                String str = this.options.get(Option.PROCESSOR);
                if (this.fileManager.hasLocation(StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH)) {
                    if (str == null) {
                        it = new ServiceIterator(this.serviceLoader, this.log);
                    } else {
                        nameProcessIterator = new NameServiceIterator(this.serviceLoader, this.log, str);
                        it = nameProcessIterator;
                    }
                } else if (str != null) {
                    nameProcessIterator = new NameProcessIterator(str, this.processorClassLoader, this.log);
                    it = nameProcessIterator;
                } else {
                    it = new ServiceIterator(this.processorClassLoader, this.log);
                }
            } else {
                it = handleServiceLoaderUnavailability("proc.cant.create.loader", securityException);
            }
        }
        PlatformDescription platformDescription = (PlatformDescription) this.context.get(PlatformDescription.class);
        java.util.List emptyList = Collections.emptyList();
        if (platformDescription != null) {
            emptyList = (java.util.List) platformDescription.getAnnotationProcessors().stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return (Processor) ((PlatformDescription.PluginInfo) obj).getPlugin();
                }
            }).collect(Collectors.toList());
        }
        this.discoveredProcs = new DiscoveredProcessors(Iterators.createCompoundIterator(List.of(it, emptyList.iterator()), new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterator lambda$initProcessorIterator$0;
                lambda$initProcessorIterator$0 = JavacProcessingEnvironment.lambda$initProcessorIterator$0((Iterator) obj);
                return lambda$initProcessorIterator$0;
            }
        }));
    }

    private void initProcessorLoader() {
        try {
            JavaFileManager javaFileManager = this.fileManager;
            StandardLocation standardLocation = StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH;
            if (javaFileManager.hasLocation(standardLocation)) {
                try {
                    this.serviceLoader = this.fileManager.getServiceLoader(standardLocation, Processor.class);
                    return;
                } catch (IOException e10) {
                    throw new Abort(e10);
                }
            }
            JavaFileManager javaFileManager2 = this.fileManager;
            StandardLocation standardLocation2 = StandardLocation.ANNOTATION_PROCESSOR_PATH;
            this.processorClassLoader = javaFileManager2.hasLocation(standardLocation2) ? this.fileManager.getClassLoader(standardLocation2) : this.fileManager.getClassLoader(StandardLocation.CLASS_PATH);
            if (this.options.isSet("accessInternalAPI")) {
                ModuleHelper.addExports(JDK9Wrappers.Module.getModule(getClass()), JDK9Wrappers.Module.getUnnamedModule(this.processorClassLoader));
            }
            Object obj = this.processorClassLoader;
            if (obj == null || !(obj instanceof Closeable)) {
                return;
            }
            JavaCompiler javaCompiler = this.compiler;
            javaCompiler.closeables = javaCompiler.closeables.prepend((Closeable) obj);
        } catch (SecurityException e11) {
            this.processorLoaderException = e11;
        }
    }

    private Map<String, String> initProcessorOptions() {
        String str;
        Set<String> keySet = this.options.keySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : keySet) {
            if (str2.startsWith("-A") && str2.length() > 2) {
                int indexOf = str2.indexOf(61);
                if (indexOf == -1) {
                    r6 = str2.substring(2);
                    str = null;
                } else if (indexOf >= 3) {
                    String substring = str2.substring(2, indexOf);
                    str = indexOf < str2.length() + (-1) ? str2.substring(indexOf + 1) : null;
                    r6 = substring;
                } else {
                    str = null;
                }
                linkedHashMap.put(r6, str);
            }
        }
        PlatformDescription platformDescription = (PlatformDescription) this.context.get(PlatformDescription.class);
        if (platformDescription != null) {
            Iterator<PlatformDescription.PluginInfo<Processor>> it = platformDescription.getAnnotationProcessors().iterator();
            while (it.hasNext()) {
                linkedHashMap.putAll(it.next().getOptions());
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    private Set<String> initUnmatchedProcessorOptions() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.processorOptions.o());
        return hashSet;
    }

    public static JavacProcessingEnvironment instance(Context context) {
        JavacProcessingEnvironment javacProcessingEnvironment = (JavacProcessingEnvironment) context.get(JavacProcessingEnvironment.class);
        return javacProcessingEnvironment == null ? new JavacProcessingEnvironment(context) : javacProcessingEnvironment;
    }

    private boolean isModuleInfo(JavaFileObject javaFileObject, JavaFileObject.Kind kind) {
        return javaFileObject.isNameCompatible("module-info", kind);
    }

    public boolean isPkgInfo(JavaFileObject javaFileObject, JavaFileObject.Kind kind) {
        return javaFileObject.isNameCompatible("package-info", kind);
    }

    public static boolean isValidOptionName(String str) {
        for (String str2 : str.split("\\.", -1)) {
            if (!SourceVersion.isIdentifier(str2)) {
                return false;
            }
        }
        return true;
    }

    public static <T> List<T> join(List<T> list, List<T> list2) {
        return list.appendList(list2);
    }

    public static Iterator lambda$initProcessorIterator$0(Iterator it) {
        return it;
    }

    private boolean moreToDo() {
        return this.filer.newFiles();
    }

    private boolean needClassLoader(String str, Iterable<? extends Path> iterable) {
        if (str != null) {
            return true;
        }
        URL[] urlArr = new URL[1];
        Iterator<? extends Path> it = iterable.iterator();
        while (it.hasNext()) {
            try {
                urlArr[0] = it.next().toUri().toURL();
                if (ServiceProxy.hasService(Processor.class, urlArr)) {
                    return true;
                }
            } catch (MalformedURLException e10) {
                throw new AssertionError(e10);
            } catch (ServiceProxy.ServiceConfigurationError e11) {
                this.log.error("proc.bad.config.file", e11.getLocalizedMessage());
                return true;
            }
        }
        return false;
    }

    private void warnIfUnmatchedOptions() {
        if (this.unmatchedProcessorOptions.isEmpty()) {
            return;
        }
        this.log.warning("proc.unmatched.processor.options", this.unmatchedProcessorOptions.toString());
    }

    public boolean atLeastOneProcessor() {
        return this.discoveredProcs.iterator().hasNext();
    }

    @Override
    public void close() {
        this.filer.close();
        DiscoveredProcessors discoveredProcessors = this.discoveredProcs;
        if (discoveredProcessors != null) {
            discoveredProcessors.close();
        }
        this.discoveredProcs = null;
    }

    public boolean doProcessing(List<JCTree.JCCompilationUnit> list, List<Symbol.ClassSymbol> list2, Iterable<? extends Symbol.PackageSymbol> iterable, Log.DeferredDiagnosticHandler deferredDiagnosticHandler) {
        boolean unrecoverableError;
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Iterator<Env<AttrContext>> it = this.enter.getEnvs().iterator();
        while (it.hasNext()) {
            newSetFromMap.add(it.next().toplevel);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends Symbol.PackageSymbol> it2 = iterable.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(it2.next());
        }
        this.specifiedPackages = Collections.unmodifiableSet(linkedHashSet);
        Round round = new Round(this, list, list2, newSetFromMap, deferredDiagnosticHandler);
        do {
            round.run(false, false);
            unrecoverableError = round.unrecoverableError();
            boolean moreToDo = moreToDo();
            round.showDiagnostics(unrecoverableError || this.showResolveErrors);
            round = round.next(new LinkedHashSet(this.filer.getGeneratedSourceFileObjects()), new LinkedHashMap(this.filer.getGeneratedClasses()));
            if (round.unrecoverableError()) {
                unrecoverableError = true;
            }
            if (!moreToDo) {
                break;
            }
        } while (!unrecoverableError);
        round.run(true, unrecoverableError);
        round.showDiagnostics(true);
        this.filer.warnIfUnclosedFiles();
        warnIfUnmatchedOptions();
        if (this.messager.errorRaised() || (this.werror && round.warningCount() > 0 && round.errorCount() > 0)) {
            unrecoverableError = true;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(this.filer.getGeneratedSourceFileObjects());
        List<JCTree.JCCompilationUnit> list3 = round.roots;
        boolean z10 = unrecoverableError || this.compiler.errorCount() > 0;
        round.finalCompiler();
        if (linkedHashSet2.size() > 0) {
            list3 = list3.appendList(this.compiler.parseFiles(linkedHashSet2));
        }
        boolean z11 = z10 || this.compiler.errorCount() > 0;
        close();
        if (z11 && this.compiler.errorCount() == 0) {
            this.compiler.log.nerrors++;
        }
        this.compiler.enterTreesIfNeeded(list3);
        if (!this.taskListener.isEmpty()) {
            this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANNOTATION_PROCESSING));
        }
        return true;
    }

    public Context getContext() {
        return this.context;
    }

    @Override
    public Locale getLocale() {
        return this.messages.getCurrentLocale();
    }

    @Override
    public Messager getMessager() {
        return this.messager;
    }

    @Override
    public Map<String, String> getOptions() {
        return this.processorOptions;
    }

    public ClassLoader getProcessorClassLoader() {
        return this.processorClassLoader;
    }

    public <S> ServiceLoader<S> getServiceLoader(Class<S> cls) {
        JavaFileManager javaFileManager = this.fileManager;
        StandardLocation standardLocation = StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH;
        if (!javaFileManager.hasLocation(standardLocation)) {
            return ServiceLoader.load(cls, getProcessorClassLoader());
        }
        try {
            return this.fileManager.getServiceLoader(standardLocation, cls);
        } catch (IOException e10) {
            throw new Abort(e10);
        }
    }

    @Override
    public SourceVersion getSourceVersion() {
        return Source.toSourceVersion(this.source);
    }

    public Set<Symbol.PackageSymbol> getSpecifiedPackages() {
        return this.specifiedPackages;
    }

    public void setProcessors(Iterable<? extends Processor> iterable) {
        Assert.checkNull(this.discoveredProcs);
        initProcessorIterator(iterable);
    }

    public String toString() {
        return "javac ProcessingEnvironment";
    }

    private boolean isPkgInfo(Symbol.ClassSymbol classSymbol) {
        return isPkgInfo(classSymbol.classfile, JavaFileObject.Kind.CLASS) && classSymbol.packge().package_info == classSymbol;
    }

    @Override
    public JavacElements getElementUtils() {
        return this.elementUtils;
    }

    @Override
    public JavacFiler getFiler() {
        return this.filer;
    }

    @Override
    public JavacTypes getTypeUtils() {
        return this.typeUtils;
    }

    public class Round {
        Set<TypeElement> annotationsPresent;
        final Log.DeferredDiagnosticHandler deferredDiagnosticHandler;
        Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> genClassFiles;
        List<Symbol.ModuleSymbol> moduleInfoFiles;
        final int number;
        List<Symbol.PackageSymbol> packageInfoFiles;
        List<JCTree.JCCompilationUnit> roots;
        List<Symbol.ClassSymbol> topLevelClasses;
        Set<JCTree.JCCompilationUnit> treesToClean;

        private Round(int i10, Set<JCTree.JCCompilationUnit> set, Log.DeferredDiagnosticHandler deferredDiagnosticHandler) {
            this.number = i10;
            if (i10 == 1) {
                Assert.checkNonNull(deferredDiagnosticHandler);
                this.deferredDiagnosticHandler = deferredDiagnosticHandler;
            } else {
                Log.DeferredDiagnosticHandler deferredDiagnosticHandler2 = new Log.DeferredDiagnosticHandler(JavacProcessingEnvironment.this.log);
                this.deferredDiagnosticHandler = deferredDiagnosticHandler2;
                JavacProcessingEnvironment.this.compiler.setDeferredDiagnosticHandler(deferredDiagnosticHandler2);
            }
            this.topLevelClasses = List.nil();
            this.packageInfoFiles = List.nil();
            this.moduleInfoFiles = List.nil();
            this.treesToClean = set;
        }

        private List<Symbol.ClassSymbol> enterClassFiles(Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> map) {
            Symbol.ClassSymbol enterClass;
            List nil = List.nil();
            for (Map.Entry<Symbol.ModuleSymbol, Map<String, JavaFileObject>> entry : map.entrySet()) {
                for (Map.Entry<String, JavaFileObject> entry2 : entry.getValue().entrySet()) {
                    Name fromString = JavacProcessingEnvironment.this.names.fromString(entry2.getKey());
                    JavaFileObject value = entry2.getValue();
                    JavaFileObject.Kind kind = value.getKind();
                    JavaFileObject.Kind kind2 = JavaFileObject.Kind.CLASS;
                    if (kind != kind2) {
                        throw new AssertionError(value);
                    }
                    if (JavacProcessingEnvironment.this.isPkgInfo(value, kind2)) {
                        Symbol.PackageSymbol enterPackage = JavacProcessingEnvironment.this.symtab.enterPackage(entry.getKey(), Convert.packagePart(fromString));
                        if (enterPackage.package_info == null) {
                            enterPackage.package_info = JavacProcessingEnvironment.this.symtab.enterClass(entry.getKey(), Convert.shortName(fromString), enterPackage);
                        }
                        enterClass = enterPackage.package_info;
                        enterClass.reset();
                        if (enterClass.classfile == null) {
                            enterClass.classfile = value;
                        }
                        enterClass.completer = JavacProcessingEnvironment.this.initialCompleter;
                    } else {
                        enterClass = JavacProcessingEnvironment.this.symtab.enterClass(entry.getKey(), fromString);
                        enterClass.reset();
                        enterClass.classfile = value;
                        enterClass.completer = JavacProcessingEnvironment.this.initialCompleter;
                        enterClass.owner.members().enter(enterClass);
                    }
                    nil = nil.prepend(enterClass);
                }
            }
            return nil.reverse();
        }

        private void enterTrees(List<JCTree.JCCompilationUnit> list) {
            JavacProcessingEnvironment.this.compiler.enterTrees(list);
        }

        public static Map lambda$new$0(Symbol.ModuleSymbol moduleSymbol) {
            return new LinkedHashMap();
        }

        private void newRound() {
            Iterator<Env<AttrContext>> it = JavacProcessingEnvironment.this.enter.getEnvs().iterator();
            while (it.hasNext()) {
                this.treesToClean.add(it.next().toplevel);
            }
            Iterator<JCTree.JCCompilationUnit> it2 = this.treesToClean.iterator();
            while (it2.hasNext()) {
                JavacProcessingEnvironment.this.treeCleaner.scan(it2.next());
            }
            JavacProcessingEnvironment.this.chk.newRound();
            JavacProcessingEnvironment.this.enter.newRound();
            JavacProcessingEnvironment.this.filer.newRound();
            JavacProcessingEnvironment.this.messager.newRound();
            JavacProcessingEnvironment.this.compiler.newRound();
            JavacProcessingEnvironment.this.modules.newRound();
            JavacProcessingEnvironment.this.types.newRound();
            JavacProcessingEnvironment.this.annotate.newRound();
            Iterator<Symbol.ClassSymbol> it3 = JavacProcessingEnvironment.this.symtab.getAllClasses().iterator();
            while (it3.hasNext()) {
                if (it3.next().kind == Kinds.Kind.ERR) {
                    for (Symbol.ClassSymbol classSymbol : JavacProcessingEnvironment.this.symtab.getAllClasses()) {
                        if (classSymbol.classfile != null || classSymbol.kind == Kinds.Kind.ERR) {
                            classSymbol.reset();
                            classSymbol.type = new Type.ClassType(classSymbol.type.getEnclosingType(), null, classSymbol);
                            if (classSymbol.isCompleted()) {
                                classSymbol.completer = JavacProcessingEnvironment.this.initialCompleter;
                            }
                        }
                    }
                    return;
                }
            }
        }

        private void printRoundInfo(boolean z10) {
            if (JavacProcessingEnvironment.this.printRounds || JavacProcessingEnvironment.this.verbose) {
                List<Symbol.ClassSymbol> nil = z10 ? List.nil() : this.topLevelClasses;
                Set<TypeElement> emptySet = z10 ? Collections.emptySet() : this.annotationsPresent;
                JavacProcessingEnvironment.this.log.printLines("x.print.rounds", Integer.valueOf(this.number), "{" + nil.toString(", ") + VectorFormat.DEFAULT_SUFFIX, emptySet, Boolean.valueOf(z10));
            }
        }

        public int errorCount() {
            return JavacProcessingEnvironment.this.compiler.errorCount();
        }

        public void finalCompiler() {
            newRound();
        }

        public void findAnnotationsPresent() {
            ComputeAnnotationSet computeAnnotationSet = new ComputeAnnotationSet(JavacProcessingEnvironment.this.elementUtils);
            this.annotationsPresent = new LinkedHashSet();
            Iterator<Symbol.ClassSymbol> it = this.topLevelClasses.iterator();
            while (it.hasNext()) {
                computeAnnotationSet.scan((Element) it.next(), this.annotationsPresent);
            }
            Iterator<Symbol.PackageSymbol> it2 = this.packageInfoFiles.iterator();
            while (it2.hasNext()) {
                computeAnnotationSet.scan((Element) it2.next(), this.annotationsPresent);
            }
            Iterator<Symbol.ModuleSymbol> it3 = this.moduleInfoFiles.iterator();
            while (it3.hasNext()) {
                computeAnnotationSet.scan((Element) it3.next(), this.annotationsPresent);
            }
        }

        public Round next(Set<JavaFileObject> set, Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> map) {
            return new Round(JavacProcessingEnvironment.this, this, set, map);
        }

        public void run(boolean z10, boolean z11) {
            MultiTaskListener multiTaskListener;
            printRoundInfo(z10);
            if (!JavacProcessingEnvironment.this.taskListener.isEmpty()) {
                JavacProcessingEnvironment.this.taskListener.started(new TaskEvent(TaskEvent.Kind.ANNOTATION_PROCESSING_ROUND));
            }
            try {
                if (z10) {
                    JavacProcessingEnvironment.this.filer.setLastRound(true);
                    JavacProcessingEnvironment.this.discoveredProcs.iterator().runContributingProcs(new JavacRoundEnvironment(true, z11, Collections.emptySet(), JavacProcessingEnvironment.this));
                } else {
                    JavacProcessingEnvironment.this.discoverAndRunProcs(this.annotationsPresent, this.topLevelClasses, this.packageInfoFiles, this.moduleInfoFiles);
                }
                if (multiTaskListener.isEmpty()) {
                    return;
                }
                JavacProcessingEnvironment.this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANNOTATION_PROCESSING_ROUND));
            } catch (Throwable th2) {
                try {
                    this.deferredDiagnosticHandler.reportDeferredDiagnostics();
                    JavacProcessingEnvironment.this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
                    JavacProcessingEnvironment.this.compiler.setDeferredDiagnosticHandler(null);
                    throw th2;
                } finally {
                    if (!JavacProcessingEnvironment.this.taskListener.isEmpty()) {
                        JavacProcessingEnvironment.this.taskListener.finished(new TaskEvent(TaskEvent.Kind.ANNOTATION_PROCESSING_ROUND));
                    }
                }
            }
        }

        public void showDiagnostics(boolean z10) {
            EnumSet allOf = EnumSet.allOf(Diagnostic.Kind.class);
            if (!z10) {
                allOf.remove(Diagnostic.Kind.ERROR);
            }
            this.deferredDiagnosticHandler.reportDeferredDiagnostics(allOf);
            JavacProcessingEnvironment.this.log.popDiagnosticHandler(this.deferredDiagnosticHandler);
            JavacProcessingEnvironment.this.compiler.setDeferredDiagnosticHandler(null);
        }

        public boolean unrecoverableError() {
            if (JavacProcessingEnvironment.this.messager.errorRaised()) {
                return true;
            }
            for (JCDiagnostic jCDiagnostic : this.deferredDiagnosticHandler.getDiagnostics()) {
                int i10 = AnonymousClass2.$SwitchMap$javax$tools$Diagnostic$Kind[jCDiagnostic.getKind().ordinal()];
                if (i10 == 1) {
                    if (JavacProcessingEnvironment.this.werror) {
                        return true;
                    }
                } else if (i10 == 2 && (JavacProcessingEnvironment.this.fatalErrors || !jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.RECOVERABLE))) {
                    return true;
                }
            }
            return false;
        }

        public int warningCount() {
            return JavacProcessingEnvironment.this.compiler.warningCount();
        }

        public Round(JavacProcessingEnvironment javacProcessingEnvironment, List<JCTree.JCCompilationUnit> list, List<Symbol.ClassSymbol> list2, Set<JCTree.JCCompilationUnit> set, Log.DeferredDiagnosticHandler deferredDiagnosticHandler) {
            this(1, set, deferredDiagnosticHandler);
            this.roots = list;
            this.genClassFiles = new HashMap();
            this.topLevelClasses = javacProcessingEnvironment.getTopLevelClasses(list).prependList(list2.reverse());
            this.packageInfoFiles = javacProcessingEnvironment.getPackageInfoFiles(list);
            this.moduleInfoFiles = javacProcessingEnvironment.getModuleInfoFiles(list);
            findAnnotationsPresent();
        }

        private Round(JavacProcessingEnvironment javacProcessingEnvironment, Round round, Set<JavaFileObject> set, Map<Symbol.ModuleSymbol, Map<String, JavaFileObject>> map) {
            this(round.number + 1, round.treesToClean, (Log.DeferredDiagnosticHandler) null);
            round.newRound();
            this.genClassFiles = round.genClassFiles;
            List<JCTree.JCCompilationUnit> parseFiles = javacProcessingEnvironment.compiler.parseFiles(set);
            this.roots = round.roots.appendList(parseFiles);
            if (unrecoverableError()) {
                javacProcessingEnvironment.compiler.initModules(List.nil());
                return;
            }
            this.roots = javacProcessingEnvironment.compiler.initModules(this.roots);
            enterClassFiles(this.genClassFiles);
            List<Symbol.ClassSymbol> enterClassFiles = enterClassFiles(map);
            for (Map.Entry<Symbol.ModuleSymbol, Map<String, JavaFileObject>> entry : map.entrySet()) {
                this.genClassFiles.computeIfAbsent(entry.getKey(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Map lambda$new$0;
                        lambda$new$0 = JavacProcessingEnvironment.Round.lambda$new$0((Symbol.ModuleSymbol) obj);
                        return lambda$new$0;
                    }
                }).putAll(entry.getValue());
            }
            enterTrees(this.roots);
            if (unrecoverableError()) {
                return;
            }
            this.topLevelClasses = JavacProcessingEnvironment.join(javacProcessingEnvironment.getTopLevelClasses(parseFiles), javacProcessingEnvironment.getTopLevelClassesFromClasses(enterClassFiles));
            this.packageInfoFiles = JavacProcessingEnvironment.join(javacProcessingEnvironment.getPackageInfoFiles(parseFiles), javacProcessingEnvironment.getPackageInfoFilesFromClasses(enterClassFiles));
            this.moduleInfoFiles = List.nil();
            findAnnotationsPresent();
        }
    }
}
