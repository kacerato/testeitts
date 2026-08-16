package org.openjdk.tools.javac.main;

import android.icu.text.DateFormat;
import androidx.exifinterface.media.ExifInterface;
import com.android.dex.DexFormat;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.Collator;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.jvm.Profile;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.platform.PlatformProvider;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.JDK9Wrappers;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.StringUtils;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'G' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public class Option {
    private static final Option[] $VALUES;

    public static final Option f103254A;
    public static final Option ADD_EXPORTS;
    public static final Option ADD_MODULES;
    public static final Option ADD_OPENS;
    public static final Option ADD_READS;
    public static final Option AT;
    public static final Option BOOT_CLASS_PATH;
    public static final Option CLASS_PATH;
    private static final String COMPACT_FORMAT = "  %-28s %s";

    public static final Option f103255D;
    public static final Option DEBUG;
    private static final int DEFAULT_MAX_LINE_LENGTH = 80;
    public static final Option DEFAULT_MODULE_FOR_CREATED_FILES;
    private static final int DEFAULT_SYNOPSIS_WIDTH = 28;
    public static final Option DEPRECATION;
    public static final Option DIAGS;
    public static final Option DJAVA_ENDORSED_DIRS;
    public static final Option DJAVA_EXT_DIRS;
    public static final Option DOCLINT_FORMAT;
    public static final Option DOE;
    public static final Option ENCODING;
    public static final Option ENDORSEDDIRS;
    public static final Option EXTDIRS;
    public static final Option FULLVERSION;

    public static final Option f103256G;
    public static final Option G_CUSTOM;
    public static final Option G_NONE;

    public static final Option f103257H;
    public static final Option HELP;
    public static final Option IMPLICIT;
    public static final Option INHERIT_RUNTIME_ENVIRONMENT;

    public static final Option f103258J;
    private static final String LARGE_INDENT = "        ";
    public static final Option LIMIT_MODULES;
    public static final Option MODULE;
    public static final Option MODULE_PATH;
    public static final Option MODULE_SOURCE_PATH;
    public static final Option MODULE_VERSION;
    public static final Option MOREINFO;
    public static final Option MULTIRELEASE;
    public static final Option NOWARN;

    public static final Option f103259O;
    public static final Option PARAMETERS;
    public static final Option PATCH_MODULE;
    public static final Option PLUGIN;
    public static final Option PRINTSOURCE;
    public static final Option PROC;
    public static final Option PROCESSOR;
    public static final Option PROCESSOR_MODULE_PATH;
    public static final Option PROCESSOR_PATH;
    public static final Option PROFILE;
    public static final Option PROMPT;
    public static final Option RELEASE;

    public static final Option f103260S;
    public static final Option SHOULDSTOP;
    private static final String SMALL_INDENT = "  ";
    public static final Option SOURCE;
    public static final Option SOURCEFILE;
    public static final Option SOURCE_PATH;
    public static final Option SYSTEM;
    public static final Option TARGET;
    public static final Option UPGRADE_MODULE_PATH;
    public static final Option VERBOSE;
    public static final Option VERSION;
    public static final Option WARNUNCHECKED;
    public static final Option WERROR;

    public static final Option f103261X;
    public static final Option XBOOTCLASSPATH;
    public static final Option XBOOTCLASSPATH_APPEND;
    public static final Option XBOOTCLASSPATH_PREPEND;
    public static final Option XD;
    public static final Option XDIAGS;
    public static final Option XDOCLINT;
    public static final Option XDOCLINT_CUSTOM;
    public static final Option XDOCLINT_PACKAGE;
    public static final Option XJCOV;
    public static final Option XLINT;
    public static final Option XLINT_CUSTOM;
    public static final Option XMAXERRS;
    public static final Option XMAXWARNS;
    public static final Option XPKGINFO;
    public static final Option XPREFER;
    public static final Option XPRINT;
    public static final Option XPRINTPROCESSORINFO;
    public static final Option XPRINTROUNDS;
    public static final Option XSTDOUT;
    public static final Option XXUSERPATHSFIRST;
    private final ArgKind argKind;
    protected final String argsNameKey;
    private final ChoiceKind choiceKind;
    private final Set<String> choices;
    protected final String descrKey;
    private final OptionGroup group;
    private final OptionKind kind;
    public final String[] names;
    public final String primaryName;

    public enum AnonymousClass14 extends Option {
        public AnonymousClass14(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup) {
            super(str, i10, str2, str3, str4, optionKind, optionGroup);
        }

        public static Stream lambda$help$0(PlatformProvider platformProvider) {
            return StreamSupport.stream(platformProvider.getSupportedPlatformNames().spliterator(), false);
        }

        @Override
        public void help(Log log) {
            Set<String> set = (Set) StreamSupport.stream(ServiceLoader.load(PlatformProvider.class, Arguments.class.getClassLoader()).spliterator(), false).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Stream lambda$help$0;
                    lambda$help$0 = Option.AnonymousClass14.lambda$help$0((PlatformProvider) obj);
                    return lambda$help$0;
                }
            }).collect(Collectors.toCollection(new Supplier() {
                @Override
                public final Object get() {
                    return new TreeSet();
                }
            }));
            StringBuilder sb2 = new StringBuilder();
            String str = "";
            for (String str2 : set) {
                sb2.append(str);
                sb2.append(str2);
                str = ", ";
            }
            super.help(log, log.localize(Log.PrefixKind.JAVAC, this.descrKey, sb2.toString()));
        }
    }

    public enum AnonymousClass38 extends Option {
        public AnonymousClass38(String str, int i10, String str2, String str3, OptionKind optionKind, OptionGroup optionGroup) {
            super(str, i10, str2, str3, optionKind, optionGroup);
        }

        private Option[] getSupportedRuntimeOptions() {
            return new Option[]{Option.ADD_EXPORTS, Option.ADD_MODULES, Option.LIMIT_MODULES, Option.MODULE_PATH, Option.UPGRADE_MODULE_PATH, Option.PATCH_MODULE};
        }

        public static String lambda$process$0(String str) {
            return "invalid runtime option:" + str;
        }

        public static boolean lambda$process$1(String str) {
            return (str.isEmpty() || str.equals("ALL-DEFAULT")) ? false : true;
        }

        @Override
        public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
            try {
                Class.forName(JDK9Wrappers.VMHelper.CLASSNAME);
                for (final String str2 : JDK9Wrappers.VMHelper.getRuntimeArguments()) {
                    Option[] supportedRuntimeOptions = getSupportedRuntimeOptions();
                    int length = supportedRuntimeOptions.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length) {
                            Option option = supportedRuntimeOptions[i10];
                            if (!option.matches(str2)) {
                                i10++;
                            } else if (AnonymousClass40.$SwitchMap$com$sun$tools$javac$main$Option[option.ordinal()] != 1) {
                                option.handleOption(optionHelper, str2, Collections.emptyIterator());
                            } else {
                                int indexOf = str2.indexOf(61);
                                Assert.check(indexOf > 0, (Supplier<String>) new Supplier() {
                                    @Override
                                    public final Object get() {
                                        String lambda$process$0;
                                        lambda$process$0 = Option.AnonymousClass38.lambda$process$0(String.this);
                                        return lambda$process$0;
                                    }
                                });
                                int i11 = indexOf + 1;
                                String str3 = (String) Arrays.stream(str2.substring(i11).split(DocLint.SEPARATOR)).filter(new Predicate() {
                                    @Override
                                    public final boolean test(Object obj) {
                                        boolean lambda$process$1;
                                        lambda$process$1 = Option.AnonymousClass38.lambda$process$1((String) obj);
                                        return lambda$process$1;
                                    }
                                }).collect(Collectors.joining(DocLint.SEPARATOR));
                                if (!str3.isEmpty()) {
                                    option.handleOption(optionHelper, str2.substring(0, i11) + str3, Collections.emptyIterator());
                                }
                            }
                        }
                    }
                }
            } catch (ClassNotFoundException | SecurityException unused) {
                throw optionHelper.newInvalidValueException("err.cannot.access.runtime.env", new Object[0]);
            }
        }
    }

    public static class AnonymousClass40 {
        static final int[] $SwitchMap$com$sun$tools$javac$main$Option;

        static {
            int[] iArr = new int[Option.values().length];
            $SwitchMap$com$sun$tools$javac$main$Option = iArr;
            try {
                iArr[Option.ADD_MODULES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum AnonymousClass7 extends Option {
        public AnonymousClass7(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup) {
            super(str, i10, str2, str3, str4, optionKind, optionGroup);
        }

        public static String lambda$process$0(String str) {
            return str.substring(0, str.indexOf(61));
        }

        @Override
        public Pattern getPattern() {
            return Pattern.compile("([^/]+)=(,*[^,].*)");
        }

        @Override
        public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
            if (str2.isEmpty()) {
                throw optionHelper.newInvalidValueException("err.no.value.for.option", str);
            }
            if (!getPattern().matcher(str2).matches()) {
                throw optionHelper.newInvalidValueException("err.bad.value.for.option", str, str2);
            }
            String str3 = optionHelper.get(Option.PATCH_MODULE);
            if (str3 == null) {
                super.process(optionHelper, str, str2);
                return;
            }
            String substring = str2.substring(0, str2.indexOf(61));
            if (((Set) Arrays.stream(str3.split(DexFormat.MAGIC_SUFFIX)).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$process$0;
                    lambda$process$0 = Option.AnonymousClass7.lambda$process$0((String) obj);
                    return lambda$process$0;
                }
            }).collect(Collectors.toSet())).contains(substring)) {
                throw optionHelper.newInvalidValueException("err.repeated.value.for.patch.module", substring);
            }
            super.process(optionHelper, str, str3 + (char) 0 + str2);
        }
    }

    public enum ArgKind {
        NONE,
        REQUIRED,
        ADJACENT
    }

    public enum ChoiceKind {
        ONEOF,
        ANYOF
    }

    public enum HiddenGroup {
        DIAGS("diags"),
        DEBUG("debug"),
        SHOULDSTOP("should-stop");

        static final Set<String> skipSet = new HashSet(Arrays.asList("--diags:", "--debug:", "--should-stop:"));
        final String text;

        HiddenGroup(String str) {
            this.text = str;
        }

        public static boolean skip(String str) {
            return skipSet.contains(str);
        }

        public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
            for (String str2 : str.substring(str.indexOf(58) + 1).trim().split(";")) {
                String str3 = this.text + "." + str2.trim();
                Option.XD.process(optionHelper, str3, str3);
            }
        }
    }

    public static class InvalidValueException extends Exception {
        private static final long serialVersionUID = -1;

        public InvalidValueException(String str) {
            super(str);
        }

        public InvalidValueException(String str, Throwable th2) {
            super(str, th2);
        }
    }

    public enum OptionGroup {
        BASIC,
        FILEMANAGER,
        INFO,
        OPERAND
    }

    public enum OptionKind {
        STANDARD,
        EXTENDED,
        HIDDEN
    }

    public enum PkgInfo {
        ALWAYS,
        LEGACY,
        NONEMPTY;

        public static PkgInfo get(Options options) {
            String str = options.get(Option.XPKGINFO);
            return str == null ? LEGACY : valueOf(StringUtils.toUpperCase(str));
        }
    }

    static {
        OptionKind optionKind = OptionKind.STANDARD;
        OptionGroup optionGroup = OptionGroup.BASIC;
        Option option = new Option("G", 0, "-g", "opt.g", optionKind, optionGroup);
        f103256G = option;
        Option option2 = new Option("G_NONE", 1, "-g:none", "opt.g.none", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str) {
                optionHelper.put("-g:", "none");
            }
        };
        G_NONE = option2;
        ChoiceKind choiceKind = ChoiceKind.ANYOF;
        Option option3 = new Option("G_CUSTOM", 2, "-g:", "opt.g.lines.vars.source", optionKind, optionGroup, choiceKind, "lines", "vars", "source");
        G_CUSTOM = option3;
        OptionKind optionKind2 = OptionKind.EXTENDED;
        Option option4 = new Option("XLINT", 3, "-Xlint", "opt.Xlint", optionKind2, optionGroup);
        XLINT = option4;
        Option option5 = new Option("XLINT_CUSTOM", 4, "-Xlint:", "opt.arg.Xlint", "opt.Xlint.custom", optionKind2, optionGroup, choiceKind, getXLintChoices()) {
            private final String LINT_KEY_FORMAT = "          %-20s %s";

            @Override
            public void help(Log log) {
                super.help(log);
                log.printRawLines(Log.WriterKind.STDOUT, String.format(this.LINT_KEY_FORMAT, Tj.d.f25405q, log.localize(Log.PrefixKind.JAVAC, "opt.Xlint.all", new Object[0])));
                for (Lint.LintCategory lintCategory : Lint.LintCategory.values()) {
                    log.printRawLines(Log.WriterKind.STDOUT, String.format(this.LINT_KEY_FORMAT, lintCategory.option, log.localize(Log.PrefixKind.JAVAC, "opt.Xlint.desc." + lintCategory.option, new Object[0])));
                }
                log.printRawLines(Log.WriterKind.STDOUT, String.format(this.LINT_KEY_FORMAT, "none", log.localize(Log.PrefixKind.JAVAC, "opt.Xlint.none", new Object[0])));
            }
        };
        XLINT_CUSTOM = option5;
        Option option6 = new Option("XDOCLINT", 5, "-Xdoclint", "opt.Xdoclint", optionKind2, optionGroup);
        XDOCLINT = option6;
        Option option7 = new Option("XDOCLINT_CUSTOM", 6, "-Xdoclint:", "opt.Xdoclint.subopts", "opt.Xdoclint.custom", optionKind2, optionGroup) {
            @Override
            public boolean matches(String str) {
                return DocLint.isValidOption(str.replace(Option.XDOCLINT_CUSTOM.primaryName, DocLint.XMSGS_CUSTOM_PREFIX));
            }

            @Override
            public void process(OptionHelper optionHelper, String str) {
                Option option8 = Option.XDOCLINT_CUSTOM;
                String str2 = optionHelper.get(option8);
                if (str2 != null) {
                    str = str2 + " " + str;
                }
                optionHelper.put(option8.primaryName, str);
            }
        };
        XDOCLINT_CUSTOM = option7;
        Option option8 = new Option("XDOCLINT_PACKAGE", 7, "-Xdoclint/package:", "opt.Xdoclint.package.args", "opt.Xdoclint.package.desc", optionKind2, optionGroup) {
            @Override
            public boolean matches(String str) {
                return DocLint.isValidOption(str.replace(Option.XDOCLINT_PACKAGE.primaryName, DocLint.XCHECK_PACKAGE));
            }

            @Override
            public void process(OptionHelper optionHelper, String str) {
                Option option9 = Option.XDOCLINT_PACKAGE;
                String str2 = optionHelper.get(option9);
                if (str2 != null) {
                    str = str2 + " " + str;
                }
                optionHelper.put(option9.primaryName, str);
            }
        };
        XDOCLINT_PACKAGE = option8;
        ChoiceKind choiceKind2 = ChoiceKind.ONEOF;
        Option option9 = new Option("DOCLINT_FORMAT", 8, "--doclint-format", "opt.doclint.format", optionKind2, optionGroup, choiceKind2, "html4", "html5");
        DOCLINT_FORMAT = option9;
        Option option10 = new Option("NOWARN", 9, "-nowarn", "opt.nowarn", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str) {
                optionHelper.put("-Xlint:none", str);
            }
        };
        NOWARN = option10;
        Option option11 = new Option("VERBOSE", 10, "-verbose", "opt.verbose", optionKind, optionGroup);
        VERBOSE = option11;
        Option option12 = new Option("DEPRECATION", 11, "-deprecation", "opt.deprecation", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str) {
                optionHelper.put("-Xlint:deprecation", str);
            }
        };
        DEPRECATION = option12;
        OptionGroup optionGroup2 = OptionGroup.FILEMANAGER;
        Option option13 = new Option("CLASS_PATH", 12, "--class-path -classpath -cp", "opt.arg.path", "opt.classpath", optionKind, optionGroup2);
        CLASS_PATH = option13;
        Option option14 = new Option("SOURCE_PATH", 13, "--source-path -sourcepath", "opt.arg.path", "opt.sourcepath", optionKind, optionGroup2);
        SOURCE_PATH = option14;
        Option option15 = new Option("MODULE_SOURCE_PATH", 14, "--module-source-path", "opt.arg.mspath", "opt.modulesourcepath", optionKind, optionGroup2);
        MODULE_SOURCE_PATH = option15;
        Option option16 = new Option("MODULE_PATH", 15, "--module-path -p", "opt.arg.path", "opt.modulepath", optionKind, optionGroup2);
        MODULE_PATH = option16;
        Option option17 = new Option("UPGRADE_MODULE_PATH", 16, "--upgrade-module-path", "opt.arg.path", "opt.upgrademodulepath", optionKind, optionGroup2);
        UPGRADE_MODULE_PATH = option17;
        Option option18 = new Option("SYSTEM", 17, "--system", "opt.arg.jdk", "opt.system", optionKind, optionGroup2);
        SYSTEM = option18;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7("PATCH_MODULE", 18, "--patch-module", "opt.arg.patch", "opt.patch", optionKind2, optionGroup2);
        PATCH_MODULE = anonymousClass7;
        Option option19 = new Option("BOOT_CLASS_PATH", 19, "--boot-class-path -bootclasspath", "opt.arg.path", "opt.bootclasspath", optionKind, optionGroup2) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                optionHelper.remove("-Xbootclasspath/p:");
                optionHelper.remove("-Xbootclasspath/a:");
                super.process(optionHelper, str, str2);
            }
        };
        BOOT_CLASS_PATH = option19;
        Option option20 = new Option("XBOOTCLASSPATH_PREPEND", 20, "-Xbootclasspath/p:", "opt.arg.path", "opt.Xbootclasspath.p", optionKind2, optionGroup2);
        XBOOTCLASSPATH_PREPEND = option20;
        Option option21 = new Option("XBOOTCLASSPATH_APPEND", 21, "-Xbootclasspath/a:", "opt.arg.path", "opt.Xbootclasspath.a", optionKind2, optionGroup2);
        XBOOTCLASSPATH_APPEND = option21;
        Option option22 = new Option("XBOOTCLASSPATH", 22, "-Xbootclasspath:", "opt.arg.path", "opt.bootclasspath", optionKind2, optionGroup2) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                optionHelper.remove("-Xbootclasspath/p:");
                optionHelper.remove("-Xbootclasspath/a:");
                super.process(optionHelper, "-bootclasspath", str2);
            }
        };
        XBOOTCLASSPATH = option22;
        Option option23 = new Option("EXTDIRS", 23, "-extdirs", "opt.arg.dirs", "opt.extdirs", optionKind, optionGroup2);
        EXTDIRS = option23;
        Option option24 = new Option("DJAVA_EXT_DIRS", 24, "-Djava.ext.dirs=", "opt.arg.dirs", "opt.extdirs", optionKind2, optionGroup2) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                Option.EXTDIRS.process(optionHelper, "-extdirs", str2);
            }
        };
        DJAVA_EXT_DIRS = option24;
        Option option25 = new Option("ENDORSEDDIRS", 25, "-endorseddirs", "opt.arg.dirs", "opt.endorseddirs", optionKind, optionGroup2);
        ENDORSEDDIRS = option25;
        Option option26 = new Option("DJAVA_ENDORSED_DIRS", 26, "-Djava.endorsed.dirs=", "opt.arg.dirs", "opt.endorseddirs", optionKind2, optionGroup2) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                Option.ENDORSEDDIRS.process(optionHelper, "-endorseddirs", str2);
            }
        };
        DJAVA_ENDORSED_DIRS = option26;
        Option option27 = new Option("PROC", 27, "-proc:", "opt.proc.none.only", optionKind, optionGroup, choiceKind2, "none", "only");
        PROC = option27;
        Option option28 = new Option("PROCESSOR", 28, "-processor", "opt.arg.class.list", "opt.processor", optionKind, optionGroup);
        PROCESSOR = option28;
        Option option29 = new Option("PROCESSOR_PATH", 29, "--processor-path -processorpath", "opt.arg.path", "opt.processorpath", optionKind, optionGroup2);
        PROCESSOR_PATH = option29;
        Option option30 = new Option("PROCESSOR_MODULE_PATH", 30, "--processor-module-path", "opt.arg.path", "opt.processormodulepath", optionKind, optionGroup2);
        PROCESSOR_MODULE_PATH = option30;
        Option option31 = new Option("PARAMETERS", 31, "-parameters", "opt.parameters", optionKind, optionGroup);
        PARAMETERS = option31;
        Option option32 = new Option(Signature.SIG_DOUBLE, 32, "-d", "opt.arg.directory", "opt.d", optionKind, optionGroup2);
        f103255D = option32;
        Option option33 = new Option("S", 33, "-s", "opt.arg.directory", "opt.sourceDest", optionKind, optionGroup2);
        f103260S = option33;
        Option option34 = new Option(DateFormat.HOUR24, 34, "-h", "opt.arg.directory", "opt.headerDest", optionKind, optionGroup2);
        f103257H = option34;
        Option option35 = new Option("IMPLICIT", 35, "-implicit:", "opt.implicit", optionKind, optionGroup, choiceKind2, "none", "class");
        IMPLICIT = option35;
        Option option36 = new Option("ENCODING", 36, "-encoding", "opt.arg.encoding", "opt.encoding", optionKind, optionGroup2);
        ENCODING = option36;
        Option option37 = new Option("SOURCE", 37, "-source", "opt.arg.release", "opt.source", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                if (Source.lookup(str2) == null) {
                    throw optionHelper.newInvalidValueException("err.invalid.source", str2);
                }
                super.process(optionHelper, str, str2);
            }
        };
        SOURCE = option37;
        Option option38 = new Option("TARGET", 38, "-target", "opt.arg.release", "opt.target", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                if (Target.lookup(str2) == null) {
                    throw optionHelper.newInvalidValueException("err.invalid.target", str2);
                }
                super.process(optionHelper, str, str2);
            }
        };
        TARGET = option38;
        AnonymousClass14 anonymousClass14 = new AnonymousClass14("RELEASE", 39, "--release", "opt.arg.release", "opt.release", optionKind, optionGroup);
        RELEASE = anonymousClass14;
        Option option39 = new Option("PROFILE", 40, "-profile", "opt.arg.profile", "opt.profile", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                if (Profile.lookup(str2) == null) {
                    throw optionHelper.newInvalidValueException("err.invalid.profile", str2);
                }
                super.process(optionHelper, str, str2);
            }
        };
        PROFILE = option39;
        OptionGroup optionGroup3 = OptionGroup.INFO;
        Option option40 = new Option("VERSION", 41, "--version -version", "opt.version", optionKind, optionGroup3) {
            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                optionHelper.getLog().printLines(Log.WriterKind.STDOUT, Log.PrefixKind.JAVAC, "version", optionHelper.getOwnName(), JavaCompiler.version());
                super.process(optionHelper, str);
            }
        };
        VERSION = option40;
        OptionKind optionKind3 = OptionKind.HIDDEN;
        Option option41 = new Option("FULLVERSION", 42, "--full-version -fullversion", null, optionKind3, optionGroup3) {
            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                optionHelper.getLog().printLines(Log.WriterKind.STDOUT, Log.PrefixKind.JAVAC, "fullVersion", optionHelper.getOwnName(), JavaCompiler.fullVersion());
                super.process(optionHelper, str);
            }
        };
        FULLVERSION = option41;
        Option option42 = new Option("HELP", 43, "--help -help", "opt.help", optionKind, optionGroup3) {
            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                Log log = optionHelper.getLog();
                String ownName = optionHelper.getOwnName();
                Log.WriterKind writerKind = Log.WriterKind.STDOUT;
                log.printLines(writerKind, Log.PrefixKind.JAVAC, "msg.usage.header", ownName);
                Option.showHelp(log, OptionKind.STANDARD);
                log.printNewline(writerKind);
                super.process(optionHelper, str);
            }
        };
        HELP = option42;
        ArgKind argKind = ArgKind.ADJACENT;
        Option option43 = new Option(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, 44, "-A", "opt.arg.key.equals.value", "opt.A", optionKind, optionGroup, argKind) {
            @Override
            public boolean hasArg() {
                return false;
            }

            @Override
            public boolean matches(String str) {
                return str.startsWith("-A");
            }

            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                int length = str.length();
                if (length == 2) {
                    throw optionHelper.newInvalidValueException("err.empty.A.argument", new Object[0]);
                }
                int indexOf = str.indexOf(61);
                if (indexOf != -1) {
                    length = indexOf;
                }
                if (!JavacProcessingEnvironment.isValidOptionName(str.substring(2, length))) {
                    throw optionHelper.newInvalidValueException("err.invalid.A.key", str);
                }
                optionHelper.put(str, str);
            }
        };
        f103254A = option43;
        Option option44 = new Option("DEFAULT_MODULE_FOR_CREATED_FILES", 45, "--default-module-for-created-files", "opt.arg.default.module.for.created.files", "opt.default.module.for.created.files", optionKind2, optionGroup) {
            @Override
            public Pattern getPattern() {
                return Pattern.compile("[^,].*");
            }

            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                Option option45 = Option.DEFAULT_MODULE_FOR_CREATED_FILES;
                if (optionHelper.get(option45) != null) {
                    throw optionHelper.newInvalidValueException("err.option.too.many", option45.primaryName);
                }
                if (str2.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str);
                }
                if (!getPattern().matcher(str2).matches()) {
                    throw optionHelper.newInvalidValueException("err.bad.value.for.option", str, str2);
                }
                optionHelper.put(option45.primaryName, str2);
            }
        };
        DEFAULT_MODULE_FOR_CREATED_FILES = option44;
        Option option45 = new Option("X", 46, "--help-extra -X", "opt.X", optionKind, optionGroup3) {
            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                Log log = optionHelper.getLog();
                Option.showHelp(log, OptionKind.EXTENDED);
                Log.WriterKind writerKind = Log.WriterKind.STDOUT;
                log.printNewline(writerKind);
                log.printLines(writerKind, Log.PrefixKind.JAVAC, "msg.usage.nonstandard.footer", new Object[0]);
                super.process(optionHelper, str);
            }
        };
        f103261X = option45;
        Option option46 = new Option(Signature.SIG_LONG, 47, "-J", "opt.arg.flag", "opt.J", optionKind, optionGroup3, argKind) {
            @Override
            public void process(OptionHelper optionHelper, String str) {
                throw new AssertionError((Object) "the -J flag should be caught by the launcher.");
            }
        };
        f103258J = option46;
        Option option47 = new Option("MOREINFO", 48, "-moreinfo", null, optionKind3, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
                Type.moreInfo = true;
                super.process(optionHelper, str);
            }
        };
        MOREINFO = option47;
        Option option48 = new Option("WERROR", 49, "-Werror", "opt.Werror", optionKind, optionGroup);
        WERROR = option48;
        Option option49 = new Option("PROMPT", 50, "-prompt", null, optionKind3, optionGroup);
        PROMPT = option49;
        Option option50 = new Option("DOE", 51, "-doe", null, optionKind3, optionGroup);
        DOE = option50;
        Option option51 = new Option("PRINTSOURCE", 52, "-printsource", null, optionKind3, optionGroup);
        PRINTSOURCE = option51;
        Option option52 = new Option("WARNUNCHECKED", 53, "-warnunchecked", null, optionKind3, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str) {
                optionHelper.put("-Xlint:unchecked", str);
            }
        };
        WARNUNCHECKED = option52;
        Option option53 = new Option("XMAXERRS", 54, "-Xmaxerrs", "opt.arg.number", "opt.maxerrs", optionKind2, optionGroup);
        XMAXERRS = option53;
        Option option54 = new Option("XMAXWARNS", 55, "-Xmaxwarns", "opt.arg.number", "opt.maxwarns", optionKind2, optionGroup);
        XMAXWARNS = option54;
        Option option55 = new Option("XSTDOUT", 56, "-Xstdout", "opt.arg.file", "opt.Xstdout", optionKind2, optionGroup3) {
            @Override
            public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
                try {
                    optionHelper.getLog().setWriters(new PrintWriter((Writer) new FileWriter(str2), true));
                    super.process(optionHelper, str, str2);
                } catch (IOException e10) {
                    throw optionHelper.newInvalidValueException("err.error.writing.file", str2, e10);
                }
            }
        };
        XSTDOUT = option55;
        Option option56 = new Option("XPRINT", 57, "-Xprint", "opt.print", optionKind2, optionGroup);
        XPRINT = option56;
        Option option57 = new Option("XPRINTROUNDS", 58, "-XprintRounds", "opt.printRounds", optionKind2, optionGroup);
        XPRINTROUNDS = option57;
        Option option58 = new Option("XPRINTPROCESSORINFO", 59, "-XprintProcessorInfo", "opt.printProcessorInfo", optionKind2, optionGroup);
        XPRINTPROCESSORINFO = option58;
        Option option59 = new Option("XPREFER", 60, "-Xprefer:", "opt.prefer", optionKind2, optionGroup, choiceKind2, "source", "newer");
        XPREFER = option59;
        Option option60 = new Option("XXUSERPATHSFIRST", 61, "-XXuserPathsFirst", "opt.userpathsfirst", optionKind3, optionGroup);
        XXUSERPATHSFIRST = option60;
        Option option61 = new Option("XPKGINFO", 62, "-Xpkginfo:", "opt.pkginfo", optionKind2, optionGroup, choiceKind2, "always", "legacy", "nonempty");
        XPKGINFO = option61;
        String str = null;
        Option option62 = new Option("O", 63, "-O", null, optionKind3, optionGroup);
        f103259O = option62;
        Option option63 = new Option("XJCOV", 64, "-Xjcov", null, optionKind3, optionGroup);
        XJCOV = option63;
        Option option64 = new Option("PLUGIN", 65, "-Xplugin:", "opt.arg.plugin", "opt.plugin", optionKind2, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str2) {
                String trim = str2.substring(str2.indexOf(58) + 1).trim();
                Option option65 = Option.PLUGIN;
                String str3 = optionHelper.get(option65);
                String str4 = option65.primaryName;
                if (str3 != null) {
                    trim = str3 + (char) 0 + trim;
                }
                optionHelper.put(str4, trim);
            }
        };
        PLUGIN = option64;
        Option option65 = new Option("XDIAGS", 66, "-Xdiags:", "opt.diags", optionKind2, optionGroup, choiceKind2, JavaCore.COMPACT, "verbose");
        XDIAGS = option65;
        Option option66 = new Option("DEBUG", 67, "--debug:", str, optionKind3, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str2) throws InvalidValueException {
                HiddenGroup.DEBUG.process(optionHelper, str2);
            }
        };
        DEBUG = option66;
        Option option67 = new Option("SHOULDSTOP", 68, "--should-stop:", str, optionKind3, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str2) throws InvalidValueException {
                HiddenGroup.SHOULDSTOP.process(optionHelper, str2);
            }
        };
        SHOULDSTOP = option67;
        Option option68 = new Option("DIAGS", 69, "--diags:", str, optionKind3, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str2) throws InvalidValueException {
                HiddenGroup.DIAGS.process(optionHelper, str2);
            }
        };
        DIAGS = option68;
        Option option69 = new Option("XD", 70, "-XD", str, optionKind3, optionGroup) {
            @Override
            public boolean matches(String str2) {
                return str2.startsWith(this.primaryName);
            }

            @Override
            public void process(OptionHelper optionHelper, String str2) {
                process(optionHelper, str2, str2.substring(this.primaryName.length()));
            }

            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) {
                int indexOf = str3.indexOf(61);
                String substring = indexOf < 0 ? str3 : str3.substring(0, indexOf);
                if (indexOf >= 0) {
                    str3 = str3.substring(indexOf + 1);
                }
                optionHelper.put(substring, str3);
            }
        };
        XD = option69;
        Option option70 = new Option("ADD_EXPORTS", 71, "--add-exports", "opt.arg.addExports", "opt.addExports", optionKind2, optionGroup) {
            @Override
            public Pattern getPattern() {
                return Pattern.compile("([^/]+)/([^=]+)=(,*[^,].*)");
            }

            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) throws InvalidValueException {
                if (str3.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str2);
                }
                if (!getPattern().matcher(str3).matches()) {
                    throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                }
                Option option71 = Option.ADD_EXPORTS;
                String str4 = optionHelper.get(option71);
                String str5 = option71.primaryName;
                if (str4 != null) {
                    str3 = str4 + (char) 0 + str3;
                }
                optionHelper.put(str5, str3);
            }
        };
        ADD_EXPORTS = option70;
        Option option71 = new Option("ADD_OPENS", 72, "--add-opens", (String) null, (String) null, optionKind3, optionGroup);
        ADD_OPENS = option71;
        Option option72 = new Option("ADD_READS", 73, "--add-reads", "opt.arg.addReads", "opt.addReads", optionKind2, optionGroup) {
            @Override
            public Pattern getPattern() {
                return Pattern.compile("([^=]+)=(,*[^,].*)");
            }

            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) throws InvalidValueException {
                if (str3.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str2);
                }
                if (!getPattern().matcher(str3).matches()) {
                    throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                }
                Option option73 = Option.ADD_READS;
                String str4 = optionHelper.get(option73);
                String str5 = option73.primaryName;
                if (str4 != null) {
                    str3 = str4 + (char) 0 + str3;
                }
                optionHelper.put(str5, str3);
            }
        };
        ADD_READS = option72;
        Option option73 = new Option("MODULE", 74, "--module -m", "opt.arg.m", "opt.m", optionKind, optionGroup);
        MODULE = option73;
        Option option74 = new Option("ADD_MODULES", 75, "--add-modules", "opt.arg.addmods", "opt.addmods", optionKind, optionGroup) {
            @Override
            public Pattern getPattern() {
                return Pattern.compile(",*[^,].*");
            }

            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) throws InvalidValueException {
                if (str3.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str2);
                }
                if (!getPattern().matcher(str3).matches()) {
                    throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                }
                Option option75 = Option.ADD_MODULES;
                String str4 = optionHelper.get(option75);
                String str5 = option75.primaryName;
                if (str4 != null) {
                    str3 = str4 + IIndexConstants.PARAMETER_SEPARATOR + str3;
                }
                optionHelper.put(str5, str3);
            }
        };
        ADD_MODULES = option74;
        Option option75 = new Option("LIMIT_MODULES", 76, "--limit-modules", "opt.arg.limitmods", "opt.limitmods", optionKind, optionGroup) {
            @Override
            public Pattern getPattern() {
                return Pattern.compile(",*[^,].*");
            }

            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) throws InvalidValueException {
                if (str3.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str2);
                }
                if (!getPattern().matcher(str3).matches()) {
                    throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                }
                optionHelper.put(Option.LIMIT_MODULES.primaryName, str3);
            }
        };
        LIMIT_MODULES = option75;
        Option option76 = new Option("MODULE_VERSION", 77, "--module-version", "opt.arg.module.version", "opt.module.version", optionKind, optionGroup) {
            @Override
            public void process(OptionHelper optionHelper, String str2, String str3) throws InvalidValueException {
                if (str3.isEmpty()) {
                    throw optionHelper.newInvalidValueException("err.no.value.for.option", str2);
                }
                try {
                    Class.forName(JDK9Wrappers.ModuleDescriptor.Version.CLASSNAME);
                    try {
                        JDK9Wrappers.ModuleDescriptor.Version.parse(str3);
                    } catch (IllegalArgumentException unused) {
                        throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                    }
                } catch (ClassNotFoundException unused2) {
                    if (str3.charAt(0) < '0' || str3.charAt(0) > '9' || str3.endsWith("-") || str3.endsWith("+")) {
                        throw optionHelper.newInvalidValueException("err.bad.value.for.option", str2, str3);
                    }
                }
                super.process(optionHelper, str2, str3);
            }
        };
        MODULE_VERSION = option76;
        Option option77 = new Option("AT", 78, "@", "opt.arg.file", "opt.AT", optionKind, optionGroup3, argKind) {
            @Override
            public void process(OptionHelper optionHelper, String str2) {
                throw new AssertionError((Object) "the @ flag should be caught by CommandLine.");
            }
        };
        AT = option77;
        Option option78 = new Option("SOURCEFILE", 79, "sourcefile", null, optionKind3, optionGroup3) {
            @Override
            public boolean matches(String str2) {
                if (str2.endsWith(".java")) {
                    return true;
                }
                int indexOf = str2.indexOf(47);
                return indexOf != -1 ? SourceVersion.isName(str2.substring(0, indexOf)) && SourceVersion.isName(str2.substring(indexOf + 1)) : SourceVersion.isName(str2);
            }

            @Override
            public void process(OptionHelper optionHelper, String str2) throws InvalidValueException {
                if (!str2.endsWith(".java")) {
                    optionHelper.addClassName(str2);
                    return;
                }
                Path path = Paths.get(str2, new String[0]);
                if (!Files.exists(path, new LinkOption[0])) {
                    throw optionHelper.newInvalidValueException("err.file.not.found", path);
                }
                if (!Files.isRegularFile(path, new LinkOption[0])) {
                    throw optionHelper.newInvalidValueException("err.file.not.file", path);
                }
                optionHelper.addFile(path);
            }
        };
        SOURCEFILE = option78;
        Option option79 = new Option("MULTIRELEASE", 80, "--multi-release", "opt.arg.multi-release", "opt.multi-release", optionKind3, optionGroup2);
        MULTIRELEASE = option79;
        AnonymousClass38 anonymousClass38 = new AnonymousClass38("INHERIT_RUNTIME_ENVIRONMENT", 81, "--inherit-runtime-environment", "opt.inherit_runtime_environment", optionKind3, optionGroup);
        INHERIT_RUNTIME_ENVIRONMENT = anonymousClass38;
        $VALUES = new Option[]{option, option2, option3, option4, option5, option6, option7, option8, option9, option10, option11, option12, option13, option14, option15, option16, option17, option18, anonymousClass7, option19, option20, option21, option22, option23, option24, option25, option26, option27, option28, option29, option30, option31, option32, option33, option34, option35, option36, option37, option38, anonymousClass14, option39, option40, option41, option42, option43, option44, option45, option46, option47, option48, option49, option50, option51, option52, option53, option54, option55, option56, option57, option58, option59, option60, option61, option62, option63, option64, option65, option66, option67, option68, option69, option70, option71, option72, option73, option74, option75, option76, option77, option78, option79, anonymousClass38};
    }

    private static int findSeparator(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt == ':' || charAt == '=') {
                return i10;
            }
        }
        return -1;
    }

    public static Set<Option> getJavaCompilerOptions() {
        return EnumSet.allOf(Option.class);
    }

    public static Set<Option> getJavacFileManagerOptions() {
        return getOptions(OptionGroup.FILEMANAGER);
    }

    public static Set<Option> getJavacToolOptions() {
        return getOptions(OptionGroup.BASIC);
    }

    private static Set<Option> getOptions(final OptionGroup optionGroup) {
        return (Set) Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getOptions$3;
                lambda$getOptions$3 = Option.lambda$getOptions$3(Option.OptionGroup.this, (Option) obj);
                return lambda$getOptions$3;
            }
        }).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                EnumSet lambda$getOptions$4;
                lambda$getOptions$4 = Option.lambda$getOptions$4();
                return lambda$getOptions$4;
            }
        }));
    }

    private static Set<String> getXLintChoices() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(Tj.d.f25405q);
        for (Lint.LintCategory lintCategory : Lint.LintCategory.values()) {
            linkedHashSet.add(lintCategory.option);
            linkedHashSet.add("-" + lintCategory.option);
        }
        linkedHashSet.add("none");
        return linkedHashSet;
    }

    public String lambda$help$2(String str, Log log) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        if (this.argsNameKey != null) {
            if (!str.matches(".*[=:]$") && this.argKind != ArgKind.ADJACENT) {
                sb2.append(" ");
            }
            sb2.append(log.localize(Log.PrefixKind.JAVAC, this.argsNameKey, new Object[0]));
        } else if (this.choices != null) {
            if (!str.endsWith(b3.s.f32937c)) {
                sb2.append(" ");
            }
            String str2 = "{";
            for (String str3 : this.choices) {
                sb2.append(str2);
                sb2.append(str3);
                str2 = DocLint.SEPARATOR;
            }
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
        }
        return sb2.toString();
    }

    public static boolean lambda$getOptions$3(OptionGroup optionGroup, Option option) {
        return option.group == optionGroup;
    }

    public static EnumSet lambda$getOptions$4() {
        return EnumSet.noneOf(Option.class);
    }

    public static boolean lambda$showHelp$0(OptionKind optionKind, Option option) {
        return option.kind == optionKind;
    }

    public static Option lookup(String str) {
        return lookup(str, EnumSet.allOf(Option.class));
    }

    public static void showHelp(final Log log, final OptionKind optionKind) {
        getJavaCompilerOptions().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$showHelp$0;
                lambda$showHelp$0 = Option.lambda$showHelp$0(Option.OptionKind.this, (Option) obj);
                return lambda$showHelp$0;
            }
        }).sorted(new Comparator<Option>() {
            final Collator collator;

            {
                Collator collator = Collator.getInstance(Locale.US);
                this.collator = collator;
                collator.setStrength(0);
            }

            @Override
            public int compare(Option option, Option option2) {
                return this.collator.compare(option.primaryName, option2.primaryName);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Option) obj).help(Log.this);
            }
        });
    }

    public static Option valueOf(String str) {
        return (Option) Enum.valueOf(Option.class, str);
    }

    public static Option[] values() {
        return (Option[]) $VALUES.clone();
    }

    public ArgKind getArgKind() {
        return this.argKind;
    }

    public OptionKind getKind() {
        return this.kind;
    }

    public Pattern getPattern() {
        throw new UnsupportedOperationException();
    }

    public String getPrimaryName() {
        return this.primaryName;
    }

    public void handleOption(OptionHelper optionHelper, String str, Iterator<String> it) throws InvalidValueException {
        String next;
        String substring;
        String substring2;
        if (!hasArg()) {
            process(optionHelper, str);
            return;
        }
        int findSeparator = findSeparator(str);
        if (getArgKind() == ArgKind.ADJACENT) {
            substring = this.primaryName;
            substring2 = str.substring(substring.length());
        } else {
            if (findSeparator <= 0) {
                if (!it.hasNext()) {
                    throw optionHelper.newInvalidValueException("err.req.arg", str);
                }
                next = it.next();
                process(optionHelper, str, next);
            }
            substring = str.substring(0, findSeparator);
            substring2 = str.substring(findSeparator + 1);
        }
        String str2 = substring;
        next = substring2;
        str = str2;
        process(optionHelper, str, next);
    }

    public boolean hasArg() {
        return this.argKind != ArgKind.NONE;
    }

    public void help(Log log) {
        help(log, log.localize(Log.PrefixKind.JAVAC, this.descrKey, new Object[0]));
    }

    public boolean matches(String str) {
        for (String str2 : this.names) {
            if (matches(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public void process(OptionHelper optionHelper, String str) throws InvalidValueException {
        if (this.argKind == ArgKind.NONE) {
            process(optionHelper, this.primaryName, str);
        } else {
            process(optionHelper, this.primaryName, str.substring(findSeparator(str) + 1));
        }
    }

    public static Option lookup(String str, Set<Option> set) {
        for (Option option : set) {
            if (option.matches(str)) {
                return option;
            }
        }
        return null;
    }

    public void help(final Log log, String str) {
        String str2 = (String) Arrays.stream(this.names).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$help$2;
                lambda$help$2 = Option.this.lambda$help$2(log, (String) obj);
                return lambda$help$2;
            }
        }).collect(Collectors.joining(", "));
        if (str2.length() < 28 && !str.contains("\n") && 31 + str.length() <= 80) {
            log.printRawLines(Log.WriterKind.STDOUT, String.format(COMPACT_FORMAT, str2, str));
            return;
        }
        if (str2.length() <= 80) {
            log.printRawLines(Log.WriterKind.STDOUT, "  " + str2);
        } else {
            for (String str3 : this.names) {
                log.printRawLines(Log.WriterKind.STDOUT, "  " + lambda$help$2(str3, log));
            }
        }
        log.printRawLines(Log.WriterKind.STDOUT, LARGE_INDENT + str.replace("\n", "\n        "));
    }

    private boolean matches(String str, String str2) {
        if (str2.startsWith("--") && !HiddenGroup.skip(str2)) {
            if (str.equals(str2)) {
                return true;
            }
            if (hasArg()) {
                if (str.startsWith(str2 + "=")) {
                    return true;
                }
            }
            return false;
        }
        if (this.argKind != ArgKind.ADJACENT && !str2.endsWith(b3.s.f32937c) && !str2.endsWith("=")) {
            return str.equals(str2);
        }
        if (!str.startsWith(str2)) {
            return false;
        }
        if (this.choices != null) {
            String substring = str.substring(str2.length());
            if (this.choiceKind == ChoiceKind.ONEOF) {
                return this.choices.contains(substring);
            }
            for (String str3 : substring.split(",+")) {
                if (!this.choices.contains(str3)) {
                    return false;
                }
            }
        }
        return true;
    }

    private Option(String str, int i10, String str2, String str3, OptionKind optionKind, OptionGroup optionGroup) {
        this(str, i10, str2, (String) null, str3, optionKind, optionGroup, (ChoiceKind) null, (Set) null, ArgKind.NONE);
    }

    public void process(OptionHelper optionHelper, String str, String str2) throws InvalidValueException {
        Set<String> set = this.choices;
        if (set != null) {
            if (this.choiceKind == ChoiceKind.ONEOF) {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    optionHelper.remove(this.primaryName + it.next());
                }
                String str3 = this.primaryName + str2;
                optionHelper.put(str3, str3);
                optionHelper.put(this.primaryName.substring(0, r7.length() - 1), str2);
            } else {
                for (String str4 : str2.split(",+")) {
                    String str5 = this.primaryName + str4;
                    optionHelper.put(str5, str5);
                }
            }
        }
        optionHelper.put(this.primaryName, str2);
        if (this.group == OptionGroup.FILEMANAGER) {
            optionHelper.handleFileManagerOption(this, str2);
        }
    }

    private Option(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup) {
        this(str, i10, str2, str3, str4, optionKind, optionGroup, (ChoiceKind) null, (Set) null, ArgKind.REQUIRED);
    }

    private Option(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup, ArgKind argKind) {
        this(str, i10, str2, str3, str4, optionKind, optionGroup, (ChoiceKind) null, (Set) null, argKind);
    }

    private Option(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup, ChoiceKind choiceKind, Set set) {
        this(str, i10, str2, str3, str4, optionKind, optionGroup, choiceKind, set, ArgKind.REQUIRED);
    }

    private Option(String str, int i10, String str2, String str3, OptionKind optionKind, OptionGroup optionGroup, ChoiceKind choiceKind, String... strArr) {
        this(str, i10, str2, (String) null, str3, optionKind, optionGroup, choiceKind, new LinkedHashSet(Arrays.asList(strArr)), ArgKind.REQUIRED);
    }

    private Option(String str, int i10, String str2, String str3, String str4, OptionKind optionKind, OptionGroup optionGroup, ChoiceKind choiceKind, Set set, ArgKind argKind) {
        String[] split = str2.trim().split("\\s+");
        this.names = split;
        Assert.check(split.length >= 1);
        this.primaryName = split[0];
        this.argsNameKey = str3;
        this.descrKey = str4;
        this.kind = optionKind;
        this.group = optionGroup;
        this.choiceKind = choiceKind;
        this.choices = set;
        this.argKind = argKind;
    }
}
