package org.openjdk.tools.doclint;

import b3.s;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.MethodTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.source.tree.PackageTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.tree.VariableTree;
import org.openjdk.source.util.JavacTask;
import org.openjdk.source.util.Plugin;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.source.util.TreePath;
import org.openjdk.source.util.TreePathScanner;
import org.openjdk.tools.doclint.Messages;
import org.openjdk.tools.javac.api.JavacTaskImpl;
import org.openjdk.tools.javac.api.JavacTool;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.main.JavaCompiler;
import org.openjdk.tools.javac.util.Context;

public class DocLint implements Plugin {
    public static final String SEPARATOR = ",";
    private static final String STATS = "-stats";
    public static final String XCHECK_PACKAGE = "-XcheckPackage:";
    public static final String XCUSTOM_TAGS_PREFIX = "-XcustomTags:";
    public static final String XHTML_VERSION_PREFIX = "-XhtmlVersion:";
    public static final String XIMPLICIT_HEADERS = "-XimplicitHeaders:";
    public static final String XMSGS_CUSTOM_PREFIX = "-Xmsgs:";
    public static final String XMSGS_OPTION = "-Xmsgs";
    Checker checker;
    Env env;
    List<File> javacBootClassPath;
    List<File> javacClassPath;
    List<File> javacFiles;
    List<String> javacOpts;
    List<File> javacSourcePath;
    boolean needHelp = false;

    public static class AnonymousClass4 {
        static final int[] $SwitchMap$com$sun$source$util$TaskEvent$Kind;

        static {
            int[] iArr = new int[TaskEvent.Kind.values().length];
            $SwitchMap$com$sun$source$util$TaskEvent$Kind = iArr;
            try {
                iArr[TaskEvent.Kind.ANALYZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$source$util$TaskEvent$Kind[TaskEvent.Kind.PARSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class BadArgs extends Exception {
        private static final long serialVersionUID = 0;
        final Object[] args;
        final String code;

        public BadArgs(String str, Object... objArr) {
            super(DocLint.this.localize(str, objArr));
            this.code = str;
            this.args = objArr;
        }
    }

    public static abstract class DeclScanner extends TreePathScanner<Void, Void> {
        final Env env;

        public DeclScanner(Env env) {
            this.env = env;
        }

        public abstract void visitDecl(Tree tree, Name name);

        @Override
        public Void visitClass(ClassTree classTree, Void r32) {
            visitDecl(classTree, classTree.getSimpleName());
            return (Void) super.visitClass(classTree, (ClassTree) r32);
        }

        @Override
        public Void visitCompilationUnit(CompilationUnitTree compilationUnitTree, Void r32) {
            if (this.env.shouldCheck(compilationUnitTree)) {
                return (Void) super.visitCompilationUnit(compilationUnitTree, (CompilationUnitTree) r32);
            }
            return null;
        }

        @Override
        public Void visitMethod(MethodTree methodTree, Void r22) {
            visitDecl(methodTree, methodTree.getName());
            return null;
        }

        @Override
        public Void visitModule(ModuleTree moduleTree, Void r32) {
            visitDecl(moduleTree, null);
            return (Void) super.visitModule(moduleTree, (ModuleTree) r32);
        }

        @Override
        public Void visitPackage(PackageTree packageTree, Void r32) {
            visitDecl(packageTree, null);
            return (Void) super.visitPackage(packageTree, (PackageTree) r32);
        }

        @Override
        public Void visitVariable(VariableTree variableTree, Void r32) {
            visitDecl(variableTree, variableTree.getName());
            return (Void) super.visitVariable(variableTree, (VariableTree) r32);
        }
    }

    public static boolean isValidOption(String str) {
        if (str.equals(XMSGS_OPTION)) {
            return true;
        }
        if (str.startsWith(XMSGS_CUSTOM_PREFIX)) {
            return Messages.Options.isValidOptions(str.substring(7));
        }
        if (str.startsWith(XCHECK_PACKAGE)) {
            return Env.validatePackages(str.substring(str.indexOf(s.f32937c) + 1));
        }
        return false;
    }

    public String localize(String str, Object... objArr) {
        Env env = this.env;
        return (env != null ? env.messages : new Messages(null)).localize(str, objArr);
    }

    public static void main(String... strArr) {
        DocLint docLint = new DocLint();
        try {
            docLint.run(strArr);
        } catch (IOException e10) {
            System.err.println(docLint.localize("dc.main.ioerror", e10.getLocalizedMessage()));
            System.exit(2);
        } catch (BadArgs e11) {
            System.err.println(e11.getMessage());
            System.exit(1);
        }
    }

    @Override
    public String getName() {
        return "doclint";
    }

    @Override
    public void init(JavacTask javacTask, String... strArr) {
        init(javacTask, strArr, true);
    }

    public void processArgs(String... strArr) throws BadArgs {
        int i10;
        this.javacOpts = new ArrayList();
        this.javacFiles = new ArrayList();
        if (strArr.length == 0) {
            this.needHelp = true;
        }
        int i11 = 0;
        while (i11 < strArr.length) {
            String str = strArr[i11];
            if (!str.matches("-Xmax(errs|warns)") || (i10 = i11 + 1) >= strArr.length) {
                if ((str.equals("-target") || str.equals("-source")) && (i10 = i11 + 1) < strArr.length) {
                    this.javacOpts.add(str);
                    this.javacOpts.add(strArr[i10]);
                } else {
                    if (str.equals(STATS)) {
                        this.env.messages.setStatsEnabled(true);
                    } else if (str.equals("-bootclasspath") && (i10 = i11 + 1) < strArr.length) {
                        this.javacBootClassPath = splitPath(strArr[i10]);
                    } else if (str.equals("-classpath") && (i10 = i11 + 1) < strArr.length) {
                        this.javacClassPath = splitPath(strArr[i10]);
                    } else if (str.equals("-cp") && (i10 = i11 + 1) < strArr.length) {
                        this.javacClassPath = splitPath(strArr[i10]);
                    } else if (str.equals("-sourcepath") && (i10 = i11 + 1) < strArr.length) {
                        this.javacSourcePath = splitPath(strArr[i10]);
                    } else if (str.equals(XMSGS_OPTION)) {
                        this.env.messages.setOptions(null);
                    } else if (str.startsWith(XMSGS_CUSTOM_PREFIX)) {
                        this.env.messages.setOptions(str.substring(str.indexOf(s.f32937c) + 1));
                    } else if (str.startsWith(XCUSTOM_TAGS_PREFIX)) {
                        this.env.setCustomTags(str.substring(str.indexOf(s.f32937c) + 1));
                    } else if (str.startsWith(XHTML_VERSION_PREFIX)) {
                        String substring = str.substring(str.indexOf(s.f32937c) + 1);
                        HtmlVersion htmlVersion = HtmlVersion.getHtmlVersion(substring);
                        if (htmlVersion == null) {
                            throw new BadArgs("dc.bad.value.for.option", str, substring);
                        }
                        this.env.setHtmlVersion(htmlVersion);
                    } else if (str.equals("-h") || str.equals("-help") || str.equals("--help") || str.equals("-?") || str.equals("-usage")) {
                        this.needHelp = true;
                    } else {
                        if (str.startsWith("-")) {
                            throw new BadArgs("dc.bad.option", str);
                        }
                        while (i11 < strArr.length) {
                            this.javacFiles.add(new File(strArr[i11]));
                            i11++;
                        }
                    }
                    i11++;
                }
            } else {
                if (!strArr[i10].matches("[0-9]+")) {
                    throw new BadArgs("dc.bad.value.for.option", str, strArr[i10]);
                }
                this.javacOpts.add(str);
                this.javacOpts.add(strArr[i10]);
            }
            i11 = i10;
            i11++;
        }
    }

    public void reportStats(PrintWriter printWriter) {
        this.env.messages.reportStats(printWriter);
    }

    public void run(String... strArr) throws BadArgs, IOException {
        PrintWriter printWriter = new PrintWriter(System.out);
        try {
            run(printWriter, strArr);
        } finally {
            printWriter.flush();
        }
    }

    public void scan(TreePath treePath) {
        this.checker.scan(this.env.trees.getDocCommentTree(treePath), treePath);
    }

    public boolean shouldCheck(CompilationUnitTree compilationUnitTree) {
        return this.env.shouldCheck(compilationUnitTree);
    }

    public void showHelp(PrintWriter printWriter) {
        for (String str : localize("dc.main.usage", new Object[0]).split("\n")) {
            printWriter.println(str);
        }
    }

    public List<File> splitPath(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(File.pathSeparator)) {
            if (str2.length() > 0) {
                arrayList.add(new File(str2));
            }
        }
        return arrayList;
    }

    public void init(JavacTask javacTask, String[] strArr, boolean z10) {
        this.env = new Env();
        for (String str : strArr) {
            if (str.equals(XMSGS_OPTION)) {
                this.env.messages.setOptions(null);
            } else if (str.startsWith(XMSGS_CUSTOM_PREFIX)) {
                this.env.messages.setOptions(str.substring(str.indexOf(s.f32937c) + 1));
            } else if (str.matches("-XimplicitHeaders:[1-6]")) {
                this.env.setImplicitHeaders(Character.digit(str.charAt(str.length() - 1), 10));
            } else if (str.startsWith(XCUSTOM_TAGS_PREFIX)) {
                this.env.setCustomTags(str.substring(str.indexOf(s.f32937c) + 1));
            } else if (str.startsWith(XHTML_VERSION_PREFIX)) {
                String substring = str.substring(str.indexOf(s.f32937c) + 1);
                HtmlVersion htmlVersion = HtmlVersion.getHtmlVersion(substring);
                if (htmlVersion != null) {
                    this.env.setHtmlVersion(htmlVersion);
                } else {
                    throw new IllegalArgumentException(substring);
                }
            } else if (str.startsWith(XCHECK_PACKAGE)) {
                this.env.setCheckPackages(str.substring(str.indexOf(s.f32937c) + 1));
            } else {
                throw new IllegalArgumentException(str);
            }
        }
        this.env.init(javacTask);
        this.checker = new Checker(this.env);
        if (z10) {
            final DeclScanner declScanner = new DeclScanner(this.env) {
                @Override
                public void visitDecl(Tree tree, Name name) {
                    TreePath currentPath = getCurrentPath();
                    DocLint.this.checker.scan(this.env.trees.getDocCommentTree(currentPath), currentPath);
                }
            };
            javacTask.addTaskListener(new TaskListener() {
                Queue<CompilationUnitTree> todo = new LinkedList();

                @Override
                public void finished(TaskEvent taskEvent) {
                    if (AnonymousClass4.$SwitchMap$com$sun$source$util$TaskEvent$Kind[taskEvent.getKind().ordinal()] != 2) {
                        return;
                    }
                    this.todo.add(taskEvent.getCompilationUnit());
                }

                @Override
                public void started(TaskEvent taskEvent) {
                    if (AnonymousClass4.$SwitchMap$com$sun$source$util$TaskEvent$Kind[taskEvent.getKind().ordinal()] != 1) {
                        return;
                    }
                    while (true) {
                        CompilationUnitTree poll = this.todo.poll();
                        if (poll == null) {
                            return;
                        } else {
                            declScanner.scan(poll, (CompilationUnitTree) null);
                        }
                    }
                }
            });
        }
    }

    public void run(PrintWriter printWriter, String... strArr) throws BadArgs, IOException {
        this.env = new Env();
        processArgs(strArr);
        boolean isEmpty = this.javacFiles.isEmpty();
        if (this.needHelp) {
            showHelp(printWriter);
            if (isEmpty) {
                return;
            }
        } else if (isEmpty) {
            printWriter.println(localize("dc.main.no.files.given", new Object[0]));
            return;
        }
        JavacTool create = JavacTool.create();
        JavacFileManager javacFileManager = new JavacFileManager(new Context(), false, null);
        javacFileManager.setSymbolFileEnabled(false);
        List<File> list = this.javacBootClassPath;
        if (list != null) {
            javacFileManager.setLocation(StandardLocation.PLATFORM_CLASS_PATH, list);
        }
        List<File> list2 = this.javacClassPath;
        if (list2 != null) {
            javacFileManager.setLocation(StandardLocation.CLASS_PATH, list2);
        }
        List<File> list3 = this.javacSourcePath;
        if (list3 != null) {
            javacFileManager.setLocation(StandardLocation.SOURCE_PATH, list3);
        }
        JavacTask task = create.getTask((Writer) printWriter, (JavaFileManager) javacFileManager, (DiagnosticListener<? super JavaFileObject>) null, (Iterable<String>) this.javacOpts, (Iterable<String>) null, javacFileManager.getJavaFileObjectsFromFiles(this.javacFiles));
        Iterable<? extends CompilationUnitTree> parse = task.parse();
        JavacTaskImpl javacTaskImpl = (JavacTaskImpl) task;
        javacTaskImpl.enter();
        this.env.init(task);
        this.checker = new Checker(this.env);
        new DeclScanner(this.env) {
            @Override
            public void visitDecl(Tree tree, Name name) {
                TreePath currentPath = getCurrentPath();
                DocLint.this.checker.scan(this.env.trees.getDocCommentTree(currentPath), currentPath);
            }
        }.scan(parse, (Iterable<? extends CompilationUnitTree>) null);
        reportStats(printWriter);
        JavaCompiler instance = JavaCompiler.instance(javacTaskImpl.getContext());
        instance.printCount("error", instance.errorCount());
        instance.printCount("warn", instance.warningCount());
    }
}
