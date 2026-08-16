package org.openjdk.tools.javac.comp;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.NewClassTree;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.ArgumentAttr;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeCopier;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.GraphUtils;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Warner;

public class DeferredAttr extends JCTree.Visitor {
    protected static final Context.Key<DeferredAttr> deferredAttrKey = new Context.Key<>();
    final ArgumentAttr argumentAttr;
    final Attr attr;
    final Check chk;
    final Types.TypeMapping<Void> deferredCopier;
    final JCDiagnostic.Factory diags;
    final DeferredAttrContext emptyDeferredAttrContext;
    final Enter enter;
    final Flow flow;
    final Infer infer;
    final Log log;
    final TreeMaker make;
    final Names names;
    final Resolve rs;
    final JCTree stuckTree;
    final Symtab syms;
    final TreeCopier<Void> treeCopier;
    final TypeEnvs typeEnvs;
    final Types types;
    DeferredTypeCompleter basicCompleter = new DeferredTypeCompleter() {
        @Override
        public Type complete(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredAttrContext deferredAttrContext) {
            int i10 = AnonymousClass6.$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode[deferredAttrContext.mode.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    Assert.error();
                    return null;
                }
                Assert.check(deferredType.mode != null);
                return DeferredAttr.this.attr.attribTree(deferredType.tree, deferredType.env, resultInfo);
            }
            AttrMode attrMode = deferredType.mode;
            Assert.check(attrMode == null || attrMode == AttrMode.SPECULATIVE);
            JCTree attribSpeculative = DeferredAttr.this.attribSpeculative(deferredType.tree, deferredType.env, resultInfo);
            deferredType.speculativeCache.put(attribSpeculative, resultInfo);
            return attribSpeculative.type;
        }
    };
    DeferredStuckPolicy dummyStuckPolicy = new DeferredStuckPolicy() {
        @Override
        public Set<Type> depVars() {
            return Collections.emptySet();
        }

        @Override
        public boolean isStuck() {
            return false;
        }

        @Override
        public Set<Type> stuckVars() {
            return Collections.emptySet();
        }
    };

    public static class AnonymousClass6 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode;

        static {
            int[] iArr = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr;
            try {
                iArr[Kinds.Kind.WRONG_MTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.WRONG_MTHS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.ABSENT_MTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.STATICERR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[AttrMode.values().length];
            $SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode = iArr2;
            try {
                iArr2[AttrMode.SPECULATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode[AttrMode.CHECK.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum AttrMode {
        SPECULATIVE,
        CHECK
    }

    public class CheckStuckPolicy extends PolyScanner implements DeferredStuckPolicy, Infer.FreeTypeListener {
        InferenceContext inferenceContext;
        Type pt;
        Set<Type> stuckVars = new LinkedHashSet();
        Set<Type> depVars = new LinkedHashSet();

        public CheckStuckPolicy(Attr.ResultInfo resultInfo, DeferredType deferredType) {
            this.pt = resultInfo.pt;
            this.inferenceContext = resultInfo.checkContext.inferenceContext();
            scan(deferredType.tree);
            if (this.stuckVars.isEmpty()) {
                return;
            }
            resultInfo.checkContext.inferenceContext().addFreeTypeListener(List.from(this.stuckVars), this);
        }

        @Override
        public Set<Type> depVars() {
            return this.depVars;
        }

        @Override
        public boolean isStuck() {
            return !this.stuckVars.isEmpty();
        }

        public void scanLambdaBody(JCTree.JCLambda jCLambda, final Type type) {
            if (jCLambda.getBodyKind() != LambdaExpressionTree.BodyKind.EXPRESSION) {
                new LambdaReturnScanner() {
                    @Override
                    public void visitReturn(JCTree.JCReturn jCReturn) {
                        JCTree.JCExpression jCExpression = jCReturn.expr;
                        if (jCExpression != null) {
                            CheckStuckPolicy checkStuckPolicy = CheckStuckPolicy.this;
                            Type type2 = checkStuckPolicy.pt;
                            try {
                                checkStuckPolicy.pt = type;
                                checkStuckPolicy.scan(jCExpression);
                            } finally {
                                CheckStuckPolicy.this.pt = type2;
                            }
                        }
                    }
                }.scan(jCLambda.body);
                return;
            }
            Type type2 = this.pt;
            try {
                this.pt = type;
                scan(jCLambda.body);
            } finally {
                this.pt = type2;
            }
        }

        @Override
        public Set<Type> stuckVars() {
            return this.stuckVars;
        }

        @Override
        public void typesInferred(InferenceContext inferenceContext) {
            this.stuckVars.clear();
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            if (this.inferenceContext.inferenceVars().contains(this.pt)) {
                this.stuckVars.add(this.pt);
            }
            if (DeferredAttr.this.types.isFunctionalInterface(this.pt)) {
                Type findDescriptorType = DeferredAttr.this.types.findDescriptorType(this.pt);
                List<Type> freeVarsIn = this.inferenceContext.freeVarsIn(findDescriptorType.getParameterTypes());
                if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.IMPLICIT && freeVarsIn.nonEmpty()) {
                    this.stuckVars.addAll(freeVarsIn);
                    this.depVars.addAll(this.inferenceContext.freeVarsIn(findDescriptorType.getReturnType()));
                }
                scanLambdaBody(jCLambda, findDescriptorType.getReturnType());
            }
        }

        @Override
        public void visitReference(JCTree.JCMemberReference jCMemberReference) {
            scan(jCMemberReference.expr);
            if (this.inferenceContext.inferenceVars().contains(this.pt)) {
                this.stuckVars.add(this.pt);
                return;
            }
            if (DeferredAttr.this.types.isFunctionalInterface(this.pt)) {
                Type findDescriptorType = DeferredAttr.this.types.findDescriptorType(this.pt);
                List<Type> freeVarsIn = this.inferenceContext.freeVarsIn(findDescriptorType.getParameterTypes());
                if (freeVarsIn.nonEmpty() && jCMemberReference.getOverloadKind() == JCTree.JCMemberReference.OverloadKind.OVERLOADED) {
                    this.stuckVars.addAll(freeVarsIn);
                    this.depVars.addAll(this.inferenceContext.freeVarsIn(findDescriptorType.getReturnType()));
                }
            }
        }
    }

    public class DeferredAttrContext {
        ArrayList<DeferredAttrNode> deferredAttrNodes = new ArrayList<>();
        final InferenceContext inferenceContext;
        final AttrMode mode;
        final Symbol msym;
        final DeferredAttrContext parent;
        final Resolve.MethodResolutionPhase phase;
        final Warner warn;

        public class StuckNode extends GraphUtils.TarjanNode<DeferredAttrNode, StuckNode> {
            Set<StuckNode> deps;

            public StuckNode(DeferredAttrNode deferredAttrNode) {
                super(deferredAttrNode);
                this.deps = new HashSet();
            }

            @Override
            public Iterable<? extends StuckNode> getAllDependencies() {
                return this.deps;
            }

            @Override
            public Collection<? extends StuckNode> getDependenciesByKind(GraphUtils.DependencyKind dependencyKind) {
                if (dependencyKind == Infer.DependencyKind.STUCK) {
                    return this.deps;
                }
                throw new IllegalStateException();
            }

            @Override
            public GraphUtils.DependencyKind[] getSupportedDependencyKinds() {
                return new GraphUtils.DependencyKind[]{Infer.DependencyKind.STUCK};
            }
        }

        public DeferredAttrContext(AttrMode attrMode, Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase, InferenceContext inferenceContext, DeferredAttrContext deferredAttrContext, Warner warner) {
            this.mode = attrMode;
            this.msym = symbol;
            this.phase = methodResolutionPhase;
            this.parent = deferredAttrContext;
            this.warn = warner;
            this.inferenceContext = inferenceContext;
        }

        public StuckNode lambda$pickDeferredNode$0(DeferredAttrNode deferredAttrNode) {
            return new StuckNode(deferredAttrNode);
        }

        public void addDeferredAttrNode(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredStuckPolicy deferredStuckPolicy) {
            this.deferredAttrNodes.add(new DeferredAttrNode(deferredType, resultInfo, deferredStuckPolicy));
        }

        public void complete() {
            while (!this.deferredAttrNodes.isEmpty()) {
                Iterator it = List.from(this.deferredAttrNodes).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    DeferredAttrNode deferredAttrNode = (DeferredAttrNode) it.next();
                    if (deferredAttrNode.process(this)) {
                        this.deferredAttrNodes.remove(deferredAttrNode);
                        z10 = true;
                    }
                }
                if (!z10) {
                    if (insideOverloadPhase()) {
                        Iterator<DeferredAttrNode> it2 = this.deferredAttrNodes.iterator();
                        while (it2.hasNext()) {
                            it2.next().dt.tree.type = Type.noType;
                        }
                        return;
                    }
                    try {
                        this.inferenceContext.solveAny(List.from(pickDeferredNode().deferredStuckPolicy.stuckVars()), this.warn);
                        this.inferenceContext.notifyChange();
                    } catch (Infer.GraphStrategy.NodeNotFoundException unused) {
                        return;
                    }
                }
            }
        }

        public boolean insideOverloadPhase() {
            if (this == DeferredAttr.this.emptyDeferredAttrContext) {
                return false;
            }
            if (this.mode == AttrMode.SPECULATIVE) {
                return true;
            }
            return this.parent.insideOverloadPhase();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public DeferredAttrNode pickDeferredNode() {
            List list = (List) this.deferredAttrNodes.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    DeferredAttr.DeferredAttrContext.StuckNode lambda$pickDeferredNode$0;
                    lambda$pickDeferredNode$0 = DeferredAttr.DeferredAttrContext.this.lambda$pickDeferredNode$0((DeferredAttr.DeferredAttrNode) obj);
                    return lambda$pickDeferredNode$0;
                }
            }).collect(List.collector());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                StuckNode stuckNode = (StuckNode) it.next();
                for (Type type : ((DeferredAttrNode) stuckNode.data).deferredStuckPolicy.stuckVars()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        StuckNode stuckNode2 = (StuckNode) it2.next();
                        if (stuckNode != stuckNode2 && ((DeferredAttrNode) stuckNode2.data).deferredStuckPolicy.depVars().contains(type)) {
                            stuckNode.deps.add(stuckNode2);
                        }
                    }
                }
            }
            List list2 = (List) GraphUtils.tarjan(list).get(0);
            return (DeferredAttrNode) (list2.length() == 1 ? ((StuckNode) list2.get(0)).data : this.deferredAttrNodes.get(0));
        }
    }

    public static class DeferredAttrDiagHandler extends Log.DeferredDiagnosticHandler {

        public static class PosScanner extends TreeScanner {
            boolean found = false;
            JCDiagnostic.DiagnosticPosition pos;

            public PosScanner(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
                this.pos = diagnosticPosition;
            }

            @Override
            public void scan(JCTree jCTree) {
                if (jCTree != null && jCTree.pos() == this.pos) {
                    this.found = true;
                }
                super.scan(jCTree);
            }
        }

        public DeferredAttrDiagHandler(Log log, final JCTree jCTree) {
            super(log, new Filter() {
                @Override
                public final boolean accepts(Object obj) {
                    boolean lambda$new$0;
                    lambda$new$0 = DeferredAttr.DeferredAttrDiagHandler.lambda$new$0(JCTree.this, (JCDiagnostic) obj);
                    return lambda$new$0;
                }
            });
        }

        public static boolean lambda$new$0(JCTree jCTree, JCDiagnostic jCDiagnostic) {
            PosScanner posScanner = new PosScanner(jCDiagnostic.getDiagnosticPosition());
            posScanner.scan(jCTree);
            return posScanner.found;
        }
    }

    public class DeferredAttrNode {
        DeferredStuckPolicy deferredStuckPolicy;
        DeferredType dt;
        Attr.ResultInfo resultInfo;

        public class LambdaBodyStructChecker extends TreeScanner {
            boolean isVoidCompatible = true;
            boolean isPotentiallyValueCompatible = true;

            public LambdaBodyStructChecker() {
            }

            @Override
            public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            }

            @Override
            public void visitLambda(JCTree.JCLambda jCLambda) {
            }

            @Override
            public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            }

            @Override
            public void visitReturn(JCTree.JCReturn jCReturn) {
                if (jCReturn.expr != null) {
                    this.isVoidCompatible = false;
                } else {
                    this.isPotentiallyValueCompatible = false;
                }
            }
        }

        public class StructuralStuckChecker extends TreeScanner implements DeferredTypeCompleter {
            Env<AttrContext> env;
            InferenceContext inferenceContext;
            Attr.ResultInfo resultInfo;

            public StructuralStuckChecker() {
            }

            public JCTree.JCVariableDecl lambda$canLambdaBodyCompleteNormally$0(JCTree.JCVariableDecl jCVariableDecl) {
                TreeMaker treeMaker = DeferredAttr.this.make;
                return treeMaker.VarDef(jCVariableDecl.mods, jCVariableDecl.name, treeMaker.Erroneous(), null);
            }

            public boolean canLambdaBodyCompleteNormally(JCTree.JCLambda jCLambda) {
                List<JCTree.JCVariableDecl> list = jCLambda.params;
                ArgumentAttr.LocalCacheContext withLocalCacheContext = DeferredAttr.this.argumentAttr.withLocalCacheContext();
                try {
                    jCLambda.params = (List) jCLambda.params.stream().map(new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            JCTree.JCVariableDecl lambda$canLambdaBodyCompleteNormally$0;
                            lambda$canLambdaBodyCompleteNormally$0 = DeferredAttr.DeferredAttrNode.StructuralStuckChecker.this.lambda$canLambdaBodyCompleteNormally$0((JCTree.JCVariableDecl) obj);
                            return lambda$canLambdaBodyCompleteNormally$0;
                        }
                    }).collect(List.collector());
                    DeferredAttr deferredAttr = DeferredAttr.this;
                    return deferredAttr.attribSpeculativeLambda(jCLambda, this.env, deferredAttr.attr.unknownExprInfo).canCompleteNormally;
                } finally {
                    withLocalCacheContext.leave();
                    jCLambda.params = list;
                }
            }

            @Override
            public Type complete(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredAttrContext deferredAttrContext) {
                this.resultInfo = resultInfo;
                this.inferenceContext = deferredAttrContext.inferenceContext;
                this.env = deferredType.env;
                deferredType.tree.accept(this);
                deferredType.speculativeCache.put(DeferredAttr.this.stuckTree, resultInfo);
                return Type.noType;
            }

            @Override
            public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            }

            @Override
            public void visitLambda(JCTree.JCLambda jCLambda) {
                Type type;
                Attr.ResultInfo resultInfo = this.resultInfo;
                Check.CheckContext checkContext = resultInfo.checkContext;
                Type type2 = resultInfo.pt;
                if (this.inferenceContext.inferencevars.contains(type2)) {
                    return;
                }
                try {
                    type = DeferredAttr.this.types.findDescriptorType(type2);
                } catch (Types.FunctionDescriptorLookupError e10) {
                    checkContext.report(null, e10.getDiagnostic());
                    type = null;
                }
                if (type.getParameterTypes().length() != jCLambda.params.length()) {
                    checkContext.report(jCLambda, DeferredAttr.this.diags.fragment("incompatible.arg.types.in.lambda", new Object[0]));
                }
                Type returnType = type.getReturnType();
                boolean hasTag = returnType.hasTag(TypeTag.VOID);
                if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                    if (!hasTag || TreeInfo.isExpressionStatement((JCTree.JCExpression) jCLambda.getBody())) {
                        return;
                    }
                    Check.CheckContext checkContext2 = this.resultInfo.checkContext;
                    JCDiagnostic.DiagnosticPosition pos = jCLambda.pos();
                    JCDiagnostic.Factory factory = DeferredAttr.this.diags;
                    checkContext2.report(pos, factory.fragment("incompatible.ret.type.in.lambda", factory.fragment("missing.ret.val", returnType)));
                    return;
                }
                LambdaBodyStructChecker lambdaBodyStructChecker = new LambdaBodyStructChecker();
                jCLambda.body.accept(lambdaBodyStructChecker);
                boolean z10 = lambdaBodyStructChecker.isVoidCompatible;
                if (hasTag) {
                    if (z10) {
                        return;
                    }
                    this.resultInfo.checkContext.report(jCLambda.pos(), DeferredAttr.this.diags.fragment("unexpected.ret.val", new Object[0]));
                    return;
                }
                boolean z11 = lambdaBodyStructChecker.isPotentiallyValueCompatible && !canLambdaBodyCompleteNormally(jCLambda);
                if (!z11 && !z10) {
                    DeferredAttr.this.log.error(jCLambda.body.pos(), "lambda.body.neither.value.nor.void.compatible", new Object[0]);
                }
                if (z11) {
                    return;
                }
                Check.CheckContext checkContext3 = this.resultInfo.checkContext;
                JCDiagnostic.DiagnosticPosition pos2 = jCLambda.pos();
                JCDiagnostic.Factory factory2 = DeferredAttr.this.diags;
                checkContext3.report(pos2, factory2.fragment("incompatible.ret.type.in.lambda", factory2.fragment("missing.ret.val", returnType)));
            }

            @Override
            public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            }

            @Override
            public void visitReference(JCTree.JCMemberReference jCMemberReference) {
                Assert.checkNonNull(jCMemberReference.getOverloadKind());
                Attr.ResultInfo resultInfo = this.resultInfo;
                Check.CheckContext checkContext = resultInfo.checkContext;
                Type type = resultInfo.pt;
                if (this.inferenceContext.inferencevars.contains(type)) {
                    return;
                }
                try {
                    DeferredAttr.this.types.findDescriptorType(type);
                } catch (Types.FunctionDescriptorLookupError e10) {
                    checkContext.report(null, e10.getDiagnostic());
                }
                Env<AttrContext> dup = this.env.dup(jCMemberReference);
                JCTree.JCExpression jCExpression = (JCTree.JCExpression) DeferredAttr.this.attribSpeculative(jCMemberReference.getQualifierExpression(), dup, DeferredAttr.this.attr.memberReferenceQualifierResult(jCMemberReference), DeferredAttr.this.argumentAttr.withLocalCacheContext());
                ListBuffer listBuffer = new ListBuffer();
                Iterator<Type> it = DeferredAttr.this.types.findDescriptorType(type).getParameterTypes().iterator();
                while (it.hasNext()) {
                    it.next();
                    listBuffer.append(Type.noType);
                }
                JCTree.JCMemberReference jCMemberReference2 = (JCTree.JCMemberReference) new TreeCopier(DeferredAttr.this.make).copy((TreeCopier) jCMemberReference);
                jCMemberReference2.expr = jCExpression;
                Resolve resolve = DeferredAttr.this.rs;
                Type type2 = jCExpression.type;
                Name name = jCMemberReference.name;
                List<Type> list = listBuffer.toList();
                List<Type> nil = List.nil();
                Resolve resolve2 = DeferredAttr.this.rs;
                Symbol symbol = resolve.resolveMemberReference(dup, jCMemberReference2, type2, name, list, nil, resolve2.arityMethodCheck, this.inferenceContext, resolve2.structuralReferenceChooser).fst;
                int i10 = AnonymousClass6.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()];
                if (i10 == 1 || i10 == 2) {
                    checkContext.report(jCMemberReference, DeferredAttr.this.diags.fragment(CompilerProperties.Fragments.IncompatibleArgTypesInMref));
                } else if (i10 == 3 || i10 == 4) {
                    JCDiagnostic.DiagnosticType diagnosticType = JCDiagnostic.DiagnosticType.FRAGMENT;
                    Type type3 = jCExpression.type;
                    checkContext.report(jCMemberReference, ((Resolve.ResolveError) symbol).getDiagnostic(diagnosticType, jCMemberReference, type3.tsym, type3, jCMemberReference.name, listBuffer.toList(), List.nil()));
                }
            }
        }

        public DeferredAttrNode(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredStuckPolicy deferredStuckPolicy) {
            this.dt = deferredType;
            this.resultInfo = resultInfo;
            this.deferredStuckPolicy = deferredStuckPolicy;
        }

        public boolean process(final DeferredAttrContext deferredAttrContext) {
            int i10 = AnonymousClass6.$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode[deferredAttrContext.mode.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new AssertionError((Object) "Bad mode");
                }
            } else {
                if (this.deferredStuckPolicy.isStuck()) {
                    this.dt.check(this.resultInfo, DeferredAttr.this.dummyStuckPolicy, new StructuralStuckChecker());
                    return true;
                }
                Assert.error("Cannot get here");
            }
            if (!this.deferredStuckPolicy.isStuck()) {
                Assert.check(!deferredAttrContext.insideOverloadPhase(), "attribution shouldn't be happening here");
                Attr.ResultInfo resultInfo = this.resultInfo;
                Attr.ResultInfo dup = resultInfo.dup(deferredAttrContext.inferenceContext.asInstType(resultInfo.pt));
                DeferredType deferredType = this.dt;
                DeferredAttr deferredAttr = DeferredAttr.this;
                deferredType.check(dup, deferredAttr.dummyStuckPolicy, deferredAttr.basicCompleter);
                return true;
            }
            DeferredAttrContext deferredAttrContext2 = deferredAttrContext.parent;
            if (deferredAttrContext2 == DeferredAttr.this.emptyDeferredAttrContext || !Type.containsAny(deferredAttrContext2.inferenceContext.inferencevars, List.from(this.deferredStuckPolicy.stuckVars()))) {
                return false;
            }
            DeferredAttrContext deferredAttrContext3 = deferredAttrContext.parent;
            DeferredType deferredType2 = this.dt;
            Attr.ResultInfo resultInfo2 = this.resultInfo;
            deferredAttrContext3.addDeferredAttrNode(deferredType2, resultInfo2.dup(new Check.NestedCheckContext(resultInfo2.checkContext) {
                @Override
                public DeferredAttrContext deferredAttrContext() {
                    return deferredAttrContext.parent;
                }

                @Override
                public InferenceContext inferenceContext() {
                    return deferredAttrContext.parent.inferenceContext;
                }
            }), this.deferredStuckPolicy);
            this.dt.tree.type = Type.stuckType;
            return true;
        }
    }

    public interface DeferredStuckPolicy {
        Set<Type> depVars();

        boolean isStuck();

        Set<Type> stuckVars();
    }

    public class DeferredType extends Type {
        Env<AttrContext> env;
        AttrMode mode;
        boolean pertinentToApplicability;
        SpeculativeCache speculativeCache;
        public JCTree.JCExpression tree;

        public class SpeculativeCache {
            private Map<Symbol, List<Entry>> cache = new WeakHashMap();

            public class Entry {
                Attr.ResultInfo resultInfo;
                JCTree speculativeTree;

                public Entry(JCTree jCTree, Attr.ResultInfo resultInfo) {
                    this.speculativeTree = jCTree;
                    this.resultInfo = resultInfo;
                }

                public boolean matches(Resolve.MethodResolutionPhase methodResolutionPhase) {
                    return this.resultInfo.checkContext.deferredAttrContext().phase == methodResolutionPhase;
                }
            }

            public SpeculativeCache() {
            }

            public Entry get(Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
                List<Entry> list = this.cache.get(symbol);
                if (list == null) {
                    return null;
                }
                Iterator<Entry> it = list.iterator();
                while (it.hasNext()) {
                    Entry next = it.next();
                    if (next.matches(methodResolutionPhase)) {
                        return next;
                    }
                }
                return null;
            }

            public void put(JCTree jCTree, Attr.ResultInfo resultInfo) {
                Symbol symbol = resultInfo.checkContext.deferredAttrContext().msym;
                List<Entry> list = this.cache.get(symbol);
                if (list == null) {
                    list = List.nil();
                }
                this.cache.put(symbol, list.prepend(new Entry(jCTree, resultInfo)));
            }
        }

        public DeferredType(JCTree.JCExpression jCExpression, Env<AttrContext> env) {
            super(null, TypeMetadata.EMPTY);
            this.pertinentToApplicability = true;
            this.tree = jCExpression;
            this.env = DeferredAttr.this.attr.copyEnv(env);
            this.speculativeCache = new SpeculativeCache();
        }

        public Type check(Attr.ResultInfo resultInfo) {
            DeferredStuckPolicy deferredStuckPolicy;
            if (!resultInfo.pt.hasTag(TypeTag.NONE) && !resultInfo.pt.isErroneous()) {
                if (resultInfo.checkContext.deferredAttrContext().mode != AttrMode.SPECULATIVE && !resultInfo.checkContext.deferredAttrContext().insideOverloadPhase()) {
                    deferredStuckPolicy = new CheckStuckPolicy(resultInfo, this);
                } else {
                    deferredStuckPolicy = new OverloadStuckPolicy(resultInfo, this);
                }
            } else {
                deferredStuckPolicy = DeferredAttr.this.dummyStuckPolicy;
            }
            return check(resultInfo, deferredStuckPolicy, completer());
        }

        public DeferredTypeCompleter completer() {
            return DeferredAttr.this.basicCompleter;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.DEFERRED;
        }

        public JCTree speculativeTree(DeferredAttrContext deferredAttrContext) {
            SpeculativeCache.Entry entry = this.speculativeCache.get(deferredAttrContext.msym, deferredAttrContext.phase);
            return entry != null ? entry.speculativeTree : DeferredAttr.this.stuckTree;
        }

        public Type speculativeType(Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
            SpeculativeCache.Entry entry = this.speculativeCache.get(symbol, methodResolutionPhase);
            return entry != null ? entry.speculativeTree.type : Type.noType;
        }

        @Override
        public String toString() {
            return "DeferredType";
        }

        @Override
        public DeferredType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a deferred type");
        }

        public Type check(Attr.ResultInfo resultInfo, DeferredStuckPolicy deferredStuckPolicy, DeferredTypeCompleter deferredTypeCompleter) {
            DeferredAttrContext deferredAttrContext = resultInfo.checkContext.deferredAttrContext();
            Assert.check(deferredAttrContext != DeferredAttr.this.emptyDeferredAttrContext);
            if (deferredStuckPolicy.isStuck()) {
                this.pertinentToApplicability = false;
                deferredAttrContext.addDeferredAttrNode(this, resultInfo, deferredStuckPolicy);
                return Type.noType;
            }
            try {
                return deferredTypeCompleter.complete(this, resultInfo, deferredAttrContext);
            } finally {
                this.mode = deferredAttrContext.mode;
            }
        }
    }

    public interface DeferredTypeCompleter {
        Type complete(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredAttrContext deferredAttrContext);
    }

    public static abstract class FilterScanner extends TreeScanner {
        final Filter<JCTree> treeFilter;

        public FilterScanner(final Set<JCTree.Tag> set) {
            this.treeFilter = new Filter() {
                @Override
                public final boolean accepts(Object obj) {
                    boolean lambda$new$0;
                    lambda$new$0 = DeferredAttr.FilterScanner.lambda$new$0(Set.this, (JCTree) obj);
                    return lambda$new$0;
                }
            };
        }

        public static boolean lambda$new$0(Set set, JCTree jCTree) {
            return set.contains(jCTree.getTag());
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree != null) {
                if (this.treeFilter.accepts(jCTree)) {
                    super.scan(jCTree);
                } else {
                    skip(jCTree);
                }
            }
        }

        public void skip(JCTree jCTree) {
        }
    }

    public static class LambdaReturnScanner extends FilterScanner {
        public LambdaReturnScanner() {
            super(EnumSet.of(JCTree.Tag.BLOCK, JCTree.Tag.CASE, JCTree.Tag.CATCH, JCTree.Tag.DOLOOP, JCTree.Tag.FOREACHLOOP, JCTree.Tag.FORLOOP, JCTree.Tag.IF, JCTree.Tag.RETURN, JCTree.Tag.SYNCHRONIZED, JCTree.Tag.SWITCH, JCTree.Tag.TRY, JCTree.Tag.WHILELOOP));
        }
    }

    public class OverloadStuckPolicy extends CheckStuckPolicy implements DeferredStuckPolicy {
        boolean stuck;

        public OverloadStuckPolicy(Attr.ResultInfo resultInfo, DeferredType deferredType) {
            super(resultInfo, deferredType);
        }

        @Override
        public boolean isStuck() {
            return super.isStuck() || this.stuck;
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            super.visitLambda(jCLambda);
            if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.IMPLICIT) {
                this.stuck = true;
            }
        }

        @Override
        public void visitReference(JCTree.JCMemberReference jCMemberReference) {
            super.visitReference(jCMemberReference);
            if (jCMemberReference.getOverloadKind() == JCTree.JCMemberReference.OverloadKind.OVERLOADED) {
                this.stuck = true;
            }
        }
    }

    public static class PolyScanner extends FilterScanner {
        public PolyScanner() {
            super(EnumSet.of(JCTree.Tag.CONDEXPR, JCTree.Tag.PARENS, JCTree.Tag.LAMBDA, JCTree.Tag.REFERENCE));
        }
    }

    public class RecoveryDeferredTypeMap extends DeferredTypeMap {
        public RecoveryDeferredTypeMap(AttrMode attrMode, Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
            super(attrMode, symbol, methodResolutionPhase == null ? Resolve.MethodResolutionPhase.BOX : methodResolutionPhase);
        }

        private Type recover(DeferredType deferredType) {
            Attr attr = DeferredAttr.this.attr;
            attr.getClass();
            deferredType.check(new Attr.RecoveryInfo(attr, this.deferredAttrContext) {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(r3);
                    attr.getClass();
                }

                @Override
                public Type check(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
                    return DeferredAttr.this.chk.checkNonVoid(diagnosticPosition, super.check(diagnosticPosition, type));
                }
            });
            return super.visit(deferredType);
        }

        @Override
        public Type typeOf(DeferredType deferredType) {
            Type typeOf = super.typeOf(deferredType);
            return typeOf == Type.noType ? recover(deferredType) : typeOf;
        }

        @Override
        public Type visitType(Type type, Void r22) {
            return super.visitType(type, r22);
        }
    }

    public class UnenterScanner extends TreeScanner {
        private final Symbol.ModuleSymbol msym;

        public UnenterScanner(Symbol.ModuleSymbol moduleSymbol) {
            this.msym = moduleSymbol;
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            if (classSymbol == null) {
                return;
            }
            DeferredAttr.this.typeEnvs.remove(classSymbol);
            DeferredAttr.this.chk.removeCompiled(classSymbol);
            DeferredAttr.this.chk.clearLocalClassNameIndexes(classSymbol);
            DeferredAttr.this.syms.removeClass(this.msym, classSymbol.flatname);
            super.visitClassDef(jCClassDecl);
        }
    }

    public DeferredAttr(Context context) {
        context.put((Context.Key<Context.Key<DeferredAttr>>) deferredAttrKey, (Context.Key<DeferredAttr>) this);
        this.attr = Attr.instance(context);
        this.argumentAttr = ArgumentAttr.instance(context);
        this.chk = Check.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.enter = Enter.instance(context);
        Infer instance = Infer.instance(context);
        this.infer = instance;
        this.rs = Resolve.instance(context);
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        TreeMaker instance2 = TreeMaker.instance(context);
        this.make = instance2;
        this.types = Types.instance(context);
        this.flow = Flow.instance(context);
        Names instance3 = Names.instance(context);
        this.names = instance3;
        this.stuckTree = instance2.Ident(instance3.empty).setType((Type) Type.stuckType);
        this.typeEnvs = TypeEnvs.instance(context);
        this.emptyDeferredAttrContext = new DeferredAttrContext(AttrMode.CHECK, null, Resolve.MethodResolutionPhase.BOX, instance.emptyContext, null, null) {
            @Override
            public void addDeferredAttrNode(DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredStuckPolicy deferredStuckPolicy) {
                Assert.error("Empty deferred context!");
            }

            @Override
            public void complete() {
                Assert.error("Empty deferred context!");
            }

            public String toString() {
                return "Empty deferred context!";
            }
        };
        this.treeCopier = new TreeCopier<Void>(instance2) {
            @Override
            public JCTree visitMemberReference2(MemberReferenceTree memberReferenceTree, Void r92) {
                final JCTree.JCMemberReference jCMemberReference = (JCTree.JCMemberReference) memberReferenceTree;
                JCTree.JCMemberReference jCMemberReference2 = new JCTree.JCMemberReference(jCMemberReference.mode, jCMemberReference.name, (JCTree.JCExpression) copy((AnonymousClass2) jCMemberReference.expr, (JCTree.JCExpression) r92), copy(jCMemberReference.typeargs, (List<JCTree.JCExpression>) r92)) {
                    @Override
                    public void setOverloadKind(JCTree.JCMemberReference.OverloadKind overloadKind) {
                        super.setOverloadKind(overloadKind);
                        if (jCMemberReference.getOverloadKind() == null) {
                            jCMemberReference.setOverloadKind(overloadKind);
                        }
                    }
                };
                jCMemberReference2.pos = jCMemberReference.pos;
                return jCMemberReference2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public JCTree visitNewClass2(NewClassTree newClassTree, Void r92) {
                JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) newClassTree;
                if (TreeInfo.isDiamond(jCNewClass)) {
                    return DeferredAttr.this.make.at(jCNewClass.pos).NewClass((JCTree.JCExpression) copy((AnonymousClass2) jCNewClass.encl, (JCTree.JCExpression) r92), copy(jCNewClass.typeargs, (List<JCTree.JCExpression>) r92), (JCTree.JCExpression) copy((AnonymousClass2) jCNewClass.clazz, (JCTree.JCExpression) r92), copy(jCNewClass.args, (List<JCTree.JCExpression>) r92), null);
                }
                return super.visitNewClass2(newClassTree, (NewClassTree) r92);
            }
        };
        this.deferredCopier = new Types.TypeMapping<Void>() {
            @Override
            public Type visitType(Type type, Void r52) {
                if (!type.hasTag(TypeTag.DEFERRED)) {
                    return type;
                }
                DeferredType deferredType = (DeferredType) type;
                DeferredAttr deferredAttr = DeferredAttr.this;
                return new DeferredType((JCTree.JCExpression) deferredAttr.treeCopier.copy((TreeCopier<Void>) deferredType.tree), deferredType.env);
            }
        };
    }

    public static DeferredAttr instance(Context context) {
        DeferredAttr deferredAttr = (DeferredAttr) context.get(deferredAttrKey);
        return deferredAttr == null ? new DeferredAttr(context) : deferredAttr;
    }

    public Log.DeferredDiagnosticHandler lambda$attribSpeculative$2(JCTree jCTree) {
        return new DeferredAttrDiagHandler(this.log, jCTree);
    }

    public Log.DeferredDiagnosticHandler lambda$attribSpeculative$3(JCTree jCTree) {
        return new DeferredAttrDiagHandler(this.log, jCTree);
    }

    public static boolean lambda$attribSpeculativeLambda$0(JCTree.JCStatement jCStatement) {
        return jCStatement.hasTag(JCTree.Tag.VARDEF);
    }

    public static JCTree.JCVariableDecl lambda$attribSpeculativeLambda$1(JCTree.JCStatement jCStatement) {
        return (JCTree.JCVariableDecl) jCStatement;
    }

    public JCTree attribSpeculative(JCTree jCTree, Env<AttrContext> env, Attr.ResultInfo resultInfo) {
        return attribSpeculative(jCTree, env, resultInfo, this.treeCopier, new Function() {
            @Override
            public final Object apply(Object obj) {
                Log.DeferredDiagnosticHandler lambda$attribSpeculative$2;
                lambda$attribSpeculative$2 = DeferredAttr.this.lambda$attribSpeculative$2((JCTree) obj);
                return lambda$attribSpeculative$2;
            }
        }, null);
    }

    public JCTree.JCLambda attribSpeculativeLambda(JCTree.JCLambda jCLambda, Env<AttrContext> env, Attr.ResultInfo resultInfo) {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.addAll(jCLambda.params);
        if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
            listBuffer.add(this.make.Return((JCTree.JCExpression) jCLambda.body));
        } else {
            listBuffer.add((JCTree.JCBlock) jCLambda.body);
        }
        JCTree.JCBlock Block = this.make.Block(0L, listBuffer.toList());
        Env<AttrContext> lambdaEnv = this.attr.lambdaEnv(jCLambda, env);
        try {
            lambdaEnv.info.returnResult = resultInfo;
            JCTree.JCBlock jCBlock = (JCTree.JCBlock) attribSpeculative(Block, lambdaEnv, resultInfo);
            List<JCTree.JCVariableDecl> list = (List) jCBlock.getStatements().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$attribSpeculativeLambda$0;
                    lambda$attribSpeculativeLambda$0 = DeferredAttr.lambda$attribSpeculativeLambda$0((JCTree.JCStatement) obj);
                    return lambda$attribSpeculativeLambda$0;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    JCTree.JCVariableDecl lambda$attribSpeculativeLambda$1;
                    lambda$attribSpeculativeLambda$1 = DeferredAttr.lambda$attribSpeculativeLambda$1((JCTree.JCStatement) obj);
                    return lambda$attribSpeculativeLambda$1;
                }
            }).collect(List.collector());
            JCTree.JCStatement last = jCBlock.getStatements().last();
            if (last.hasTag(JCTree.Tag.RETURN)) {
                last = ((JCTree.JCReturn) last).expr;
            }
            JCTree.JCLambda Lambda = this.make.Lambda(list, last);
            this.attr.preFlow(Lambda);
            this.flow.analyzeLambda(env, Lambda, this.make, false);
            lambdaEnv.info.scope.leave();
            return Lambda;
        } catch (Throwable th2) {
            lambdaEnv.info.scope.leave();
            throw th2;
        }
    }

    public class DeferredTypeMap extends Type.StructuralTypeMapping<Void> {
        DeferredAttrContext deferredAttrContext;

        public DeferredTypeMap(AttrMode attrMode, Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
            this.deferredAttrContext = new DeferredAttrContext(attrMode, symbol, methodResolutionPhase, DeferredAttr.this.infer.emptyContext, DeferredAttr.this.emptyDeferredAttrContext, DeferredAttr.this.types.noWarnings);
        }

        public Type typeOf(DeferredType deferredType) {
            int i10 = AnonymousClass6.$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode[this.deferredAttrContext.mode.ordinal()];
            if (i10 == 1) {
                DeferredAttrContext deferredAttrContext = this.deferredAttrContext;
                return deferredType.speculativeType(deferredAttrContext.msym, deferredAttrContext.phase);
            }
            if (i10 != 2) {
                Assert.error();
                return null;
            }
            Type type = deferredType.tree.type;
            return type == null ? Type.noType : type;
        }

        @Override
        public Type visitType(Type type, Void r22) {
            if (!type.hasTag(TypeTag.DEFERRED)) {
                return super.visitType(type, (Type) null);
            }
            return typeOf((DeferredType) type);
        }
    }

    public JCTree attribSpeculative(JCTree jCTree, Env<AttrContext> env, Attr.ResultInfo resultInfo, ArgumentAttr.LocalCacheContext localCacheContext) {
        return attribSpeculative(jCTree, env, resultInfo, this.treeCopier, new Function() {
            @Override
            public final Object apply(Object obj) {
                Log.DeferredDiagnosticHandler lambda$attribSpeculative$3;
                lambda$attribSpeculative$3 = DeferredAttr.this.lambda$attribSpeculative$3((JCTree) obj);
                return lambda$attribSpeculative$3;
            }
        }, localCacheContext);
    }

    public <Z> JCTree attribSpeculative(JCTree jCTree, Env<AttrContext> env, Attr.ResultInfo resultInfo, TreeCopier<Z> treeCopier, Function<JCTree, Log.DeferredDiagnosticHandler> function, ArgumentAttr.LocalCacheContext localCacheContext) {
        JCTree copy = treeCopier.copy((TreeCopier<Z>) jCTree);
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(copy, attrContext.dup(attrContext.scope.dupUnshared(attrContext.scope.owner)));
        dup.info.isSpeculative = true;
        Log.DeferredDiagnosticHandler apply = function.apply(copy);
        try {
            this.attr.attribTree(copy, dup, resultInfo);
            return copy;
        } finally {
            new UnenterScanner(env.toplevel.modle).scan(copy);
            this.log.popDiagnosticHandler(apply);
            if (localCacheContext != null) {
                localCacheContext.leave();
            }
        }
    }
}
