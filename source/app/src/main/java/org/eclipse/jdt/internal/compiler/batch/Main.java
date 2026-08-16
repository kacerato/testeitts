package org.eclipse.jdt.internal.compiler.batch;

import b3.s;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.function.Consumer;
import okhttp3.v;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.ModuleFinder;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblem;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.GenericXMLWriter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfInt;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;
import yd.C16181m;

public class Main implements ProblemSeverities, SuffixConstants {
    private static final String ANNOTATION_SOURCE_CLASSPATH = "CLASSPATH";
    public static final int DEFAULT_SIZE_CLASSPATH = 4;
    public static final String NONE = "none";
    public static final int TIMING_DETAILED = 2;
    public static final int TIMING_DISABLED = 0;
    public static final int TIMING_ENABLED = 1;
    public static final String bundleName = "org.eclipse.jdt.internal.compiler.batch.messages";
    private List<String> addonExports;
    private List<String> addonReads;
    protected List<String> annotationPaths;
    protected boolean annotationsFromClasspath;
    public Compiler batchCompiler;
    public ResourceBundle bundle;
    protected FileSystem.Classpath[] checkedClasspaths;
    public String[] classNames;
    public Locale compilerLocale;
    public CompilerOptions compilerOptions;
    public CompilerStats[] compilerStats;
    protected long complianceLevel;
    public int currentRepetition;
    public String destinationPath;
    public String[] destinationPaths;
    private boolean didSpecifySource;
    private boolean didSpecifyTarget;
    boolean enableJavadocOn;
    protected boolean enablePreview;
    public String[] encodings;
    private PrintWriter err;
    private String[] expandedCommandLine;
    public int exportedClassFilesCounter;
    protected ArrayList<CategorizedProblem> extraProblems;
    public String[] filenames;
    public int globalErrorsCount;
    public int globalInfoCount;
    public int globalProblemsCount;
    public int globalTasksCount;
    public int globalWarningsCount;
    public char[][] ignoreOptionalProblemsFromFolders;
    private File javaHomeCache;
    private boolean javaHomeChecked;
    public Set<String> limitedModules;
    public long lineCount0;
    public String log;
    public Logger logger;
    public int maxProblems;
    public int maxRepetition;
    public String[] modNames;
    protected IModule module;
    public Map<String, String> options;
    protected PrintWriter out;
    public ArrayList<String> pendingErrors;
    private boolean primaryNullAnnotationsSeen;
    public boolean proceed;
    public boolean proceedOnError;
    public boolean produceRefInfo;
    public CompilationProgress progress;
    protected String releaseVersion;
    public Set<String> rootModules;
    public boolean showProgress;
    public long startTime;
    public boolean systemExitWhenFinished;
    public int timing;
    public boolean verbose;
    boolean warnAllJavadocOn;
    boolean warnJavadocOn;

    public static class ResourceBundleFactory {
        private static HashMap<Locale, ResourceBundle> Cache = new HashMap<>();

        public static synchronized ResourceBundle getBundle(Locale locale) {
            ResourceBundle resourceBundle;
            synchronized (ResourceBundleFactory.class) {
                resourceBundle = Cache.get(locale);
                if (resourceBundle == null) {
                    resourceBundle = ResourceBundle.getBundle(Main.bundleName, locale);
                    Cache.put(locale, resourceBundle);
                }
            }
            return resourceBundle;
        }
    }

    public Main(PrintWriter printWriter, PrintWriter printWriter2, boolean z10) {
        this(printWriter, printWriter2, z10, null, null);
    }

    private boolean checkVMVersion(long j10) {
        int indexOf;
        String property = System.getProperty("java.class.version");
        if (property == null || (indexOf = property.indexOf(46)) == -1) {
            return false;
        }
        return ClassFileConstants.getComplianceLevelForJavaVersion(Integer.parseInt(property.substring(0, indexOf))) >= j10;
    }

    public static boolean compile(String str) {
        return new Main(new PrintWriter(System.out), new PrintWriter(System.err), false, null, null).compile(tokenize(str));
    }

    private static char[][] decodeIgnoreOptionalProblemsFromFolders(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator);
        char[][] cArr = new char[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            File file = new File(nextToken);
            if (file.exists()) {
                int i11 = i10 + 1;
                try {
                    cArr[i10] = file.getCanonicalPath().toCharArray();
                    i10 = i11;
                } catch (IOException unused) {
                    i10 += 2;
                    cArr[i11] = nextToken.toCharArray();
                }
            } else {
                cArr[i10] = nextToken.toCharArray();
                i10++;
            }
        }
        return cArr;
    }

    private IModule extractModuleDesc(String str) {
        HashMap hashMap = new HashMap(this.options);
        hashMap.put("org.eclipse.jdt.core.compiler.source", this.options.get("org.eclipse.jdt.core.compiler.compliance"));
        Parser parser = new Parser(new ProblemReporter(getHandlingPolicy(), new CompilerOptions(hashMap), getProblemFactory()), false);
        if (str.toLowerCase().endsWith("module-info.java")) {
            CompilationUnit compilationUnit = new CompilationUnit(null, str, null);
            CompilationUnitDeclaration parse = parser.parse(compilationUnit, new CompilationResult(compilationUnit, 0, 1, 10));
            if (!parse.isModuleInfo() || parse.moduleDeclaration == null) {
                return null;
            }
            return new BasicModule(parse.moduleDeclaration, null);
        }
        if (!str.toLowerCase().endsWith("module-info.class")) {
            return null;
        }
        try {
            return ClassFileReader.read(str).getModuleDeclaration();
        } catch (IOException | ClassFormatException e10) {
            e10.printStackTrace();
            throw new IllegalArgumentException(bind("configure.invalidModuleDescriptor", str));
        }
    }

    private static String getAllEncodings(Set<String> set) {
        int size = set.size();
        String[] strArr = new String[size];
        set.toArray(strArr);
        Arrays.sort(strArr);
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(strArr[i10]);
        }
        return String.valueOf(stringBuffer);
    }

    public static File[][] getLibrariesFiles(File[] fileArr) {
        FilenameFilter filenameFilter = new FilenameFilter() {
            @Override
            public boolean accept(File file, String str) {
                return Util.archiveFormat(str) > -1;
            }
        };
        int length = fileArr.length;
        File[][] fileArr2 = new File[length];
        for (int i10 = 0; i10 < length; i10++) {
            File file = fileArr[i10];
            if (file.exists() && file.isDirectory()) {
                fileArr2[i10] = file.listFiles(filenameFilter);
            }
        }
        return fileArr2;
    }

    private Parser getNewParser() {
        return new Parser(new ProblemReporter(getHandlingPolicy(), new CompilerOptions(this.options), getProblemFactory()), false);
    }

    private void handleErrorOrWarningToken(String str, boolean z10, int i10) {
        if (str.length() == 0) {
            return;
        }
        String str2 = null;
        switch (str.charAt(0)) {
            case 'a':
                if (str.equals("allDeprecation")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.deprecation", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.terminalDeprecation", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", z10 ? "enabled" : "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("allJavadoc")) {
                    this.warnJavadocOn = z10;
                    this.warnAllJavadocOn = z10;
                    setSeverity("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", i10, z10);
                    return;
                }
                if (str.equals("assertIdentifier")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.assertIdentifier", i10, z10);
                    return;
                }
                if (str.equals("allDeadCode")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.deadCode", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("allOver-ann")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", z10 ? "enabled" : "disabled");
                    return;
                } else if (str.equals("all-static-method")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic", i10, z10);
                    return;
                } else if (str.equals(Tj.d.f25405q)) {
                    if (z10) {
                        enableAll(i10);
                        return;
                    } else {
                        disableAll(i10);
                        return;
                    }
                }
                break;
            case 'b':
                if (str.equals("boxing")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.autoboxing", i10, z10);
                    return;
                }
                break;
            case 'c':
                if (str.equals("constructorName")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.methodWithConstructorName", i10, z10);
                    return;
                }
                if (str.equals("conditionAssign")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment", i10, z10);
                    return;
                } else if (str.equals("compareIdentical")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.comparingIdentical", i10, z10);
                    return;
                } else if (str.equals("charConcat")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", i10, z10);
                    return;
                }
                break;
            case 'd':
                if (str.equals("deprecation")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.deprecation", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "disabled");
                    return;
                } else if (str.equals("dep-ann")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation", i10, z10);
                    return;
                } else if (str.equals(ClasspathEntry.TAG_DISCOURAGED)) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.discouragedReference", i10, z10);
                    return;
                } else if (str.equals("deadCode")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.deadCode", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", "disabled");
                    return;
                }
                break;
            case 'e':
                if (str.equals("enumSwitch")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", i10, z10);
                    return;
                }
                if (str.equals("enumSwitchPedantic")) {
                    if (z10) {
                        if (i10 != 0) {
                            if (i10 == 1) {
                                setSeverity("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", i10, z10);
                            }
                        } else if ("ignore".equals(this.options.get("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch"))) {
                            setSeverity("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", i10, z10);
                        }
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("emptyBlock")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock", i10, z10);
                    return;
                } else if (str.equals("enumIdentifier")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.enumIdentifier", i10, z10);
                    return;
                } else if (str.equals("exports")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.APILeak", i10, z10);
                    return;
                }
                break;
            case 'f':
                if (str.equals("fieldHiding")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.fieldHiding", i10, z10);
                    return;
                }
                if (str.equals("finalBound")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.finalParameterBound", i10, z10);
                    return;
                }
                if (str.equals("finally")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally", i10, z10);
                    return;
                } else if (str.equals("forbidden")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.forbiddenReference", i10, z10);
                    return;
                } else if (str.equals("fallthrough")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.fallthroughCase", i10, z10);
                    return;
                }
                break;
            case 'h':
                if (str.equals("hiding")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.localVariableHiding", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.fieldHiding", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.typeParameterHiding", i10, z10);
                    return;
                }
                if (str.equals("hashCode")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod", i10, z10);
                    return;
                }
                break;
            case 'i':
                if (str.equals("indirectStatic")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", i10, z10);
                    return;
                }
                if (str.equals("inheritNullAnnot")) {
                    this.options.put("org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("intfNonInherited") || str.equals("interfaceNonInherited")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod", i10, z10);
                    return;
                }
                if (str.equals("intfAnnotation")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.annotationSuperInterface", i10, z10);
                    return;
                }
                if (str.equals("intfRedundant")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", i10, z10);
                    return;
                }
                if (str.equals("includeAssertNull")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("invalidJavadoc")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", z10 ? "enabled" : "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", z10 ? "enabled" : "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", z10 ? "enabled" : "disabled");
                    if (z10) {
                        this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                        this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility", "private");
                        return;
                    }
                    return;
                }
                if (str.equals("invalidJavadocTag")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("invalidJavadocTagDep")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("invalidJavadocTagNotVisible")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.startsWith("invalidJavadocTagVisibility")) {
                    int indexOf = str.indexOf(40);
                    int indexOf2 = str.indexOf(41);
                    if (z10 && indexOf >= 0 && indexOf2 >= 0 && indexOf < indexOf2) {
                        str2 = str.substring(indexOf + 1, indexOf2).trim();
                    }
                    String str3 = str2;
                    if ((str3 == null || !str3.equals("public")) && !str3.equals("private") && !str3.equals("protected") && !str3.equals("default")) {
                        throw new IllegalArgumentException(bind("configure.invalidJavadocTagVisibility", str));
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility", str3);
                    return;
                }
                break;
            case 'j':
                if (str.equals("javadoc")) {
                    this.warnJavadocOn = z10;
                    setSeverity("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", i10, z10);
                    return;
                }
                break;
            case 'l':
                if (str.equals("localHiding")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.localVariableHiding", i10, z10);
                    return;
                }
                break;
            case 'm':
                if (str.equals("maskedCatchBlock") || str.equals("maskedCatchBlocks")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", i10, z10);
                    return;
                }
                if (str.equals("missingJavadocTags")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding", z10 ? "enabled" : "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters", z10 ? "enabled" : "disabled");
                    if (z10) {
                        this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                        this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", "private");
                        return;
                    }
                    return;
                }
                if (str.equals("missingJavadocTagsOverriding")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("missingJavadocTagsMethod")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.startsWith("missingJavadocTagsVisibility")) {
                    int indexOf3 = str.indexOf(40);
                    int indexOf4 = str.indexOf(41);
                    if (z10 && indexOf3 >= 0 && indexOf4 >= 0 && indexOf3 < indexOf4) {
                        str2 = str.substring(indexOf3 + 1, indexOf4).trim();
                    }
                    String str4 = str2;
                    if ((str4 == null || !str4.equals("public")) && !str4.equals("private") && !str4.equals("protected") && !str4.equals("default")) {
                        throw new IllegalArgumentException(bind("configure.missingJavadocTagsVisibility", str));
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", str4);
                    return;
                }
                if (str.equals("missingJavadocComments")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding", z10 ? "enabled" : "disabled");
                    if (z10) {
                        this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                        this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility", "private");
                        return;
                    }
                    return;
                }
                if (str.equals("missingJavadocCommentsOverriding")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.startsWith("missingJavadocCommentsVisibility")) {
                    int indexOf5 = str.indexOf(40);
                    int indexOf6 = str.indexOf(41);
                    if (z10 && indexOf5 >= 0 && indexOf6 >= 0 && indexOf5 < indexOf6) {
                        str2 = str.substring(indexOf5 + 1, indexOf6).trim();
                    }
                    String str5 = str2;
                    if ((str5 == null || !str5.equals("public")) && !str5.equals("private") && !str5.equals("protected") && !str5.equals("default")) {
                        throw new IllegalArgumentException(bind("configure.missingJavadocCommentsVisibility", str));
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility", str5);
                    return;
                }
                if (str.equals(IClasspathAttribute.MODULE)) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName", i10, z10);
                    return;
                }
                break;
            case 'n':
                if (str.equals("nls")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral", i10, z10);
                    return;
                }
                if (str.equals("noEffectAssign")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.noEffectAssignment", i10, z10);
                    return;
                }
                if (str.equals("noImplicitStringConversion")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", i10, z10);
                    return;
                }
                if (str.equals("null")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullReference", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.potentialNullReference", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullCheck", i10, z10);
                    return;
                }
                if (str.equals("nullDereference")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullReference", i10, z10);
                    if (z10) {
                        return;
                    }
                    setSeverity("org.eclipse.jdt.core.compiler.problem.potentialNullReference", 256, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullCheck", 256, z10);
                    return;
                }
                if (str.equals("nullAnnotConflict")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict", i10, z10);
                    return;
                }
                if (str.equals("nullAnnotRedundant")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation", i10, z10);
                    return;
                }
                if (str.startsWith("nullAnnot")) {
                    String str6 = Util.EMPTY_STRING;
                    int indexOf7 = str.indexOf(40);
                    int indexOf8 = str.indexOf(41);
                    if (z10 && indexOf7 >= 0 && indexOf8 >= 0 && indexOf7 < indexOf8) {
                        boolean z11 = this.primaryNullAnnotationsSeen;
                        String trim = str.substring(indexOf7 + 1, indexOf8).trim();
                        int indexOf9 = trim.indexOf(124);
                        if (indexOf9 == -1) {
                            throw new IllegalArgumentException(bind("configure.invalidNullAnnot", str));
                        }
                        String trim2 = trim.substring(0, indexOf9).trim();
                        if (!z11 && trim2.length() == 0) {
                            throw new IllegalArgumentException(bind("configure.invalidNullAnnot", str));
                        }
                        int i11 = indexOf9 + 1;
                        int indexOf10 = trim.indexOf(124, i11);
                        if (indexOf10 == -1) {
                            throw new IllegalArgumentException(bind("configure.invalidNullAnnot", str));
                        }
                        String trim3 = trim.substring(i11, indexOf10).trim();
                        if (!z11 && trim3.length() == 0) {
                            throw new IllegalArgumentException(bind("configure.invalidNullAnnot", str));
                        }
                        String trim4 = trim.substring(indexOf10 + 1).trim();
                        if (!z11 && trim4.length() == 0) {
                            throw new IllegalArgumentException(bind("configure.invalidNullAnnot", str));
                        }
                        if (z11) {
                            if (trim2.length() > 0) {
                                String str7 = this.options.get("org.eclipse.jdt.core.compiler.annotation.nullable.secondary");
                                if (!str7.isEmpty()) {
                                    trim2 = str7 + IIndexConstants.PARAMETER_SEPARATOR + trim2;
                                }
                                this.options.put("org.eclipse.jdt.core.compiler.annotation.nullable.secondary", trim2);
                            }
                            if (trim3.length() > 0) {
                                String str8 = this.options.get("org.eclipse.jdt.core.compiler.annotation.nonnull.secondary");
                                if (!str8.isEmpty()) {
                                    trim3 = str8 + IIndexConstants.PARAMETER_SEPARATOR + trim3;
                                }
                                this.options.put("org.eclipse.jdt.core.compiler.annotation.nonnull.secondary", trim3);
                            }
                            if (trim4.length() > 0) {
                                String str9 = this.options.get("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary");
                                if (!str9.isEmpty()) {
                                    trim4 = str9 + IIndexConstants.PARAMETER_SEPARATOR + trim4;
                                }
                                this.options.put("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary", trim4);
                            }
                        } else {
                            this.primaryNullAnnotationsSeen = true;
                            this.options.put("org.eclipse.jdt.core.compiler.annotation.nullable", trim2);
                            this.options.put("org.eclipse.jdt.core.compiler.annotation.nonnull", trim3);
                            this.options.put("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault", trim4);
                        }
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.annotation.nullanalysis", z10 ? "enabled" : "disabled");
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullSpecViolation", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation", i10, z10);
                    return;
                }
                if (str.equals("nullUncheckedConversion")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion", i10, z10);
                    return;
                } else if (str.equals("nonnullNotRepeated")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped", i10, z10);
                    return;
                }
                break;
            case 'o':
                if (str.equals("over-sync")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", i10, z10);
                    return;
                } else if (str.equals("over-ann")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", "disabled");
                    return;
                }
                break;
            case 'p':
                if (str.equals("pkgDefaultMethod") || str.equals("packageDefaultMethod")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod", i10, z10);
                    return;
                } else if (str.equals("paramAssign")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.parameterAssignment", i10, z10);
                    return;
                }
                break;
            case 'r':
                if (str.equals("raw")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.rawTypeReference", i10, z10);
                    return;
                }
                if (str.equals("redundantSuperinterface")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", i10, z10);
                    return;
                }
                if (str.equals("resource")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unclosedCloseable", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable", i10, z10);
                    return;
                } else if (str.equals("removal")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.terminalDeprecation", i10, z10);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "disabled");
                    return;
                }
                break;
            case 's':
                if (str.equals("specialParamHiding")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.specialParameterHidingField", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("syntheticAccess") || str.equals("synthetic-access")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation", i10, z10);
                    return;
                }
                if (str.equals("staticReceiver")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", i10, z10);
                    return;
                }
                if (str.equals("syncOverride")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", i10, z10);
                    return;
                }
                if (str.equals("semicolon")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.emptyStatement", i10, z10);
                    return;
                }
                if (str.equals("serial")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingSerialVersion", i10, z10);
                    return;
                }
                if (str.equals("suppress")) {
                    if (i10 == 0) {
                        this.options.put("org.eclipse.jdt.core.compiler.problem.suppressWarnings", z10 ? "enabled" : "disabled");
                        this.options.put("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors", "disabled");
                        return;
                    } else {
                        if (i10 != 1) {
                            return;
                        }
                        this.options.put("org.eclipse.jdt.core.compiler.problem.suppressWarnings", z10 ? "enabled" : "disabled");
                        this.options.put("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors", z10 ? "enabled" : "disabled");
                        return;
                    }
                }
                if (str.equals("static-access")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", i10, z10);
                    return;
                }
                if (str.equals("super")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation", i10, z10);
                    return;
                }
                if (str.equals("static-method")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", i10, z10);
                    return;
                } else if (str.equals("switchDefault")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.missingDefaultCase", i10, z10);
                    return;
                } else if (str.equals("syntacticAnalysis")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields", z10 ? "enabled" : "disabled");
                    return;
                }
                break;
            case 't':
                if (str.startsWith("tasks")) {
                    String str10 = Util.EMPTY_STRING;
                    int indexOf11 = str.indexOf(40);
                    int indexOf12 = str.indexOf(41);
                    String replace = (indexOf11 < 0 || indexOf12 < 0 || indexOf11 >= indexOf12) ? str10 : str.substring(indexOf11 + 1, indexOf12).trim().replace('|', IIndexConstants.PARAMETER_SEPARATOR);
                    if (replace.length() == 0) {
                        throw new IllegalArgumentException(bind("configure.invalidTaskTag", str));
                    }
                    Map<String, String> map = this.options;
                    if (z10) {
                        str10 = replace;
                    }
                    map.put("org.eclipse.jdt.core.compiler.taskTags", str10);
                    setSeverity(CompilerOptions.OPTION_ReportTasks, i10, z10);
                    return;
                }
                if (str.equals("typeHiding")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.typeParameterHiding", i10, z10);
                    return;
                }
                break;
            case 'u':
                if (str.equals("unusedLocal") || str.equals("unusedLocals")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLocal", i10, z10);
                    return;
                }
                if (str.equals("unusedArgument") || str.equals("unusedArguments")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedParameter", i10, z10);
                    return;
                }
                if (str.equals("unusedExceptionParam")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter", i10, z10);
                    return;
                }
                if (str.equals("unusedImport") || str.equals("unusedImports")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedImport", i10, z10);
                    return;
                }
                if (str.equals("unusedAllocation")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation", i10, z10);
                    return;
                }
                if (str.equals("unusedPrivate")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", i10, z10);
                    return;
                }
                if (str.equals("unusedLabel")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLabel", i10, z10);
                    return;
                }
                if (str.equals("uselessTypeCheck")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck", i10, z10);
                    return;
                }
                if (str.equals("unchecked") || str.equals("unsafe")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation", i10, z10);
                    return;
                }
                if (str.equals("unlikelyCollectionMethodArgumentType")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType", i10, z10);
                    return;
                }
                if (str.equals("unlikelyEqualsArgumentType")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType", i10, z10);
                    return;
                }
                if (str.equals("unnecessaryElse")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unnecessaryElse", i10, z10);
                    return;
                }
                if (str.equals("unusedThrown")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", i10, z10);
                    return;
                }
                if (str.equals("unusedThrownWhenOverriding")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("unusedThrownIncludeDocComment")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("unusedThrownExemptExceptionThrowable")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("unqualifiedField") || str.equals("unqualified-field-access")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess", i10, z10);
                    return;
                }
                if (str.equals("unused")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLocal", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedParameter", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedImport", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLabel", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeParameter", i10, z10);
                    return;
                }
                if (str.equals("unusedParam")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedParameter", i10, z10);
                    return;
                }
                if (str.equals("unusedTypeParameter")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeParameter", i10, z10);
                    return;
                }
                if (str.equals("unusedParamIncludeDoc")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("unusedParamOverriding")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete", z10 ? "enabled" : "disabled");
                    return;
                }
                if (str.equals("unusedParamImplementing")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract", z10 ? "enabled" : "disabled");
                    return;
                } else if (str.equals("unusedTypeArgs")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", i10, z10);
                    return;
                } else if (str.equals("unavoidableGenericProblems")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems", z10 ? "enabled" : "disabled");
                    return;
                }
                break;
            case 'v':
                if (str.equals("varargsCast")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast", i10, z10);
                    return;
                }
                break;
            case 'w':
                if (str.equals("warningToken")) {
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unhandledWarningToken", i10, z10);
                    setSeverity("org.eclipse.jdt.core.compiler.problem.unusedWarningToken", i10, z10);
                    return;
                }
                break;
        }
        if (i10 == 0) {
            str2 = bind("configure.invalidWarning", str);
        } else if (i10 == 1) {
            str2 = bind("configure.invalidError", str);
        } else if (i10 == 1024) {
            str2 = bind("configure.invalidInfo", str);
        }
        addPendingErrors(str2);
    }

    private void initRootModules(LookupEnvironment lookupEnvironment, FileSystem fileSystem) {
        HashMap hashMap = new HashMap();
        for (String str : this.rootModules) {
            ModuleBinding module = lookupEnvironment.getModule(str.toCharArray());
            if (module == null) {
                throw new IllegalArgumentException(bind("configure.invalidModuleName", str));
            }
            for (PackageBinding packageBinding : module.getExports()) {
                String charOperation = CharOperation.toString(packageBinding.compoundName);
                String str2 = (String) hashMap.get(charOperation);
                if (str2 != null) {
                    throw new IllegalArgumentException(bind("configure.packageConflict", new String[]{charOperation, str2, str}));
                }
                hashMap.put(charOperation, str);
            }
        }
        Set<String> set = this.limitedModules;
        if (set != null) {
            for (String str3 : set) {
                if (lookupEnvironment.getModule(str3.toCharArray()) == null) {
                    throw new IllegalArgumentException(bind("configure.invalidModuleName", str3));
                }
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0091: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:44:0x0091 */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initializeWarnings(String str) {
        IOException e10;
        AutoCloseable autoCloseable;
        if (!new File(str).exists()) {
            throw new IllegalArgumentException(bind("configure.missingwarningspropertiesfile", str));
        }
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    for (Map.Entry<Object, Object> entry : properties.entrySet()) {
                        String obj = entry.getKey().toString();
                        if (obj.startsWith("org.eclipse.jdt.core.compiler.")) {
                            this.options.put(obj, entry.getValue().toString());
                        }
                    }
                    if (!properties.containsKey("org.eclipse.jdt.core.compiler.debug.localVariable")) {
                        this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                    }
                    if (!properties.containsKey("org.eclipse.jdt.core.compiler.codegen.unusedLocal")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
                    }
                    if (!properties.containsKey("org.eclipse.jdt.core.compiler.doc.comment.support")) {
                        this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                    }
                    if (properties.containsKey("org.eclipse.jdt.core.compiler.problem.forbiddenReference")) {
                        return;
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", "error");
                } catch (IOException e11) {
                    e10 = e11;
                    e10.printStackTrace();
                    throw new IllegalArgumentException(bind("configure.ioexceptionwarningspropertiesfile", str));
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    try {
                        autoCloseable2.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException e12) {
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
    }

    private static boolean isParentOf(char[] cArr, char[] cArr2) {
        if (cArr.length >= cArr2.length) {
            return false;
        }
        if (cArr2[cArr.length] != '\\' && cArr2[cArr.length] != '/') {
            return false;
        }
        for (int length = cArr.length - 1; length >= 0; length--) {
            if (cArr[length] != cArr2[length]) {
                return false;
            }
        }
        return true;
    }

    public static void lambda$0(IModule.IPackageExport iPackageExport, IUpdatableModule iUpdatableModule) {
        iUpdatableModule.addExports(iPackageExport.name(), iPackageExport.targets());
    }

    public static void lambda$1(String[] strArr, IUpdatableModule iUpdatableModule) {
        iUpdatableModule.addReads(strArr[1].toCharArray());
    }

    public static void main(String[] strArr) {
        new Main(new PrintWriter(System.out), new PrintWriter(System.err), true, null, null).compile(strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void processAddonModuleOptions(FileSystem fileSystem) {
        HashMap hashMap = new HashMap();
        for (String str : this.addonExports) {
            ModuleFinder.AddExport extractAddonExport = ModuleFinder.extractAddonExport(str);
            if (extractAddonExport == null) {
                throw new IllegalArgumentException(bind("configure.invalidModuleOption", "--add-exports " + str));
            }
            String str2 = extractAddonExport.sourceModuleName;
            final IModule.IPackageExport iPackageExport = extractAddonExport.export;
            IModule.IPackageExport[] iPackageExportArr = (IModule.IPackageExport[]) hashMap.get(str2);
            if (iPackageExportArr == null) {
                hashMap.put(str2, new IModule.IPackageExport[]{iPackageExport});
            } else {
                for (IModule.IPackageExport iPackageExport2 : iPackageExportArr) {
                    if (CharOperation.equals(iPackageExport2.name(), iPackageExport.name())) {
                        throw new IllegalArgumentException(bind("configure.duplicateExport"));
                    }
                }
                IModule.IPackageExport[] iPackageExportArr2 = new IModule.IPackageExport[iPackageExportArr.length + 1];
                System.arraycopy(iPackageExportArr, 0, iPackageExportArr2, 0, iPackageExportArr.length);
                iPackageExportArr2[iPackageExportArr.length] = iPackageExport;
                hashMap.put(str2, iPackageExportArr2);
            }
            fileSystem.addModuleUpdate(str2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Main.lambda$0(IModule.IPackageExport.this, (IUpdatableModule) obj);
                }
            }, IUpdatableModule.UpdateKind.PACKAGE);
        }
        for (String str3 : this.addonReads) {
            final String[] extractAddonRead = ModuleFinder.extractAddonRead(str3);
            if (extractAddonRead == null || extractAddonRead.length != 2) {
                throw new IllegalArgumentException(bind("configure.invalidModuleOption", "--add-reads " + str3));
            }
            fileSystem.addModuleUpdate(extractAddonRead[0], new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Main.lambda$1(extractAddonRead, (IUpdatableModule) obj);
                }
            }, IUpdatableModule.UpdateKind.MODULE);
        }
    }

    private ReferenceBinding[] processClassNames(LookupEnvironment lookupEnvironment) {
        int length = this.classNames.length;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
        ModuleBinding[] moduleBindingArr = new ModuleBinding[length];
        HashSet hashSet = new HashSet();
        String[] strArr = new String[length];
        if (this.complianceLevel <= ClassFileConstants.JDK1_8) {
            strArr = this.classNames;
        } else {
            for (int i10 = 0; i10 < length; i10++) {
                String str = this.classNames[i10];
                int indexOf = str.indexOf(47);
                if (indexOf > 0) {
                    String substring = str.substring(0, indexOf);
                    ModuleBinding module = lookupEnvironment.getModule(substring.toCharArray());
                    if (module == null) {
                        throw new IllegalArgumentException(bind("configure.invalidModuleName", substring));
                    }
                    moduleBindingArr[i10] = module;
                    hashSet.add(module);
                    str = str.substring(indexOf + 1);
                }
                strArr[i10] = str;
            }
        }
        for (int i11 = 0; i11 < length; i11++) {
            String str2 = strArr[i11];
            char[][] splitOn = str2.indexOf(46) != -1 ? CharOperation.splitOn('.', str2.toCharArray()) : new char[][]{str2.toCharArray()};
            ModuleBinding moduleBinding = moduleBindingArr[i11];
            ReferenceBinding type = moduleBinding != null ? lookupEnvironment.getType(splitOn, moduleBinding) : lookupEnvironment.getType(splitOn);
            if (type == null || !type.isValidBinding()) {
                throw new IllegalArgumentException(bind("configure.invalidClassName", this.classNames[i11]));
            }
            if (type.isBinaryBinding()) {
                referenceBindingArr[i11] = type;
                type.superclass();
            }
        }
        return referenceBindingArr;
    }

    private ArrayList<String> processModulePathEntries(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (str == null) {
            return arrayList;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator, false);
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    private int processPaths(String[] strArr, int i10, String str, ArrayList<String> arrayList) {
        int length = str.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '[') {
                i11++;
            } else if (charAt == ']') {
                i11--;
            }
        }
        if (i11 == 0) {
            arrayList.add(str);
            return 0;
        }
        if (i11 <= 1) {
            StringBuffer stringBuffer = new StringBuffer(str);
            int i13 = i10;
            while (i13 < strArr.length) {
                i13++;
                String str2 = strArr[i13];
                int length2 = str2.length();
                for (int i14 = 0; i14 < length2; i14++) {
                    char charAt2 = str2.charAt(i14);
                    if (charAt2 == '[') {
                        if (i11 > 1) {
                            throw new IllegalArgumentException(bind("configure.unexpectedBracket", str2));
                        }
                        i11++;
                    } else if (charAt2 == ']') {
                        i11--;
                    }
                }
                if (i11 == 0) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(str2);
                    arrayList.add(stringBuffer.toString());
                    return i13 - i10;
                }
                if (i11 >= 0) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(str2);
                } else {
                    throw new IllegalArgumentException(bind("configure.unexpectedBracket", str2));
                }
            }
            throw new IllegalArgumentException(bind("configure.unexpectedBracket", str));
        }
        throw new IllegalArgumentException(bind("configure.unexpectedBracket", str));
    }

    private void setJavaHome(String str) {
        File file = new File(str, "release");
        Properties properties = new Properties();
        try {
            properties.load(new FileReader(file));
            String property = properties.getProperty("JAVA_VERSION");
            if (property != null) {
                property.replace(JavadocConstants.ANCHOR_PREFIX_END, "");
            }
            this.javaHomeCache = new File(str);
            this.javaHomeChecked = true;
        } catch (IOException unused) {
            throw new IllegalArgumentException(bind("configure.invalidSystem", str));
        }
    }

    private void setSeverity(String str, int i10, boolean z10) {
        if (z10) {
            if (i10 == 0) {
                this.options.put(str, "warning");
                return;
            }
            if (i10 == 1) {
                this.options.put(str, "error");
                return;
            } else if (i10 != 1024) {
                this.options.put(str, "ignore");
                return;
            } else {
                this.options.put(str, "info");
                return;
            }
        }
        if (i10 == 0) {
            if ("warning".equals(this.options.get(str))) {
                this.options.put(str, "ignore");
            }
        } else if (i10 == 1) {
            if ("error".equals(this.options.get(str))) {
                this.options.put(str, "ignore");
            }
        } else if (i10 != 1024) {
            this.options.put(str, "ignore");
        } else if ("info".equals(this.options.get(str))) {
            this.options.put(str, "ignore");
        }
    }

    public static final boolean shouldIgnoreOptionalProblems(char[][] cArr, char[] cArr2) {
        if (cArr == null || cArr2 == null) {
            return false;
        }
        for (char[] cArr3 : cArr) {
            if (isParentOf(cArr3, cArr2)) {
                return true;
            }
        }
        return false;
    }

    public static String[] tokenize(String str) {
        String[] strArr = new String[10];
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \"", true);
        String str2 = Util.EMPTY_STRING;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            boolean z11 = true;
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (nextToken.equals(" ")) {
                    if (z10) {
                        int i11 = i10 - 1;
                        strArr[i11] = String.valueOf(strArr[i11]) + nextToken;
                    }
                } else if (nextToken.equals(JavadocConstants.ANCHOR_PREFIX_END)) {
                    if (!z10 && z11) {
                        if (i10 == strArr.length) {
                            String[] strArr2 = new String[i10 * 2];
                            System.arraycopy(strArr, 0, strArr2, 0, i10);
                            strArr = strArr2;
                        }
                        strArr[i10] = Util.EMPTY_STRING;
                        i10++;
                    }
                    z10 = !z10;
                } else if (z10) {
                    int i12 = i10 - 1;
                    strArr[i12] = String.valueOf(strArr[i12]) + nextToken;
                } else if (nextToken.length() <= 0 || z11) {
                    if (i10 == strArr.length) {
                        String[] strArr3 = new String[i10 * 2];
                        System.arraycopy(strArr, 0, strArr3, 0, i10);
                        strArr = strArr3;
                    }
                    String trim = nextToken.trim();
                    if (trim.length() != 0) {
                        strArr[i10] = trim;
                        i10++;
                    }
                } else {
                    int i13 = i10 - 1;
                    strArr[i13] = String.valueOf(strArr[i13]) + nextToken;
                }
                z11 = false;
            }
            String[] strArr4 = new String[i10];
            System.arraycopy(strArr, 0, strArr4, 0, i10);
            return strArr4;
        }
    }

    public void addExtraProblems(CategorizedProblem categorizedProblem) {
        if (this.extraProblems == null) {
            this.extraProblems = new ArrayList<>();
        }
        this.extraProblems.add(categorizedProblem);
    }

    public void addNewEntry(ArrayList<FileSystem.Classpath> arrayList, String str, ArrayList<String> arrayList2, String str2, String str3, boolean z10, boolean z11) {
        AccessRuleSet accessRuleSet;
        int i10;
        if (arrayList2.size() != 0) {
            AccessRule[] accessRuleArr = new AccessRule[arrayList2.size()];
            Iterator<String> it = arrayList2.iterator();
            int i11 = 0;
            boolean z12 = true;
            while (it.hasNext()) {
                String next = it.next();
                char charAt = next.charAt(0);
                String substring = next.substring(1);
                if (substring.length() > 0) {
                    if (charAt == '+') {
                        i10 = i11 + 1;
                        accessRuleArr[i11] = new AccessRule(substring.toCharArray(), 0);
                    } else if (charAt == '-') {
                        i10 = i11 + 1;
                        accessRuleArr[i11] = new AccessRule(substring.toCharArray(), IProblem.ForbiddenReference);
                    } else if (charAt == '?') {
                        i10 = i11 + 1;
                        accessRuleArr[i11] = new AccessRule(substring.toCharArray(), IProblem.ForbiddenReference, true);
                    } else if (charAt == '~') {
                        i10 = i11 + 1;
                        accessRuleArr[i11] = new AccessRule(substring.toCharArray(), IProblem.DiscouragedReference);
                    }
                    i11 = i10;
                }
                z12 = false;
            }
            if (!z12) {
                if (str.length() != 0) {
                    addPendingErrors(bind("configure.incorrectClasspath", str));
                    return;
                }
                return;
            }
            accessRuleSet = new AccessRuleSet(accessRuleArr, (byte) 0, str);
        } else {
            accessRuleSet = null;
        }
        String str4 = "none".equals(str3) ? "none" : str3;
        if (z11 && str4 != null && Util.archiveFormat(str) > -1) {
            throw new IllegalArgumentException(bind("configure.unexpectedDestinationPathEntryFile", str));
        }
        FileSystem.Classpath classpath = FileSystem.getClasspath(str, str2, z10, accessRuleSet, str4, this.options, this.releaseVersion);
        if (classpath != null) {
            arrayList.add(classpath);
        } else if (str.length() != 0) {
            addPendingErrors(bind("configure.incorrectClasspath", str));
        }
    }

    public void addPendingErrors(String str) {
        if (this.pendingErrors == null) {
            this.pendingErrors = new ArrayList<>();
        }
        this.pendingErrors.add(str);
    }

    public String bind(String str) {
        return bind(str, (String[]) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x03b9, code lost:
    
        throw new java.lang.IllegalArgumentException(bind("configure.missingAnnotationPath", r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x08e6, code lost:
    
        throw new java.lang.IllegalArgumentException(bind("configure.invalidNowarnOption", r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:875:0x1370, code lost:
    
        r45.logger.logVersion(true);
        r45.proceed = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:876:0x1379, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x0259. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:383:0x1246  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x1297  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x1328 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x1288 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0975 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x09fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:722:0x10e5  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x10d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:757:0x104e  */
    /* JADX WARN: Removed duplicated region for block: B:761:0x106f  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x1063 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:797:0x0fdc  */
    /* JADX WARN: Removed duplicated region for block: B:809:0x0fd0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void configure(String[] strArr) {
        boolean z10;
        String str;
        int i10;
        int i11;
        ArrayList<String> arrayList;
        String str2;
        String str3;
        String str4;
        String str5;
        int i12;
        boolean z11;
        char c10;
        boolean z12;
        StringTokenizer stringTokenizer;
        int i13;
        boolean z13;
        StringTokenizer stringTokenizer2;
        int i14;
        boolean z14;
        StringTokenizer stringTokenizer3;
        int i15;
        String str6;
        int i16;
        IModule extractModuleDesc;
        String str7;
        File file;
        HashSet hashSet;
        String str8;
        String[] strArr2;
        String[] strArr3 = strArr;
        if (strArr3 == null || strArr3.length == 0) {
            printUsage();
            return;
        }
        ArrayList<String> arrayList2 = new ArrayList<>(4);
        ArrayList<String> arrayList3 = new ArrayList<>(4);
        ArrayList<String> arrayList4 = new ArrayList<>(4);
        this.annotationPaths = null;
        this.annotationsFromClasspath = false;
        int length = strArr3.length;
        this.maxRepetition = 0;
        String str9 = Util.EMPTY_STRING;
        int i17 = 0;
        while (true) {
            if (i17 >= length) {
                z10 = false;
                break;
            } else if (strArr3[i17].startsWith("@")) {
                z10 = true;
                break;
            } else {
                i17++;
                arrayList3 = arrayList3;
            }
        }
        if (z10) {
            String[] strArr4 = new String[length];
            int i18 = 0;
            int i19 = 0;
            while (i18 < length) {
                String trim = strArr3[i18].trim();
                if (trim.startsWith("@")) {
                    try {
                        str8 = str9;
                        LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(new String(Util.getFileCharContent(new File(trim.substring(1)), null))));
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            String readLine = lineNumberReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String trim2 = readLine.trim();
                            if (!trim2.startsWith(C16181m.f130230g)) {
                                stringBuffer.append(trim2);
                                stringBuffer.append(" ");
                            }
                        }
                        strArr2 = tokenize(stringBuffer.toString());
                    } catch (IOException unused) {
                        throw new IllegalArgumentException(bind("configure.invalidexpansionargumentname", trim));
                    }
                } else {
                    str8 = str9;
                    strArr2 = null;
                }
                if (strArr2 != null) {
                    int length2 = strArr4.length;
                    int length3 = strArr2.length;
                    String[] strArr5 = new String[(length2 + length3) - 1];
                    System.arraycopy(strArr4, 0, strArr5, 0, i19);
                    System.arraycopy(strArr2, 0, strArr5, i19, length3);
                    i19 += length3;
                    strArr4 = strArr5;
                } else {
                    strArr4[i19] = trim;
                    i19++;
                }
                i18++;
                str9 = str8;
            }
            str = str9;
            strArr3 = strArr4;
        } else {
            str = str9;
            int i20 = 0;
            while (i20 < length) {
                strArr3[i20] = strArr3[i20].trim();
                i20++;
                arrayList3 = arrayList3;
            }
        }
        int length4 = strArr3.length;
        this.expandedCommandLine = strArr3;
        int i21 = -1;
        String str10 = str;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        boolean z15 = false;
        String str14 = null;
        boolean z16 = false;
        HashSet hashSet2 = null;
        int i22 = 0;
        String str15 = null;
        int i23 = 0;
        String str16 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        char c11 = 0;
        boolean z17 = false;
        String str17 = null;
        String str18 = null;
        boolean z18 = false;
        boolean z19 = false;
        while (true) {
            String str19 = str14;
            int i24 = i21 + 1;
            int i25 = i21;
            HashSet hashSet3 = hashSet2;
            String str20 = str15;
            if (i24 >= length4) {
                if (this.enablePreview) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures", "enabled");
                }
                if (this.enableJavadocOn) {
                    this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                } else if (this.warnJavadocOn || this.warnAllJavadocOn) {
                    this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference", "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference", "disabled");
                }
                if (this.warnJavadocOn) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", "enabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", "enabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", "enabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", "private");
                }
                if (z17 || (i23 == 0 && i22 == 0)) {
                    if (str19 == null) {
                        printUsage();
                    } else {
                        printUsage(str19);
                    }
                    this.proceed = false;
                    return;
                }
                String str21 = this.log;
                if (str21 != null) {
                    this.logger.setLog(str21);
                } else {
                    this.showProgress = false;
                }
                this.logger.logVersion(z15);
                validateOptions(z16);
                if (!z18 && CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance")) >= ClassFileConstants.JDK1_6) {
                    this.options.put(CompilerOptions.OPTION_Process_Annotations, "enabled");
                }
                this.logger.logCommandLineArguments(strArr3);
                this.logger.logOptions(this.options);
                if (this.maxRepetition == 0) {
                    i10 = 1;
                    this.maxRepetition = 1;
                } else {
                    i10 = 1;
                }
                int i26 = this.maxRepetition;
                if (i26 >= 3 && (this.timing & i10) != 0) {
                    this.compilerStats = new CompilerStats[i26];
                }
                if (i23 != 0) {
                    String[] strArr6 = this.filenames;
                    String[] strArr7 = new String[i23];
                    this.filenames = strArr7;
                    i11 = 0;
                    System.arraycopy(strArr6, 0, strArr7, 0, i23);
                } else {
                    i11 = 0;
                }
                if (i22 != 0) {
                    String[] strArr8 = this.classNames;
                    String[] strArr9 = new String[i22];
                    this.classNames = strArr9;
                    System.arraycopy(strArr8, i11, strArr9, i11, i22);
                }
                setPaths(arrayList2, str12, arrayList3, arrayList4, str13, str20, arrayList5, arrayList6, str11);
                if (hashSet3 != null && hashSet3.size() > 1) {
                    this.logger.logWarning(bind("configure.multipleencodings", this.options.get("org.eclipse.jdt.core.encoding"), getAllEncodings(hashSet3)));
                }
                ArrayList<String> arrayList7 = this.pendingErrors;
                if (arrayList7 != null) {
                    Iterator<String> it = arrayList7.iterator();
                    while (it.hasNext()) {
                        this.logger.logPendingError(it.next());
                    }
                    this.pendingErrors = null;
                    return;
                }
                return;
            }
            ArrayList<String> arrayList8 = arrayList3;
            String str22 = str11;
            if (str22 != null) {
                throw new IllegalArgumentException(bind("configure.unexpectedCustomEncoding", str10, str22));
            }
            String str23 = str13;
            String str24 = strArr3[i24];
            boolean z20 = z15;
            int i27 = i22;
            String str25 = str22;
            String str26 = str12;
            boolean z21 = z16;
            int i28 = i23;
            switch (c11) {
                case 0:
                    if (str24.startsWith("-nowarn")) {
                        int length5 = str24.length();
                        if (length5 == 7) {
                            disableAll(0);
                        } else {
                            if (length5 == 8) {
                                throw new IllegalArgumentException(bind("configure.invalidNowarnOption", str24));
                            }
                            int indexOf = str24.indexOf(91) + 1;
                            int lastIndexOf = str24.lastIndexOf(93);
                            if (indexOf > 8 && lastIndexOf != -1 && indexOf <= lastIndexOf && lastIndexOf >= str24.length() - 1) {
                                String substring = str24.substring(indexOf, lastIndexOf);
                                if (substring.length() <= 0) {
                                    throw new IllegalArgumentException(bind("configure.invalidNowarnOption", str24));
                                }
                                char[][] decodeIgnoreOptionalProblemsFromFolders = decodeIgnoreOptionalProblemsFromFolders(substring);
                                char[][] cArr = this.ignoreOptionalProblemsFromFolders;
                                if (cArr != null) {
                                    char[][] cArr2 = new char[cArr.length + decodeIgnoreOptionalProblemsFromFolders.length];
                                    System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                                    System.arraycopy(decodeIgnoreOptionalProblemsFromFolders, 0, cArr2, this.ignoreOptionalProblemsFromFolders.length, decodeIgnoreOptionalProblemsFromFolders.length);
                                    this.ignoreOptionalProblemsFromFolders = cArr2;
                                } else {
                                    this.ignoreOptionalProblemsFromFolders = decodeIgnoreOptionalProblemsFromFolders;
                                }
                            }
                        }
                        str10 = str24;
                        i21 = i24;
                        arrayList3 = arrayList8;
                        hashSet2 = hashSet3;
                        str15 = str20;
                        str14 = str19;
                        z15 = z20;
                        i22 = i27;
                        str12 = str26;
                        z16 = z21;
                        i23 = i28;
                        c11 = 0;
                        str13 = str23;
                        str11 = str25;
                    } else {
                        if (str24.startsWith("[")) {
                            throw new IllegalArgumentException(bind("configure.unexpectedBracket", str24));
                        }
                        if (str24.endsWith("]")) {
                            int indexOf2 = str24.indexOf(91);
                            int i29 = indexOf2 + 1;
                            arrayList = arrayList4;
                            if (i29 <= 1) {
                                throw new IllegalArgumentException(bind("configure.unexpectedBracket", str24));
                            }
                            str4 = "1.5";
                            int length6 = str24.length() - 1;
                            if (i29 >= 1) {
                                if (i29 < length6) {
                                    str5 = str24.substring(i29, length6);
                                    try {
                                        str2 = DocLint.SEPARATOR;
                                        str3 = "1.6";
                                        new InputStreamReader(new ByteArrayInputStream(new byte[0]), str5);
                                    } catch (UnsupportedEncodingException e10) {
                                        throw new IllegalArgumentException(bind("configure.unsupportedEncoding", str5), e10);
                                    }
                                } else {
                                    str2 = DocLint.SEPARATOR;
                                    str3 = "1.6";
                                    str5 = str25;
                                }
                                str24 = str24.substring(0, indexOf2);
                                if (str24.endsWith(".java")) {
                                    i12 = i28;
                                    if (!str24.equals("-log")) {
                                        int i30 = 6;
                                        if (str24.equals("-repeat")) {
                                            if (this.maxRepetition > 0) {
                                                throw new IllegalArgumentException(bind("configure.duplicateRepeat", str24));
                                            }
                                            i23 = i12;
                                            str10 = str24;
                                            i21 = i24;
                                            c11 = 6;
                                            arrayList3 = arrayList8;
                                            hashSet2 = hashSet3;
                                            str15 = str20;
                                            str14 = str19;
                                            z15 = z20;
                                            i22 = i27;
                                            str12 = str26;
                                            z16 = z21;
                                            str13 = str23;
                                            str11 = str5;
                                            arrayList4 = arrayList;
                                        } else if (str24.equals("-maxProblems")) {
                                            if (this.maxProblems > 0) {
                                                throw new IllegalArgumentException(bind("configure.duplicateMaxProblems", str24));
                                            }
                                            c11 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                                        } else if (str24.equals("--release")) {
                                            c11 = 30;
                                        } else {
                                            if (str24.equals("-source")) {
                                                i23 = i12;
                                                str10 = str24;
                                                i21 = i24;
                                                arrayList3 = arrayList8;
                                                hashSet2 = hashSet3;
                                                str15 = str20;
                                                str14 = str19;
                                                z15 = z20;
                                                i22 = i27;
                                                str12 = str26;
                                                z16 = z21;
                                                c11 = 7;
                                            } else if (str24.equals("-encoding")) {
                                                c11 = '\b';
                                            } else {
                                                if (str24.equals("-1.3")) {
                                                    if (z21) {
                                                        throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                    }
                                                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.3");
                                                } else if (!str24.equals("-1.4")) {
                                                    if (str24.equals("-1.5") || str24.equals("-5") || str24.equals("-5.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", str4);
                                                    } else if (str24.equals("-1.6") || str24.equals("-6") || str24.equals("-6.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", str3);
                                                    } else if (str24.equals("-1.7") || str24.equals("-7") || str24.equals("-7.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.7");
                                                    } else if (str24.equals("-1.8") || str24.equals("-8") || str24.equals("-8.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.8");
                                                    } else if (str24.equals("-1.9") || str24.equals("-9") || str24.equals("-9.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "9");
                                                    } else if (str24.equals("-10") || str24.equals("-10.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "10");
                                                    } else if (str24.equals("-11") || str24.equals("-11.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "11");
                                                    } else if (str24.equals("-12") || str24.equals("-12.0")) {
                                                        z11 = true;
                                                        c10 = 0;
                                                        if (z21) {
                                                            throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                        }
                                                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "12");
                                                    } else if (str24.equals("-d")) {
                                                        if (this.destinationPath != null) {
                                                            StringBuffer stringBuffer2 = new StringBuffer();
                                                            stringBuffer2.append(str24);
                                                            int i31 = i25 + 2;
                                                            if (i31 < length4) {
                                                                stringBuffer2.append(C15883c.f126249O);
                                                                stringBuffer2.append(strArr3[i31]);
                                                            }
                                                            throw new IllegalArgumentException(bind("configure.duplicateOutputPath", stringBuffer2.toString()));
                                                        }
                                                        i23 = i12;
                                                        str10 = str24;
                                                        i21 = i24;
                                                        arrayList3 = arrayList8;
                                                        hashSet2 = hashSet3;
                                                        str15 = str20;
                                                        str14 = str19;
                                                        z15 = z20;
                                                        i22 = i27;
                                                        str12 = str26;
                                                        z16 = z21;
                                                        c11 = 3;
                                                    } else if (str24.equals("-classpath") || str24.equals("-cp")) {
                                                        c11 = 1;
                                                    } else if (!str24.equals("-bootclasspath")) {
                                                        if (str24.equals("--enable-preview")) {
                                                            this.enablePreview = true;
                                                        } else if (str24.equals("--system")) {
                                                            c11 = 27;
                                                        } else if (str24.equals("--module-path") || str24.equals("-p") || str24.equals("--processor-module-path")) {
                                                            c11 = 23;
                                                        } else if (str24.equals("--module-source-path")) {
                                                            if (str26 != null) {
                                                                throw new IllegalArgumentException(bind("configure.OneOfModuleOrSourcePath"));
                                                            }
                                                            c11 = 24;
                                                        } else if (str24.equals("--add-exports")) {
                                                            c11 = 25;
                                                        } else if (str24.equals("--add-reads")) {
                                                            c11 = 26;
                                                        } else if (str24.equals("--add-modules")) {
                                                            c11 = 29;
                                                        } else if (str24.equals("--limit-modules")) {
                                                            c11 = H2.c.f7959b;
                                                        } else if (str24.equals("-sourcepath")) {
                                                            if (str26 != null) {
                                                                StringBuffer stringBuffer3 = new StringBuffer();
                                                                stringBuffer3.append(str24);
                                                                int i32 = i25 + 2;
                                                                if (i32 < length4) {
                                                                    stringBuffer3.append(C15883c.f126249O);
                                                                    stringBuffer3.append(strArr3[i32]);
                                                                }
                                                                throw new IllegalArgumentException(bind("configure.duplicateSourcepath", stringBuffer3.toString()));
                                                            }
                                                            if (str20 != null) {
                                                                throw new IllegalArgumentException(bind("configure.OneOfModuleOrSourcePath"));
                                                            }
                                                            c11 = CharUtils.CR;
                                                        } else if (str24.equals("-extdirs")) {
                                                            if (arrayList5 != null) {
                                                                StringBuffer stringBuffer4 = new StringBuffer();
                                                                stringBuffer4.append(str24);
                                                                int i33 = i25 + 2;
                                                                if (i33 < length4) {
                                                                    stringBuffer4.append(C15883c.f126249O);
                                                                    stringBuffer4.append(strArr3[i33]);
                                                                }
                                                                throw new IllegalArgumentException(bind("configure.duplicateExtDirs", stringBuffer4.toString()));
                                                            }
                                                            c11 = '\f';
                                                        } else if (str24.equals("-endorseddirs")) {
                                                            if (arrayList6 != null) {
                                                                StringBuffer stringBuffer5 = new StringBuffer();
                                                                stringBuffer5.append(str24);
                                                                int i34 = i25 + 2;
                                                                if (i34 < length4) {
                                                                    stringBuffer5.append(C15883c.f126249O);
                                                                    stringBuffer5.append(strArr3[i34]);
                                                                }
                                                                throw new IllegalArgumentException(bind("configure.duplicateEndorsedDirs", stringBuffer5.toString()));
                                                            }
                                                            c11 = 15;
                                                        } else if (str24.equals("-progress")) {
                                                            this.showProgress = true;
                                                        } else if (str24.startsWith("-proceedOnError")) {
                                                            if (str24.length() <= 15) {
                                                                this.options.put("org.eclipse.jdt.core.compiler.problem.fatalOptionalError", "disabled");
                                                            } else {
                                                                if (!str24.equals("-proceedOnError:Fatal")) {
                                                                    throw new IllegalArgumentException(bind("configure.invalidWarningConfiguration", str24));
                                                                }
                                                                this.options.put("org.eclipse.jdt.core.compiler.problem.fatalOptionalError", "enabled");
                                                            }
                                                            this.proceedOnError = true;
                                                        } else if (str24.equals("-time")) {
                                                            this.timing = 1;
                                                        } else if (str24.equals("-time:detail")) {
                                                            this.timing = 3;
                                                        } else if (!str24.equals("-version") && !str24.equals("-v")) {
                                                            if (str24.equals("-showversion")) {
                                                                i23 = i12;
                                                                str10 = str24;
                                                                i21 = i24;
                                                                arrayList3 = arrayList8;
                                                                hashSet2 = hashSet3;
                                                                str15 = str20;
                                                                str14 = str19;
                                                                i22 = i27;
                                                                str12 = str26;
                                                                z16 = z21;
                                                                z15 = true;
                                                                c11 = 0;
                                                            } else if ("-deprecation".equals(str24)) {
                                                                this.options.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
                                                                i23 = i12;
                                                                str10 = str24;
                                                                i21 = i24;
                                                                arrayList3 = arrayList8;
                                                                hashSet2 = hashSet3;
                                                                str15 = str20;
                                                                str14 = str19;
                                                                z15 = z20;
                                                                i22 = i27;
                                                                str12 = str26;
                                                                z16 = z21;
                                                                c11 = 0;
                                                                z19 = true;
                                                            } else if (str24.equals("-help") || str24.equals("-?")) {
                                                                i23 = i12;
                                                                str10 = str24;
                                                                i21 = i24;
                                                                arrayList3 = arrayList8;
                                                                hashSet2 = hashSet3;
                                                                str15 = str20;
                                                                str14 = str19;
                                                                z15 = z20;
                                                                i22 = i27;
                                                                str12 = str26;
                                                                z16 = z21;
                                                                c11 = 0;
                                                                z17 = true;
                                                            } else if (str24.equals("-help:warn") || str24.equals("-?:warn")) {
                                                                i23 = i12;
                                                                str10 = str24;
                                                                arrayList3 = arrayList8;
                                                                hashSet2 = hashSet3;
                                                                str15 = str20;
                                                                z15 = z20;
                                                                i22 = i27;
                                                                str12 = str26;
                                                                z16 = z21;
                                                                z17 = true;
                                                                str13 = str23;
                                                                str11 = str5;
                                                                arrayList4 = arrayList;
                                                                str14 = "misc.usage.warn";
                                                                i21 = i24;
                                                            } else if (str24.equals("-noExit")) {
                                                                this.systemExitWhenFinished = false;
                                                            } else if (str24.equals("-verbose")) {
                                                                this.verbose = true;
                                                            } else if (str24.equals("-referenceInfo")) {
                                                                this.produceRefInfo = true;
                                                            } else if (str24.equals("-inlineJSR")) {
                                                                this.options.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                                                            } else if (str24.equals("-parameters")) {
                                                                this.options.put("org.eclipse.jdt.core.compiler.codegen.methodParameters", "generate");
                                                            } else if (str24.equals("-genericsignature")) {
                                                                this.options.put(CompilerOptions.OPTION_LambdaGenericSignature, "generate");
                                                            } else if (str24.startsWith("-g")) {
                                                                int length7 = str24.length();
                                                                if (length7 == 2) {
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
                                                                } else {
                                                                    if (length7 <= 3) {
                                                                        throw new IllegalArgumentException(bind("configure.invalidDebugOption", str24));
                                                                    }
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "do not generate");
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "do not generate");
                                                                    this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "do not generate");
                                                                    if (length7 != 7 || !str24.equals("-g:none")) {
                                                                        StringTokenizer stringTokenizer4 = new StringTokenizer(str24.substring(3, str24.length()), str2);
                                                                        while (stringTokenizer4.hasMoreTokens()) {
                                                                            String nextToken = stringTokenizer4.nextToken();
                                                                            if (nextToken.equals("vars")) {
                                                                                this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                                                                            } else if (nextToken.equals("lines")) {
                                                                                this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                                                                            } else {
                                                                                if (!nextToken.equals("source")) {
                                                                                    throw new IllegalArgumentException(bind("configure.invalidDebugOption", str24));
                                                                                }
                                                                                this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                String str27 = str2;
                                                                if (str24.startsWith("-info")) {
                                                                    int length8 = str24.length();
                                                                    if (length8 == 10 && str24.equals("-info:none")) {
                                                                        disableAll(1024);
                                                                    } else {
                                                                        if (length8 <= 6) {
                                                                            throw new IllegalArgumentException(bind("configure.invalidInfoConfiguration", str24));
                                                                        }
                                                                        char charAt = str24.charAt(6);
                                                                        if (charAt == '+') {
                                                                            i30 = 7;
                                                                        } else if (charAt != '-') {
                                                                            disableAll(1024);
                                                                        } else {
                                                                            i30 = 7;
                                                                            z12 = false;
                                                                            stringTokenizer = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                            boolean z22 = z12;
                                                                            i13 = 0;
                                                                            while (stringTokenizer.hasMoreTokens()) {
                                                                                String nextToken2 = stringTokenizer.nextToken();
                                                                                i13++;
                                                                                char charAt2 = nextToken2.charAt(0);
                                                                                if (charAt2 == '+') {
                                                                                    nextToken2 = nextToken2.substring(1);
                                                                                    z22 = true;
                                                                                } else if (charAt2 == '-') {
                                                                                    nextToken2 = nextToken2.substring(1);
                                                                                    z22 = false;
                                                                                }
                                                                                handleInfoToken(nextToken2, z22);
                                                                            }
                                                                            if (i13 == 0) {
                                                                                throw new IllegalArgumentException(bind("configure.invalidInfoOption", str24));
                                                                            }
                                                                        }
                                                                        z12 = true;
                                                                        stringTokenizer = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                        boolean z222 = z12;
                                                                        i13 = 0;
                                                                        while (stringTokenizer.hasMoreTokens()) {
                                                                        }
                                                                        if (i13 == 0) {
                                                                        }
                                                                    }
                                                                } else if (str24.startsWith("-warn")) {
                                                                    int length9 = str24.length();
                                                                    if (length9 == 10 && str24.equals("-warn:none")) {
                                                                        disableAll(0);
                                                                    } else {
                                                                        if (length9 <= 6) {
                                                                            throw new IllegalArgumentException(bind("configure.invalidWarningConfiguration", str24));
                                                                        }
                                                                        char charAt3 = str24.charAt(6);
                                                                        if (charAt3 == '+') {
                                                                            i30 = 7;
                                                                        } else if (charAt3 != '-') {
                                                                            disableAll(0);
                                                                        } else {
                                                                            i30 = 7;
                                                                            z13 = false;
                                                                            stringTokenizer2 = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                            if (z19) {
                                                                                this.options.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
                                                                            }
                                                                            boolean z23 = z13;
                                                                            i14 = 0;
                                                                            while (stringTokenizer2.hasMoreTokens()) {
                                                                                String nextToken3 = stringTokenizer2.nextToken();
                                                                                i14++;
                                                                                char charAt4 = nextToken3.charAt(0);
                                                                                if (charAt4 == '+') {
                                                                                    nextToken3 = nextToken3.substring(1);
                                                                                    z23 = true;
                                                                                } else if (charAt4 == '-') {
                                                                                    nextToken3 = nextToken3.substring(1);
                                                                                    z23 = false;
                                                                                }
                                                                                handleWarningToken(nextToken3, z23);
                                                                            }
                                                                            if (i14 == 0) {
                                                                                throw new IllegalArgumentException(bind("configure.invalidWarningOption", str24));
                                                                            }
                                                                        }
                                                                        z13 = true;
                                                                        stringTokenizer2 = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                        if (z19) {
                                                                        }
                                                                        boolean z232 = z13;
                                                                        i14 = 0;
                                                                        while (stringTokenizer2.hasMoreTokens()) {
                                                                        }
                                                                        if (i14 == 0) {
                                                                        }
                                                                    }
                                                                } else if (str24.startsWith("-err")) {
                                                                    if (str24.length() <= 5) {
                                                                        throw new IllegalArgumentException(bind("configure.invalidErrorConfiguration", str24));
                                                                    }
                                                                    char charAt5 = str24.charAt(5);
                                                                    if (charAt5 != '+') {
                                                                        if (charAt5 != '-') {
                                                                            disableAll(1);
                                                                            i30 = 5;
                                                                        } else {
                                                                            z14 = false;
                                                                            stringTokenizer3 = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                            boolean z24 = z14;
                                                                            i15 = 0;
                                                                            while (stringTokenizer3.hasMoreTokens()) {
                                                                                String nextToken4 = stringTokenizer3.nextToken();
                                                                                i15++;
                                                                                char charAt6 = nextToken4.charAt(0);
                                                                                if (charAt6 == '+') {
                                                                                    nextToken4 = nextToken4.substring(1);
                                                                                    z24 = true;
                                                                                } else if (charAt6 == '-') {
                                                                                    nextToken4 = nextToken4.substring(1);
                                                                                    z24 = false;
                                                                                }
                                                                                handleErrorToken(nextToken4, z24);
                                                                            }
                                                                            if (i15 == 0) {
                                                                                throw new IllegalArgumentException(bind("configure.invalidErrorOption", str24));
                                                                            }
                                                                        }
                                                                    }
                                                                    z14 = true;
                                                                    stringTokenizer3 = new StringTokenizer(str24.substring(i30, str24.length()), str27);
                                                                    boolean z242 = z14;
                                                                    i15 = 0;
                                                                    while (stringTokenizer3.hasMoreTokens()) {
                                                                    }
                                                                    if (i15 == 0) {
                                                                    }
                                                                } else if (str24.equals("-target")) {
                                                                    i23 = i12;
                                                                    str10 = str24;
                                                                    i21 = i24;
                                                                    arrayList3 = arrayList8;
                                                                    hashSet2 = hashSet3;
                                                                    str15 = str20;
                                                                    str14 = str19;
                                                                    z15 = z20;
                                                                    i22 = i27;
                                                                    str12 = str26;
                                                                    z16 = z21;
                                                                    c11 = 4;
                                                                } else if (str24.equals("-preserveAllLocals")) {
                                                                    this.options.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
                                                                } else if (str24.equals("-enableJavadoc")) {
                                                                    this.enableJavadocOn = true;
                                                                } else if (str24.equals("-Xemacs")) {
                                                                    this.logger.setEmacs();
                                                                } else if (!str24.startsWith("-A")) {
                                                                    if (str24.equals("-processorpath")) {
                                                                        c11 = 17;
                                                                    } else if (str24.equals("-processor")) {
                                                                        c11 = 18;
                                                                    } else if (str24.equals("--processor-module-path")) {
                                                                        c11 = 28;
                                                                    } else if (str24.equals("-proc:only")) {
                                                                        this.options.put(CompilerOptions.OPTION_GenerateClassFiles, "disabled");
                                                                    } else if (str24.equals("-proc:none")) {
                                                                        this.options.put(CompilerOptions.OPTION_Process_Annotations, "disabled");
                                                                        i23 = i12;
                                                                        str10 = str24;
                                                                        i21 = i24;
                                                                        arrayList3 = arrayList8;
                                                                        hashSet2 = hashSet3;
                                                                        str15 = str20;
                                                                        str14 = str19;
                                                                        z15 = z20;
                                                                        i22 = i27;
                                                                        str12 = str26;
                                                                        z16 = z21;
                                                                        c11 = 0;
                                                                        z18 = true;
                                                                    } else if (str24.equals("-s")) {
                                                                        c11 = 19;
                                                                    } else if (!str24.equals("-XprintProcessorInfo") && !str24.equals("-XprintRounds") && !str24.startsWith("-X") && !str24.startsWith("-J") && !str24.equals("-O")) {
                                                                        if (str24.equals("-classNames")) {
                                                                            c11 = 20;
                                                                        } else if (str24.equals("-properties")) {
                                                                            c11 = 21;
                                                                        } else if (str24.equals("-missingNullDefault")) {
                                                                            this.options.put("org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation", "warning");
                                                                        } else if (str24.equals("-annotationpath")) {
                                                                            c11 = 22;
                                                                        } else {
                                                                            str25 = str5;
                                                                            str6 = str17;
                                                                            if (str6 == null) {
                                                                                char c12 = File.separatorChar;
                                                                                str7 = c12 != '/' ? str24.replace('/', c12) : str24;
                                                                                if (str7.endsWith("[-d")) {
                                                                                    str16 = str7.substring(0, str7.length() - 3);
                                                                                    c11 = 16;
                                                                                    str13 = str23;
                                                                                    str17 = str6;
                                                                                    str10 = str7;
                                                                                    i23 = i12;
                                                                                    i21 = i24;
                                                                                    arrayList3 = arrayList8;
                                                                                    hashSet2 = hashSet3;
                                                                                    str15 = str20;
                                                                                    str14 = str19;
                                                                                    z15 = z20;
                                                                                    i22 = i27;
                                                                                    str11 = str25;
                                                                                    str12 = str26;
                                                                                    z16 = z21;
                                                                                    arrayList4 = arrayList;
                                                                                } else {
                                                                                    str10 = str7;
                                                                                }
                                                                            } else {
                                                                                str10 = str24;
                                                                                str7 = str16;
                                                                            }
                                                                            file = new File(str7);
                                                                            if (!file.isDirectory()) {
                                                                                throw new IllegalArgumentException(bind("configure.unrecognizedOption", str7));
                                                                            }
                                                                            String[] find = FileFinder.find(file, ".java");
                                                                            if ("none".equals(str6)) {
                                                                                str6 = "none";
                                                                            }
                                                                            String[] strArr10 = this.filenames;
                                                                            if (strArr10 != null) {
                                                                                int length10 = find.length;
                                                                                i23 = length10 + i12;
                                                                                String[] strArr11 = new String[i23];
                                                                                this.filenames = strArr11;
                                                                                System.arraycopy(strArr10, 0, strArr11, 0, i12);
                                                                                String[] strArr12 = this.encodings;
                                                                                String[] strArr13 = new String[i23];
                                                                                this.encodings = strArr13;
                                                                                System.arraycopy(strArr12, 0, strArr13, 0, i12);
                                                                                String[] strArr14 = this.destinationPaths;
                                                                                String[] strArr15 = new String[i23];
                                                                                this.destinationPaths = strArr15;
                                                                                System.arraycopy(strArr14, 0, strArr15, 0, i12);
                                                                                String[] strArr16 = this.modNames;
                                                                                String[] strArr17 = new String[i23];
                                                                                this.modNames = strArr17;
                                                                                System.arraycopy(strArr16, 0, strArr17, 0, i12);
                                                                                System.arraycopy(find, 0, this.filenames, i12, length10);
                                                                                for (int i35 = 0; i35 < length10; i35++) {
                                                                                    int i36 = i12 + i35;
                                                                                    this.encodings[i36] = str25;
                                                                                    this.destinationPaths[i36] = str6;
                                                                                    this.modNames[i36] = str18;
                                                                                }
                                                                            } else {
                                                                                this.filenames = find;
                                                                                int length11 = find.length;
                                                                                this.encodings = new String[length11];
                                                                                this.destinationPaths = new String[length11];
                                                                                this.modNames = new String[length11];
                                                                                for (int i37 = 0; i37 < length11; i37++) {
                                                                                    this.encodings[i37] = str25;
                                                                                    this.destinationPaths[i37] = str6;
                                                                                }
                                                                                i23 = length11;
                                                                            }
                                                                            str13 = str23;
                                                                            i21 = i24;
                                                                            arrayList3 = arrayList8;
                                                                            str11 = null;
                                                                            str16 = null;
                                                                            str17 = null;
                                                                            hashSet2 = hashSet3;
                                                                            str15 = str20;
                                                                            str14 = str19;
                                                                            z15 = z20;
                                                                            i22 = i27;
                                                                            str12 = str26;
                                                                            z16 = z21;
                                                                            arrayList4 = arrayList;
                                                                            c11 = 0;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        i23 = i12;
                                                        str10 = str24;
                                                        i21 = i24;
                                                        arrayList3 = arrayList8;
                                                        hashSet2 = hashSet3;
                                                        str15 = str20;
                                                        str14 = str19;
                                                        z15 = z20;
                                                        i22 = i27;
                                                        str12 = str26;
                                                        z16 = z21;
                                                        c11 = 0;
                                                    } else {
                                                        if (arrayList2.size() > 0) {
                                                            StringBuffer stringBuffer6 = new StringBuffer();
                                                            stringBuffer6.append(str24);
                                                            int i38 = i25 + 2;
                                                            if (i38 < length4) {
                                                                stringBuffer6.append(C15883c.f126249O);
                                                                stringBuffer6.append(strArr3[i38]);
                                                            }
                                                            throw new IllegalArgumentException(bind("configure.duplicateBootClasspath", stringBuffer6.toString()));
                                                        }
                                                        c11 = '\t';
                                                    }
                                                    z16 = z11;
                                                    c11 = c10;
                                                    i23 = i12;
                                                    str10 = str24;
                                                    i21 = i24;
                                                    arrayList3 = arrayList8;
                                                    hashSet2 = hashSet3;
                                                    str15 = str20;
                                                    str14 = str19;
                                                    z15 = z20;
                                                    i22 = i27;
                                                    str12 = str26;
                                                } else {
                                                    if (z21) {
                                                        throw new IllegalArgumentException(bind("configure.duplicateCompliance", str24));
                                                    }
                                                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
                                                }
                                                i23 = i12;
                                                str10 = str24;
                                                i21 = i24;
                                                arrayList3 = arrayList8;
                                                hashSet2 = hashSet3;
                                                str15 = str20;
                                                str14 = str19;
                                                z15 = z20;
                                                i22 = i27;
                                                str12 = str26;
                                                z16 = true;
                                                c11 = 0;
                                            }
                                            str13 = str23;
                                            str11 = str5;
                                            arrayList4 = arrayList;
                                        }
                                    } else {
                                        if (this.log != null) {
                                            throw new IllegalArgumentException(bind("configure.duplicateLog", str24));
                                        }
                                        c11 = 5;
                                    }
                                    i23 = i12;
                                    str10 = str24;
                                    i21 = i24;
                                    arrayList3 = arrayList8;
                                    hashSet2 = hashSet3;
                                    str15 = str20;
                                    str14 = str19;
                                    z15 = z20;
                                    i22 = i27;
                                    str12 = str26;
                                    z16 = z21;
                                    str13 = str23;
                                    str11 = str5;
                                    arrayList4 = arrayList;
                                } else {
                                    if (str18 == null && (extractModuleDesc = extractModuleDesc(str24)) != null) {
                                        String str28 = new String(extractModuleDesc.name());
                                        this.module = extractModuleDesc;
                                        str18 = str28;
                                    }
                                    String[] strArr18 = this.filenames;
                                    if (strArr18 == null) {
                                        int i39 = length4 - i24;
                                        this.filenames = new String[i39];
                                        this.encodings = new String[i39];
                                        this.modNames = new String[i39];
                                        this.destinationPaths = new String[i39];
                                        i16 = i28;
                                    } else {
                                        i16 = i28;
                                        if (i16 == strArr18.length) {
                                            int length12 = strArr18.length;
                                            int i40 = (length12 + length4) - i24;
                                            String[] strArr19 = new String[i40];
                                            this.filenames = strArr19;
                                            System.arraycopy(strArr18, 0, strArr19, 0, length12);
                                            String[] strArr20 = this.encodings;
                                            String[] strArr21 = new String[i40];
                                            this.encodings = strArr21;
                                            System.arraycopy(strArr20, 0, strArr21, 0, length12);
                                            String[] strArr22 = this.destinationPaths;
                                            String[] strArr23 = new String[i40];
                                            this.destinationPaths = strArr23;
                                            System.arraycopy(strArr22, 0, strArr23, 0, length12);
                                            String[] strArr24 = this.modNames;
                                            String[] strArr25 = new String[i40];
                                            this.modNames = strArr25;
                                            System.arraycopy(strArr24, 0, strArr25, 0, length12);
                                        }
                                    }
                                    this.filenames[i16] = str24;
                                    this.modNames[i16] = str18;
                                    this.encodings[i16] = str5;
                                    i23 = i16 + 1;
                                    str10 = str24;
                                    i21 = i24;
                                    arrayList3 = arrayList8;
                                    hashSet2 = hashSet3;
                                    str15 = str20;
                                    str14 = str19;
                                    z15 = z20;
                                    i22 = i27;
                                    str12 = str26;
                                    z16 = z21;
                                    arrayList4 = arrayList;
                                    c11 = 0;
                                    str13 = str23;
                                    str11 = null;
                                }
                            } else {
                                str2 = DocLint.SEPARATOR;
                                str3 = "1.6";
                            }
                        } else {
                            arrayList = arrayList4;
                            str2 = DocLint.SEPARATOR;
                            str3 = "1.6";
                            str4 = "1.5";
                        }
                        str5 = str25;
                        if (str24.endsWith(".java")) {
                        }
                    }
                    break;
                case 1:
                    hashSet = hashSet3;
                    i21 = processPaths(strArr3, i24, str24, arrayList4) + i24;
                    str10 = str24;
                    hashSet2 = hashSet;
                    arrayList3 = arrayList8;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 2:
                case '\n':
                case 14:
                default:
                    arrayList = arrayList4;
                    str6 = str17;
                    i12 = i28;
                    if (str6 == null) {
                    }
                    file = new File(str7);
                    if (!file.isDirectory()) {
                    }
                    break;
                case 3:
                    hashSet = hashSet3;
                    setDestinationPath(str24.equals("none") ? "none" : str24);
                    str10 = str24;
                    i21 = i24;
                    hashSet2 = hashSet;
                    arrayList3 = arrayList8;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 4:
                    hashSet = hashSet3;
                    if (this.didSpecifyTarget) {
                        throw new IllegalArgumentException(bind("configure.duplicateTarget", str24));
                    }
                    if (this.releaseVersion != null) {
                        throw new IllegalArgumentException(bind("configure.unsupportedWithRelease", "-target"));
                    }
                    this.didSpecifyTarget = true;
                    if (str24.equals("1.1")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.1");
                    } else if (str24.equals("1.2")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                    } else if (str24.equals("1.3")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.3");
                    } else if (str24.equals("1.4")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                    } else if (str24.equals("1.5") || str24.equals("5") || str24.equals("5.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    } else if (str24.equals("1.6") || str24.equals("6") || str24.equals("6.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    } else if (str24.equals("1.7") || str24.equals("7") || str24.equals("7.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    } else if (str24.equals("1.8") || str24.equals("8") || str24.equals("8.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                    } else if (str24.equals("1.9") || str24.equals("9") || str24.equals("9.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                    } else if (str24.equals("10") || str24.equals("10.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "10");
                    } else if (str24.equals("11") || str24.equals("11.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "11");
                    } else if (str24.equals("12") || str24.equals("12.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "12");
                    } else if (str24.equals(CompilerOptions.VERSION_JSR14)) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", CompilerOptions.VERSION_JSR14);
                    } else {
                        if (!str24.equals("cldc1.1")) {
                            throw new IllegalArgumentException(bind("configure.targetJDK", str24));
                        }
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "cldc1.1");
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                    }
                    str10 = str24;
                    i21 = i24;
                    hashSet2 = hashSet;
                    arrayList3 = arrayList8;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                    break;
                case 5:
                    hashSet = hashSet3;
                    this.log = str24;
                    str10 = str24;
                    i21 = i24;
                    hashSet2 = hashSet;
                    arrayList3 = arrayList8;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 6:
                    hashSet = hashSet3;
                    try {
                        int parseInt = Integer.parseInt(str24);
                        this.maxRepetition = parseInt;
                        if (parseInt <= 0) {
                            throw new IllegalArgumentException(bind("configure.repetition", str24));
                        }
                        str10 = str24;
                        i21 = i24;
                        hashSet2 = hashSet;
                        arrayList3 = arrayList8;
                        str15 = str20;
                        str14 = str19;
                        z15 = z20;
                        i22 = i27;
                        str12 = str26;
                        z16 = z21;
                        i23 = i28;
                        c11 = 0;
                        str13 = str23;
                        str11 = str25;
                    } catch (NumberFormatException e11) {
                        throw new IllegalArgumentException(bind("configure.repetition", str24), e11);
                    }
                case 7:
                    hashSet = hashSet3;
                    if (this.didSpecifySource) {
                        throw new IllegalArgumentException(bind("configure.duplicateSource", str24));
                    }
                    if (this.releaseVersion != null) {
                        throw new IllegalArgumentException(bind("configure.unsupportedWithRelease", "-source"));
                    }
                    this.didSpecifySource = true;
                    if (str24.equals("1.3")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                    } else if (str24.equals("1.4")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.4");
                    } else if (str24.equals("1.5") || str24.equals("5") || str24.equals("5.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.5");
                    } else if (str24.equals("1.6") || str24.equals("6") || str24.equals("6.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.6");
                    } else if (str24.equals("1.7") || str24.equals("7") || str24.equals("7.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.7");
                    } else if (str24.equals("1.8") || str24.equals("8") || str24.equals("8.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.8");
                    } else if (str24.equals("1.9") || str24.equals("9") || str24.equals("9.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "9");
                    } else if (str24.equals("10") || str24.equals("10.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "10");
                    } else if (str24.equals("11") || str24.equals("11.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "11");
                    } else {
                        if (!str24.equals("12") && !str24.equals("12.0")) {
                            throw new IllegalArgumentException(bind("configure.source", str24));
                        }
                        this.options.put("org.eclipse.jdt.core.compiler.source", "12");
                    }
                    str10 = str24;
                    i21 = i24;
                    hashSet2 = hashSet;
                    arrayList3 = arrayList8;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                    break;
                case '\b':
                    if (hashSet3 != null) {
                        if (!hashSet3.contains(str24)) {
                            if (hashSet3.size() > 1) {
                                this.logger.logWarning(bind("configure.differentencodings", str24, getAllEncodings(hashSet3)));
                            } else {
                                this.logger.logWarning(bind("configure.differentencoding", str24, getAllEncodings(hashSet3)));
                            }
                        }
                        hashSet2 = hashSet3;
                    } else {
                        hashSet2 = new HashSet();
                    }
                    try {
                        new InputStreamReader(new ByteArrayInputStream(new byte[0]), str24);
                        hashSet2.add(str24);
                        this.options.put("org.eclipse.jdt.core.encoding", str24);
                        str10 = str24;
                        i21 = i24;
                        arrayList3 = arrayList8;
                        str15 = str20;
                        str14 = str19;
                        z15 = z20;
                        i22 = i27;
                        str12 = str26;
                        z16 = z21;
                        i23 = i28;
                        c11 = 0;
                        str13 = str23;
                        str11 = str25;
                    } catch (UnsupportedEncodingException e12) {
                        throw new IllegalArgumentException(bind("configure.unsupportedEncoding", str24), e12);
                    }
                case '\t':
                    i21 = processPaths(strArr3, i24, str24, arrayList2) + i24;
                    str10 = str24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 11:
                    try {
                        int parseInt2 = Integer.parseInt(str24);
                        this.maxProblems = parseInt2;
                        if (parseInt2 <= 0) {
                            throw new IllegalArgumentException(bind("configure.maxProblems", str24));
                        }
                        this.options.put("org.eclipse.jdt.core.compiler.maxProblemPerUnit", str24);
                        str10 = str24;
                        i21 = i24;
                        arrayList3 = arrayList8;
                        hashSet2 = hashSet3;
                        str15 = str20;
                        str14 = str19;
                        z15 = z20;
                        i22 = i27;
                        str12 = str26;
                        z16 = z21;
                        i23 = i28;
                        c11 = 0;
                        str13 = str23;
                        str11 = str25;
                    } catch (NumberFormatException e13) {
                        throw new IllegalArgumentException(bind("configure.maxProblems", str24), e13);
                    }
                case '\f':
                    if (str24.indexOf("[-d") != -1) {
                        throw new IllegalArgumentException(bind("configure.unexpectedDestinationPathEntry", "-extdir"));
                    }
                    StringTokenizer stringTokenizer5 = new StringTokenizer(str24, File.pathSeparator, false);
                    ArrayList<String> arrayList9 = new ArrayList<>(4);
                    while (stringTokenizer5.hasMoreTokens()) {
                        arrayList9.add(stringTokenizer5.nextToken());
                    }
                    arrayList5 = arrayList9;
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case '\r':
                    String[] strArr26 = new String[1];
                    i21 = processPaths(strArr3, i24, str24, strArr26) + i24;
                    c11 = 0;
                    str10 = str24;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    z16 = z21;
                    i23 = i28;
                    str13 = str23;
                    str12 = strArr26[0];
                    arrayList3 = arrayList8;
                    str11 = str25;
                case 15:
                    if (str24.indexOf("[-d") != -1) {
                        throw new IllegalArgumentException(bind("configure.unexpectedDestinationPathEntry", "-endorseddirs"));
                    }
                    StringTokenizer stringTokenizer6 = new StringTokenizer(str24, File.pathSeparator, false);
                    ArrayList<String> arrayList10 = new ArrayList<>(4);
                    while (stringTokenizer6.hasMoreTokens()) {
                        arrayList10.add(stringTokenizer6.nextToken());
                    }
                    arrayList6 = arrayList10;
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 16:
                    if (!str24.endsWith("]")) {
                        throw new IllegalArgumentException(bind("configure.incorrectDestinationPathEntry", "[-d " + str24));
                    }
                    str6 = str24.substring(0, str24.length() - 1);
                    arrayList = arrayList4;
                    i12 = i28;
                    if (str6 == null) {
                    }
                    file = new File(str7);
                    if (!file.isDirectory()) {
                    }
                    break;
                case 17:
                case 18:
                case 19:
                case 28:
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 20:
                    StringTokenizer stringTokenizer7 = new StringTokenizer(str24, DocLint.SEPARATOR);
                    if (this.classNames == null) {
                        this.classNames = new String[4];
                    }
                    i22 = i27;
                    while (stringTokenizer7.hasMoreTokens()) {
                        String[] strArr27 = this.classNames;
                        if (strArr27.length == i22) {
                            String[] strArr28 = new String[i22 * 2];
                            this.classNames = strArr28;
                            System.arraycopy(strArr27, 0, strArr28, 0, i22);
                        }
                        this.classNames[i22] = stringTokenizer7.nextToken();
                        i22++;
                    }
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 21:
                    initializeWarnings(str24);
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 22:
                    if (!str24.isEmpty() && str24.charAt(0) != '-') {
                        if (ANNOTATION_SOURCE_CLASSPATH.equals(str24)) {
                            this.annotationsFromClasspath = true;
                        } else {
                            if (this.annotationPaths == null) {
                                this.annotationPaths = new ArrayList();
                            }
                            StringTokenizer stringTokenizer8 = new StringTokenizer(str24, File.pathSeparator);
                            while (stringTokenizer8.hasMoreTokens()) {
                                this.annotationPaths.add(stringTokenizer8.nextToken());
                            }
                        }
                        str10 = str24;
                        i21 = i24;
                        arrayList3 = arrayList8;
                        hashSet2 = hashSet3;
                        str15 = str20;
                        str14 = str19;
                        z15 = z20;
                        i22 = i27;
                        str12 = str26;
                        z16 = z21;
                        i23 = i28;
                        c11 = 0;
                        str13 = str23;
                        str11 = str25;
                    }
                    break;
                case 23:
                    String[] strArr29 = new String[1];
                    i21 = processPaths(strArr3, i24, str24, strArr29) + i24;
                    str10 = str24;
                    c11 = 0;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str11 = str25;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    str13 = strArr29[0];
                    arrayList3 = arrayList8;
                case 24:
                    String[] strArr30 = new String[1];
                    int processPaths = processPaths(strArr3, i24, str24, strArr30) + i24;
                    str15 = strArr30[0];
                    i21 = processPaths;
                    str10 = str24;
                    c11 = 0;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    str13 = str23;
                    str11 = str25;
                case 25:
                    if (this.addonExports == Collections.EMPTY_LIST) {
                        this.addonExports = new ArrayList();
                    }
                    this.addonExports.add(str24);
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 26:
                    if (this.addonReads == Collections.EMPTY_LIST) {
                        this.addonReads = new ArrayList();
                    }
                    this.addonReads.add(str24);
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 27:
                    setJavaHome(str24);
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 29:
                    if (this.rootModules == Collections.EMPTY_SET) {
                        this.rootModules = new HashSet();
                    }
                    StringTokenizer stringTokenizer9 = new StringTokenizer(str24, DocLint.SEPARATOR);
                    while (stringTokenizer9.hasMoreTokens()) {
                        this.rootModules.add(stringTokenizer9.nextToken().trim());
                    }
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 30:
                    this.releaseVersion = str24;
                    long releaseToJDKLevel = CompilerOptions.releaseToJDKLevel(str24);
                    if (releaseToJDKLevel == 0) {
                        throw new IllegalArgumentException(bind("configure.unsupportedReleaseVersion", str24));
                    }
                    this.complianceLevel = releaseToJDKLevel;
                    String versionFromJdkLevel = CompilerOptions.versionFromJdkLevel(releaseToJDKLevel);
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", versionFromJdkLevel);
                    this.options.put("org.eclipse.jdt.core.compiler.source", versionFromJdkLevel);
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", versionFromJdkLevel);
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
                case 31:
                    StringTokenizer stringTokenizer10 = new StringTokenizer(str24, DocLint.SEPARATOR);
                    while (stringTokenizer10.hasMoreTokens()) {
                        if (this.limitedModules == null) {
                            this.limitedModules = new HashSet();
                        }
                        this.limitedModules.add(stringTokenizer10.nextToken().trim());
                    }
                    str10 = str24;
                    i21 = i24;
                    arrayList3 = arrayList8;
                    hashSet2 = hashSet3;
                    str15 = str20;
                    str14 = str19;
                    z15 = z20;
                    i22 = i27;
                    str12 = str26;
                    z16 = z21;
                    i23 = i28;
                    c11 = 0;
                    str13 = str23;
                    str11 = str25;
            }
        }
    }

    public void disableAll(int i10) {
        String str = i10 != 0 ? i10 != 1 ? i10 != 1024 ? null : "info" : "error" : "warning";
        for (Map.Entry<String, String> entry : this.options.entrySet()) {
            if (entry.getValue().equals(str)) {
                this.options.put(entry.getKey(), "ignore");
            }
        }
        if (i10 == 0) {
            disableAll(1024);
        }
    }

    public void enableAll(int i10) {
        String str = i10 != 0 ? i10 != 1 ? null : "error" : "warning";
        for (Map.Entry entry : (Map.Entry[]) this.options.entrySet().toArray(new Map.Entry[this.options.size()])) {
            if (((String) entry.getValue()).equals("ignore")) {
                this.options.put((String) entry.getKey(), str);
            }
        }
        this.options.put("org.eclipse.jdt.core.compiler.taskTags", Util.EMPTY_STRING);
    }

    public String extractDestinationPathFromSourceFile(CompilationResult compilationResult) {
        char[] fileName;
        int lastIndexOf;
        ICompilationUnit iCompilationUnit = compilationResult.compilationUnit;
        if (iCompilationUnit != null && (lastIndexOf = CharOperation.lastIndexOf(File.separatorChar, (fileName = iCompilationUnit.getFileName()))) != -1) {
            String str = new String(fileName, 0, lastIndexOf);
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                return str;
            }
        }
        return System.getProperty("user.dir");
    }

    public ICompilerRequestor getBatchRequestor() {
        return new BatchCompilerRequestor(this);
    }

    public CompilationUnit[] getCompilationUnits() {
        String str;
        int length = this.filenames.length;
        CompilationUnit[] compilationUnitArr = new CompilationUnit[length];
        HashtableOfObject hashtableOfObject = new HashtableOfObject(length);
        String str2 = this.options.get("org.eclipse.jdt.core.encoding");
        if (Util.EMPTY_STRING.equals(str2)) {
            str2 = null;
        }
        int i10 = 0;
        while (i10 < 2) {
            for (int i11 = 0; i11 < length; i11++) {
                char[] charArray = this.filenames[i11].toCharArray();
                if (CharOperation.endsWith(charArray, TypeConstants.MODULE_INFO_FILE_NAME) == (i10 == 0)) {
                    if (hashtableOfObject.get(charArray) != null) {
                        throw new IllegalArgumentException(bind("unit.more", this.filenames[i11]));
                    }
                    hashtableOfObject.put(charArray, charArray);
                    File file = new File(this.filenames[i11]);
                    if (!file.exists()) {
                        throw new IllegalArgumentException(bind("unit.missing", this.filenames[i11]));
                    }
                    String str3 = this.encodings[i11];
                    String str4 = str3 == null ? str2 : str3;
                    try {
                        str = file.getCanonicalPath();
                    } catch (IOException unused) {
                        str = this.filenames[i11];
                    }
                    String str5 = str;
                    compilationUnitArr[i11] = new CompilationUnit(null, str5, str4, this.destinationPaths[i11], shouldIgnoreOptionalProblems(this.ignoreOptionalProblemsFromFolders, str5.toCharArray()), this.modNames[i11]);
                }
            }
            i10++;
        }
        return compilationUnitArr;
    }

    public IErrorHandlingPolicy getHandlingPolicy() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return Main.this.proceedOnError;
            }

            @Override
            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public File getJavaHome() {
        if (!this.javaHomeChecked) {
            this.javaHomeChecked = true;
            this.javaHomeCache = Util.getJavaHome();
        }
        return this.javaHomeCache;
    }

    public FileSystem getLibraryAccess() {
        FileSystem fileSystem = new FileSystem(this.checkedClasspaths, this.filenames, this.annotationsFromClasspath && "enabled".equals(this.options.get("org.eclipse.jdt.core.compiler.annotation.nullanalysis")), this.limitedModules);
        fileSystem.module = this.module;
        processAddonModuleOptions(fileSystem);
        return fileSystem;
    }

    public IProblemFactory getProblemFactory() {
        return new DefaultProblemFactory(this.compilerLocale);
    }

    public ArrayList<FileSystem.Classpath> handleBootclasspath(ArrayList<String> arrayList, String str) {
        int size;
        ArrayList<FileSystem.Classpath> arrayList2 = new ArrayList<>(4);
        if (arrayList == null || (size = arrayList.size()) == 0) {
            try {
                Util.collectVMBootclasspath(arrayList2, this.javaHomeCache);
                return arrayList2;
            } catch (IllegalStateException unused) {
                throw new IllegalArgumentException(bind("configure.invalidSystem", this.javaHomeCache.toString()));
            }
        }
        ArrayList<FileSystem.Classpath> arrayList3 = new ArrayList<>(size);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            processPathEntries(4, arrayList3, it.next(), str, false, true);
        }
        return arrayList3;
    }

    public ArrayList<FileSystem.Classpath> handleClasspath(ArrayList<String> arrayList, String str) {
        ArrayList<FileSystem.Classpath> arrayList2 = new ArrayList<>(4);
        if (arrayList == null || arrayList.size() <= 0) {
            String property = System.getProperty("java.class.path");
            if (property == null || property.length() == 0) {
                addPendingErrors(bind("configure.noClasspath"));
                FileSystem.Classpath classpath = FileSystem.getClasspath(System.getProperty("user.dir"), str, null, this.options, this.releaseVersion);
                if (classpath != null) {
                    arrayList2.add(classpath);
                }
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
                while (stringTokenizer.hasMoreTokens()) {
                    String nextToken = stringTokenizer.nextToken();
                    FileSystem.Classpath classpath2 = FileSystem.getClasspath(nextToken, str, null, this.options, this.releaseVersion);
                    if (classpath2 != null) {
                        arrayList2.add(classpath2);
                    } else if (nextToken.length() != 0) {
                        addPendingErrors(bind("configure.incorrectClasspath", nextToken));
                    }
                }
            }
        } else {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                processPathEntries(4, arrayList2, it.next(), str, false, true);
            }
        }
        ArrayList<FileSystem.Classpath> arrayList3 = new ArrayList<>();
        HashMap hashMap = new HashMap();
        FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter = new FileSystem.ClasspathSectionProblemReporter() {
            @Override
            public void invalidClasspathSection(String str2) {
                Main main = Main.this;
                main.addPendingErrors(main.bind("configure.invalidClasspathSection", str2));
            }

            @Override
            public void multipleClasspathSections(String str2) {
                Main main = Main.this;
                main.addPendingErrors(main.bind("configure.multipleClasspathSections", str2));
            }
        };
        while (!arrayList2.isEmpty()) {
            FileSystem.Classpath remove = arrayList2.remove(0);
            String path = remove.getPath();
            if (hashMap.get(path) == null) {
                hashMap.put(path, remove);
                arrayList3.add(remove);
                List<FileSystem.Classpath> fetchLinkedJars = remove.fetchLinkedJars(classpathSectionProblemReporter);
                if (fetchLinkedJars != null) {
                    arrayList2.addAll(0, fetchLinkedJars);
                }
            }
        }
        return arrayList3;
    }

    public ArrayList<FileSystem.Classpath> handleEndorseddirs(ArrayList<String> arrayList) {
        File javaHome = getJavaHome();
        if (arrayList == null) {
            ArrayList<String> arrayList2 = new ArrayList<>(4);
            String property = System.getProperty("java.endorsed.dirs");
            if (property != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList2.add(stringTokenizer.nextToken());
                }
            } else if (javaHome != null) {
                arrayList2.add(String.valueOf(javaHome.getAbsolutePath()) + "/lib/endorsed");
            }
            arrayList = arrayList2;
        }
        if (arrayList.size() == 0) {
            return FileSystem.EMPTY_CLASSPATH;
        }
        ArrayList<FileSystem.Classpath> arrayList3 = new ArrayList<>();
        int size = arrayList.size();
        File[] fileArr = new File[size];
        for (int i10 = 0; i10 < size; i10++) {
            fileArr[i10] = new File(arrayList.get(i10));
        }
        File[][] librariesFiles = getLibrariesFiles(fileArr);
        if (librariesFiles != null) {
            int length = librariesFiles.length;
            for (int i11 = 0; i11 < length; i11++) {
                File[] fileArr2 = librariesFiles[i11];
                if (fileArr2 != null) {
                    for (File file : fileArr2) {
                        FileSystem.Classpath classpath = FileSystem.getClasspath(file.getAbsolutePath(), null, null, this.options, this.releaseVersion);
                        if (classpath != null) {
                            arrayList3.add(classpath);
                        }
                    }
                } else if (fileArr[i11].isFile()) {
                    addPendingErrors(bind("configure.incorrectEndorsedDirsEntry", fileArr[i11].getAbsolutePath()));
                }
            }
        }
        return arrayList3;
    }

    public void handleErrorToken(String str, boolean z10) {
        handleErrorOrWarningToken(str, z10, 1);
    }

    public ArrayList<FileSystem.Classpath> handleExtdirs(ArrayList<String> arrayList) {
        File javaHome = getJavaHome();
        if (arrayList == null) {
            ArrayList<String> arrayList2 = new ArrayList<>(4);
            String property = System.getProperty("java.ext.dirs");
            if (property == null) {
                arrayList2.add(String.valueOf(javaHome.getAbsolutePath()) + "/lib/ext");
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList2.add(stringTokenizer.nextToken());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList.size() == 0) {
            return FileSystem.EMPTY_CLASSPATH;
        }
        ArrayList<FileSystem.Classpath> arrayList3 = new ArrayList<>();
        int size = arrayList.size();
        File[] fileArr = new File[size];
        for (int i10 = 0; i10 < size; i10++) {
            fileArr[i10] = new File(arrayList.get(i10));
        }
        File[][] librariesFiles = getLibrariesFiles(fileArr);
        if (librariesFiles != null) {
            int length = librariesFiles.length;
            for (int i11 = 0; i11 < length; i11++) {
                File[] fileArr2 = librariesFiles[i11];
                if (fileArr2 != null) {
                    for (File file : fileArr2) {
                        FileSystem.Classpath classpath = FileSystem.getClasspath(file.getAbsolutePath(), null, null, this.options, this.releaseVersion);
                        if (classpath != null) {
                            arrayList3.add(classpath);
                        }
                    }
                } else if (fileArr[i11].isFile()) {
                    addPendingErrors(bind("configure.incorrectExtDirsEntry", fileArr[i11].getAbsolutePath()));
                }
            }
        }
        return arrayList3;
    }

    public void handleInfoToken(String str, boolean z10) {
        handleErrorOrWarningToken(str, z10, 1024);
    }

    public ArrayList<FileSystem.Classpath> handleModuleSourcepath(String str) {
        ArrayList<String> processModulePathEntries = processModulePathEntries(str);
        ArrayList<FileSystem.Classpath> arrayList = new ArrayList<>();
        if (processModulePathEntries != null && processModulePathEntries.size() != 0) {
            if (this.destinationPath == null) {
                addPendingErrors(bind("configure.missingDestinationPath"));
            }
            int size = processModulePathEntries.size();
            String[] strArr = new String[size];
            processModulePathEntries.toArray(strArr);
            for (int i10 = 0; i10 < size; i10++) {
                File file = new File(strArr[i10]);
                if (file.isDirectory()) {
                    for (FileSystem.Classpath classpath : ModuleFinder.findModules(file, this.destinationPath, getNewParser(), this.options, false, this.releaseVersion)) {
                        arrayList.add(classpath);
                        Path absolutePath = Paths.get(classpath.getPath(), new String[0]).toAbsolutePath();
                        String destinationPath = classpath.getDestinationPath();
                        IModule module = classpath.getModule();
                        String str2 = module == null ? null : new String(module.name());
                        for (int i11 = 0; i11 < this.filenames.length; i11++) {
                            try {
                                if (new File(this.filenames[i11]).getCanonicalFile().toPath().startsWith(absolutePath)) {
                                    this.modNames[i11] = str2;
                                    this.destinationPaths[i11] = destinationPath;
                                }
                            } catch (IOException unused) {
                                this.modNames[i11] = "";
                            }
                        }
                    }
                }
            }
            for (int i12 = 0; i12 < this.filenames.length; i12++) {
                if (this.modNames[i12] == null) {
                    throw new IllegalArgumentException(bind("configure.notOnModuleSourcePath", new String[]{this.filenames[i12]}));
                }
            }
        }
        return arrayList;
    }

    public ArrayList<FileSystem.Classpath> handleModulepath(String str) {
        ArrayList<String> processModulePathEntries = processModulePathEntries(str);
        ArrayList<FileSystem.Classpath> arrayList = new ArrayList<>();
        if (processModulePathEntries != null && processModulePathEntries.size() > 0) {
            Iterator<String> it = processModulePathEntries.iterator();
            while (it.hasNext()) {
                File file = new File(it.next());
                if (file.isDirectory()) {
                    arrayList.addAll(ModuleFinder.findModules(file, null, getNewParser(), this.options, true, this.releaseVersion));
                } else {
                    FileSystem.Classpath findModule = ModuleFinder.findModule(file, null, getNewParser(), this.options, true, this.releaseVersion);
                    if (findModule != null) {
                        arrayList.add(findModule);
                    }
                }
            }
        }
        return arrayList;
    }

    public void handleWarningToken(String str, boolean z10) {
        handleErrorOrWarningToken(str, z10, 0);
    }

    public void initialize(PrintWriter printWriter, PrintWriter printWriter2, boolean z10) {
        initialize(printWriter, printWriter2, z10, null, null);
    }

    public void initializeAnnotationProcessorManager() {
        try {
            AbstractAnnotationProcessorManager abstractAnnotationProcessorManager = (AbstractAnnotationProcessorManager) Class.forName("org.eclipse.jdt.internal.compiler.apt.dispatch.BatchAnnotationProcessorManager").newInstance();
            abstractAnnotationProcessorManager.configure(this, this.expandedCommandLine);
            abstractAnnotationProcessorManager.setErr(this.err);
            abstractAnnotationProcessorManager.setOut(this.out);
            this.batchCompiler.annotationProcessorManager = abstractAnnotationProcessorManager;
        } catch (ClassNotFoundException | InstantiationException unused) {
            this.logger.logUnavaibleAPT("org.eclipse.jdt.internal.compiler.apt.dispatch.BatchAnnotationProcessorManager");
            throw new AbortCompilation();
        } catch (IllegalAccessException unused2) {
            throw new AbortCompilation();
        } catch (UnsupportedClassVersionError unused3) {
            this.logger.logIncorrectVMVersionForAnnotationProcessing();
        }
    }

    public void loggingExtraProblems() {
        this.logger.loggingExtraProblems(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0026, code lost:
    
        if (r1 != "none") goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0028, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x002d, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x002a, code lost:
    
        if (r1 != "none") goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void outputClassFiles(CompilationResult compilationResult) {
        if (compilationResult == null) {
            return;
        }
        if (compilationResult.hasErrors() && !this.proceedOnError) {
            return;
        }
        ClassFile[] classFiles = compilationResult.getClassFiles();
        String str = ((CompilationUnit) compilationResult.compilationUnit).destinationPath;
        if (str == null) {
            str = this.destinationPath;
            if (str == null) {
                str = extractDestinationPathFromSourceFile(compilationResult);
                boolean z10 = false;
                if (str != null) {
                    for (ClassFile classFile : classFiles) {
                        char[] fileName = classFile.fileName();
                        int length = fileName.length;
                        char[] cArr = new char[length + 6];
                        System.arraycopy(fileName, 0, cArr, 0, length);
                        System.arraycopy(SuffixConstants.SUFFIX_class, 0, cArr, length, 6);
                        CharOperation.replace(cArr, '/', File.separatorChar);
                        String str2 = new String(cArr);
                        try {
                            if (this.compilerOptions.verbose) {
                                this.out.println(Messages.bind(Messages.compilation_write, (Object[]) new String[]{String.valueOf(this.exportedClassFilesCounter + 1), str2}));
                            }
                            Util.writeToDisk(z10, str, str2, classFile);
                            this.logger.logClassFile(z10, str, str2);
                            this.exportedClassFilesCounter++;
                        } catch (IOException e10) {
                            this.logger.logNoClassFileCreated(str, str2, e10);
                        }
                    }
                    this.batchCompiler.lookupEnvironment.releaseClassFiles(classFiles);
                }
            }
        }
    }

    public void performCompilation() {
        this.startTime = System.currentTimeMillis();
        FileSystem libraryAccess = getLibraryAccess();
        try {
            CompilerOptions compilerOptions = new CompilerOptions(this.options);
            this.compilerOptions = compilerOptions;
            boolean z10 = false;
            compilerOptions.performMethodsFullRecovery = false;
            compilerOptions.performStatementsRecovery = false;
            Compiler compiler = new Compiler(libraryAccess, getHandlingPolicy(), this.compilerOptions, getBatchRequestor(), getProblemFactory(), this.out, this.progress);
            this.batchCompiler = compiler;
            compiler.remainingIterations = this.maxRepetition - this.currentRepetition;
            String property = System.getProperty("jdt.compiler.useSingleThread");
            Compiler compiler2 = this.batchCompiler;
            if (property != null && property.equals("true")) {
                z10 = true;
            }
            compiler2.useSingleThread = z10;
            CompilerOptions compilerOptions2 = this.compilerOptions;
            if (compilerOptions2.complianceLevel >= ClassFileConstants.JDK1_6 && compilerOptions2.processAnnotations) {
                if (checkVMVersion(ClassFileConstants.JDK1_6)) {
                    initializeAnnotationProcessorManager();
                    if (this.classNames != null) {
                        Compiler compiler3 = this.batchCompiler;
                        compiler3.setBinaryTypes(processClassNames(compiler3.lookupEnvironment));
                    }
                } else {
                    this.logger.logIncorrectVMVersionForAnnotationProcessing();
                }
                if (checkVMVersion(ClassFileConstants.JDK9)) {
                    initRootModules(this.batchCompiler.lookupEnvironment, libraryAccess);
                }
            }
            CompilerOptions compilerOptions3 = this.compilerOptions;
            compilerOptions3.verbose = this.verbose;
            compilerOptions3.produceReferenceInfo = this.produceRefInfo;
            try {
                this.logger.startLoggingSources();
                this.batchCompiler.compile(getCompilationUnits());
                this.logger.endLoggingSources();
                if (this.extraProblems != null) {
                    loggingExtraProblems();
                    this.extraProblems = null;
                }
                CompilerStats[] compilerStatsArr = this.compilerStats;
                if (compilerStatsArr != null) {
                    compilerStatsArr[this.currentRepetition] = this.batchCompiler.stats;
                }
                this.logger.printStats();
                libraryAccess.cleanup();
            } catch (Throwable th2) {
                this.logger.endLoggingSources();
                throw th2;
            }
        } catch (Throwable th3) {
            libraryAccess.cleanup();
            throw th3;
        }
    }

    public void printUsage() {
        printUsage("misc.usage");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x0116. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0198 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003c A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processPathEntries(int i10, ArrayList<FileSystem.Classpath> arrayList, String str, String str2, boolean z10, boolean z11) {
        char c10;
        char c11;
        int i11;
        char c12;
        ArrayList<String> arrayList2 = new ArrayList<>(i10);
        StringTokenizer stringTokenizer = new StringTokenizer(str, String.valueOf(File.pathSeparator) + v.f99450n, true);
        ArrayList arrayList3 = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList3.add(stringTokenizer.nextToken());
        }
        int size = arrayList3.size();
        int i12 = 0;
        String str3 = null;
        String str4 = null;
        int i13 = -1;
        char c13 = 0;
        while (i12 < size && c13 != 'c') {
            int i14 = i12 + 1;
            String str5 = (String) arrayList3.get(i12);
            if (str5.equals(File.pathSeparator)) {
                if (c13 != 0) {
                    if (c13 == 1 || c13 == 2) {
                        c12 = 3;
                    } else {
                        c12 = 3;
                        if (c13 != 3) {
                            if (c13 == 6) {
                                i12 = i14;
                                c10 = 11;
                                c13 = 4;
                                c11 = 5;
                                if (c13 == c10) {
                                }
                            } else {
                                if (c13 == 7) {
                                    throw new IllegalArgumentException(bind("configure.incorrectDestinationPathEntry", str));
                                }
                                if (c13 != '\b') {
                                    if (c13 != '\n') {
                                        if (c13 != 11) {
                                            i12 = i14;
                                            c10 = 11;
                                            c13 = 'c';
                                            c11 = 5;
                                            if (c13 == c10 && i12 == size) {
                                                i12 = i13 + 1;
                                                c13 = c11;
                                            }
                                        } else {
                                            i12 = i13 + 1;
                                            c10 = 11;
                                            c13 = 5;
                                            c11 = 5;
                                            if (c13 == c10) {
                                                i12 = i13 + 1;
                                                c13 = c11;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    addNewEntry(arrayList, str3, arrayList2, str2, str4, z10, z11);
                    arrayList2.clear();
                    i12 = i14;
                    c13 = 3;
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    c11 = 5;
                    if (c13 == c10) {
                    }
                }
                i12 = i14;
                c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                c11 = 5;
                if (c13 == c10) {
                }
            } else if (str5.equals("[")) {
                if (c13 == 0) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    str3 = "";
                } else if (c13 == 1) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                } else if (c13 == 2) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    c13 = '\t';
                    i12 = i14;
                    c11 = 5;
                    if (c13 == c10) {
                    }
                } else if (c13 != '\b') {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    if (c13 == 11) {
                        i12 = i13;
                    }
                    i12 = i14;
                    c13 = 'c';
                    c11 = 5;
                    if (c13 == c10) {
                    }
                } else {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    i12 = i14;
                    c13 = 5;
                    c11 = 5;
                    if (c13 == c10) {
                    }
                }
                i13 = i12;
                i12 = i14;
                c13 = '\n';
                c11 = 5;
                if (c13 == c10) {
                }
            } else {
                c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                if (str5.equals("]")) {
                    if (c13 == 6) {
                        c13 = 2;
                    } else if (c13 != 7) {
                        if (c13 == '\n') {
                            c13 = 11;
                        }
                        i12 = i14;
                        c13 = 'c';
                        c11 = 5;
                        if (c13 == c10) {
                        }
                    } else {
                        i12 = i14;
                        c13 = '\b';
                        c11 = 5;
                        if (c13 == c10) {
                        }
                    }
                    i12 = i14;
                    c11 = 5;
                    if (c13 == c10) {
                    }
                } else {
                    if (c13 == 0 || c13 == 3) {
                        c11 = 5;
                        i12 = i14;
                        str3 = str5;
                    } else {
                        if (c13 != 4) {
                            c11 = 5;
                            if (c13 != 5) {
                                switch (c13) {
                                    case '\t':
                                        i12 = i14;
                                        if (str5.startsWith("-d ")) {
                                            str4 = str5.substring(3).trim();
                                            break;
                                        }
                                        c13 = 'c';
                                        break;
                                    case '\n':
                                        i12 = i14;
                                        break;
                                    case 11:
                                        i12 = i14;
                                        for (int i15 = i13; i15 < i12; i15++) {
                                            str3 = String.valueOf(str3) + ((String) arrayList3.get(i15));
                                        }
                                        break;
                                    default:
                                        i12 = i14;
                                        c13 = 'c';
                                        break;
                                }
                                if (c13 == c10) {
                                }
                            } else {
                                i11 = i14;
                                if (str5.startsWith("-d ")) {
                                    if (str4 != null) {
                                        throw new IllegalArgumentException(bind("configure.duplicateDestinationPathEntry", str));
                                    }
                                    str4 = str5.substring(3).trim();
                                    i12 = i11;
                                }
                            }
                            c13 = 7;
                            if (c13 == c10) {
                            }
                        } else {
                            i11 = i14;
                            c11 = 5;
                        }
                        if (str4 != null) {
                            throw new IllegalArgumentException(bind("configure.accessRuleAfterDestinationPath", str));
                        }
                        arrayList2.add(str5);
                        int i16 = i11;
                        c13 = 6;
                        i12 = i16;
                        if (c13 == c10) {
                        }
                    }
                    c13 = 1;
                    if (c13 == c10) {
                    }
                }
            }
        }
        if (c13 != 1 && c13 != 2) {
            if (c13 == 3) {
                return;
            }
            if (c13 != '\b') {
                if (str.length() != 0) {
                    addPendingErrors(bind("configure.incorrectClasspath", str));
                    return;
                }
                return;
            }
        }
        addNewEntry(arrayList, str3, arrayList2, str2, str4, z10, z11);
    }

    public void relocalize() {
        relocalize(Locale.getDefault());
    }

    public void setDestinationPath(String str) {
        this.destinationPath = str;
    }

    public void setLocale(Locale locale) {
        relocalize(locale);
    }

    public void setPaths(ArrayList<String> arrayList, String str, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str2, String str3, ArrayList<String> arrayList4, ArrayList<String> arrayList5, String str4) {
        ArrayList<FileSystem.Classpath> handleBootclasspath;
        if (this.complianceLevel == 0) {
            this.complianceLevel = CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance"));
        }
        long validateClasspathOptions = validateClasspathOptions(arrayList, arrayList5, arrayList4);
        if (this.releaseVersion == null || this.complianceLevel >= validateClasspathOptions) {
            handleBootclasspath = handleBootclasspath(arrayList, str4);
        } else {
            handleBootclasspath = new ArrayList<>();
            handleBootclasspath.add(FileSystem.getOlderSystemRelease(this.javaHomeCache.getAbsolutePath(), this.releaseVersion, null));
        }
        ArrayList arrayList6 = handleBootclasspath;
        ArrayList<FileSystem.Classpath> handleClasspath = handleClasspath(arrayList3, str4);
        ArrayList<FileSystem.Classpath> handleModulepath = handleModulepath(str2);
        ArrayList<FileSystem.Classpath> handleModuleSourcepath = handleModuleSourcepath(str3);
        ArrayList<FileSystem.Classpath> arrayList7 = new ArrayList<>();
        if (str != null) {
            processPathEntries(4, arrayList7, str, str4, true, false);
        }
        ArrayList<FileSystem.Classpath> handleExtdirs = handleExtdirs(arrayList4);
        arrayList6.addAll(0, handleEndorseddirs(arrayList5));
        arrayList6.addAll(handleExtdirs);
        arrayList6.addAll(arrayList7);
        arrayList6.addAll(handleClasspath);
        arrayList6.addAll(handleModulepath);
        arrayList6.addAll(handleModuleSourcepath);
        ArrayList<FileSystem.Classpath> normalize = FileSystem.ClasspathNormalizer.normalize(arrayList6);
        FileSystem.Classpath[] classpathArr = new FileSystem.Classpath[normalize.size()];
        this.checkedClasspaths = classpathArr;
        normalize.toArray(classpathArr);
        this.logger.logClasspath(this.checkedClasspaths);
        if (this.annotationPaths == null || !"enabled".equals(this.options.get("org.eclipse.jdt.core.compiler.annotation.nullanalysis"))) {
            return;
        }
        for (FileSystem.Classpath classpath : this.checkedClasspaths) {
            if (classpath instanceof ClasspathJar) {
                ((ClasspathJar) classpath).annotationPaths = this.annotationPaths;
            } else if (classpath instanceof ClasspathJrt) {
                ((ClasspathJrt) classpath).annotationPaths = this.annotationPaths;
            }
        }
    }

    public long validateClasspathOptions(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3) {
        if (this.complianceLevel > ClassFileConstants.JDK1_8) {
            if (arrayList != null && arrayList.size() > 0) {
                throw new IllegalArgumentException(bind("configure.unsupportedOption", "-bootclasspath"));
            }
            if (arrayList3 != null && arrayList3.size() > 0) {
                throw new IllegalArgumentException(bind("configure.unsupportedOption", "-extdirs"));
            }
            if (arrayList2 != null && arrayList2.size() > 0) {
                throw new IllegalArgumentException(bind("configure.unsupportedOption", "-endorseddirs"));
            }
        }
        long jDKLevel = Util.getJDKLevel(getJavaHome());
        if (jDKLevel >= ClassFileConstants.JDK9 || this.releaseVersion == null) {
            return jDKLevel;
        }
        throw new IllegalArgumentException(bind("configure.unsupportedReleaseOption"));
    }

    public void validateOptions(boolean z10) {
        Object obj;
        if (z10) {
            String str = this.options.get("org.eclipse.jdt.core.compiler.compliance");
            if (this.releaseVersion != null) {
                throw new IllegalArgumentException(bind("configure.unsupportedWithRelease", str));
            }
            if ("1.3".equals(str)) {
                if (!this.didSpecifySource) {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.1");
                }
            } else if ("1.4".equals(str)) {
                if (this.didSpecifySource) {
                    String str2 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str2)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                        }
                    } else if ("1.4".equals(str2) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                    }
                }
            } else if ("1.5".equals(str)) {
                if (this.didSpecifySource) {
                    String str3 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str3) || "1.4".equals(str3)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str3) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.5");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    }
                }
            } else if ("1.6".equals(str)) {
                if (this.didSpecifySource) {
                    String str4 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str4) || "1.4".equals(str4)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if (("1.5".equals(str4) || "1.6".equals(str4)) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.6");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    }
                }
            } else if ("1.7".equals(str)) {
                if (this.didSpecifySource) {
                    String str5 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str5) || "1.4".equals(str5)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str5) || "1.6".equals(str5)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                        }
                    } else if ("1.7".equals(str5) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.7");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    }
                }
            } else if ("1.8".equals(str)) {
                if (this.didSpecifySource) {
                    String str6 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str6) || "1.4".equals(str6)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str6) || "1.6".equals(str6)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                        }
                    } else if ("1.7".equals(str6)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                        }
                    } else if ("1.8".equals(str6) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.8");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                    }
                }
            } else if ("9".equals(str)) {
                if (this.didSpecifySource) {
                    String str7 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str7) || "1.4".equals(str7)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str7) || "1.6".equals(str7)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                        }
                    } else if ("1.7".equals(str7)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                        }
                    } else if ("1.8".equals(str7)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                        }
                    } else if ("9".equals(str7) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "9");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                    }
                }
            } else if ("10".equals(str)) {
                if (this.didSpecifySource) {
                    String str8 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str8) || "1.4".equals(str8)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str8) || "1.6".equals(str8)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                        }
                    } else if ("1.7".equals(str8)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                        }
                    } else if ("1.8".equals(str8)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                        }
                    } else if ("9".equals(str8)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                        }
                    } else if ("10".equals(str8) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "10");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "10");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "10");
                    }
                }
            } else if (!this.didSpecifyTarget) {
                if (this.didSpecifySource) {
                    String str9 = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(str9) || "1.4".equals(str9)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(str9) || "1.6".equals(str9)) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    } else if (CompilerOptions.versionToJdkLevel(str9) >= ClassFileConstants.JDK1_7) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", str9);
                    }
                } else if (CompilerOptions.versionToJdkLevel(str) > ClassFileConstants.JDK10) {
                    this.options.put("org.eclipse.jdt.core.compiler.source", str);
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", str);
                }
            }
        } else if (this.didSpecifySource) {
            String str10 = this.options.get("org.eclipse.jdt.core.compiler.source");
            if ("1.4".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                }
            } else if ("1.5".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.5");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                }
            } else if ("1.6".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.6");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                }
            } else if ("1.7".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.7");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                }
            } else if ("1.8".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.8");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                }
            } else if ("9".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "9");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                }
            } else if ("10".equals(str10)) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "10");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "10");
                }
            } else if (CompilerOptions.versionToJdkLevel(str10) > ClassFileConstants.JDK10) {
                if (!z10) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", str10);
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", str10);
                }
            }
        }
        String str11 = this.options.get("org.eclipse.jdt.core.compiler.source");
        if (this.complianceLevel == 0) {
            this.complianceLevel = CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance"));
        }
        if (str11.equals("10")) {
            obj = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
            if (this.complianceLevel < ClassFileConstants.JDK10) {
                throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "10"));
            }
        } else {
            obj = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
        }
        if (str11.equals("9") && this.complianceLevel < ClassFileConstants.JDK9) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "9"));
        }
        if (str11.equals("1.8") && this.complianceLevel < ClassFileConstants.JDK1_8) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.8"));
        }
        if (str11.equals("1.7") && this.complianceLevel < ClassFileConstants.JDK1_7) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.7"));
        }
        if (str11.equals("1.6") && this.complianceLevel < ClassFileConstants.JDK1_6) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.6"));
        }
        if (str11.equals("1.5") && this.complianceLevel < ClassFileConstants.JDK1_5) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.5"));
        }
        if (str11.equals("1.4") && this.complianceLevel < ClassFileConstants.JDK1_4) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.4"));
        }
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(str11);
        long j10 = this.complianceLevel;
        if (j10 < versionToJdkLevel) {
            throw new IllegalArgumentException(bind("configure.incompatibleComplianceForSource", this.options.get("org.eclipse.jdt.core.compiler.compliance"), str11));
        }
        if (this.enablePreview && j10 != ClassFileConstants.getLatestJDKLevel()) {
            throw new IllegalArgumentException(bind("configure.unsupportedPreview"));
        }
        if (this.didSpecifyTarget) {
            String str12 = this.options.get(obj);
            if (CompilerOptions.VERSION_JSR14.equals(str12)) {
                if (CompilerOptions.versionToJdkLevel(str11) < ClassFileConstants.JDK1_5) {
                    throw new IllegalArgumentException(bind("configure.incompatibleTargetForGenericSource", str12, str11));
                }
                return;
            }
            if ("cldc1.1".equals(str12)) {
                if (this.didSpecifySource && CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_4) {
                    throw new IllegalArgumentException(bind("configure.incompatibleSourceForCldcTarget", str12, str11));
                }
                if (this.complianceLevel >= ClassFileConstants.JDK1_5) {
                    throw new IllegalArgumentException(bind("configure.incompatibleComplianceForCldcTarget", str12, str11));
                }
                return;
            }
            if (CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_8 && CompilerOptions.versionToJdkLevel(str12) < ClassFileConstants.JDK1_8) {
                throw new IllegalArgumentException(bind("configure.incompatibleTargetForSource", str12, "1.8"));
            }
            if (CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_7 && CompilerOptions.versionToJdkLevel(str12) < ClassFileConstants.JDK1_7) {
                throw new IllegalArgumentException(bind("configure.incompatibleTargetForSource", str12, "1.7"));
            }
            if (CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_6 && CompilerOptions.versionToJdkLevel(str12) < ClassFileConstants.JDK1_6) {
                throw new IllegalArgumentException(bind("configure.incompatibleTargetForSource", str12, "1.6"));
            }
            if (CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_5 && CompilerOptions.versionToJdkLevel(str12) < ClassFileConstants.JDK1_5) {
                throw new IllegalArgumentException(bind("configure.incompatibleTargetForSource", str12, "1.5"));
            }
            if (CompilerOptions.versionToJdkLevel(str11) >= ClassFileConstants.JDK1_4 && CompilerOptions.versionToJdkLevel(str12) < ClassFileConstants.JDK1_4) {
                throw new IllegalArgumentException(bind("configure.incompatibleTargetForSource", str12, "1.4"));
            }
            if (this.complianceLevel < CompilerOptions.versionToJdkLevel(str12)) {
                throw new IllegalArgumentException(bind("configure.incompatibleComplianceForTarget", this.options.get("org.eclipse.jdt.core.compiler.compliance"), str12));
            }
        }
    }

    public Main(PrintWriter printWriter, PrintWriter printWriter2, boolean z10, Map<String, String> map) {
        this(printWriter, printWriter2, z10, map, null);
    }

    public static boolean compile(String str, PrintWriter printWriter, PrintWriter printWriter2) {
        return new Main(printWriter, printWriter2, false, null, null).compile(tokenize(str));
    }

    private void printUsage(String str) {
        this.logger.logUsage(bind(str, new String[]{System.getProperty("path.separator"), bind("compiler.name"), bind("compiler.version"), bind("compiler.copyright")}));
        this.logger.flush();
    }

    private void relocalize(Locale locale) {
        this.compilerLocale = locale;
        try {
            this.bundle = ResourceBundleFactory.getBundle(locale);
        } catch (MissingResourceException e10) {
            System.out.println("Missing resource : " + bundleName.replace('.', '/') + ".properties for locale " + ((Object) locale));
            throw e10;
        }
    }

    public String bind(String str, String str2) {
        return bind(str, new String[]{str2});
    }

    public void initialize(PrintWriter printWriter, PrintWriter printWriter2, boolean z10, Map<String, String> map) {
        initialize(printWriter, printWriter2, z10, map, null);
    }

    public static class Logger {
        private static final String CLASS = "class";
        private static final String CLASSPATH = "classpath";
        private static final String CLASSPATHS = "classpaths";
        private static final String CLASSPATH_FILE = "FILE";
        private static final String CLASSPATH_FOLDER = "FOLDER";
        private static final String CLASSPATH_ID = "id";
        private static final String CLASSPATH_JAR = "JAR";
        private static final String CLASS_FILE = "classfile";
        private static final String COMMAND_LINE_ARGUMENT = "argument";
        private static final String COMMAND_LINE_ARGUMENTS = "command_line";
        private static final String COMPILER = "compiler";
        private static final String COMPILER_COPYRIGHT = "copyright";
        private static final String COMPILER_NAME = "name";
        private static final String COMPILER_VERSION = "version";
        public static final int EMACS = 2;
        private static final String ERROR = "ERROR";
        private static final String ERROR_TAG = "error";
        private static final String EXCEPTION = "exception";
        private static final String EXTRA_PROBLEMS = "extra_problems";
        private static final String EXTRA_PROBLEM_TAG = "extra_problem";
        private static final HashtableOfInt FIELD_TABLE = new HashtableOfInt();
        private static final String ID = "id";
        private static final String INFO = "INFO";
        private static final String KEY = "key";
        private static final String MESSAGE = "message";
        private static final String NUMBER_OF_CLASSFILES = "number_of_classfiles";
        private static final String NUMBER_OF_ERRORS = "errors";
        private static final String NUMBER_OF_INFOS = "infos";
        private static final String NUMBER_OF_LINES = "number_of_lines";
        private static final String NUMBER_OF_PROBLEMS = "problems";
        private static final String NUMBER_OF_TASKS = "tasks";
        private static final String NUMBER_OF_WARNINGS = "warnings";
        private static final String OPTION = "option";
        private static final String OPTIONS = "options";
        private static final String OUTPUT = "output";
        private static final String PACKAGE = "package";
        private static final String PATH = "path";
        private static final String PROBLEMS = "problems";
        private static final String PROBLEM_ARGUMENT = "argument";
        private static final String PROBLEM_ARGUMENTS = "arguments";
        private static final String PROBLEM_ARGUMENT_VALUE = "value";
        private static final String PROBLEM_CATEGORY_ID = "categoryID";
        private static final String PROBLEM_ID = "problemID";
        private static final String PROBLEM_LINE = "line";
        private static final String PROBLEM_MESSAGE = "message";
        private static final String PROBLEM_OPTION_KEY = "optionKey";
        private static final String PROBLEM_SEVERITY = "severity";
        private static final String PROBLEM_SOURCE_END = "charEnd";
        private static final String PROBLEM_SOURCE_START = "charStart";
        private static final String PROBLEM_SUMMARY = "problem_summary";
        private static final String PROBLEM_TAG = "problem";
        private static final String SOURCE = "source";
        private static final String SOURCES = "sources";
        private static final String SOURCE_CONTEXT = "source_context";
        private static final String SOURCE_END = "sourceEnd";
        private static final String SOURCE_START = "sourceStart";
        private static final String STATS = "stats";
        private static final String TASK = "task";
        private static final String TASKS = "tasks";
        private static final String TIME = "time";
        private static final String VALUE = "value";
        private static final String WARNING = "WARNING";
        private static final String WARNING_TAG = "warning";
        public static final int XML = 1;
        private static final String XML_DTD_DECLARATION = "<!DOCTYPE compiler PUBLIC \"-//Eclipse.org//DTD Eclipse JDT 3.2.006 Compiler//EN\" \"http://www.eclipse.org/jdt/core/compiler_32_006.dtd\">";
        private PrintWriter err;
        private PrintWriter log;
        private Main main;
        private PrintWriter out;
        private HashMap<String, Object> parameters = new HashMap<>();
        int tagBits;

        static {
            try {
                for (Field field : IProblem.class.getFields()) {
                    if (field.getType().equals(Integer.TYPE)) {
                        int intValue = ((Integer) field.get(null)).intValue() & 4194303;
                        if (intValue == 0) {
                            intValue = Integer.MAX_VALUE;
                        }
                        FIELD_TABLE.put(intValue, field.getName());
                    }
                }
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (IllegalArgumentException e11) {
                e11.printStackTrace();
            } catch (SecurityException e12) {
                e12.printStackTrace();
            }
        }

        public Logger(Main main, PrintWriter printWriter, PrintWriter printWriter2) {
            this.out = printWriter;
            this.err = printWriter2;
            this.main = main;
        }

        private void endLoggingExtraProblems() {
            endTag(EXTRA_PROBLEMS);
        }

        private void endLoggingProblems() {
            endTag("problems");
        }

        private void endTag(String str) {
            PrintWriter printWriter = this.log;
            if (printWriter != null) {
                ((GenericXMLWriter) printWriter).endTag(str, true, true);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        
            r7 = r2 - 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private String errorReportSource(CategorizedProblem categorizedProblem, char[] cArr, int i10) {
            int length;
            char c10;
            char c11;
            int sourceStart = categorizedProblem.getSourceStart();
            int sourceEnd = categorizedProblem.getSourceEnd();
            if (cArr == null && categorizedProblem.getOriginatingFileName() != null) {
                try {
                    cArr = Util.getFileCharContent(new File(new String(categorizedProblem.getOriginatingFileName())), null);
                } catch (IOException unused) {
                }
            }
            if (sourceStart > sourceEnd || ((sourceStart < 0 && sourceEnd < 0) || cArr == null || (length = cArr.length) == 0)) {
                return Messages.problem_noSourceInformation;
            }
            StringBuffer stringBuffer = new StringBuffer();
            if ((i10 & 2) == 0) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append(Messages.bind(Messages.problem_atLine, String.valueOf(categorizedProblem.getSourceLineNumber())));
                stringBuffer.append(Util.LINE_SEPARATOR);
            }
            stringBuffer.append('\t');
            int i11 = sourceStart >= length ? length - 1 : sourceStart;
            while (i11 > 0 && (c11 = cArr[i11 - 1]) != '\n' && c11 != '\r') {
                i11--;
            }
            int i12 = sourceEnd;
            while (true) {
                int i13 = i12 + 1;
                if (i13 < length && (c10 = cArr[i13]) != '\r' && c10 != '\n') {
                    i12 = i13;
                }
            }
            while (true) {
                char c12 = cArr[i11];
                if (c12 != ' ' && c12 != '\t') {
                    break;
                }
                i11++;
            }
            stringBuffer.append(cArr, i11, (i12 - i11) + 1);
            stringBuffer.append(Util.LINE_SEPARATOR);
            stringBuffer.append("\t");
            while (i11 < sourceStart) {
                stringBuffer.append(cArr[i11] == '\t' ? '\t' : ' ');
                i11++;
            }
            while (true) {
                if (sourceStart > (sourceEnd >= length ? length - 1 : sourceEnd)) {
                    return stringBuffer.toString();
                }
                stringBuffer.append('^');
                sourceStart++;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
        
            r10 = r6 - 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void extractContext(CategorizedProblem categorizedProblem, char[] cArr) {
            int length;
            char c10;
            char c11;
            int sourceStart = categorizedProblem.getSourceStart();
            int sourceEnd = categorizedProblem.getSourceEnd();
            if (cArr == null && categorizedProblem.getOriginatingFileName() != null) {
                try {
                    cArr = Util.getFileCharContent(new File(new String(categorizedProblem.getOriginatingFileName())), null);
                } catch (IOException unused) {
                }
            }
            if (sourceStart > sourceEnd || ((sourceStart < 0 && sourceEnd < 0) || cArr == null || (length = cArr.length) <= 0 || sourceEnd > length)) {
                this.parameters.put("value", Messages.problem_noSourceInformation);
                this.parameters.put(SOURCE_START, "-1");
                this.parameters.put(SOURCE_END, "-1");
                printTag(SOURCE_CONTEXT, this.parameters, true, true);
                return;
            }
            int i10 = sourceStart >= length ? length - 1 : sourceStart;
            while (i10 > 0 && (c11 = cArr[i10 - 1]) != '\n' && c11 != '\r') {
                i10--;
            }
            int i11 = sourceEnd;
            while (true) {
                int i12 = i11 + 1;
                if (i12 < length && (c10 = cArr[i12]) != '\r' && c10 != '\n') {
                    i11 = i12;
                }
            }
            while (true) {
                char c12 = cArr[i10];
                if (c12 != ' ' && c12 != '\t') {
                    break;
                } else {
                    i10++;
                }
            }
            while (true) {
                char c13 = cArr[i11];
                if (c13 != ' ' && c13 != '\t') {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(cArr, i10, (i11 - i10) + 1);
                    this.parameters.put("value", String.valueOf(stringBuffer));
                    this.parameters.put(SOURCE_START, Integer.toString(sourceStart - i10));
                    this.parameters.put(SOURCE_END, Integer.toString(sourceEnd - i10));
                    printTag(SOURCE_CONTEXT, this.parameters, true, true);
                    return;
                }
                i11--;
            }
        }

        private String getFieldName(int i10) {
            int i11 = i10 & 4194303;
            if (i11 == 0) {
                i11 = Integer.MAX_VALUE;
            }
            return (String) FIELD_TABLE.get(i11);
        }

        private String getProblemOptionKey(int i10) {
            return CompilerOptions.optionKeyFromIrritant(ProblemReporter.getIrritant(i10));
        }

        private void logExtraProblem(CategorizedProblem categorizedProblem, int i10, int i11) {
            char[] originatingFileName = categorizedProblem.getOriginatingFileName();
            if (originatingFileName == null) {
                printErr(this.main.bind(categorizedProblem.isError() ? "requestor.extraerror" : categorizedProblem.isInfo() ? "requestor.extrainfo" : "requestor.extrawarning", Integer.toString(i11)));
                printErr(" ");
                printlnErr(categorizedProblem.getMessage());
                return;
            }
            String str = new String(originatingFileName);
            if ((this.tagBits & 2) == 0) {
                if (i10 == 0) {
                    printlnErr("----------");
                }
                printErr(this.main.bind(categorizedProblem.isError() ? "requestor.error" : categorizedProblem.isInfo() ? "requestor.info" : "requestor.warning", Integer.toString(i11), str));
                printlnErr(errorReportSource(categorizedProblem, null, 0));
                printlnErr(categorizedProblem.getMessage());
                printlnErr("----------");
                return;
            }
            printlnErr(str + s.f32937c + categorizedProblem.getSourceLineNumber() + ": " + this.main.bind(categorizedProblem.isError() ? "output.emacs.error" : categorizedProblem.isInfo() ? "output.emacs.info" : "output.emacs.warning") + ": " + categorizedProblem.getMessage());
            printlnErr(errorReportSource(categorizedProblem, null, this.tagBits));
        }

        private void logProblem(CategorizedProblem categorizedProblem, int i10, int i11, char[] cArr) {
            if (categorizedProblem instanceof DefaultProblem) {
                ((DefaultProblem) categorizedProblem).reportError();
            }
            if ((this.tagBits & 2) == 0) {
                if (i10 == 0) {
                    printlnErr("----------");
                }
                printErr(this.main.bind(categorizedProblem.isError() ? "requestor.error" : categorizedProblem.isInfo() ? "requestor.info" : "requestor.warning", Integer.toString(i11), new String(categorizedProblem.getOriginatingFileName())));
                try {
                    printlnErr(errorReportSource(categorizedProblem, cArr, 0));
                    printlnErr(categorizedProblem.getMessage());
                } catch (Exception unused) {
                    printlnErr(this.main.bind("requestor.notRetrieveErrorMessage", categorizedProblem.toString()));
                }
                printlnErr("----------");
                return;
            }
            printlnErr(new String(categorizedProblem.getOriginatingFileName()) + s.f32937c + categorizedProblem.getSourceLineNumber() + ": " + this.main.bind(categorizedProblem.isError() ? "output.emacs.error" : categorizedProblem.isInfo() ? "output.emacs.info" : "output.emacs.warning") + ": " + categorizedProblem.getMessage());
            String errorReportSource = errorReportSource(categorizedProblem, cArr, this.tagBits);
            if (errorReportSource.length() != 0) {
                printlnErr(errorReportSource);
            }
        }

        private void logXmlExtraProblem(CategorizedProblem categorizedProblem, int i10, int i11) {
            int sourceStart = categorizedProblem.getSourceStart();
            int sourceEnd = categorizedProblem.getSourceEnd();
            this.parameters.put(PROBLEM_SEVERITY, categorizedProblem.isError() ? ERROR : categorizedProblem.isInfo() ? INFO : WARNING);
            this.parameters.put(PROBLEM_LINE, Integer.valueOf(categorizedProblem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, Integer.valueOf(sourceStart));
            this.parameters.put(PROBLEM_SOURCE_END, Integer.valueOf(sourceEnd));
            printTag(EXTRA_PROBLEM_TAG, this.parameters, true, false);
            this.parameters.put("value", categorizedProblem.getMessage());
            printTag("message", this.parameters, true, true);
            extractContext(categorizedProblem, null);
            endTag(EXTRA_PROBLEM_TAG);
        }

        private void logXmlProblem(CategorizedProblem categorizedProblem, char[] cArr) {
            int sourceStart = categorizedProblem.getSourceStart();
            int sourceEnd = categorizedProblem.getSourceEnd();
            int id2 = categorizedProblem.getID();
            this.parameters.put("id", getFieldName(id2));
            this.parameters.put(PROBLEM_ID, Integer.valueOf(id2));
            boolean isError = categorizedProblem.isError();
            this.parameters.put(PROBLEM_SEVERITY, isError ? ERROR : categorizedProblem.isInfo() ? INFO : WARNING);
            this.parameters.put(PROBLEM_LINE, Integer.valueOf(categorizedProblem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, Integer.valueOf(sourceStart));
            this.parameters.put(PROBLEM_SOURCE_END, Integer.valueOf(sourceEnd));
            String problemOptionKey = getProblemOptionKey(id2);
            if (problemOptionKey != null) {
                this.parameters.put(PROBLEM_OPTION_KEY, problemOptionKey);
            }
            this.parameters.put(PROBLEM_CATEGORY_ID, Integer.valueOf(ProblemReporter.getProblemCategory(isError ? 1 : 0, id2)));
            printTag(PROBLEM_TAG, this.parameters, true, false);
            this.parameters.put("value", categorizedProblem.getMessage());
            printTag("message", this.parameters, true, true);
            extractContext(categorizedProblem, cArr);
            String[] arguments = categorizedProblem.getArguments();
            if (arguments.length != 0) {
                printTag("arguments", null, true, false);
                for (String str : arguments) {
                    this.parameters.put("value", str);
                    printTag("argument", this.parameters, true, true);
                }
                endTag("arguments");
            }
            endTag(PROBLEM_TAG);
        }

        private void logXmlTask(CategorizedProblem categorizedProblem, char[] cArr) {
            this.parameters.put(PROBLEM_LINE, Integer.valueOf(categorizedProblem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, Integer.valueOf(categorizedProblem.getSourceStart()));
            this.parameters.put(PROBLEM_SOURCE_END, Integer.valueOf(categorizedProblem.getSourceEnd()));
            String problemOptionKey = getProblemOptionKey(categorizedProblem.getID());
            if (problemOptionKey != null) {
                this.parameters.put(PROBLEM_OPTION_KEY, problemOptionKey);
            }
            printTag(TASK, this.parameters, true, false);
            this.parameters.put("value", categorizedProblem.getMessage());
            printTag("message", this.parameters, true, true);
            extractContext(categorizedProblem, cArr);
            endTag(TASK);
        }

        private void printErr(String str) {
            PrintWriter printWriter;
            this.err.print(str);
            if ((this.tagBits & 1) != 0 || (printWriter = this.log) == null) {
                return;
            }
            printWriter.print(str);
        }

        private void printOut(char c10) {
            this.out.print(c10);
        }

        private void printTag(String str, HashMap<String, Object> hashMap, boolean z10, boolean z11) {
            PrintWriter printWriter = this.log;
            if (printWriter != null) {
                ((GenericXMLWriter) printWriter).printTag(str, this.parameters, true, z10, z11);
            }
            this.parameters.clear();
        }

        private void printlnErr() {
            PrintWriter printWriter;
            this.err.println();
            if ((this.tagBits & 1) != 0 || (printWriter = this.log) == null) {
                return;
            }
            printWriter.println();
        }

        private void printlnOut(String str) {
            PrintWriter printWriter;
            this.out.println(str);
            if ((this.tagBits & 1) != 0 || (printWriter = this.log) == null) {
                return;
            }
            printWriter.println(str);
        }

        private void startLoggingExtraProblems(int i10) {
            this.parameters.put("problems", Integer.valueOf(i10));
            printTag(EXTRA_PROBLEMS, this.parameters, true, false);
        }

        private void startLoggingProblems(int i10, int i11, int i12) {
            this.parameters.put("problems", Integer.valueOf(i10 + i11));
            this.parameters.put(NUMBER_OF_ERRORS, Integer.valueOf(i10));
            this.parameters.put(NUMBER_OF_WARNINGS, Integer.valueOf(i11));
            this.parameters.put(NUMBER_OF_INFOS, Integer.valueOf(i12));
            printTag("problems", this.parameters, true, false);
        }

        public String buildFileName(String str, String str2) {
            char c10 = File.separatorChar;
            String str3 = File.separator;
            String replace = str.replace('/', c10);
            StringBuffer stringBuffer = new StringBuffer(replace);
            if (!replace.endsWith(str3)) {
                stringBuffer.append(str3);
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str2, str3);
            String nextToken = stringTokenizer.nextToken();
            while (stringTokenizer.hasMoreTokens()) {
                stringBuffer.append(nextToken);
                stringBuffer.append(str3);
                nextToken = stringTokenizer.nextToken();
            }
            stringBuffer.append(nextToken);
            return stringBuffer.toString();
        }

        public void close() {
            if (this.log != null) {
                if ((this.tagBits & 1) != 0) {
                    endTag(COMPILER);
                    flush();
                }
                this.log.close();
            }
        }

        public void compiling() {
            printlnOut(this.main.bind("progress.compiling"));
        }

        public void endLoggingSource() {
            if ((this.tagBits & 1) != 0) {
                endTag("source");
            }
        }

        public void endLoggingSources() {
            if ((this.tagBits & 1) != 0) {
                endTag(SOURCES);
            }
        }

        public void endLoggingTasks() {
            if ((this.tagBits & 1) != 0) {
                endTag("tasks");
            }
        }

        public void flush() {
            this.out.flush();
            this.err.flush();
            PrintWriter printWriter = this.log;
            if (printWriter != null) {
                printWriter.flush();
            }
        }

        public void logAverage() {
            Arrays.sort(this.main.compilerStats);
            Main main = this.main;
            long j10 = main.compilerStats[0].lineCount;
            int i10 = main.maxRepetition;
            int i11 = i10 - 1;
            long j11 = 0;
            long j12 = 0;
            long j13 = 0;
            long j14 = 0;
            int i12 = 1;
            long j15 = 0;
            while (i12 < i11) {
                int i13 = i10;
                CompilerStats compilerStats = this.main.compilerStats[i12];
                long elapsedTime = j11 + compilerStats.elapsedTime();
                j15 += compilerStats.parseTime;
                j12 += compilerStats.resolveTime;
                j13 += compilerStats.analyzeTime;
                long j16 = j14 + compilerStats.generateTime;
                i12++;
                i11 = i11;
                j11 = elapsedTime;
                i10 = i13;
                j10 = j10;
                j14 = j16;
            }
            long j17 = i10 - 2;
            long j18 = j11 / j17;
            long j19 = j15 / j17;
            long j20 = j12 / j17;
            long j21 = j13 / j17;
            long j22 = j14 / j17;
            double d10 = j18;
            printlnOut(this.main.bind("compile.averageTime", new String[]{String.valueOf(j10), String.valueOf(j18), String.valueOf(((int) ((r16 * 10000.0d) / d10)) / 10.0d)}));
            Main main2 = this.main;
            if ((main2.timing & 2) != 0) {
                printlnOut(main2.bind("compile.detailedTime", new String[]{String.valueOf(j19), String.valueOf(((int) ((j19 * 1000.0d) / d10)) / 10.0d), String.valueOf(j20), String.valueOf(((int) ((j20 * 1000.0d) / d10)) / 10.0d), String.valueOf(j21), String.valueOf(((int) ((j21 * 1000.0d) / d10)) / 10.0d), String.valueOf(j22), String.valueOf(((int) ((j22 * 1000.0d) / d10)) / 10.0d)}));
            }
        }

        public void logClassFile(boolean z10, String str, String str2) {
            String str3;
            if ((this.tagBits & 1) != 0) {
                if (z10) {
                    str3 = buildFileName(str, str2);
                } else {
                    char c10 = File.separatorChar;
                    String str4 = File.separator;
                    str = str.replace('/', c10);
                    int lastIndexOf = str2.lastIndexOf(c10);
                    if (lastIndexOf != -1) {
                        int length = str2.length();
                        if (str.endsWith(str4)) {
                            str3 = str + str2.substring(lastIndexOf + 1, length);
                        } else {
                            str3 = str + str4 + str2.substring(lastIndexOf + 1, length);
                        }
                    } else if (str.endsWith(str4)) {
                        str3 = str + str2;
                    } else {
                        str3 = str + str4 + str2;
                    }
                }
                try {
                    this.parameters.put("path", new File(str3).getCanonicalPath());
                    printTag(CLASS_FILE, this.parameters, true, true);
                } catch (IOException e10) {
                    logNoClassFileCreated(str, str2, e10);
                }
            }
        }

        public void logClasspath(FileSystem.Classpath[] classpathArr) {
            if (classpathArr == null || (this.tagBits & 1) == 0 || (classpathArr.length) == 0) {
                return;
            }
            printTag(CLASSPATHS, null, true, false);
            for (FileSystem.Classpath classpath : classpathArr) {
                String path = classpath.getPath();
                this.parameters.put("path", path);
                File file = new File(path);
                String str = file.isFile() ? Util.archiveFormat(path) != 0 ? CLASSPATH_FILE : CLASSPATH_JAR : file.isDirectory() ? CLASSPATH_FOLDER : null;
                if (str != null) {
                    this.parameters.put("id", str);
                    printTag("classpath", this.parameters, true, true);
                }
            }
            endTag(CLASSPATHS);
        }

        public void logCommandLineArguments(String[] strArr) {
            if (strArr == null || (this.tagBits & 1) == 0 || (strArr.length) == 0) {
                return;
            }
            printTag(COMMAND_LINE_ARGUMENTS, null, true, false);
            for (String str : strArr) {
                this.parameters.put("value", str);
                printTag("argument", this.parameters, true, true);
            }
            endTag(COMMAND_LINE_ARGUMENTS);
        }

        public void logException(Exception exc) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            exc.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
            String stringWriter2 = stringWriter.toString();
            if ((this.tagBits & 1) != 0) {
                LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(stringWriter2));
                StringBuffer stringBuffer = new StringBuffer();
                String message = exc.getMessage();
                if (message != null) {
                    stringBuffer.append(message);
                    stringBuffer.append(Util.LINE_SEPARATOR);
                }
                int i10 = 0;
                while (true) {
                    try {
                        String readLine = lineNumberReader.readLine();
                        if (readLine == null || i10 >= 4) {
                            break;
                        }
                        stringBuffer.append(readLine);
                        stringBuffer.append(Util.LINE_SEPARATOR);
                        i10++;
                    } catch (IOException unused) {
                    }
                }
                lineNumberReader.close();
                this.parameters.put("message", stringBuffer.toString());
                this.parameters.put("class", exc.getClass());
                printTag(EXCEPTION, this.parameters, true, true);
            }
            String message2 = exc.getMessage();
            if (message2 == null) {
                printlnErr(stringWriter2);
            } else {
                printlnErr(message2);
            }
        }

        public void logIncorrectVMVersionForAnnotationProcessing() {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("configure.incorrectVMVersionforAPT"));
                printTag("error", this.parameters, true, true);
            }
            printlnErr(this.main.bind("configure.incorrectVMVersionforAPT"));
        }

        public void logNoClassFileCreated(String str, String str2, IOException iOException) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("output.noClassFileCreated", new String[]{str, str2, iOException.getMessage()}));
                printTag("error", this.parameters, true, true);
            }
            printlnErr(this.main.bind("output.noClassFileCreated", new String[]{str, str2, iOException.getMessage()}));
        }

        public void logNumberOfClassFilesGenerated(int i10) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("value", Integer.valueOf(i10));
                printTag(NUMBER_OF_CLASSFILES, this.parameters, true, true);
            }
            if (i10 == 1) {
                printlnOut(this.main.bind("compile.oneClassFileGenerated"));
            } else {
                printlnOut(this.main.bind("compile.severalClassFilesGenerated", String.valueOf(i10)));
            }
        }

        public void logOptions(Map<String, String> map) {
            if ((this.tagBits & 1) != 0) {
                printTag(OPTIONS, null, true, false);
                Set<Map.Entry<String, String>> entrySet = map.entrySet();
                Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(new Map.Entry[entrySet.size()]);
                Arrays.sort(entryArr, new Comparator<Map.Entry<String, String>>() {
                    @Override
                    public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
                        return entry.getKey().compareTo(entry2.getKey());
                    }
                });
                for (Map.Entry entry : entryArr) {
                    this.parameters.put("key", (String) entry.getKey());
                    this.parameters.put("value", entry.getValue());
                    printTag(OPTION, this.parameters, true, true);
                }
                endTag(OPTIONS);
            }
        }

        public void logPendingError(String str) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", str);
                printTag("error", this.parameters, true, true);
            }
            printlnErr(str);
        }

        public int logProblems(CategorizedProblem[] categorizedProblemArr, char[] cArr, Main main) {
            if (categorizedProblemArr.length == 0) {
                return 0;
            }
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            for (CategorizedProblem categorizedProblem : categorizedProblemArr) {
                if (categorizedProblem != null) {
                    int i16 = main.globalProblemsCount + 1;
                    main.globalProblemsCount = i16;
                    logProblem(categorizedProblem, i10, i16, cArr);
                    i10++;
                    if (categorizedProblem.isError()) {
                        i14++;
                        i11++;
                        main.globalErrorsCount++;
                    } else if (categorizedProblem.getID() == 536871362) {
                        main.globalTasksCount++;
                        i15++;
                    } else if (categorizedProblem.isInfo()) {
                        main.globalInfoCount++;
                        i13++;
                    } else {
                        main.globalWarningsCount++;
                        i12++;
                    }
                }
            }
            if ((this.tagBits & 1) != 0) {
                if (i11 + i12 + i13 != 0) {
                    startLoggingProblems(i11, i12, i13);
                    for (CategorizedProblem categorizedProblem2 : categorizedProblemArr) {
                        if (categorizedProblem2 != null && categorizedProblem2.getID() != 536871362) {
                            logXmlProblem(categorizedProblem2, cArr);
                        }
                    }
                    endLoggingProblems();
                }
                if (i15 != 0) {
                    startLoggingTasks(i15);
                    for (CategorizedProblem categorizedProblem3 : categorizedProblemArr) {
                        if (categorizedProblem3 != null && categorizedProblem3.getID() == 536871362) {
                            logXmlTask(categorizedProblem3, cArr);
                        }
                    }
                    endLoggingTasks();
                }
            }
            return i14;
        }

        public void logProblemsSummary(int i10, int i11, int i12, int i13, int i14) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("problems", Integer.valueOf(i10));
                this.parameters.put(NUMBER_OF_ERRORS, Integer.valueOf(i11));
                this.parameters.put(NUMBER_OF_WARNINGS, Integer.valueOf(i12));
                this.parameters.put(NUMBER_OF_INFOS, Integer.valueOf(i13));
                this.parameters.put("tasks", Integer.valueOf(i14));
                printTag(PROBLEM_SUMMARY, this.parameters, true, true);
            }
            if (i10 == 1) {
                printErr(this.main.bind("compile.oneProblem", i11 == 1 ? this.main.bind("compile.oneError") : i13 == 1 ? this.main.bind("compile.oneInfo") : this.main.bind("compile.oneWarning")));
            } else {
                String str = null;
                String bind = i11 > 0 ? i11 == 1 ? this.main.bind("compile.oneError") : this.main.bind("compile.severalErrors", String.valueOf(i11)) : null;
                int i15 = i14 + i12;
                String bind2 = i15 > 0 ? i15 == 1 ? this.main.bind("compile.oneWarning") : this.main.bind("compile.severalWarnings", String.valueOf(i15)) : null;
                if (i13 == 1) {
                    str = this.main.bind("compile.oneInfo");
                } else if (i13 > 1) {
                    str = this.main.bind("compile.severalInfos", String.valueOf(i15));
                }
                if (i10 == i13 || i10 == i11 || i10 == i12) {
                    if (bind == null) {
                        bind = bind2 != null ? bind2 : str;
                    }
                    printErr(this.main.bind("compile.severalProblemsErrorsOrWarnings", String.valueOf(i10), bind));
                } else if (i13 == 0) {
                    printErr(this.main.bind("compile.severalProblemsErrorsAndWarnings", new String[]{String.valueOf(i10), bind, bind2}));
                } else {
                    if (bind == null) {
                        bind = this.main.bind("compile.severalErrors", String.valueOf(i11));
                    }
                    if (bind2 == null) {
                        bind2 = this.main.bind("compile.severalWarnings", String.valueOf(i15));
                    }
                    printErr(this.main.bind("compile.severalProblems", new String[]{String.valueOf(i10), bind, bind2, str}));
                }
            }
            if ((this.tagBits & 1) == 0) {
                printlnErr();
            }
        }

        public void logProgress() {
            printOut('.');
        }

        public void logRepetition(int i10, int i11) {
            printlnOut(this.main.bind("compile.repetition", String.valueOf(i10 + 1), String.valueOf(i11)));
        }

        public void logTiming(CompilerStats compilerStats) {
            long elapsedTime = compilerStats.elapsedTime();
            long j10 = compilerStats.lineCount;
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("value", Long.valueOf(elapsedTime));
                printTag("time", this.parameters, true, true);
                this.parameters.put("value", Long.valueOf(j10));
                printTag(NUMBER_OF_LINES, this.parameters, true, true);
            }
            if (j10 != 0) {
                printlnOut(this.main.bind("compile.instantTime", new String[]{String.valueOf(j10), String.valueOf(elapsedTime), String.valueOf(((int) ((j10 * 10000.0d) / elapsedTime)) / 10.0d)}));
            } else {
                printlnOut(this.main.bind("compile.totalTime", new String[]{String.valueOf(elapsedTime)}));
            }
            Main main = this.main;
            if ((main.timing & 2) != 0) {
                double d10 = elapsedTime;
                printlnOut(main.bind("compile.detailedTime", new String[]{String.valueOf(compilerStats.parseTime), String.valueOf(((int) ((compilerStats.parseTime * 1000.0d) / d10)) / 10.0d), String.valueOf(compilerStats.resolveTime), String.valueOf(((int) ((compilerStats.resolveTime * 1000.0d) / d10)) / 10.0d), String.valueOf(compilerStats.analyzeTime), String.valueOf(((int) ((compilerStats.analyzeTime * 1000.0d) / d10)) / 10.0d), String.valueOf(compilerStats.generateTime), String.valueOf(((int) ((compilerStats.generateTime * 1000.0d) / d10)) / 10.0d)}));
            }
        }

        public void logUnavaibleAPT(String str) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("configure.unavailableAPT", str));
                printTag("error", this.parameters, true, true);
            }
            printlnErr(this.main.bind("configure.unavailableAPT", str));
        }

        public void logUsage(String str) {
            printlnOut(str);
        }

        public void logVersion(boolean z10) {
            if (this.log == null || (this.tagBits & 1) != 0) {
                if (z10) {
                    Main main = this.main;
                    this.out.println(main.bind("misc.version", new String[]{main.bind("compiler.name"), this.main.bind("compiler.version"), this.main.bind("compiler.copyright")}));
                    this.out.flush();
                    return;
                }
                return;
            }
            Main main2 = this.main;
            String bind = main2.bind("misc.version", new String[]{main2.bind("compiler.name"), this.main.bind("compiler.version"), this.main.bind("compiler.copyright")});
            this.log.println("# " + bind);
            if (z10) {
                this.out.println(bind);
                this.out.flush();
            }
        }

        public void logWarning(String str) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", str);
                printTag("warning", this.parameters, true, true);
            }
            printlnOut(str);
        }

        public void logWrongJDK() {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("configure.requiresJDK1.2orAbove"));
                printTag(ERROR, this.parameters, true, true);
            }
            printlnErr(this.main.bind("configure.requiresJDK1.2orAbove"));
        }

        public void loggingExtraProblems(Main main) {
            ArrayList<CategorizedProblem> arrayList = main.extraProblems;
            int size = arrayList.size();
            if (size != 0) {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < size; i14++) {
                    CategorizedProblem categorizedProblem = arrayList.get(i14);
                    if (categorizedProblem != null) {
                        int i15 = main.globalProblemsCount + 1;
                        main.globalProblemsCount = i15;
                        logExtraProblem(categorizedProblem, i10, i15);
                        i10++;
                        if (categorizedProblem.isError()) {
                            i11++;
                            main.globalErrorsCount++;
                        } else if (categorizedProblem.isInfo()) {
                            main.globalInfoCount++;
                            i13++;
                        } else {
                            main.globalWarningsCount++;
                            i12++;
                        }
                    }
                }
                if ((this.tagBits & 1) == 0 || i11 + i12 + i13 == 0) {
                    return;
                }
                startLoggingExtraProblems(size);
                for (int i16 = 0; i16 < size; i16++) {
                    CategorizedProblem categorizedProblem2 = arrayList.get(i16);
                    if (categorizedProblem2 != null && categorizedProblem2.getID() != 536871362) {
                        logXmlExtraProblem(categorizedProblem2, i10, main.globalProblemsCount);
                    }
                }
                endLoggingExtraProblems();
            }
        }

        public void printNewLine() {
            this.out.println();
        }

        public void printStats() {
            boolean z10 = (this.main.timing & 1) != 0;
            if ((this.tagBits & 1) != 0) {
                printTag("stats", null, true, false);
            }
            if (z10) {
                Main main = this.main;
                CompilerStats compilerStats = main.batchCompiler.stats;
                compilerStats.startTime = main.startTime;
                compilerStats.endTime = System.currentTimeMillis();
                logTiming(compilerStats);
            }
            Main main2 = this.main;
            int i10 = main2.globalProblemsCount;
            if (i10 > 0) {
                logProblemsSummary(i10, main2.globalErrorsCount, main2.globalWarningsCount, main2.globalInfoCount, main2.globalTasksCount);
            }
            Main main3 = this.main;
            int i11 = main3.exportedClassFilesCounter;
            if (i11 != 0 && (main3.showProgress || z10 || main3.verbose)) {
                logNumberOfClassFilesGenerated(i11);
            }
            if ((this.tagBits & 1) != 0) {
                endTag("stats");
            }
        }

        public void setEmacs() {
            this.tagBits |= 2;
        }

        public void setLog(String str) {
            Date date = new Date();
            DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(3, 1, Locale.getDefault());
            try {
                int lastIndexOf = str.lastIndexOf(46);
                if (lastIndexOf == -1) {
                    PrintWriter printWriter = new PrintWriter(new FileOutputStream(str, false));
                    this.log = printWriter;
                    printWriter.println("# " + dateTimeInstance.format(date));
                    return;
                }
                if (!str.substring(lastIndexOf).toLowerCase().equals(".xml")) {
                    PrintWriter printWriter2 = new PrintWriter(new FileOutputStream(str, false));
                    this.log = printWriter2;
                    printWriter2.println("# " + dateTimeInstance.format(date));
                    return;
                }
                GenericXMLWriter genericXMLWriter = new GenericXMLWriter((Writer) new OutputStreamWriter(new FileOutputStream(str, false), "UTF-8"), Util.LINE_SEPARATOR, true);
                this.log = genericXMLWriter;
                this.tagBits |= 1;
                genericXMLWriter.println("<!-- " + dateTimeInstance.format(date) + " -->");
                this.log.println(XML_DTD_DECLARATION);
                this.parameters.put("name", this.main.bind("compiler.name"));
                this.parameters.put("version", this.main.bind("compiler.version"));
                this.parameters.put(COMPILER_COPYRIGHT, this.main.bind("compiler.copyright"));
                printTag(COMPILER, this.parameters, true, false);
            } catch (FileNotFoundException e10) {
                throw new IllegalArgumentException(this.main.bind("configure.cannotOpenLog", str), e10);
            } catch (UnsupportedEncodingException e11) {
                throw new IllegalArgumentException(this.main.bind("configure.cannotOpenLogInvalidEncoding", str), e11);
            }
        }

        public void startLoggingSource(CompilationResult compilationResult) {
            if ((this.tagBits & 1) != 0) {
                ICompilationUnit iCompilationUnit = compilationResult.compilationUnit;
                if (iCompilationUnit != null) {
                    char[] fileName = iCompilationUnit.getFileName();
                    File file = new File(new String(fileName));
                    if (fileName != null) {
                        this.parameters.put("path", file.getAbsolutePath());
                    }
                    char[][] cArr = compilationResult.packageName;
                    if (cArr != null) {
                        this.parameters.put("package", new String(CharOperation.concatWith(cArr, File.separatorChar)));
                    }
                    String str = ((CompilationUnit) iCompilationUnit).destinationPath;
                    if (str == null) {
                        str = this.main.destinationPath;
                    }
                    if (str != null && str != "none") {
                        char c10 = File.separatorChar;
                        if (c10 == '/') {
                            this.parameters.put("output", str);
                        } else {
                            this.parameters.put("output", str.replace('/', c10));
                        }
                    }
                }
                printTag("source", this.parameters, true, false);
            }
        }

        public void startLoggingSources() {
            if ((this.tagBits & 1) != 0) {
                printTag(SOURCES, null, true, false);
            }
        }

        public void startLoggingTasks(int i10) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("tasks", Integer.valueOf(i10));
                printTag("tasks", this.parameters, true, false);
            }
        }

        private void printlnErr(String str) {
            PrintWriter printWriter;
            this.err.println(str);
            if ((this.tagBits & 1) != 0 || (printWriter = this.log) == null) {
                return;
            }
            printWriter.println(str);
        }
    }

    public Main(PrintWriter printWriter, PrintWriter printWriter2, boolean z10, Map<String, String> map, CompilationProgress compilationProgress) {
        List<String> list = Collections.EMPTY_LIST;
        this.addonExports = list;
        this.addonReads = list;
        this.rootModules = Collections.EMPTY_SET;
        this.javaHomeChecked = false;
        this.primaryNullAnnotationsSeen = false;
        this.proceed = true;
        this.proceedOnError = false;
        this.produceRefInfo = false;
        this.showProgress = false;
        this.systemExitWhenFinished = true;
        this.timing = 0;
        this.verbose = false;
        initialize(printWriter, printWriter2, z10, map, compilationProgress);
        relocalize();
    }

    public static boolean compile(String[] strArr, PrintWriter printWriter, PrintWriter printWriter2, CompilationProgress compilationProgress) {
        return new Main(printWriter, printWriter2, false, null, compilationProgress).compile(strArr);
    }

    public String bind(String str, String str2, String str3) {
        return bind(str, new String[]{str2, str3});
    }

    public void initialize(PrintWriter printWriter, PrintWriter printWriter2, boolean z10, Map<String, String> map, CompilationProgress compilationProgress) {
        this.logger = new Logger(this, printWriter, printWriter2);
        this.proceed = true;
        this.out = printWriter;
        this.err = printWriter2;
        this.systemExitWhenFinished = z10;
        this.options = new CompilerOptions().getMap();
        this.ignoreOptionalProblemsFromFolders = null;
        this.progress = compilationProgress;
        if (map != null) {
            this.didSpecifySource = map.get("org.eclipse.jdt.core.compiler.source") != null;
            this.didSpecifyTarget = map.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform") != null;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.options.put(entry.getKey(), entry.getValue());
            }
        } else {
            this.didSpecifySource = false;
            this.didSpecifyTarget = false;
        }
        this.classNames = null;
    }

    public String bind(String str, String[] strArr) {
        if (str == null) {
            return "No message available";
        }
        try {
            return MessageFormat.format(this.bundle.getString(str), strArr);
        } catch (MissingResourceException unused) {
            return "Missing message: " + str + " in: " + bundleName;
        }
    }

    public boolean compile(String[] strArr) {
        CompilationProgress compilationProgress;
        try {
            try {
                configure(strArr);
                CompilationProgress compilationProgress2 = this.progress;
                if (compilationProgress2 != null) {
                    String[] strArr2 = this.filenames;
                    compilationProgress2.begin(strArr2 == null ? 0 : strArr2.length * this.maxRepetition);
                }
                if (this.proceed) {
                    if (this.showProgress) {
                        this.logger.compiling();
                    }
                    this.currentRepetition = 0;
                    while (true) {
                        int i10 = this.currentRepetition;
                        int i11 = this.maxRepetition;
                        if (i10 >= i11) {
                            break;
                        }
                        this.globalProblemsCount = 0;
                        this.globalErrorsCount = 0;
                        this.globalWarningsCount = 0;
                        this.globalInfoCount = 0;
                        this.globalTasksCount = 0;
                        this.exportedClassFilesCounter = 0;
                        if (i11 > 1) {
                            this.logger.flush();
                            this.logger.logRepetition(this.currentRepetition, this.maxRepetition);
                        }
                        performCompilation();
                        this.currentRepetition++;
                    }
                    if (this.compilerStats != null) {
                        this.logger.logAverage();
                    }
                    if (this.showProgress) {
                        this.logger.printNewLine();
                    }
                }
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(this.globalErrorsCount > 0 ? -1 : 0);
                }
                this.logger.flush();
                this.logger.close();
                CompilationProgress compilationProgress3 = this.progress;
                if (compilationProgress3 != null) {
                    compilationProgress3.done();
                }
                return this.globalErrorsCount == 0 && ((compilationProgress = this.progress) == null || !compilationProgress.isCanceled());
            } catch (IllegalArgumentException e10) {
                this.logger.logException(e10);
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(-1);
                }
                this.logger.flush();
                this.logger.close();
                CompilationProgress compilationProgress4 = this.progress;
                if (compilationProgress4 != null) {
                    compilationProgress4.done();
                }
                return false;
            } catch (Exception e11) {
                this.logger.logException(e11);
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(-1);
                }
                this.logger.flush();
                this.logger.close();
                CompilationProgress compilationProgress5 = this.progress;
                if (compilationProgress5 != null) {
                    compilationProgress5.done();
                }
                return false;
            }
        } catch (Throwable th2) {
            this.logger.flush();
            this.logger.close();
            CompilationProgress compilationProgress6 = this.progress;
            if (compilationProgress6 != null) {
                compilationProgress6.done();
            }
            throw th2;
        }
    }

    private int processPaths(String[] strArr, int i10, String str, String[] strArr2) {
        int length = str.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '[') {
                i11++;
            } else if (charAt == ']') {
                i11--;
            }
        }
        if (i11 == 0) {
            strArr2[0] = str;
            return 0;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        int i13 = i10;
        while (true) {
            i13++;
            if (i13 < strArr.length) {
                String str2 = strArr[i13];
                int length2 = str2.length();
                for (int i14 = 0; i14 < length2; i14++) {
                    char charAt2 = str2.charAt(i14);
                    if (charAt2 == '[') {
                        if (i11 > 1) {
                            throw new IllegalArgumentException(bind("configure.unexpectedBracket", str));
                        }
                        i11++;
                    } else if (charAt2 == ']') {
                        i11--;
                    }
                }
                if (i11 == 0) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(str2);
                    strArr2[0] = stringBuffer.toString();
                    return i13 - i10;
                }
                if (i11 >= 0) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(str2);
                } else {
                    throw new IllegalArgumentException(bind("configure.unexpectedBracket", str));
                }
            } else {
                throw new IllegalArgumentException(bind("configure.unexpectedBracket", str));
            }
        }
    }
}
