package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.D1;
import com.google.common.collect.InterfaceC12542l2;
import com.google.common.collect.S1;
import com.google.common.collect.V0;
import com.google.common.collect.b3;
import com.google.common.collect.c3;
import java.io.IOError;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.google.googlejavaformat.Newlines;
import org.openjdk.javax.tools.DiagnosticCollector;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.SimpleJavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.ReferenceTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.ImportTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.DocTreePath;
import org.openjdk.source.util.DocTreePathScanner;
import org.openjdk.source.util.TreePathScanner;
import org.openjdk.source.util.TreeScanner;
import org.openjdk.tools.javac.api.JavacTrees;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import w2.AbstractC15885e;
import w2.C15883c;

public class RemoveUnusedImports {

    @Deprecated
    public enum JavadocOnlyImports {
        REMOVE,
        KEEP
    }

    public static class UnusedImportScanner extends TreePathScanner<Void, Void> {
        final DocTreeScanner docTreeSymbolScanner;
        final JavacTrees trees;
        private final S1<String, C12534j2<Integer>> usedInJavadoc;
        private final Set<String> usedNames;

        public class DocTreeScanner extends DocTreePathScanner<Void, Void> {

            public class ReferenceScanner extends TreeScanner<Void, Void> {
                private final long basePos;

                public ReferenceScanner(long basePos) {
                    this.basePos = basePos;
                }

                @Override
                public Void visitIdentifier(IdentifierTree node, Void aVoid) {
                    S1 s12 = UnusedImportScanner.this.usedInJavadoc;
                    String obj = node.getName().toString();
                    long j10 = this.basePos;
                    s12.put(obj, j10 != -1 ? C12534j2.g(Integer.valueOf((int) j10), Integer.valueOf(((int) this.basePos) + node.getName().length())) : null);
                    return (Void) super.visitIdentifier(node, (IdentifierTree) aVoid);
                }
            }

            public DocTreeScanner() {
            }

            @Override
            public Void visitIdentifier(org.openjdk.source.doctree.IdentifierTree node, Void aVoid) {
                return null;
            }

            @Override
            public Void visitReference(ReferenceTree referenceTree, Void unused) {
                DCTree.DCReference dCReference = (DCTree.DCReference) referenceTree;
                long sourcePosition = dCReference.getSourcePosition((DCTree.DCDocComment) getCurrentPath().getDocComment());
                if (dCReference.qualifierExpression != null) {
                    new ReferenceScanner(sourcePosition).scan(dCReference.qualifierExpression, (JCTree) null);
                }
                List<JCTree> list = dCReference.paramTypes;
                if (list != null) {
                    Iterator<JCTree> it = list.iterator();
                    while (it.hasNext()) {
                        new ReferenceScanner(-1L).scan(it.next(), (JCTree) null);
                    }
                }
                return null;
            }
        }

        private void scanJavadoc() {
            DocCommentTree docCommentTree;
            if (getCurrentPath() == null || (docCommentTree = this.trees.getDocCommentTree(getCurrentPath())) == null) {
                return;
            }
            this.docTreeSymbolScanner.scan(new DocTreePath(getCurrentPath(), docCommentTree), (DocTreePath) null);
        }

        @Override
        public Void visitImport(ImportTree importTree, Void usedSymbols) {
            return null;
        }

        private UnusedImportScanner(JavacTrees trees) {
            this.usedNames = new LinkedHashSet();
            this.usedInJavadoc = V0.M();
            this.trees = trees;
            this.docTreeSymbolScanner = new DocTreeScanner();
        }

        @Override
        public Void scan(Tree tree, Void unused) {
            if (tree == null) {
                return null;
            }
            scanJavadoc();
            return (Void) super.scan(tree, (Tree) unused);
        }

        @Override
        public Void visitIdentifier(IdentifierTree tree, Void unused) {
            if (tree == null) {
                return null;
            }
            this.usedNames.add(tree.getName().toString());
            return null;
        }
    }

    private static String applyReplacements(String source, InterfaceC12542l2<Integer, String> replacements) {
        c3 r10 = c3.r();
        StringBuilder sb2 = new StringBuilder(source);
        int i10 = 0;
        for (Map.Entry<C12534j2<Integer>, String> entry : replacements.e().entrySet()) {
            C12534j2<Integer> key = entry.getKey();
            String value = entry.getValue();
            int intValue = key.z().intValue() + i10;
            int intValue2 = key.L().intValue() + i10;
            sb2.replace(intValue, intValue2, value);
            if (!value.isEmpty()) {
                r10.o(C12534j2.g(Integer.valueOf(intValue), Integer.valueOf(intValue2)));
            }
            i10 += value.length() - (key.L().intValue() - key.z().intValue());
        }
        String sb3 = sb2.toString();
        if (r10.isEmpty()) {
            return sb3;
        }
        try {
            return new Formatter().formatSource(sb3, r10.m());
        } catch (FormatterException unused) {
            return sb3;
        }
    }

    private static InterfaceC12542l2<Integer, String> buildReplacements(String contents, JCTree.JCCompilationUnit unit, Set<String> usedNames, S1<String, C12534j2<Integer>> usedInJavadoc) {
        b3 p10 = b3.p();
        Iterator<JCTree.JCImport> it = unit.getImports().iterator();
        while (it.hasNext()) {
            JCTree.JCImport next = it.next();
            String simpleName = getSimpleName(next);
            if (isUnused(unit, usedNames, usedInJavadoc, next, simpleName)) {
                int endPosition = next.getEndPosition(unit.endPositions);
                int max = Math.max(AbstractC15885e.s(C15883c.f126249O).o(contents, endPosition), endPosition);
                String guessLineSeparator = Newlines.guessLineSeparator(contents);
                if (guessLineSeparator.length() + max < contents.length() && contents.subSequence(max, guessLineSeparator.length() + max).equals(guessLineSeparator)) {
                    max += guessLineSeparator.length();
                }
                p10.k(C12534j2.g(Integer.valueOf(next.getStartPosition()), Integer.valueOf(max)), "");
                if (!next.isStatic()) {
                    for (C12534j2<Integer> c12534j2 : usedInJavadoc.y(simpleName)) {
                        if (c12534j2 != null) {
                            p10.k(c12534j2, next.getQualifiedIdentifier().toString());
                        }
                    }
                }
            }
        }
        return p10;
    }

    private static String getSimpleName(JCTree.JCImport importTree) {
        return importTree.getQualifiedIdentifier() instanceof JCTree.JCIdent ? ((JCTree.JCIdent) importTree.getQualifiedIdentifier()).getName().toString() : ((JCTree.JCFieldAccess) importTree.getQualifiedIdentifier()).getIdentifier().toString();
    }

    private static boolean isUnused(JCTree.JCCompilationUnit unit, Set<String> usedNames, S1<String, C12534j2<Integer>> usedInJavadoc, JCTree.JCImport importTree, String simpleName) {
        String jCTree = importTree.getQualifiedIdentifier() instanceof JCTree.JCFieldAccess ? ((JCTree.JCFieldAccess) importTree.getQualifiedIdentifier()).getExpression().toString() : null;
        if (jCTree.equals("java.lang")) {
            return true;
        }
        if (unit.getPackageName() == null || !unit.getPackageName().toString().equals(jCTree)) {
            return (((importTree.getQualifiedIdentifier() instanceof JCTree.JCFieldAccess) && ((JCTree.JCFieldAccess) importTree.getQualifiedIdentifier()).getIdentifier().contentEquals("*")) || usedNames.contains(simpleName) || usedInJavadoc.containsKey(simpleName)) ? false : true;
        }
        return true;
    }

    private static JCTree.JCCompilationUnit parse(Context context, final String javaInput) throws FormatterException {
        DiagnosticCollector diagnosticCollector = new DiagnosticCollector();
        context.put((Class<Class>) DiagnosticListener.class, (Class) diagnosticCollector);
        Options.instance(context).put("allowStringFolding", "false");
        try {
            new JavacFileManager(context, true, StandardCharsets.UTF_8).setLocation(StandardLocation.PLATFORM_CLASS_PATH, AbstractC12521g1.x());
            SimpleJavaFileObject simpleJavaFileObject = new SimpleJavaFileObject(URI.create("source"), JavaFileObject.Kind.SOURCE) {
                @Override
                public CharSequence getCharContent(boolean ignoreEncodingErrors) throws IOException {
                    return javaInput;
                }
            };
            Log.instance(context).useSource(simpleJavaFileObject);
            JCTree.JCCompilationUnit parseCompilationUnit = ParserFactory.instance(context).newParser(javaInput, true, true, true).parseCompilationUnit();
            parseCompilationUnit.sourcefile = simpleJavaFileObject;
            Iterable p10 = D1.p(diagnosticCollector.getDiagnostics(), new a());
            if (D1.C(p10)) {
                return parseCompilationUnit;
            }
            throw FormatterException.fromJavacDiagnostics(p10);
        } catch (IOException e10) {
            throw new IOError(e10);
        }
    }

    @Deprecated
    public static String removeUnusedImports(final String contents, JavadocOnlyImports javadocOnlyImports) throws FormatterException {
        return removeUnusedImports(contents);
    }

    public static String removeUnusedImports(final String contents) throws FormatterException {
        Context context = new Context();
        Options.instance(context).put(Option.SOURCE, "9");
        JCTree.JCCompilationUnit parse = parse(context, contents);
        if (parse == null) {
            return contents;
        }
        UnusedImportScanner unusedImportScanner = new UnusedImportScanner(JavacTrees.instance(context));
        unusedImportScanner.scan((Tree) parse, (Void) null);
        return applyReplacements(contents, buildReplacements(contents, parse, unusedImportScanner.usedNames, unusedImportScanner.usedInJavadoc));
    }
}
