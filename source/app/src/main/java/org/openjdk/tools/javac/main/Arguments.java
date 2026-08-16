package org.openjdk.tools.javac.main;

import com.android.dex.DexFormat;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.file.BaseFileManager;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.jvm.Profile;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Arguments;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.main.OptionHelper;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.platform.PlatformUtils;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.PropagatedException;

public class Arguments {
    public static final Context.Key<Arguments> argsKey = new Context.Key<>();
    private Set<String> classNames;
    private final Context context;
    private Map<Option, String> deferredFileManagerOptions;
    private boolean emptyAllowed;
    private ErrorMode errorMode;
    private boolean errors;
    private JavaFileManager fileManager;
    private Set<JavaFileObject> fileObjects;
    private Set<Path> files;
    private final Log log;
    private final Options options;
    private String ownName;
    private final OptionHelper cmdLineHelper = new OptionHelper() {
        @Override
        public void addClassName(String str) {
            Arguments.this.classNames.add(str);
        }

        @Override
        public void addFile(Path path) {
            Arguments.this.files.add(path);
        }

        @Override
        public String get(Option option) {
            return Arguments.this.options.get(option);
        }

        @Override
        public Log getLog() {
            return Arguments.this.log;
        }

        @Override
        public String getOwnName() {
            return Arguments.this.ownName;
        }

        @Override
        public boolean handleFileManagerOption(Option option, String str) {
            Arguments.this.options.put(option, str);
            Arguments.this.deferredFileManagerOptions.put(option, str);
            return true;
        }

        @Override
        public void put(String str, String str2) {
            Arguments.this.options.put(str, str2);
        }

        @Override
        public void remove(String str) {
            Arguments.this.options.remove(str);
        }
    };
    private final OptionHelper apiHelper = new OptionHelper.GrumpyHelper(null) {
        @Override
        public String get(Option option) {
            return Arguments.this.options.get(option);
        }

        @Override
        public Log getLog() {
            return Arguments.this.log;
        }

        @Override
        public void put(String str, String str2) {
            Arguments.this.options.put(str, str2);
        }

        @Override
        public void remove(String str) {
            Arguments.this.options.remove(str);
        }
    };

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode;

        static {
            int[] iArr = new int[ErrorMode.values().length];
            $SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode = iArr;
            try {
                iArr[ErrorMode.ILLEGAL_ARGUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode[ErrorMode.ILLEGAL_STATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode[ErrorMode.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ErrorMode {
        ILLEGAL_ARGUMENT,
        ILLEGAL_STATE,
        LOG
    }

    public interface ErrorReporter {
        void report(Option option);
    }

    public Arguments(Context context) {
        context.put((Context.Key<Context.Key<Arguments>>) argsKey, (Context.Key<Arguments>) this);
        this.options = Options.instance(context);
        this.log = Log.instance(context);
        this.context = context;
    }

    private boolean checkDirectory(Option option) {
        String str = this.options.get(option);
        if (str == null) {
            return true;
        }
        Path path = Paths.get(str, new String[0]);
        if (!Files.exists(path, new LinkOption[0]) || Files.isDirectory(path, new LinkOption[0])) {
            return true;
        }
        error("err.file.not.directory", str);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x003f, code lost:
    
        if (r2.matches(r1) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean lambda$processArgs$1(Iterable<String> iterable, Set<Option> set, OptionHelper optionHelper, boolean z10, boolean z11) {
        Option option;
        JavaFileManager fileManager = z11 ? getFileManager() : null;
        Iterator<String> it = iterable.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.isEmpty()) {
                error("err.invalid.flag", next);
                return false;
            }
            if (next.startsWith("-")) {
                option = Option.lookup(next, set);
            } else {
                if (z10) {
                    option = Option.SOURCEFILE;
                }
                option = null;
            }
            if (option != null) {
                try {
                    option.handleOption(optionHelper, next, it);
                } catch (Option.InvalidValueException e10) {
                    error(e10);
                    return false;
                }
            } else if (fileManager == null || !fileManager.handleOption(next, it)) {
                error("err.invalid.flag", next);
                return false;
            }
        }
        return true;
    }

    private JavaFileManager getFileManager() {
        if (this.fileManager == null) {
            this.fileManager = (JavaFileManager) this.context.get(JavaFileManager.class);
        }
        return this.fileManager;
    }

    public static Arguments instance(Context context) {
        Arguments arguments = (Arguments) context.get(argsKey);
        return arguments == null ? new Arguments(context) : arguments;
    }

    public void lambda$handleReleaseOptions$0(Option option) {
        error("err.release.bootclasspath.conflict", option.getPrimaryName());
    }

    public void lambda$validate$2(Target target, Option option) {
        error("err.option.not.allowed.with.target", option.getPrimaryName(), target.name);
    }

    public void lambda$validate$3(Target target, Option option) {
        error("err.option.not.allowed.with.target", option.getPrimaryName(), target.name);
    }

    private boolean processArgs(Iterable<String> iterable, final Set<Option> set, final OptionHelper optionHelper, final boolean z10, final boolean z11) {
        if (!lambda$processArgs$1(iterable, set, optionHelper, z10, z11) || !handleReleaseOptions(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$processArgs$1;
                lambda$processArgs$1 = Arguments.this.lambda$processArgs$1(set, optionHelper, z10, z11, (Iterable) obj);
                return lambda$processArgs$1;
            }
        })) {
            return false;
        }
        this.options.notifyListeners();
        return true;
    }

    private void report(String str, Object... objArr) {
        this.log.printRawLines(this.ownName + ": " + this.log.localize(Log.PrefixKind.JAVAC, str, objArr));
    }

    private void validateAddExports(SourceVersion sourceVersion) {
        Options options = this.options;
        Option option = Option.ADD_EXPORTS;
        String str = options.get(option);
        if (str != null) {
            Pattern pattern = option.getPattern();
            for (String str2 : str.split(DexFormat.MAGIC_SUFFIX)) {
                Matcher matcher = pattern.matcher(str2);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (!SourceVersion.isName(group, sourceVersion)) {
                        this.log.warning(CompilerProperties.Warnings.BadNameForOption(Option.ADD_EXPORTS, group));
                    }
                    String group2 = matcher.group(2);
                    if (!SourceVersion.isName(group2, sourceVersion)) {
                        this.log.warning(CompilerProperties.Warnings.BadNameForOption(Option.ADD_EXPORTS, group2));
                    }
                    for (String str3 : matcher.group(3).split(DocLint.SEPARATOR)) {
                        str3.hashCode();
                        if (!str3.equals("ALL-UNNAMED") && !str3.equals("") && !SourceVersion.isName(str3, sourceVersion)) {
                            this.log.warning(CompilerProperties.Warnings.BadNameForOption(Option.ADD_EXPORTS, str3));
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void validateAddModules(SourceVersion sourceVersion) {
        String str = this.options.get(Option.ADD_MODULES);
        if (str != null) {
            for (String str2 : str.split(DocLint.SEPARATOR)) {
                str2.hashCode();
                char c10 = '\uffff';
                switch (str2.hashCode()) {
                    case -1057501189:
                        if (str2.equals("ALL-SYSTEM")) {
                            c10 = 0;
                        }
                        switch (c10) {
                            case 0:
                            case 1:
                            case 2:
                                break;
                            default:
                                if (SourceVersion.isName(str2, sourceVersion)) {
                                    break;
                                } else {
                                    this.log.error(CompilerProperties.Errors.BadNameForOption(Option.ADD_MODULES, str2));
                                    break;
                                }
                        }
                    case 0:
                        if (str2.equals("")) {
                            c10 = 1;
                        }
                        switch (c10) {
                        }
                        break;
                    case 1070226586:
                        if (str2.equals("ALL-MODULE-PATH")) {
                            c10 = 2;
                        }
                        switch (c10) {
                        }
                        break;
                    default:
                        switch (c10) {
                        }
                        break;
                }
            }
        }
    }

    private void validateAddReads(SourceVersion sourceVersion) {
        Options options = this.options;
        Option option = Option.ADD_READS;
        String str = options.get(option);
        if (str != null) {
            Pattern pattern = option.getPattern();
            for (String str2 : str.split(DexFormat.MAGIC_SUFFIX)) {
                Matcher matcher = pattern.matcher(str2);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (!SourceVersion.isName(group, sourceVersion)) {
                        this.log.warning(CompilerProperties.Warnings.BadNameForOption(Option.ADD_READS, group));
                    }
                    for (String str3 : matcher.group(2).split(DocLint.SEPARATOR, -1)) {
                        str3.hashCode();
                        if (!str3.equals("ALL-UNNAMED") && !str3.equals("") && !SourceVersion.isName(str3, sourceVersion)) {
                            this.log.warning(CompilerProperties.Warnings.BadNameForOption(Option.ADD_READS, str3));
                        }
                    }
                }
            }
        }
    }

    private void validateDefaultModuleForCreatedFiles(SourceVersion sourceVersion) {
        Options options = this.options;
        Option option = Option.DEFAULT_MODULE_FOR_CREATED_FILES;
        String str = options.get(option);
        if (str == null || SourceVersion.isName(str, sourceVersion)) {
            return;
        }
        this.log.error(CompilerProperties.Errors.BadNameForOption(option, str));
    }

    private void validateLimitModules(SourceVersion sourceVersion) {
        String str = this.options.get(Option.LIMIT_MODULES);
        if (str != null) {
            for (String str2 : str.split(DocLint.SEPARATOR)) {
                str2.hashCode();
                if (!str2.equals("") && !SourceVersion.isName(str2, sourceVersion)) {
                    this.log.error(CompilerProperties.Errors.BadNameForOption(Option.LIMIT_MODULES, str2));
                }
            }
        }
    }

    public void allowEmpty() {
        this.emptyAllowed = true;
    }

    public void checkOptionAllowed(boolean z10, final ErrorReporter errorReporter, Option... optionArr) {
        if (z10) {
            return;
        }
        Stream of2 = Stream.of((Object[]) optionArr);
        final Options options = this.options;
        options.getClass();
        Stream filter = of2.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Options.this.isSet((Option) obj);
            }
        });
        errorReporter.getClass();
        filter.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Arguments.ErrorReporter.this.report((Option) obj);
            }
        });
    }

    public void error(JCDiagnostic.Error error) {
        this.errors = true;
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode[this.errorMode.ordinal()];
        if (i10 == 1) {
            throw new PropagatedException(new IllegalArgumentException(this.log.localize(error)));
        }
        if (i10 == 2) {
            throw new PropagatedException(new IllegalStateException(this.log.localize(error)));
        }
        if (i10 != 3) {
            return;
        }
        report(error);
    }

    public Set<String> getClassNames() {
        return this.classNames;
    }

    public Map<Option, String> getDeferredFileManagerOptions() {
        return this.deferredFileManagerOptions;
    }

    public List<String> getDocLintOpts() {
        String str = this.options.get(Option.XDOCLINT);
        String str2 = this.options.get(Option.XDOCLINT_CUSTOM);
        if (str == null && str2 == null) {
            return List.nil();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (str != null) {
            linkedHashSet.add(DocLint.XMSGS_OPTION);
        }
        if (str2 != null) {
            for (String str3 : str2.split("\\s+")) {
                if (!str3.isEmpty()) {
                    linkedHashSet.add(DocLint.XMSGS_CUSTOM_PREFIX + str3);
                }
            }
        }
        if (linkedHashSet.equals(Collections.singleton("-Xmsgs:none"))) {
            return List.nil();
        }
        String str4 = this.options.get(Option.XDOCLINT_PACKAGE);
        if (str4 != null) {
            for (String str5 : str4.split("\\s+")) {
                linkedHashSet.add(DocLint.XCHECK_PACKAGE + str5);
            }
        }
        String str6 = this.options.get(Option.DOCLINT_FORMAT);
        if (str6 != null) {
            linkedHashSet.add(DocLint.XHTML_VERSION_PREFIX + str6);
        }
        linkedHashSet.add("-XimplicitHeaders:2");
        return List.from(linkedHashSet.toArray(new String[linkedHashSet.size()]));
    }

    public Set<JavaFileObject> getFileObjects() {
        if (this.fileObjects == null) {
            this.fileObjects = new LinkedHashSet();
        }
        if (this.files != null) {
            Iterator<? extends JavaFileObject> it = ((JavacFileManager) getFileManager()).getJavaFileObjectsFromPaths(this.files).iterator();
            while (it.hasNext()) {
                this.fileObjects.add(it.next());
            }
        }
        return this.fileObjects;
    }

    public Set<List<String>> getPluginOpts() {
        String str = this.options.get(Option.PLUGIN);
        if (str == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str2 : str.split("\\x00")) {
            linkedHashSet.add(List.from(str2.split("\\s+")));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public boolean handleReleaseOptions(Predicate<Iterable<String>> predicate) {
        String str = this.options.get(Option.RELEASE);
        boolean z10 = str == null;
        ErrorReporter errorReporter = new ErrorReporter() {
            @Override
            public final void report(Option option) {
                Arguments.this.lambda$handleReleaseOptions$0(option);
            }
        };
        Option option = Option.BOOT_CLASS_PATH;
        Option option2 = Option.XBOOTCLASSPATH;
        Option option3 = Option.XBOOTCLASSPATH_APPEND;
        Option option4 = Option.XBOOTCLASSPATH_PREPEND;
        Option option5 = Option.ENDORSEDDIRS;
        Option option6 = Option.DJAVA_ENDORSED_DIRS;
        Option option7 = Option.EXTDIRS;
        Option option8 = Option.DJAVA_EXT_DIRS;
        Option option9 = Option.SOURCE;
        Option option10 = Option.TARGET;
        checkOptionAllowed(z10, errorReporter, option, option2, option3, option4, option5, option6, option7, option8, option9, option10, Option.SYSTEM, Option.UPGRADE_MODULE_PATH);
        if (str == null) {
            return true;
        }
        PlatformDescription lookupPlatformDescription = PlatformUtils.lookupPlatformDescription(str);
        if (lookupPlatformDescription == null) {
            error("err.unsupported.release.version", str);
            return false;
        }
        this.options.put(option9, lookupPlatformDescription.getSourceVersion());
        this.options.put(option10, lookupPlatformDescription.getTargetVersion());
        this.context.put((Class<Class>) PlatformDescription.class, (Class) lookupPlatformDescription);
        if (!predicate.test(lookupPlatformDescription.getAdditionalOptions())) {
            return false;
        }
        Collection<Path> platformPath = lookupPlatformDescription.getPlatformPath();
        if (platformPath == null) {
            return true;
        }
        JavaFileManager fileManager = getFileManager();
        if (!(fileManager instanceof StandardJavaFileManager)) {
            error("err.release.not.standard.file.manager", new Object[0]);
            return false;
        }
        try {
            StandardJavaFileManager standardJavaFileManager = (StandardJavaFileManager) fileManager;
            if (Source.instance(this.context).allowModules()) {
                standardJavaFileManager.handleOption("--system", Arrays.asList("none").iterator());
                standardJavaFileManager.setLocationFromPaths(StandardLocation.UPGRADE_MODULE_PATH, platformPath);
            } else {
                standardJavaFileManager.setLocationFromPaths(StandardLocation.PLATFORM_CLASS_PATH, platformPath);
            }
            return true;
        } catch (IOException e10) {
            this.log.printLines(Log.PrefixKind.JAVAC, "msg.io", new Object[0]);
            e10.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
            return false;
        }
    }

    public void init(String str, String... strArr) {
        this.ownName = str;
        this.errorMode = ErrorMode.LOG;
        this.files = new LinkedHashSet();
        this.deferredFileManagerOptions = new LinkedHashMap();
        this.fileObjects = null;
        this.classNames = new LinkedHashSet();
        processArgs(List.from(strArr), Option.getJavaCompilerOptions(), this.cmdLineHelper, true, false);
        if (this.errors) {
            this.log.printLines(Log.PrefixKind.JAVAC, "msg.usage", str);
        }
    }

    public boolean isEmpty() {
        Set<JavaFileObject> set;
        Set<String> set2;
        Set<Path> set3 = this.files;
        return (set3 == null || set3.isEmpty()) && ((set = this.fileObjects) == null || set.isEmpty()) && ((set2 = this.classNames) == null || set2.isEmpty());
    }

    public <T> ListBuffer<T> toList(Iterable<? extends T> iterable) {
        ListBuffer<T> listBuffer = new ListBuffer<>();
        if (iterable != null) {
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                listBuffer.add(it.next());
            }
        }
        return listBuffer;
    }

    public <T> Set<T> toSet(Iterable<? extends T> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (iterable != null) {
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(it.next());
            }
        }
        return linkedHashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean validate() {
        boolean z10;
        Target target;
        boolean z11;
        boolean z12;
        Path parent;
        JavaFileManager fileManager = getFileManager();
        Options options = this.options;
        Option option = Option.MODULE;
        if (options.isSet(option)) {
            if (!fileManager.hasLocation(StandardLocation.CLASS_OUTPUT)) {
                this.log.error(CompilerProperties.Errors.OutputDirMustBeSpecifiedWithDashMOption);
            } else if (fileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH)) {
                try {
                    for (String str : Arrays.asList(this.options.get(option).split(DocLint.SEPARATOR))) {
                        JavaFileManager.Location locationForModule = fileManager.getLocationForModule(StandardLocation.MODULE_SOURCE_PATH, str);
                        if (locationForModule == null) {
                            this.log.error(CompilerProperties.Errors.ModuleNotFoundInModuleSourcePath(str));
                        } else {
                            JavaFileManager.Location locationForModule2 = fileManager.getLocationForModule(StandardLocation.CLASS_OUTPUT, str);
                            for (JavaFileObject javaFileObject : fileManager.list(locationForModule, "", EnumSet.of(JavaFileObject.Kind.SOURCE), true)) {
                                JavaFileObject javaFileForInput = fileManager.getJavaFileForInput(locationForModule2, fileManager.inferBinaryName(locationForModule, javaFileObject), JavaFileObject.Kind.CLASS);
                                if (javaFileForInput == null || javaFileForInput.getLastModified() < javaFileObject.getLastModified()) {
                                    if (this.fileObjects == null) {
                                        this.fileObjects = new HashSet();
                                    }
                                    this.fileObjects.add(javaFileObject);
                                }
                            }
                        }
                    }
                } catch (IOException e10) {
                    this.log.printLines(Log.PrefixKind.JAVAC, "msg.io", new Object[0]);
                    e10.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
                    return false;
                }
            } else {
                this.log.error(CompilerProperties.Errors.ModulesourcepathMustBeSpecifiedWithDashMOption);
            }
        }
        if (isEmpty()) {
            if (this.options.isSet(Option.HELP) || this.options.isSet(Option.f103261X) || this.options.isSet(Option.VERSION) || this.options.isSet(Option.FULLVERSION) || this.options.isSet(Option.MODULE)) {
                return true;
            }
            if (!this.emptyAllowed) {
                if (!this.errors) {
                    if (JavaCompiler.explicitAnnotationProcessingRequested(this.options)) {
                        error("err.no.source.files.classes", new Object[0]);
                    } else {
                        error("err.no.source.files", new Object[0]);
                    }
                }
                return false;
            }
        }
        if (!checkDirectory(Option.f103255D) || !checkDirectory(Option.f103260S) || !checkDirectory(Option.f103257H)) {
            return false;
        }
        if (fileManager instanceof StandardJavaFileManager) {
            StandardJavaFileManager standardJavaFileManager = (StandardJavaFileManager) this.fileManager;
            StandardLocation standardLocation = StandardLocation.CLASS_OUTPUT;
            if (standardJavaFileManager.hasLocation(standardLocation)) {
                Path next = standardJavaFileManager.getLocationAsPaths(standardLocation).iterator().next();
                if (!standardJavaFileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH)) {
                    Options options2 = this.options;
                    Option option2 = Option.XLINT_CUSTOM;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("-");
                    Lint.LintCategory lintCategory = Lint.LintCategory.PATH;
                    sb2.append(lintCategory.option);
                    if (options2.isUnset(option2, sb2.toString()) && (parent = next.getParent()) != null && Files.exists(parent.resolve("module-info.class"), new LinkOption[0])) {
                        this.log.warning(lintCategory, CompilerProperties.Warnings.OutdirIsInExplodedModule(next));
                    }
                } else if (Files.exists(next.resolve("module-info.class"), new LinkOption[0])) {
                    this.log.error(CompilerProperties.Errors.MultiModuleOutdirCannotBeExplodedModule(next));
                }
            }
        }
        String str2 = this.options.get(Option.SOURCE);
        Source lookup = str2 != null ? Source.lookup(str2) : Source.DEFAULT;
        String str3 = this.options.get(Option.TARGET);
        final Target lookup2 = str3 != null ? Target.lookup(str3) : Target.DEFAULT;
        if (Character.isDigit(lookup2.name.charAt(0)) && lookup2.compareTo(lookup.requiredTarget()) < 0) {
            if (str3 != null) {
                if (str2 == null) {
                    error("warn.target.default.source.conflict", str3, lookup.requiredTarget().name);
                } else {
                    error("warn.source.target.conflict", str2, lookup.requiredTarget().name);
                }
                return false;
            }
            lookup2 = lookup.requiredTarget();
            this.options.put("-target", lookup2.name);
        }
        Options options3 = this.options;
        Option option3 = Option.PROFILE;
        String str4 = options3.get(option3);
        if (str4 != null) {
            if (!Profile.lookup(str4).isValid(lookup2)) {
                error("warn.profile.target.conflict", str4, lookup2.name);
            }
            if (this.options.get(Option.BOOT_CLASS_PATH) != null) {
                error("err.profile.bootclasspath.conflict", new Object[0]);
            }
        }
        if (this.options.isSet(Option.SOURCE_PATH) && this.options.isSet(Option.MODULE_SOURCE_PATH)) {
            error("err.sourcepath.modulesourcepath.conflict", new Object[0]);
        }
        Options options4 = this.options;
        Option option4 = Option.XLINT_CUSTOM;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("-");
        Lint.LintCategory lintCategory2 = Lint.LintCategory.OPTIONS;
        sb3.append(lintCategory2.option);
        boolean isUnset = options4.isUnset(option4, sb3.toString());
        if (isUnset && lookup.compareTo(Source.DEFAULT) < 0 && !this.options.isSet(Option.RELEASE) && (fileManager instanceof BaseFileManager) && ((BaseFileManager) fileManager).isDefaultBootClassPath()) {
            this.log.warning(lintCategory2, "source.no.bootclasspath", lookup.name);
        }
        Source source = Source.MIN;
        if (lookup.compareTo(source) < 0) {
            this.log.error(CompilerProperties.Errors.OptionRemovedSource(lookup.name, source.name));
        } else if (lookup == source && isUnset) {
            this.log.warning(lintCategory2, CompilerProperties.Warnings.OptionObsoleteSource(lookup.name));
            z10 = true;
            target = Target.MIN;
            if (lookup2.compareTo(target) >= 0) {
                this.log.error(CompilerProperties.Errors.OptionRemovedTarget(lookup2.name, target.name));
            } else if (lookup2 == target && isUnset) {
                this.log.warning(lintCategory2, CompilerProperties.Warnings.OptionObsoleteTarget(lookup2.name));
                z11 = true;
                checkOptionAllowed(lookup2.compareTo(Target.JDK1_8) <= 0, new ErrorReporter() {
                    @Override
                    public final void report(Option option5) {
                        Arguments.this.lambda$validate$2(lookup2, option5);
                    }
                }, Option.BOOT_CLASS_PATH, Option.XBOOTCLASSPATH_PREPEND, Option.XBOOTCLASSPATH, Option.XBOOTCLASSPATH_APPEND, Option.ENDORSEDDIRS, Option.DJAVA_ENDORSED_DIRS, Option.EXTDIRS, Option.DJAVA_EXT_DIRS, option3);
                boolean z13 = lookup2.compareTo(Target.JDK1_9) >= 0;
                ErrorReporter errorReporter = new ErrorReporter() {
                    @Override
                    public final void report(Option option5) {
                        Arguments.this.lambda$validate$3(lookup2, option5);
                    }
                };
                Option option5 = Option.MODULE_SOURCE_PATH;
                Option option6 = Option.UPGRADE_MODULE_PATH;
                Option option7 = Option.SYSTEM;
                Option option8 = Option.MODULE_PATH;
                Option option9 = Option.ADD_MODULES;
                Option option10 = Option.ADD_EXPORTS;
                Option option11 = Option.ADD_OPENS;
                checkOptionAllowed(z13, errorReporter, option5, option6, option7, option8, option9, option10, option11, Option.ADD_READS, Option.LIMIT_MODULES, Option.PATCH_MODULE);
                if (fileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH) && !this.options.isSet(Option.PROC, "only") && !fileManager.hasLocation(StandardLocation.CLASS_OUTPUT)) {
                    this.log.error(CompilerProperties.Errors.NoOutputDir);
                }
                if (fileManager.hasLocation(StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH) && fileManager.hasLocation(StandardLocation.ANNOTATION_PROCESSOR_PATH)) {
                    this.log.error(CompilerProperties.Errors.ProcessorpathNoProcessormodulepath);
                }
                if (z11 || !isUnset) {
                    z12 = false;
                } else {
                    z12 = false;
                    this.log.warning(lintCategory2, "option.obsolete.suppression", new Object[0]);
                }
                SourceVersion sourceVersion = Source.toSourceVersion(lookup);
                validateAddExports(sourceVersion);
                validateAddModules(sourceVersion);
                validateAddReads(sourceVersion);
                validateLimitModules(sourceVersion);
                validateDefaultModuleForCreatedFiles(sourceVersion);
                if (isUnset && this.options.isSet(option11)) {
                    this.log.warning(lintCategory2, CompilerProperties.Warnings.AddopensIgnored);
                }
                if (this.errors && this.log.nerrors == 0) {
                    return true;
                }
                return z12;
            }
            z11 = z10;
            checkOptionAllowed(lookup2.compareTo(Target.JDK1_8) <= 0, new ErrorReporter() {
                @Override
                public final void report(Option option52) {
                    Arguments.this.lambda$validate$2(lookup2, option52);
                }
            }, Option.BOOT_CLASS_PATH, Option.XBOOTCLASSPATH_PREPEND, Option.XBOOTCLASSPATH, Option.XBOOTCLASSPATH_APPEND, Option.ENDORSEDDIRS, Option.DJAVA_ENDORSED_DIRS, Option.EXTDIRS, Option.DJAVA_EXT_DIRS, option3);
            if (lookup2.compareTo(Target.JDK1_9) >= 0) {
            }
            ErrorReporter errorReporter2 = new ErrorReporter() {
                @Override
                public final void report(Option option52) {
                    Arguments.this.lambda$validate$3(lookup2, option52);
                }
            };
            Option option52 = Option.MODULE_SOURCE_PATH;
            Option option62 = Option.UPGRADE_MODULE_PATH;
            Option option72 = Option.SYSTEM;
            Option option82 = Option.MODULE_PATH;
            Option option92 = Option.ADD_MODULES;
            Option option102 = Option.ADD_EXPORTS;
            Option option112 = Option.ADD_OPENS;
            checkOptionAllowed(z13, errorReporter2, option52, option62, option72, option82, option92, option102, option112, Option.ADD_READS, Option.LIMIT_MODULES, Option.PATCH_MODULE);
            if (fileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH)) {
                this.log.error(CompilerProperties.Errors.NoOutputDir);
            }
            if (fileManager.hasLocation(StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH)) {
                this.log.error(CompilerProperties.Errors.ProcessorpathNoProcessormodulepath);
            }
            if (z11) {
            }
            z12 = false;
            SourceVersion sourceVersion2 = Source.toSourceVersion(lookup);
            validateAddExports(sourceVersion2);
            validateAddModules(sourceVersion2);
            validateAddReads(sourceVersion2);
            validateLimitModules(sourceVersion2);
            validateDefaultModuleForCreatedFiles(sourceVersion2);
            if (isUnset) {
                this.log.warning(lintCategory2, CompilerProperties.Warnings.AddopensIgnored);
            }
            if (this.errors) {
            }
            return z12;
        }
        z10 = false;
        target = Target.MIN;
        if (lookup2.compareTo(target) >= 0) {
        }
        z11 = z10;
        checkOptionAllowed(lookup2.compareTo(Target.JDK1_8) <= 0, new ErrorReporter() {
            @Override
            public final void report(Option option522) {
                Arguments.this.lambda$validate$2(lookup2, option522);
            }
        }, Option.BOOT_CLASS_PATH, Option.XBOOTCLASSPATH_PREPEND, Option.XBOOTCLASSPATH, Option.XBOOTCLASSPATH_APPEND, Option.ENDORSEDDIRS, Option.DJAVA_ENDORSED_DIRS, Option.EXTDIRS, Option.DJAVA_EXT_DIRS, option3);
        if (lookup2.compareTo(Target.JDK1_9) >= 0) {
        }
        ErrorReporter errorReporter22 = new ErrorReporter() {
            @Override
            public final void report(Option option522) {
                Arguments.this.lambda$validate$3(lookup2, option522);
            }
        };
        Option option522 = Option.MODULE_SOURCE_PATH;
        Option option622 = Option.UPGRADE_MODULE_PATH;
        Option option722 = Option.SYSTEM;
        Option option822 = Option.MODULE_PATH;
        Option option922 = Option.ADD_MODULES;
        Option option1022 = Option.ADD_EXPORTS;
        Option option1122 = Option.ADD_OPENS;
        checkOptionAllowed(z13, errorReporter22, option522, option622, option722, option822, option922, option1022, option1122, Option.ADD_READS, Option.LIMIT_MODULES, Option.PATCH_MODULE);
        if (fileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH)) {
        }
        if (fileManager.hasLocation(StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH)) {
        }
        if (z11) {
        }
        z12 = false;
        SourceVersion sourceVersion22 = Source.toSourceVersion(lookup);
        validateAddExports(sourceVersion22);
        validateAddModules(sourceVersion22);
        validateAddReads(sourceVersion22);
        validateLimitModules(sourceVersion22);
        validateDefaultModuleForCreatedFiles(sourceVersion22);
        if (isUnset) {
        }
        if (this.errors) {
        }
        return z12;
    }

    public void warning(String str, Object... objArr) {
        report(str, objArr);
    }

    private void report(JCDiagnostic.Error error) {
        this.log.printRawLines(this.ownName + ": " + this.log.localize(error));
    }

    public void error(String str, Object... objArr) {
        this.errors = true;
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode[this.errorMode.ordinal()];
        if (i10 == 1) {
            throw new PropagatedException(new IllegalArgumentException(this.log.localize(Log.PrefixKind.JAVAC, str, objArr)));
        }
        if (i10 == 2) {
            throw new PropagatedException(new IllegalStateException(this.log.localize(Log.PrefixKind.JAVAC, str, objArr)));
        }
        if (i10 != 3) {
            return;
        }
        report(str, objArr);
    }

    public void init(String str, Iterable<String> iterable, Iterable<String> iterable2, Iterable<? extends JavaFileObject> iterable3) {
        this.ownName = str;
        this.classNames = toSet(iterable2);
        this.fileObjects = toSet(iterable3);
        this.files = null;
        this.errorMode = ErrorMode.ILLEGAL_ARGUMENT;
        if (iterable != null) {
            processArgs(toList(iterable), Option.getJavacToolOptions(), this.apiHelper, false, true);
        }
        this.errorMode = ErrorMode.ILLEGAL_STATE;
    }

    public void error(Option.InvalidValueException invalidValueException) {
        String message = invalidValueException.getMessage();
        this.errors = true;
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode[this.errorMode.ordinal()];
        if (i10 == 1) {
            throw new PropagatedException(new IllegalArgumentException(message, invalidValueException.getCause()));
        }
        if (i10 == 2) {
            throw new PropagatedException(new IllegalStateException(message, invalidValueException.getCause()));
        }
        if (i10 != 3) {
            return;
        }
        this.log.printRawLines(this.ownName + ": " + message);
    }

    public void init(String str) {
        this.ownName = str;
        this.errorMode = ErrorMode.LOG;
    }
}
