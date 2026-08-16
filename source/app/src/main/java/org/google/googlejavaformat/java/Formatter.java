package org.google.googlejavaformat.java;

import D2.i;
import I2.j;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.D1;
import com.google.common.collect.E1;
import com.google.common.collect.InterfaceC12546m2;
import com.google.common.collect.c3;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOError;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.google.googlejavaformat.Doc;
import org.google.googlejavaformat.DocBuilder;
import org.google.googlejavaformat.FormattingError;
import org.google.googlejavaformat.Newlines;
import org.google.googlejavaformat.OpsBuilder;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticCollector;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.SimpleJavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.tree.Tree;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import w2.P;

@j
public final class Formatter {
    static final C12534j2<Integer> EMPTY_RANGE = C12534j2.g(-1, -1);
    private final JavaFormatterOptions options;

    public Formatter() {
        this(JavaFormatterOptions.defaultOptions());
    }

    public static boolean errorDiagnostic(Diagnostic<?> input) {
        if (input.getKind() != Diagnostic.Kind.ERROR) {
            return false;
        }
        String code = input.getCode();
        code.hashCode();
        return !code.equals("compiler.err.invalid.meth.decl.ret.type.req");
    }

    public static void format(final JavaInput javaInput, JavaOutput javaOutput, JavaFormatterOptions options) throws FormatterException {
        Context context = new Context();
        DiagnosticCollector diagnosticCollector = new DiagnosticCollector();
        context.put((Class<Class>) DiagnosticListener.class, (Class) diagnosticCollector);
        Options.instance(context).put("allowStringFolding", "false");
        Options.instance(context).put(Option.SOURCE, "9");
        try {
            new JavacFileManager(context, true, StandardCharsets.UTF_8).setLocation(StandardLocation.PLATFORM_CLASS_PATH, AbstractC12521g1.x());
            SimpleJavaFileObject simpleJavaFileObject = new SimpleJavaFileObject(URI.create("source"), JavaFileObject.Kind.SOURCE) {
                @Override
                public CharSequence getCharContent(boolean ignoreEncodingErrors) throws IOException {
                    return javaInput.getText();
                }
            };
            Log.instance(context).useSource(simpleJavaFileObject);
            JCTree.JCCompilationUnit parseCompilationUnit = ParserFactory.instance(context).newParser(javaInput.getText(), true, true, true).parseCompilationUnit();
            parseCompilationUnit.sourcefile = simpleJavaFileObject;
            javaInput.setCompilationUnit(parseCompilationUnit);
            Iterable p10 = D1.p(diagnosticCollector.getDiagnostics(), new a());
            if (!D1.C(p10)) {
                throw FormatterException.fromJavacDiagnostics(p10);
            }
            OpsBuilder opsBuilder = new OpsBuilder(javaInput, javaOutput);
            new JavaInputAstVisitor(opsBuilder, options.indentationMultiplier()).scan((Tree) parseCompilationUnit, (Void) null);
            opsBuilder.sync(javaInput.getText().length());
            opsBuilder.drain();
            Doc build = new DocBuilder().withOps(opsBuilder.build()).build();
            build.computeBreaks(javaOutput.getCommentsHelper(), options.maxLineLength(), new Doc.State(0, 0));
            build.write(javaOutput);
            javaOutput.flush();
        } catch (IOException e10) {
            throw new IOError(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC12546m2<Integer> lineRangesToCharRanges(String input, InterfaceC12546m2<Integer> lineRanges) {
        ArrayList arrayList = new ArrayList();
        E1.a(arrayList, Newlines.lineOffsetIterator(input));
        arrayList.add(Integer.valueOf(input.length() + 1));
        c3 r10 = c3.r();
        Iterator<C12534j2<Integer>> it = lineRanges.k(C12534j2.g(0, Integer.valueOf(arrayList.size() - 1))).m().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) arrayList.get(it.next().z().intValue());
            num.intValue();
            r10.o(C12534j2.g(num, Integer.valueOf(((Integer) arrayList.get(r1.L().intValue())).intValue() - 1)));
        }
        return r10;
    }

    private void scanJavaFileInDirectory(String directory, List<String> filePathList) {
        if (P.d(directory)) {
            return;
        }
        File file = new File(directory);
        if (file.isFile()) {
            filePathList.add(directory);
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isFile() && file2.getAbsolutePath().endsWith(".java")) {
                filePathList.add(file2.getAbsolutePath());
            } else if (file2.isDirectory()) {
                scanJavaFileInDirectory(file2.getAbsolutePath(), filePathList);
            }
        }
    }

    private void writeFile(String filePath, String content, boolean reWrite) throws FileNotFoundException {
        if (P.d(content) || !reWrite) {
            return;
        }
        PrintWriter printWriter = new PrintWriter(new File(filePath));
        printWriter.print(content);
        printWriter.flush();
        printWriter.close();
    }

    public void formatSource(D2.j input, i output) throws FormatterException, IOException {
        output.c(formatSource(input.n()));
    }

    public String formatSourceAndFixImports(String input) throws FormatterException {
        return formatSource(RemoveUnusedImports.removeUnusedImports(ImportOrderer.reorderImports(input)));
    }

    public AbstractC12521g1<Replacement> getFormatReplacements(String input, Collection<C12534j2<Integer>> characterRanges) throws FormatterException {
        JavaInput reorderModifiers = ModifierOrderer.reorderModifiers(new JavaInput(input), characterRanges);
        String guessLineSeparator = Newlines.guessLineSeparator(input);
        JavaOutput javaOutput = new JavaOutput(guessLineSeparator, reorderModifiers, new JavaCommentsHelper(guessLineSeparator, this.options));
        try {
            format(reorderModifiers, javaOutput, this.options);
            return javaOutput.getFormatReplacements(reorderModifiers.characterRangesToTokenRanges(characterRanges));
        } catch (FormattingError e10) {
            throw new FormatterException(e10.diagnostics());
        }
    }

    public Formatter(JavaFormatterOptions options) {
        this.options = options;
    }

    public String formatSource(String input) throws FormatterException {
        return formatSource(input, AbstractC12521g1.y(C12534j2.g(0, Integer.valueOf(input.length()))));
    }

    public String formatSource(String input, Collection<C12534j2<Integer>> characterRanges) throws FormatterException {
        return JavaOutput.applyReplacements(input, getFormatReplacements(input, characterRanges));
    }
}
