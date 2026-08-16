package org.openjdk.tools.javac.comp;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Analyzer;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeCopier;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class Analyzer {
    protected static final Context.Key<Analyzer> analyzerKey = new Context.Key<>();
    private final boolean allowDiamondWithAnonymousClassCreation;
    final EnumSet<AnalyzerMode> analyzerModes;
    StatementAnalyzer<JCTree, JCTree>[] analyzers = {new DiamondInitializer(), new LambdaAnalyzer(), new RedundantTypeArgAnalyzer()};
    final ArgumentAttr argumentAttr;
    final Attr attr;
    final DeferredAttr deferredAttr;
    final Log log;
    final TreeMaker make;
    final Names names;
    final Types types;

    public class AnalysisContext {
        Map<JCTree, StatementAnalyzer<JCTree, JCTree>> treesToAnalyzer = new HashMap();
        Map<JCTree, JCTree> treeMap = new HashMap();
        ListBuffer<JCDiagnostic> errors = new ListBuffer<>();

        public AnalysisContext() {
        }
    }

    public class AnalyzeDeferredDiagHandler extends Log.DeferredDiagnosticHandler {
        AnalysisContext context;

        public AnalyzeDeferredDiagHandler(final AnalysisContext analysisContext) {
            super(Analyzer.this.log, new Filter() {
                @Override
                public final boolean accepts(Object obj) {
                    boolean lambda$new$0;
                    lambda$new$0 = Analyzer.AnalyzeDeferredDiagHandler.lambda$new$0(Analyzer.AnalysisContext.this, (JCDiagnostic) obj);
                    return lambda$new$0;
                }
            });
            this.context = analysisContext;
        }

        public static boolean lambda$new$0(AnalysisContext analysisContext, JCDiagnostic jCDiagnostic) {
            if (jCDiagnostic.getType() != JCDiagnostic.DiagnosticType.ERROR) {
                return true;
            }
            analysisContext.errors.add(jCDiagnostic);
            return true;
        }
    }

    public enum AnalyzerMode {
        DIAMOND("diamond", new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Source) obj).allowDiamond();
            }
        }),
        LAMBDA("lambda", new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Source) obj).allowLambda();
            }
        }),
        METHOD("method", new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Source) obj).allowGraphInference();
            }
        });

        final String opt;
        final Predicate<Source> sourceFilter;

        AnalyzerMode(String str, Predicate predicate) {
            this.opt = str;
            this.sourceFilter = predicate;
        }

        public static EnumSet<AnalyzerMode> getAnalyzerModes(String str, Source source) {
            if (str == null) {
                return EnumSet.noneOf(AnalyzerMode.class);
            }
            List from = List.from(str.split(DocLint.SEPARATOR));
            EnumSet<AnalyzerMode> noneOf = EnumSet.noneOf(AnalyzerMode.class);
            if (from.contains(Tj.d.f25405q)) {
                noneOf = EnumSet.allOf(AnalyzerMode.class);
            }
            for (AnalyzerMode analyzerMode : values()) {
                if (from.contains(analyzerMode.opt)) {
                    noneOf.add(analyzerMode);
                } else {
                    if (from.contains("-" + analyzerMode.opt) || !analyzerMode.sourceFilter.test(source)) {
                        noneOf.remove(analyzerMode);
                    }
                }
            }
            return noneOf;
        }
    }

    public class DiamondInitializer extends StatementAnalyzer<JCTree.JCNewClass, JCTree.JCNewClass> {
        public DiamondInitializer() {
            super(AnalyzerMode.DIAMOND, JCTree.Tag.NEWCLASS);
        }

        @Override
        public JCTree.JCNewClass map(JCTree.JCNewClass jCNewClass, JCTree.JCNewClass jCNewClass2) {
            if (jCNewClass2.clazz.hasTag(JCTree.Tag.TYPEAPPLY)) {
                ((JCTree.JCTypeApply) jCNewClass2.clazz).arguments = List.nil();
            }
            return jCNewClass2;
        }

        @Override
        public boolean match(JCTree.JCNewClass jCNewClass) {
            return jCNewClass.clazz.hasTag(JCTree.Tag.TYPEAPPLY) && !TreeInfo.isDiamond(jCNewClass) && (jCNewClass.def == null || Analyzer.this.allowDiamondWithAnonymousClassCreation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void process(JCTree.JCNewClass jCNewClass, JCTree.JCNewClass jCNewClass2, boolean z10) {
            List<Type> typeArguments;
            List typeArguments2;
            if (z10) {
                return;
            }
            if (jCNewClass.def != null) {
                if (jCNewClass2.def.implementing.nonEmpty()) {
                    typeArguments = jCNewClass2.def.implementing.get(0).type.getTypeArguments();
                } else {
                    typeArguments = jCNewClass2.def.extending.type.getTypeArguments();
                }
                if (jCNewClass.def.implementing.nonEmpty()) {
                    typeArguments2 = jCNewClass.def.implementing.get(0).type.getTypeArguments();
                } else {
                    typeArguments2 = jCNewClass.def.extending.type.getTypeArguments();
                }
            } else {
                typeArguments = jCNewClass2.type.getTypeArguments();
                typeArguments2 = jCNewClass.type.getTypeArguments();
            }
            Iterator<Type> it = typeArguments.iterator();
            while (it.hasNext()) {
                if (!Analyzer.this.types.isSameType(it.next(), (Type) typeArguments2.head)) {
                    return;
                } else {
                    typeArguments2 = typeArguments2.tail;
                }
            }
            Analyzer.this.log.warning(jCNewClass.clazz, "diamond.redundant.args", new Object[0]);
        }
    }

    public class LambdaAnalyzer extends StatementAnalyzer<JCTree.JCNewClass, JCTree.JCLambda> {
        public LambdaAnalyzer() {
            super(AnalyzerMode.LAMBDA, JCTree.Tag.NEWCLASS);
        }

        private List<JCTree> decls(JCTree.JCClassDecl jCClassDecl) {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<JCTree> it = jCClassDecl.defs.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next.hasTag(JCTree.Tag.METHODDEF)) {
                    JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) next;
                    if ((jCMethodDecl.getModifiers().flags & 68719476736L) == 0) {
                        listBuffer.add(jCMethodDecl);
                    }
                } else {
                    listBuffer.add(next);
                }
            }
            return listBuffer.toList();
        }

        @Override
        public JCTree.JCLambda map(JCTree.JCNewClass jCNewClass, JCTree.JCNewClass jCNewClass2) {
            JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) decls(jCNewClass2.def).head;
            return Analyzer.this.make.Lambda(jCMethodDecl.params, jCMethodDecl.body);
        }

        @Override
        public boolean match(JCTree.JCNewClass jCNewClass) {
            Type type = jCNewClass.clazz.type;
            return jCNewClass.def != null && type.hasTag(TypeTag.CLASS) && Analyzer.this.types.isFunctionalInterface(type.tsym) && decls(jCNewClass.def).length() == 1;
        }

        @Override
        public void process(JCTree.JCNewClass jCNewClass, JCTree.JCLambda jCLambda, boolean z10) {
            if (z10) {
                return;
            }
            Analyzer.this.log.warning(jCNewClass.def, "potential.lambda.found", new Object[0]);
        }
    }

    public class RedundantTypeArgAnalyzer extends StatementAnalyzer<JCTree.JCMethodInvocation, JCTree.JCMethodInvocation> {
        public RedundantTypeArgAnalyzer() {
            super(AnalyzerMode.METHOD, JCTree.Tag.APPLY);
        }

        @Override
        public JCTree.JCMethodInvocation map(JCTree.JCMethodInvocation jCMethodInvocation, JCTree.JCMethodInvocation jCMethodInvocation2) {
            jCMethodInvocation2.typeargs = List.nil();
            return jCMethodInvocation2;
        }

        @Override
        public boolean match(JCTree.JCMethodInvocation jCMethodInvocation) {
            List<JCTree.JCExpression> list = jCMethodInvocation.typeargs;
            return list != null && list.nonEmpty();
        }

        @Override
        public void process(JCTree.JCMethodInvocation jCMethodInvocation, JCTree.JCMethodInvocation jCMethodInvocation2, boolean z10) {
            if (z10) {
                return;
            }
            Analyzer.this.log.warning(jCMethodInvocation, "method.redundant.typeargs", new Object[0]);
        }
    }

    public abstract class StatementAnalyzer<S extends JCTree, T extends JCTree> {
        AnalyzerMode mode;
        JCTree.Tag tag;

        public StatementAnalyzer(AnalyzerMode analyzerMode, JCTree.Tag tag) {
            this.mode = analyzerMode;
            this.tag = tag;
        }

        public boolean isEnabled() {
            return Analyzer.this.analyzerModes.contains(this.mode);
        }

        public abstract T map(S s10, S s11);

        public abstract boolean match(S s10);

        public abstract void process(S s10, T t10, boolean z10);
    }

    public class StatementScanner extends TreeScanner {
        AnalysisContext context;

        public StatementScanner(AnalysisContext analysisContext) {
            this.context = analysisContext;
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree != null) {
                StatementAnalyzer<JCTree, JCTree>[] statementAnalyzerArr = Analyzer.this.analyzers;
                int length = statementAnalyzerArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    StatementAnalyzer<JCTree, JCTree> statementAnalyzer = statementAnalyzerArr[i10];
                    if (statementAnalyzer.isEnabled() && jCTree.hasTag(statementAnalyzer.tag) && statementAnalyzer.match(jCTree)) {
                        this.context.treesToAnalyzer.put(jCTree, statementAnalyzer);
                        break;
                    }
                    i10++;
                }
            }
            super.scan(jCTree);
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        }

        @Override
        public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
            scan(jCDoWhileLoop.getCondition());
        }

        @Override
        public void visitForLoop(JCTree.JCForLoop jCForLoop) {
            scan(jCForLoop.getInitializer());
            scan(jCForLoop.getCondition());
            scan(jCForLoop.getUpdate());
        }

        @Override
        public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
            scan(jCEnhancedForLoop.getExpression());
        }

        @Override
        public void visitIf(JCTree.JCIf jCIf) {
            scan(jCIf.getCondition());
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        }

        @Override
        public void visitSwitch(JCTree.JCSwitch jCSwitch) {
            scan(jCSwitch.getExpression());
        }

        @Override
        public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
            scan(jCWhileLoop.getCondition());
        }
    }

    public class TreeMapper extends TreeCopier<Void> {
        AnalysisContext context;

        public TreeMapper(AnalysisContext analysisContext) {
            super(Analyzer.this.make);
            this.context = analysisContext;
        }

        @Override
        public JCTree copy(JCTree jCTree, Void r22) {
            return copy2((TreeMapper) jCTree, r22);
        }

        public <Z extends JCTree> Z copy2(Z z10, Void r32) {
            Z z11 = (Z) super.copy((TreeMapper) z10, (Z) r32);
            StatementAnalyzer<JCTree, JCTree> statementAnalyzer = this.context.treesToAnalyzer.get(z10);
            if (statementAnalyzer == null) {
                return z11;
            }
            Z z12 = (Z) statementAnalyzer.map(z10, z11);
            this.context.treeMap.put(z10, z12);
            return z12;
        }

        @Override
        public JCTree visitLambdaExpression2(LambdaExpressionTree lambdaExpressionTree, Void r32) {
            JCTree.JCLambda jCLambda = (JCTree.JCLambda) lambdaExpressionTree;
            JCTree.JCLambda jCLambda2 = (JCTree.JCLambda) super.visitLambdaExpression2(lambdaExpressionTree, (LambdaExpressionTree) r32);
            JCTree.JCLambda.ParameterKind parameterKind = jCLambda.paramKind;
            JCTree.JCLambda.ParameterKind parameterKind2 = JCTree.JCLambda.ParameterKind.IMPLICIT;
            if (parameterKind == parameterKind2) {
                jCLambda2.paramKind = parameterKind2;
                jCLambda2.params.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ((JCTree.JCVariableDecl) obj).vartype = null;
                    }
                });
            }
            return jCLambda2;
        }
    }

    public Analyzer(Context context) {
        context.put((Context.Key<Context.Key<Analyzer>>) analyzerKey, (Context.Key<Analyzer>) this);
        this.types = Types.instance(context);
        this.log = Log.instance(context);
        this.attr = Attr.instance(context);
        this.deferredAttr = DeferredAttr.instance(context);
        this.argumentAttr = ArgumentAttr.instance(context);
        this.make = TreeMaker.instance(context);
        this.names = Names.instance(context);
        String str = Options.instance(context).get("find");
        Source instance = Source.instance(context);
        this.allowDiamondWithAnonymousClassCreation = instance.allowDiamondWithAnonymousClassCreation();
        this.analyzerModes = AnalyzerMode.getAnalyzerModes(str, instance);
    }

    public static Analyzer instance(Context context) {
        Analyzer analyzer = (Analyzer) context.get(analyzerKey);
        return analyzer == null ? new Analyzer(context) : analyzer;
    }

    public Log.DeferredDiagnosticHandler lambda$analyze$0(AnalysisContext analysisContext, JCTree jCTree) {
        return new AnalyzeDeferredDiagHandler(analysisContext);
    }

    public static void lambda$analyze$1(AnalysisContext analysisContext, Map.Entry entry) {
        analysisContext.treesToAnalyzer.get(entry.getKey()).process((JCTree) entry.getKey(), (JCTree) entry.getValue(), analysisContext.errors.nonEmpty());
    }

    public void analyze(JCTree.JCStatement jCStatement, Env<AttrContext> env) {
        final AnalysisContext analysisContext = new AnalysisContext();
        new StatementScanner(analysisContext).scan(jCStatement);
        if (analysisContext.treesToAnalyzer.isEmpty()) {
            return;
        }
        this.deferredAttr.attribSpeculative(this.make.Block(4096L, List.of(jCStatement)), env, this.attr.statInfo, new TreeMapper(analysisContext), new Function() {
            @Override
            public final Object apply(Object obj) {
                Log.DeferredDiagnosticHandler lambda$analyze$0;
                lambda$analyze$0 = Analyzer.this.lambda$analyze$0(analysisContext, (JCTree) obj);
                return lambda$analyze$0;
            }
        }, this.argumentAttr.withLocalCacheContext());
        analysisContext.treeMap.entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Analyzer.lambda$analyze$1(Analyzer.AnalysisContext.this, (Map.Entry) obj);
            }
        });
    }

    public void analyzeIfNeeded(JCTree jCTree, Env<AttrContext> env) {
        if (this.analyzerModes.isEmpty() || env.info.isSpeculative || !TreeInfo.isStatement(jCTree)) {
            return;
        }
        analyze((JCTree.JCStatement) jCTree, env);
    }
}
