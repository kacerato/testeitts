package org.openjdk.tools.javac.comp;

import java.util.AbstractCollection;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.ArrayUtils;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Bits;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;

public class Flow {
    protected static final Context.Key<Flow> flowKey = new Context.Key<>();
    private final boolean allowEffectivelyFinalInInnerClasses;
    private final boolean allowImprovedCatchAnalysis;
    private final boolean allowImprovedRethrowAnalysis;
    private Env<AttrContext> attrEnv;
    private final Check chk;
    private final JCDiagnostic.Factory diags;
    private final boolean enforceThisDotInit;
    private Lint lint;
    private final Log log;
    private TreeMaker make;
    private final Names names;
    private final Resolve rs;
    private final Symtab syms;
    private final Types types;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.NOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREINC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.AND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.OR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CLASSDEF.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LAMBDA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public class AliveAnalyzer extends BaseAnalyzer<BaseAnalyzer.PendingExit> {
        private boolean alive;

        public AliveAnalyzer() {
        }

        public void analyzeTree(Env<AttrContext> env, TreeMaker treeMaker) {
            analyzeTree(env, env.tree, treeMaker);
        }

        @Override
        public void markDead() {
            this.alive = false;
        }

        public void scanDef(JCTree jCTree) {
            scanStat(jCTree);
            if (jCTree == null || !jCTree.hasTag(JCTree.Tag.BLOCK) || this.alive) {
                return;
            }
            Flow.this.log.error(jCTree.pos(), "initializer.must.be.able.to.complete.normally", new Object[0]);
        }

        public void scanStat(JCTree jCTree) {
            if (!this.alive && jCTree != null) {
                Flow.this.log.error(jCTree.pos(), "unreachable.stmt", new Object[0]);
                if (!jCTree.hasTag(JCTree.Tag.SKIP)) {
                    this.alive = true;
                }
            }
            scan(jCTree);
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r2 = r2;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void scanStats(List<? extends JCTree.JCStatement> list) {
            if (list != null) {
                for (List<? extends JCTree.JCStatement> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                    scanStat((JCTree) list2.head);
                }
            }
        }

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            scan(jCMethodInvocation.meth);
            scan(jCMethodInvocation.args);
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            scanStats(jCBlock.stats);
        }

        @Override
        public void visitBreak(JCTree.JCBreak jCBreak) {
            recordExit(new BaseAnalyzer.PendingExit(jCBreak));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (jCClassDecl.sym == null) {
                return;
            }
            boolean z10 = this.alive;
            ListBuffer<P> listBuffer = this.pendingExits;
            Lint lint = Flow.this.lint;
            this.pendingExits = new ListBuffer<>();
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCClassDecl.sym);
            try {
                for (List list = jCClassDecl.defs; list.nonEmpty(); list = list.tail) {
                    if (!((JCTree) list.head).hasTag(JCTree.Tag.METHODDEF) && (8 & TreeInfo.flags((JCTree) list.head)) != 0) {
                        scanDef((JCTree) list.head);
                    }
                }
                for (List list2 = jCClassDecl.defs; list2.nonEmpty(); list2 = list2.tail) {
                    if (!((JCTree) list2.head).hasTag(JCTree.Tag.METHODDEF) && (TreeInfo.flags((JCTree) list2.head) & 8) == 0) {
                        scanDef((JCTree) list2.head);
                    }
                }
                for (List list3 = jCClassDecl.defs; list3.nonEmpty(); list3 = list3.tail) {
                    if (((JCTree) list3.head).hasTag(JCTree.Tag.METHODDEF)) {
                        scan((JCTree) list3.head);
                    }
                }
                this.pendingExits = listBuffer;
                this.alive = z10;
                Flow.this.lint = lint;
            } catch (Throwable th2) {
                this.pendingExits = listBuffer;
                this.alive = z10;
                Flow.this.lint = lint;
                throw th2;
            }
        }

        @Override
        public void visitContinue(JCTree.JCContinue jCContinue) {
            recordExit(new BaseAnalyzer.PendingExit(jCContinue));
        }

        @Override
        public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scanStat(jCDoWhileLoop.body);
            this.alive |= resolveContinues(jCDoWhileLoop);
            scan(jCDoWhileLoop.cond);
            boolean z10 = this.alive && !jCDoWhileLoop.cond.type.isTrue();
            this.alive = z10;
            this.alive = resolveBreaks(jCDoWhileLoop, abstractCollection) | z10;
        }

        @Override
        public void visitForLoop(JCTree.JCForLoop jCForLoop) {
            JCTree.JCExpression jCExpression;
            AbstractCollection abstractCollection = this.pendingExits;
            scanStats(jCForLoop.init);
            this.pendingExits = new ListBuffer<>();
            JCTree.JCExpression jCExpression2 = jCForLoop.cond;
            boolean z10 = true;
            if (jCExpression2 != null) {
                scan(jCExpression2);
                this.alive = !jCForLoop.cond.type.isFalse();
            } else {
                this.alive = true;
            }
            scanStat(jCForLoop.body);
            this.alive |= resolveContinues(jCForLoop);
            scan(jCForLoop.step);
            if (!resolveBreaks(jCForLoop, abstractCollection) && ((jCExpression = jCForLoop.cond) == null || jCExpression.type.isTrue())) {
                z10 = false;
            }
            this.alive = z10;
        }

        @Override
        public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
            visitVarDef(jCEnhancedForLoop.var);
            AbstractCollection abstractCollection = this.pendingExits;
            scan(jCEnhancedForLoop.expr);
            this.pendingExits = new ListBuffer<>();
            scanStat(jCEnhancedForLoop.body);
            this.alive |= resolveContinues(jCEnhancedForLoop);
            resolveBreaks(jCEnhancedForLoop, abstractCollection);
            this.alive = true;
        }

        @Override
        public void visitIf(JCTree.JCIf jCIf) {
            scan(jCIf.cond);
            scanStat(jCIf.thenpart);
            JCTree.JCStatement jCStatement = jCIf.elsepart;
            if (jCStatement == null) {
                this.alive = true;
                return;
            }
            boolean z10 = this.alive;
            this.alive = true;
            scanStat(jCStatement);
            this.alive |= z10;
        }

        @Override
        public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scanStat(jCLabeledStatement.body);
            this.alive = resolveBreaks(jCLabeledStatement, abstractCollection) | this.alive;
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            Type type = jCLambda.type;
            if (type == null || !type.isErroneous()) {
                ListBuffer<P> listBuffer = this.pendingExits;
                boolean z10 = this.alive;
                try {
                    this.pendingExits = new ListBuffer<>();
                    this.alive = true;
                    scanStat(jCLambda.body);
                    jCLambda.canCompleteNormally = this.alive;
                } finally {
                    this.pendingExits = listBuffer;
                    this.alive = z10;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            if (jCMethodDecl.body == null) {
                return;
            }
            Lint lint = Flow.this.lint;
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCMethodDecl.sym);
            Assert.check(this.pendingExits.isEmpty());
            try {
                this.alive = true;
                scanStat(jCMethodDecl.body);
                if (this.alive && !jCMethodDecl.sym.type.getReturnType().hasTag(TypeTag.VOID)) {
                    Flow.this.log.error(TreeInfo.diagEndPos(jCMethodDecl.body), "missing.ret.stmt", new Object[0]);
                }
                List list = this.pendingExits.toList();
                this.pendingExits = new ListBuffer<>();
                while (list.nonEmpty()) {
                    BaseAnalyzer.PendingExit pendingExit = (BaseAnalyzer.PendingExit) list.head;
                    list = list.tail;
                    Assert.check(pendingExit.tree.hasTag(JCTree.Tag.RETURN));
                }
                Flow.this.lint = lint;
            } catch (Throwable th2) {
                Flow.this.lint = lint;
                throw th2;
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            scan(jCNewClass.encl);
            scan(jCNewClass.args);
            JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
            if (jCClassDecl != null) {
                scan(jCClassDecl);
            }
        }

        @Override
        public void visitReturn(JCTree.JCReturn jCReturn) {
            scan(jCReturn.expr);
            recordExit(new BaseAnalyzer.PendingExit(jCReturn));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitSwitch(JCTree.JCSwitch jCSwitch) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCSwitch.selector);
            boolean z10 = false;
            for (List list = jCSwitch.cases; list.nonEmpty(); list = list.tail) {
                this.alive = true;
                JCTree.JCCase jCCase = (JCTree.JCCase) list.head;
                JCTree.JCExpression jCExpression = jCCase.pat;
                if (jCExpression == null) {
                    z10 = true;
                } else {
                    scan(jCExpression);
                }
                scanStats(jCCase.stats);
                if (this.alive) {
                    Lint lint = Flow.this.lint;
                    Lint.LintCategory lintCategory = Lint.LintCategory.FALLTHROUGH;
                    if (lint.isEnabled(lintCategory) && jCCase.stats.nonEmpty() && list.tail.nonEmpty()) {
                        Flow.this.log.warning(lintCategory, ((JCTree.JCCase) list.tail.head).pos(), "possible.fall-through.into.case", new Object[0]);
                    }
                }
            }
            if (!z10) {
                this.alive = true;
            }
            this.alive = resolveBreaks(jCSwitch, abstractCollection) | this.alive;
        }

        @Override
        public void visitThrow(JCTree.JCThrow jCThrow) {
            scan(jCThrow.expr);
            markDead();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitTry(JCTree.JCTry jCTry) {
            ListBuffer<P> listBuffer = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            Iterator<JCTree> it = jCTry.resources.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next instanceof JCTree.JCVariableDecl) {
                    visitVarDef((JCTree.JCVariableDecl) next);
                } else {
                    if (!(next instanceof JCTree.JCExpression)) {
                        throw new AssertionError(jCTry);
                    }
                    scan((JCTree.JCExpression) next);
                }
            }
            scanStat(jCTry.body);
            boolean z10 = this.alive;
            for (List list = jCTry.catchers; list.nonEmpty(); list = list.tail) {
                this.alive = true;
                scan(((JCTree.JCCatch) list.head).param);
                scanStat(((JCTree.JCCatch) list.head).body);
                z10 |= this.alive;
            }
            JCTree.JCBlock jCBlock = jCTry.finalizer;
            if (jCBlock == null) {
                this.alive = z10;
                ListBuffer<P> listBuffer2 = this.pendingExits;
                this.pendingExits = listBuffer;
                while (listBuffer2.nonEmpty()) {
                    this.pendingExits.append(listBuffer2.next());
                }
                return;
            }
            ListBuffer<P> listBuffer3 = this.pendingExits;
            this.pendingExits = listBuffer;
            this.alive = true;
            scanStat(jCBlock);
            boolean z11 = this.alive;
            jCTry.finallyCanCompleteNormally = z11;
            if (z11) {
                while (listBuffer3.nonEmpty()) {
                    this.pendingExits.append(listBuffer3.next());
                }
                this.alive = z10;
            } else {
                Lint lint = Flow.this.lint;
                Lint.LintCategory lintCategory = Lint.LintCategory.FINALLY;
                if (lint.isEnabled(lintCategory)) {
                    Flow.this.log.warning(lintCategory, TreeInfo.diagEndPos(jCTry.finalizer), "finally.cannot.complete", new Object[0]);
                }
            }
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if (jCVariableDecl.init != null) {
                Lint lint = Flow.this.lint;
                Flow flow = Flow.this;
                flow.lint = flow.lint.augment(jCVariableDecl.sym);
                try {
                    scan(jCVariableDecl.init);
                } finally {
                    Flow.this.lint = lint;
                }
            }
        }

        @Override
        public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCWhileLoop.cond);
            boolean z10 = true;
            this.alive = !jCWhileLoop.cond.type.isFalse();
            scanStat(jCWhileLoop.body);
            this.alive |= resolveContinues(jCWhileLoop);
            if (!resolveBreaks(jCWhileLoop, abstractCollection) && jCWhileLoop.cond.type.isTrue()) {
                z10 = false;
            }
            this.alive = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void analyzeTree(Env<AttrContext> env, JCTree jCTree, TreeMaker treeMaker) {
            try {
                Flow.this.attrEnv = env;
                Flow.this.make = treeMaker;
                this.pendingExits = new ListBuffer<>();
                this.alive = true;
                scan(jCTree);
            } finally {
                this.pendingExits = null;
                Flow.this.make = null;
            }
        }
    }

    public class AssignAnalyzer extends BaseAnalyzer<AssignPendingExit> {
        JCTree.JCClassDecl classDef;
        int firstadr;
        protected int nextadr;
        protected int returnadr;
        int startPos;
        Scope.WriteableScope unrefdResources;
        protected JCTree.JCVariableDecl[] vardecls;
        FlowKind flowKind = FlowKind.NORMAL;
        private boolean isInitialConstructor = false;
        final Bits inits = new Bits();
        final Bits uninits = new Bits();
        final Bits uninitsTry = new Bits();
        final Bits initsWhenTrue = new Bits(true);
        final Bits initsWhenFalse = new Bits(true);
        final Bits uninitsWhenTrue = new Bits(true);
        final Bits uninitsWhenFalse = new Bits(true);

        public class AssignPendingExit extends BaseAnalyzer.PendingExit {
            final Bits exit_inits;
            final Bits exit_uninits;
            final Bits inits;
            final Bits uninits;

            public AssignPendingExit(JCTree jCTree, Bits bits, Bits bits2) {
                super(jCTree);
                Bits bits3 = new Bits(true);
                this.exit_inits = bits3;
                Bits bits4 = new Bits(true);
                this.exit_uninits = bits4;
                this.inits = bits;
                this.uninits = bits2;
                bits3.assign(bits);
                bits4.assign(bits2);
            }

            @Override
            public void resolveJump() {
                this.inits.andSet(this.exit_inits);
                this.uninits.andSet(this.exit_uninits);
            }
        }

        public AssignAnalyzer() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r3 = r3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void addVars(List<JCTree.JCStatement> list, Bits bits, Bits bits2) {
            for (List<JCTree.JCStatement> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                JCTree.JCStatement jCStatement = list2.head;
                if (jCStatement.hasTag(JCTree.Tag.VARDEF)) {
                    int i10 = ((JCTree.JCVariableDecl) jCStatement).sym.adr;
                    bits.excl(i10);
                    bits2.incl(i10);
                }
            }
        }

        private boolean isIdentOrThisDotIdent(JCTree jCTree) {
            JCTree.Tag tag = JCTree.Tag.IDENT;
            if (jCTree.hasTag(tag)) {
                return true;
            }
            if (!jCTree.hasTag(JCTree.Tag.SELECT)) {
                return false;
            }
            JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCTree;
            return jCFieldAccess.selected.hasTag(tag) && ((JCTree.JCIdent) jCFieldAccess.selected).name == Flow.this.names._this;
        }

        private void resetBits(Bits... bitsArr) {
            for (Bits bits : bitsArr) {
                bits.reset();
            }
        }

        public void analyzeTree(Env<?> env) {
            analyzeTree(env, env.tree);
        }

        public void checkInit(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol) {
            checkInit(diagnosticPosition, varSymbol, "var.might.not.have.been.initialized");
        }

        public void initParam(JCTree.JCVariableDecl jCVariableDecl) {
            this.inits.incl(jCVariableDecl.sym.adr);
            this.uninits.excl(jCVariableDecl.sym.adr);
        }

        public boolean isFinalUninitializedField(Symbol.VarSymbol varSymbol) {
            return varSymbol.owner.kind == Kinds.Kind.TYP && (varSymbol.flags() & 8590196752L) == 16 && this.classDef.sym.isEnclosedBy((Symbol.ClassSymbol) varSymbol.owner);
        }

        public boolean isFinalUninitializedStaticField(Symbol.VarSymbol varSymbol) {
            return isFinalUninitializedField(varSymbol) && varSymbol.isStatic();
        }

        public void letInit(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol) {
            if (varSymbol.adr < this.firstadr || !trackable(varSymbol)) {
                if ((varSymbol.flags() & 16) != 0) {
                    Flow.this.log.error(diagnosticPosition, "var.might.already.be.assigned", varSymbol);
                    return;
                }
                return;
            }
            if ((varSymbol.flags() & 2199023255552L) != 0) {
                if (!this.uninits.isMember(varSymbol.adr)) {
                    varSymbol.flags_field &= -2199023255553L;
                } else {
                    uninit(varSymbol);
                }
            } else if ((varSymbol.flags() & 16) != 0) {
                if ((varSymbol.flags() & 8589934592L) != 0) {
                    if ((varSymbol.flags() & 549755813888L) != 0) {
                        Flow.this.log.error(diagnosticPosition, "multicatch.parameter.may.not.be.assigned", varSymbol);
                    } else {
                        Flow.this.log.error(diagnosticPosition, "final.parameter.may.not.be.assigned", varSymbol);
                    }
                } else if (!this.uninits.isMember(varSymbol.adr)) {
                    Flow.this.log.error(diagnosticPosition, this.flowKind.errKey, varSymbol);
                } else {
                    uninit(varSymbol);
                }
            }
            this.inits.incl(varSymbol.adr);
        }

        @Override
        public void markDead() {
            if (this.isInitialConstructor) {
                for (int i10 = this.returnadr; i10 < this.nextadr; i10++) {
                    if (!isFinalUninitializedStaticField(this.vardecls[i10].sym)) {
                        this.inits.incl(i10);
                    }
                }
            } else {
                this.inits.inclRange(this.returnadr, this.nextadr);
            }
            this.uninits.inclRange(this.returnadr, this.nextadr);
        }

        public void merge() {
            this.inits.assign(this.initsWhenFalse.andSet(this.initsWhenTrue));
            this.uninits.assign(this.uninitsWhenFalse.andSet(this.uninitsWhenTrue));
        }

        public void newVar(JCTree.JCVariableDecl jCVariableDecl) {
            Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
            this.vardecls = (JCTree.JCVariableDecl[]) ArrayUtils.ensureCapacity(this.vardecls, this.nextadr);
            if ((varSymbol.flags() & 16) == 0) {
                varSymbol.flags_field |= 2199023255552L;
            }
            int i10 = this.nextadr;
            varSymbol.adr = i10;
            this.vardecls[i10] = jCVariableDecl;
            this.inits.excl(i10);
            this.uninits.incl(this.nextadr);
            this.nextadr++;
        }

        public void referenced(Symbol symbol) {
            this.unrefdResources.remove(symbol);
        }

        @Override
        public void scan(JCTree jCTree) {
            super.scan(jCTree);
        }

        public void scanCond(JCTree jCTree) {
            if (jCTree.type.isFalse()) {
                if (this.inits.isReset()) {
                    merge();
                }
                this.initsWhenTrue.assign(this.inits);
                this.initsWhenTrue.inclRange(this.firstadr, this.nextadr);
                this.uninitsWhenTrue.assign(this.uninits);
                this.uninitsWhenTrue.inclRange(this.firstadr, this.nextadr);
                this.initsWhenFalse.assign(this.inits);
                this.uninitsWhenFalse.assign(this.uninits);
            } else if (jCTree.type.isTrue()) {
                if (this.inits.isReset()) {
                    merge();
                }
                this.initsWhenFalse.assign(this.inits);
                this.initsWhenFalse.inclRange(this.firstadr, this.nextadr);
                this.uninitsWhenFalse.assign(this.uninits);
                this.uninitsWhenFalse.inclRange(this.firstadr, this.nextadr);
                this.initsWhenTrue.assign(this.inits);
                this.uninitsWhenTrue.assign(this.uninits);
            } else {
                scan(jCTree);
                if (!this.inits.isReset()) {
                    split(jCTree.type != Flow.this.syms.unknownType);
                }
            }
            if (jCTree.type != Flow.this.syms.unknownType) {
                resetBits(this.inits, this.uninits);
            }
        }

        public void scanExpr(JCTree jCTree) {
            if (jCTree != null) {
                scan(jCTree);
                if (this.inits.isReset()) {
                    merge();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r2 = r2;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void scanExprs(List<? extends JCTree.JCExpression> list) {
            if (list != null) {
                for (List<? extends JCTree.JCExpression> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                    scanExpr((JCTree) list2.head);
                }
            }
        }

        public void split(boolean z10) {
            this.initsWhenFalse.assign(this.inits);
            this.uninitsWhenFalse.assign(this.uninits);
            this.initsWhenTrue.assign(this.inits);
            this.uninitsWhenTrue.assign(this.uninits);
            if (z10) {
                resetBits(this.inits, this.uninits);
            }
        }

        public boolean trackable(Symbol.VarSymbol varSymbol) {
            return varSymbol.pos >= this.startPos && (varSymbol.owner.kind == Kinds.Kind.MTH || isFinalUninitializedField(varSymbol));
        }

        public void uninit(Symbol.VarSymbol varSymbol) {
            if (this.inits.isMember(varSymbol.adr)) {
                this.uninits.excl(varSymbol.adr);
            } else {
                this.uninits.excl(varSymbol.adr);
                this.uninitsTry.excl(varSymbol.adr);
            }
        }

        @Override
        public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
            jCAnnotatedType.underlyingType.accept(this);
        }

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            scanExpr(jCMethodInvocation.meth);
            scanExprs(jCMethodInvocation.args);
        }

        @Override
        public void visitAssert(JCTree.JCAssert jCAssert) {
            Bits bits = new Bits(this.inits);
            Bits bits2 = new Bits(this.uninits);
            scanCond(jCAssert.cond);
            bits2.andSet(this.uninitsWhenTrue);
            if (jCAssert.detail != null) {
                this.inits.assign(this.initsWhenFalse);
                this.uninits.assign(this.uninitsWhenFalse);
                scanExpr(jCAssert.detail);
            }
            this.inits.assign(bits);
            this.uninits.assign(bits2);
        }

        @Override
        public void visitAssign(JCTree.JCAssign jCAssign) {
            JCTree.JCExpression skipParens = TreeInfo.skipParens(jCAssign.lhs);
            if (!isIdentOrThisDotIdent(skipParens)) {
                scanExpr(skipParens);
            }
            scanExpr(jCAssign.rhs);
            letInit(skipParens);
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            scanExpr(jCAssignOp.lhs);
            scanExpr(jCAssignOp.rhs);
            letInit(jCAssignOp.lhs);
        }

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCBinary.getTag().ordinal()];
            if (i10 == 6) {
                scanCond(jCBinary.lhs);
                Bits bits = new Bits(this.initsWhenFalse);
                Bits bits2 = new Bits(this.uninitsWhenFalse);
                this.inits.assign(this.initsWhenTrue);
                this.uninits.assign(this.uninitsWhenTrue);
                scanCond(jCBinary.rhs);
                this.initsWhenFalse.andSet(bits);
                this.uninitsWhenFalse.andSet(bits2);
                return;
            }
            if (i10 != 7) {
                scanExpr(jCBinary.lhs);
                scanExpr(jCBinary.rhs);
                return;
            }
            scanCond(jCBinary.lhs);
            Bits bits3 = new Bits(this.initsWhenTrue);
            Bits bits4 = new Bits(this.uninitsWhenTrue);
            this.inits.assign(this.initsWhenFalse);
            this.uninits.assign(this.uninitsWhenFalse);
            scanCond(jCBinary.rhs);
            this.initsWhenTrue.andSet(bits3);
            this.uninitsWhenTrue.andSet(bits4);
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            int i10 = this.nextadr;
            scan(jCBlock.stats);
            this.nextadr = i10;
        }

        @Override
        public void visitBreak(JCTree.JCBreak jCBreak) {
            recordExit(new AssignPendingExit(jCBreak, this.inits, this.uninits));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (jCClassDecl.sym == null) {
                return;
            }
            Lint lint = Flow.this.lint;
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCClassDecl.sym);
            try {
                if (jCClassDecl.sym == null) {
                    Flow.this.lint = lint;
                    return;
                }
                JCTree.JCClassDecl jCClassDecl2 = this.classDef;
                int i10 = this.firstadr;
                int i11 = this.nextadr;
                ListBuffer<P> listBuffer = this.pendingExits;
                this.pendingExits = new ListBuffer<>();
                if (jCClassDecl.name != Flow.this.names.empty) {
                    this.firstadr = this.nextadr;
                }
                this.classDef = jCClassDecl;
                try {
                    for (List list = jCClassDecl.defs; list.nonEmpty(); list = list.tail) {
                        if (((JCTree) list.head).hasTag(JCTree.Tag.VARDEF)) {
                            JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) list.head;
                            if ((8 & jCVariableDecl.mods.flags) != 0 && trackable(jCVariableDecl.sym)) {
                                newVar(jCVariableDecl);
                            }
                        }
                    }
                    for (List list2 = jCClassDecl.defs; list2.nonEmpty(); list2 = list2.tail) {
                        if (!((JCTree) list2.head).hasTag(JCTree.Tag.METHODDEF) && (TreeInfo.flags((JCTree) list2.head) & 8) != 0) {
                            scan((JCTree) list2.head);
                        }
                    }
                    for (List list3 = jCClassDecl.defs; list3.nonEmpty(); list3 = list3.tail) {
                        if (((JCTree) list3.head).hasTag(JCTree.Tag.VARDEF)) {
                            JCTree.JCVariableDecl jCVariableDecl2 = (JCTree.JCVariableDecl) list3.head;
                            if ((jCVariableDecl2.mods.flags & 8) == 0 && trackable(jCVariableDecl2.sym)) {
                                newVar(jCVariableDecl2);
                            }
                        }
                    }
                    for (List list4 = jCClassDecl.defs; list4.nonEmpty(); list4 = list4.tail) {
                        if (!((JCTree) list4.head).hasTag(JCTree.Tag.METHODDEF) && (TreeInfo.flags((JCTree) list4.head) & 8) == 0) {
                            scan((JCTree) list4.head);
                        }
                    }
                    for (List list5 = jCClassDecl.defs; list5.nonEmpty(); list5 = list5.tail) {
                        if (((JCTree) list5.head).hasTag(JCTree.Tag.METHODDEF)) {
                            scan((JCTree) list5.head);
                        }
                    }
                    this.pendingExits = listBuffer;
                    this.nextadr = i11;
                    this.firstadr = i10;
                    this.classDef = jCClassDecl2;
                    Flow.this.lint = lint;
                } catch (Throwable th2) {
                    this.pendingExits = listBuffer;
                    this.nextadr = i11;
                    this.firstadr = i10;
                    this.classDef = jCClassDecl2;
                    throw th2;
                }
            } catch (Throwable th3) {
                Flow.this.lint = lint;
                throw th3;
            }
        }

        @Override
        public void visitConditional(JCTree.JCConditional jCConditional) {
            scanCond(jCConditional.cond);
            Bits bits = new Bits(this.initsWhenFalse);
            Bits bits2 = new Bits(this.uninitsWhenFalse);
            this.inits.assign(this.initsWhenTrue);
            this.uninits.assign(this.uninitsWhenTrue);
            Type type = jCConditional.truepart.type;
            TypeTag typeTag = TypeTag.BOOLEAN;
            if (!type.hasTag(typeTag) || !jCConditional.falsepart.type.hasTag(typeTag)) {
                scanExpr(jCConditional.truepart);
                Bits bits3 = new Bits(this.inits);
                Bits bits4 = new Bits(this.uninits);
                this.inits.assign(bits);
                this.uninits.assign(bits2);
                scanExpr(jCConditional.falsepart);
                this.inits.andSet(bits3);
                this.uninits.andSet(bits4);
                return;
            }
            scanCond(jCConditional.truepart);
            Bits bits5 = new Bits(this.initsWhenTrue);
            Bits bits6 = new Bits(this.initsWhenFalse);
            Bits bits7 = new Bits(this.uninitsWhenTrue);
            Bits bits8 = new Bits(this.uninitsWhenFalse);
            this.inits.assign(bits);
            this.uninits.assign(bits2);
            scanCond(jCConditional.falsepart);
            this.initsWhenTrue.andSet(bits5);
            this.initsWhenFalse.andSet(bits6);
            this.uninitsWhenTrue.andSet(bits7);
            this.uninitsWhenFalse.andSet(bits8);
        }

        @Override
        public void visitContinue(JCTree.JCContinue jCContinue) {
            recordExit(new AssignPendingExit(jCContinue, this.inits, this.uninits));
        }

        @Override
        public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            FlowKind flowKind = this.flowKind;
            this.flowKind = FlowKind.NORMAL;
            Bits bits = new Bits(true);
            Bits bits2 = new Bits(true);
            this.pendingExits = new ListBuffer<>();
            int i10 = Flow.this.log.nerrors;
            while (true) {
                Bits bits3 = new Bits(this.uninits);
                bits3.excludeFrom(this.nextadr);
                scan(jCDoWhileLoop.body);
                resolveContinues(jCDoWhileLoop);
                scanCond(jCDoWhileLoop.cond);
                if (!this.flowKind.isFinal()) {
                    bits.assign(this.initsWhenFalse);
                    bits2.assign(this.uninitsWhenFalse);
                }
                if (Flow.this.log.nerrors != i10 || this.flowKind.isFinal() || new Bits(bits3).diffSet(this.uninitsWhenTrue).nextBit(this.firstadr) == -1) {
                    break;
                }
                this.inits.assign(this.initsWhenTrue);
                this.uninits.assign(bits3.andSet(this.uninitsWhenTrue));
                this.flowKind = FlowKind.SPECULATIVE_LOOP;
            }
            this.flowKind = flowKind;
            this.inits.assign(bits);
            this.uninits.assign(bits2);
            resolveBreaks(jCDoWhileLoop, abstractCollection);
        }

        @Override
        public void visitForLoop(JCTree.JCForLoop jCForLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            FlowKind flowKind = this.flowKind;
            this.flowKind = FlowKind.NORMAL;
            int i10 = this.nextadr;
            scan(jCForLoop.init);
            Bits bits = new Bits(true);
            Bits bits2 = new Bits(true);
            this.pendingExits = new ListBuffer<>();
            int i11 = Flow.this.log.nerrors;
            while (true) {
                Bits bits3 = new Bits(this.uninits);
                bits3.excludeFrom(this.nextadr);
                JCTree.JCExpression jCExpression = jCForLoop.cond;
                if (jCExpression != null) {
                    scanCond(jCExpression);
                    if (!this.flowKind.isFinal()) {
                        bits.assign(this.initsWhenFalse);
                        bits2.assign(this.uninitsWhenFalse);
                    }
                    this.inits.assign(this.initsWhenTrue);
                    this.uninits.assign(this.uninitsWhenTrue);
                } else if (!this.flowKind.isFinal()) {
                    bits.assign(this.inits);
                    bits.inclRange(this.firstadr, this.nextadr);
                    bits2.assign(this.uninits);
                    bits2.inclRange(this.firstadr, this.nextadr);
                }
                scan(jCForLoop.body);
                resolveContinues(jCForLoop);
                scan(jCForLoop.step);
                if (Flow.this.log.nerrors != i11 || this.flowKind.isFinal() || new Bits(bits3).diffSet(this.uninits).nextBit(this.firstadr) == -1) {
                    break;
                }
                Bits bits4 = this.uninits;
                bits4.assign(bits3.andSet(bits4));
                this.flowKind = FlowKind.SPECULATIVE_LOOP;
            }
            this.flowKind = flowKind;
            this.inits.assign(bits);
            this.uninits.assign(bits2);
            resolveBreaks(jCForLoop, abstractCollection);
            this.nextadr = i10;
        }

        @Override
        public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
            visitVarDef(jCEnhancedForLoop.var);
            AbstractCollection abstractCollection = this.pendingExits;
            FlowKind flowKind = this.flowKind;
            this.flowKind = FlowKind.NORMAL;
            int i10 = this.nextadr;
            scan(jCEnhancedForLoop.expr);
            Bits bits = new Bits(this.inits);
            Bits bits2 = new Bits(this.uninits);
            letInit(jCEnhancedForLoop.pos(), jCEnhancedForLoop.var.sym);
            this.pendingExits = new ListBuffer<>();
            int i11 = Flow.this.log.nerrors;
            while (true) {
                Bits bits3 = new Bits(this.uninits);
                bits3.excludeFrom(this.nextadr);
                scan(jCEnhancedForLoop.body);
                resolveContinues(jCEnhancedForLoop);
                if (Flow.this.log.nerrors != i11 || this.flowKind.isFinal() || new Bits(bits3).diffSet(this.uninits).nextBit(this.firstadr) == -1) {
                    break;
                }
                Bits bits4 = this.uninits;
                bits4.assign(bits3.andSet(bits4));
                this.flowKind = FlowKind.SPECULATIVE_LOOP;
            }
            this.flowKind = flowKind;
            this.inits.assign(bits);
            Bits bits5 = this.uninits;
            bits5.assign(bits2.andSet(bits5));
            resolveBreaks(jCEnhancedForLoop, abstractCollection);
            this.nextadr = i10;
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            if (jCIdent.sym.kind == Kinds.Kind.VAR) {
                checkInit(jCIdent.pos(), (Symbol.VarSymbol) jCIdent.sym);
                referenced(jCIdent.sym);
            }
        }

        @Override
        public void visitIf(JCTree.JCIf jCIf) {
            scanCond(jCIf.cond);
            Bits bits = new Bits(this.initsWhenFalse);
            Bits bits2 = new Bits(this.uninitsWhenFalse);
            this.inits.assign(this.initsWhenTrue);
            this.uninits.assign(this.uninitsWhenTrue);
            scan(jCIf.thenpart);
            if (jCIf.elsepart == null) {
                this.inits.andSet(bits);
                this.uninits.andSet(bits2);
                return;
            }
            Bits bits3 = new Bits(this.inits);
            Bits bits4 = new Bits(this.uninits);
            this.inits.assign(bits);
            this.uninits.assign(bits2);
            scan(jCIf.elsepart);
            this.inits.andSet(bits3);
            this.uninits.andSet(bits4);
        }

        @Override
        public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCLabeledStatement.body);
            resolveBreaks(jCLabeledStatement, abstractCollection);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            Bits bits = new Bits(this.uninits);
            Bits bits2 = new Bits(this.inits);
            int i10 = this.returnadr;
            int i11 = this.nextadr;
            ListBuffer<P> listBuffer = this.pendingExits;
            try {
                this.returnadr = i11;
                this.pendingExits = new ListBuffer<>();
                for (List list = jCLambda.params; list.nonEmpty(); list = list.tail) {
                    JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) list.head;
                    scan(jCVariableDecl);
                    this.inits.incl(jCVariableDecl.sym.adr);
                    this.uninits.excl(jCVariableDecl.sym.adr);
                }
                if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                    scanExpr(jCLambda.body);
                } else {
                    scan(jCLambda.body);
                }
                this.returnadr = i10;
                this.uninits.assign(bits);
                this.inits.assign(bits2);
                this.pendingExits = listBuffer;
                this.nextadr = i11;
            } catch (Throwable th2) {
                this.returnadr = i10;
                this.uninits.assign(bits);
                this.inits.assign(bits2);
                this.pendingExits = listBuffer;
                this.nextadr = i11;
                throw th2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            boolean z10;
            if (jCMethodDecl.body != null && (jCMethodDecl.sym.flags() & 4096) == 0) {
                Lint lint = Flow.this.lint;
                Flow flow = Flow.this;
                flow.lint = flow.lint.augment(jCMethodDecl.sym);
                try {
                    if (jCMethodDecl.body != null && (jCMethodDecl.sym.flags() & 562949953425408L) != 4096) {
                        Bits bits = new Bits(this.inits);
                        Bits bits2 = new Bits(this.uninits);
                        int i10 = this.nextadr;
                        int i11 = this.firstadr;
                        int i12 = this.returnadr;
                        Assert.check(this.pendingExits.isEmpty());
                        boolean z11 = this.isInitialConstructor;
                        try {
                            boolean isInitialConstructor = TreeInfo.isInitialConstructor(jCMethodDecl);
                            this.isInitialConstructor = isInitialConstructor;
                            if (!isInitialConstructor) {
                                this.firstadr = this.nextadr;
                            }
                            List list = jCMethodDecl.params;
                            while (true) {
                                if (!list.nonEmpty()) {
                                    break;
                                }
                                JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) list.head;
                                scan(jCVariableDecl);
                                if ((jCVariableDecl.sym.flags() & 8589934592L) != 0) {
                                    z10 = true;
                                }
                                Assert.check(z10, "Method parameter without PARAMETER flag");
                                initParam(jCVariableDecl);
                                list = list.tail;
                            }
                            scan(jCMethodDecl.body);
                            if (this.isInitialConstructor) {
                                z10 = (jCMethodDecl.sym.flags() & 68719476736L) != 0;
                                for (int i13 = this.firstadr; i13 < this.nextadr; i13++) {
                                    JCTree.JCVariableDecl jCVariableDecl2 = this.vardecls[i13];
                                    Symbol.VarSymbol varSymbol = jCVariableDecl2.sym;
                                    if (varSymbol.owner == this.classDef.sym) {
                                        if (z10) {
                                            checkInit(TreeInfo.diagnosticPositionFor(varSymbol, jCVariableDecl2), varSymbol, "var.not.initialized.in.default.constructor");
                                        } else {
                                            checkInit(TreeInfo.diagEndPos(jCMethodDecl.body), varSymbol);
                                        }
                                    }
                                }
                            }
                            List list2 = this.pendingExits.toList();
                            this.pendingExits = new ListBuffer<>();
                            while (list2.nonEmpty()) {
                                AssignPendingExit assignPendingExit = (AssignPendingExit) list2.head;
                                list2 = list2.tail;
                                Assert.check(assignPendingExit.tree.hasTag(JCTree.Tag.RETURN), assignPendingExit.tree);
                                if (this.isInitialConstructor) {
                                    this.inits.assign(assignPendingExit.exit_inits);
                                    for (int i14 = this.firstadr; i14 < this.nextadr; i14++) {
                                        checkInit(assignPendingExit.tree.pos(), this.vardecls[i14].sym);
                                    }
                                }
                            }
                            this.inits.assign(bits);
                            this.uninits.assign(bits2);
                            this.nextadr = i10;
                            this.firstadr = i11;
                            this.returnadr = i12;
                            this.isInitialConstructor = z11;
                        } catch (Throwable th2) {
                            this.inits.assign(bits);
                            this.uninits.assign(bits2);
                            this.nextadr = i10;
                            this.firstadr = i11;
                            this.returnadr = i12;
                            this.isInitialConstructor = z11;
                            throw th2;
                        }
                    }
                } finally {
                    Flow.this.lint = lint;
                }
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        }

        @Override
        public void visitNewArray(JCTree.JCNewArray jCNewArray) {
            scanExprs(jCNewArray.dims);
            scanExprs(jCNewArray.elems);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            scanExpr(jCNewClass.encl);
            scanExprs(jCNewClass.args);
            scan(jCNewClass.def);
        }

        @Override
        public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
            super.visitPackageDef(jCPackageDecl);
        }

        @Override
        public void visitReturn(JCTree.JCReturn jCReturn) {
            scanExpr(jCReturn.expr);
            recordExit(new AssignPendingExit(jCReturn, this.inits, this.uninits));
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            super.visitSelect(jCFieldAccess);
            JCTree.JCExpression skipParens = TreeInfo.skipParens(jCFieldAccess.selected);
            if (Flow.this.enforceThisDotInit && skipParens.hasTag(JCTree.Tag.IDENT) && ((JCTree.JCIdent) skipParens).name == Flow.this.names._this && jCFieldAccess.sym.kind == Kinds.Kind.VAR) {
                checkInit(jCFieldAccess.pos(), (Symbol.VarSymbol) jCFieldAccess.sym);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitSwitch(JCTree.JCSwitch jCSwitch) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            int i10 = this.nextadr;
            scanExpr(jCSwitch.selector);
            Bits bits = new Bits(this.inits);
            Bits bits2 = new Bits(this.uninits);
            boolean z10 = false;
            for (List list = jCSwitch.cases; list.nonEmpty(); list = list.tail) {
                this.inits.assign(bits);
                Bits bits3 = this.uninits;
                bits3.assign(bits3.andSet(bits2));
                JCTree.JCCase jCCase = (JCTree.JCCase) list.head;
                JCTree.JCExpression jCExpression = jCCase.pat;
                if (jCExpression == null) {
                    z10 = true;
                } else {
                    scanExpr(jCExpression);
                }
                if (z10) {
                    this.inits.assign(bits);
                    Bits bits4 = this.uninits;
                    bits4.assign(bits4.andSet(bits2));
                }
                scan(jCCase.stats);
                addVars(jCCase.stats, bits, bits2);
                if (!z10) {
                    this.inits.assign(bits);
                    Bits bits5 = this.uninits;
                    bits5.assign(bits5.andSet(bits2));
                }
            }
            if (!z10) {
                this.inits.andSet(bits);
            }
            resolveBreaks(jCSwitch, abstractCollection);
            this.nextadr = i10;
        }

        @Override
        public void visitThrow(JCTree.JCThrow jCThrow) {
            scanExpr(jCThrow.expr);
            markDead();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitTry(JCTree.JCTry jCTry) {
            ListBuffer listBuffer = new ListBuffer();
            Bits bits = new Bits(this.uninitsTry);
            ListBuffer<P> listBuffer2 = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            Bits bits2 = new Bits(this.inits);
            this.uninitsTry.assign(this.uninits);
            Iterator<JCTree> it = jCTry.resources.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next instanceof JCTree.JCVariableDecl) {
                    JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) next;
                    visitVarDef(jCVariableDecl);
                    this.unrefdResources.enter(jCVariableDecl.sym);
                    listBuffer.append(jCVariableDecl);
                } else {
                    if (!(next instanceof JCTree.JCExpression)) {
                        throw new AssertionError(jCTry);
                    }
                    scanExpr((JCTree.JCExpression) next);
                }
            }
            scan(jCTry.body);
            this.uninitsTry.andSet(this.uninits);
            Bits bits3 = new Bits(this.inits);
            Bits bits4 = new Bits(this.uninits);
            int i10 = this.nextadr;
            if (!listBuffer.isEmpty() && Flow.this.lint.isEnabled(Lint.LintCategory.TRY)) {
                Iterator it2 = listBuffer.iterator();
                while (it2.hasNext()) {
                    JCTree.JCVariableDecl jCVariableDecl2 = (JCTree.JCVariableDecl) it2.next();
                    if (this.unrefdResources.includes(jCVariableDecl2.sym)) {
                        Flow.this.log.warning(Lint.LintCategory.TRY, jCVariableDecl2.pos(), "try.resource.not.referenced", jCVariableDecl2.sym);
                        this.unrefdResources.remove(jCVariableDecl2.sym);
                    }
                }
            }
            Bits bits5 = new Bits(bits2);
            Bits bits6 = new Bits(this.uninitsTry);
            for (List list = jCTry.catchers; list.nonEmpty(); list = list.tail) {
                JCTree.JCVariableDecl jCVariableDecl3 = ((JCTree.JCCatch) list.head).param;
                this.inits.assign(bits5);
                this.uninits.assign(bits6);
                scan(jCVariableDecl3);
                initParam(jCVariableDecl3);
                scan(((JCTree.JCCatch) list.head).body);
                bits3.andSet(this.inits);
                bits4.andSet(this.uninits);
                this.nextadr = i10;
            }
            if (jCTry.finalizer != null) {
                this.inits.assign(bits2);
                this.uninits.assign(this.uninitsTry);
                ListBuffer<P> listBuffer3 = this.pendingExits;
                this.pendingExits = listBuffer2;
                scan(jCTry.finalizer);
                if (jCTry.finallyCanCompleteNormally) {
                    this.uninits.andSet(bits4);
                    while (listBuffer3.nonEmpty()) {
                        AssignPendingExit assignPendingExit = (AssignPendingExit) listBuffer3.next();
                        Bits bits7 = assignPendingExit.exit_inits;
                        if (bits7 != null) {
                            bits7.orSet(this.inits);
                            assignPendingExit.exit_uninits.andSet(this.uninits);
                        }
                        this.pendingExits.append(assignPendingExit);
                    }
                    this.inits.orSet(bits3);
                }
            } else {
                this.inits.assign(bits3);
                this.uninits.assign(bits4);
                ListBuffer<P> listBuffer4 = this.pendingExits;
                this.pendingExits = listBuffer2;
                while (listBuffer4.nonEmpty()) {
                    this.pendingExits.append(listBuffer4.next());
                }
            }
            this.uninitsTry.andSet(bits).andSet(this.uninits);
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCUnary.getTag().ordinal()];
            if (i10 == 1) {
                scanCond(jCUnary.arg);
                Bits bits = new Bits(this.initsWhenFalse);
                this.initsWhenFalse.assign(this.initsWhenTrue);
                this.initsWhenTrue.assign(bits);
                bits.assign(this.uninitsWhenFalse);
                this.uninitsWhenFalse.assign(this.uninitsWhenTrue);
                this.uninitsWhenTrue.assign(bits);
                return;
            }
            if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
                scanExpr(jCUnary.arg);
            } else {
                scanExpr(jCUnary.arg);
                letInit(jCUnary.arg);
            }
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            Lint lint = Flow.this.lint;
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCVariableDecl.sym);
            try {
                boolean trackable = trackable(jCVariableDecl.sym);
                if (trackable && jCVariableDecl.sym.owner.kind == Kinds.Kind.MTH) {
                    newVar(jCVariableDecl);
                }
                JCTree.JCExpression jCExpression = jCVariableDecl.init;
                if (jCExpression != null) {
                    scanExpr(jCExpression);
                    if (trackable) {
                        letInit(jCVariableDecl.pos(), jCVariableDecl.sym);
                    }
                }
                Flow.this.lint = lint;
            } catch (Throwable th2) {
                Flow.this.lint = lint;
                throw th2;
            }
        }

        @Override
        public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            FlowKind flowKind = this.flowKind;
            this.flowKind = FlowKind.NORMAL;
            Bits bits = new Bits(true);
            Bits bits2 = new Bits(true);
            this.pendingExits = new ListBuffer<>();
            int i10 = Flow.this.log.nerrors;
            Bits bits3 = new Bits(this.uninits);
            bits3.excludeFrom(this.nextadr);
            while (true) {
                scanCond(jCWhileLoop.cond);
                if (!this.flowKind.isFinal()) {
                    bits.assign(this.initsWhenFalse);
                    bits2.assign(this.uninitsWhenFalse);
                }
                this.inits.assign(this.initsWhenTrue);
                this.uninits.assign(this.uninitsWhenTrue);
                scan(jCWhileLoop.body);
                resolveContinues(jCWhileLoop);
                if (Flow.this.log.nerrors != i10 || this.flowKind.isFinal() || new Bits(bits3).diffSet(this.uninits).nextBit(this.firstadr) == -1) {
                    break;
                }
                Bits bits4 = this.uninits;
                bits4.assign(bits3.andSet(bits4));
                this.flowKind = FlowKind.SPECULATIVE_LOOP;
            }
            this.flowKind = flowKind;
            this.inits.assign(bits);
            this.uninits.assign(bits2);
            resolveBreaks(jCWhileLoop, abstractCollection);
        }

        public void analyzeTree(Env<?> env, JCTree jCTree) {
            try {
                this.startPos = jCTree.pos().getStartPosition();
                if (this.vardecls != null) {
                    int i10 = 0;
                    while (true) {
                        JCTree.JCVariableDecl[] jCVariableDeclArr = this.vardecls;
                        if (i10 >= jCVariableDeclArr.length) {
                            break;
                        }
                        jCVariableDeclArr[i10] = null;
                        i10++;
                    }
                } else {
                    this.vardecls = new JCTree.JCVariableDecl[32];
                }
                this.firstadr = 0;
                this.nextadr = 0;
                this.pendingExits = new ListBuffer<>();
                this.classDef = null;
                this.unrefdResources = Scope.WriteableScope.create(env.enclClass.sym);
                scan(jCTree);
                this.startPos = -1;
                resetBits(this.inits, this.uninits, this.uninitsTry, this.initsWhenTrue, this.initsWhenFalse, this.uninitsWhenTrue, this.uninitsWhenFalse);
                if (this.vardecls != null) {
                    int i11 = 0;
                    while (true) {
                        JCTree.JCVariableDecl[] jCVariableDeclArr2 = this.vardecls;
                        if (i11 >= jCVariableDeclArr2.length) {
                            break;
                        }
                        jCVariableDeclArr2[i11] = null;
                        i11++;
                    }
                }
                this.firstadr = 0;
                this.nextadr = 0;
                this.pendingExits = null;
                this.classDef = null;
                this.unrefdResources = null;
            } catch (Throwable th2) {
                this.startPos = -1;
                resetBits(this.inits, this.uninits, this.uninitsTry, this.initsWhenTrue, this.initsWhenFalse, this.uninitsWhenTrue, this.uninitsWhenFalse);
                if (this.vardecls != null) {
                    int i12 = 0;
                    while (true) {
                        JCTree.JCVariableDecl[] jCVariableDeclArr3 = this.vardecls;
                        if (i12 >= jCVariableDeclArr3.length) {
                            break;
                        }
                        jCVariableDeclArr3[i12] = null;
                        i12++;
                    }
                }
                this.firstadr = 0;
                this.nextadr = 0;
                this.pendingExits = null;
                this.classDef = null;
                this.unrefdResources = null;
                throw th2;
            }
        }

        public void checkInit(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol, String str) {
            if ((varSymbol.adr >= this.firstadr || varSymbol.owner.kind != Kinds.Kind.TYP) && trackable(varSymbol) && !this.inits.isMember(varSymbol.adr)) {
                Flow.this.log.error(diagnosticPosition, str, varSymbol);
                this.inits.incl(varSymbol.adr);
            }
        }

        public void letInit(JCTree jCTree) {
            JCTree skipParens = TreeInfo.skipParens(jCTree);
            if (skipParens.hasTag(JCTree.Tag.IDENT) || skipParens.hasTag(JCTree.Tag.SELECT)) {
                Symbol symbol = TreeInfo.symbol(skipParens);
                if (symbol.kind == Kinds.Kind.VAR) {
                    letInit(skipParens.pos(), (Symbol.VarSymbol) symbol);
                }
            }
        }
    }

    public static abstract class BaseAnalyzer<P extends PendingExit> extends TreeScanner {
        ListBuffer<P> pendingExits;

        public enum JumpKind {
            BREAK(JCTree.Tag.BREAK) {
                @Override
                public JCTree getTarget(JCTree jCTree) {
                    return ((JCTree.JCBreak) jCTree).target;
                }
            },
            CONTINUE(JCTree.Tag.CONTINUE) {
                @Override
                public JCTree getTarget(JCTree jCTree) {
                    return ((JCTree.JCContinue) jCTree).target;
                }
            };

            final JCTree.Tag treeTag;

            JumpKind(JCTree.Tag tag, AnonymousClass1 anonymousClass1) {
                this(tag);
            }

            public abstract JCTree getTarget(JCTree jCTree);

            JumpKind(JCTree.Tag tag) {
                this.treeTag = tag;
            }
        }

        public static class PendingExit {
            JCTree tree;

            public PendingExit(JCTree jCTree) {
                this.tree = jCTree;
            }

            public void resolveJump() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private boolean resolveJump(JCTree jCTree, ListBuffer<P> listBuffer, JumpKind jumpKind) {
            this.pendingExits = listBuffer;
            boolean z10 = false;
            for (List list = this.pendingExits.toList(); list.nonEmpty(); list = list.tail) {
                PendingExit pendingExit = (PendingExit) list.head;
                if (pendingExit.tree.hasTag(jumpKind.treeTag) && jumpKind.getTarget(pendingExit.tree) == jCTree) {
                    pendingExit.resolveJump();
                    z10 = true;
                } else {
                    this.pendingExits.append(pendingExit);
                }
            }
            return z10;
        }

        public abstract void markDead();

        public void recordExit(P p10) {
            this.pendingExits.append(p10);
            markDead();
        }

        public boolean resolveBreaks(JCTree jCTree, ListBuffer<P> listBuffer) {
            return resolveJump(jCTree, listBuffer, JumpKind.BREAK);
        }

        public boolean resolveContinues(JCTree jCTree) {
            return resolveJump(jCTree, new ListBuffer<>(), JumpKind.CONTINUE);
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree != null) {
                Type type = jCTree.type;
                if (type == null || type != Type.stuckType) {
                    super.scan(jCTree);
                }
            }
        }

        @Override
        public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
        }
    }

    public class CaptureAnalyzer extends BaseAnalyzer<BaseAnalyzer.PendingExit> {
        JCTree currentTree;

        public CaptureAnalyzer() {
        }

        public void analyzeTree(Env<AttrContext> env, TreeMaker treeMaker) {
            analyzeTree(env, env.tree, treeMaker);
        }

        public void checkEffectivelyFinal(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol) {
            JCTree jCTree = this.currentTree;
            if (jCTree == null || varSymbol.owner.kind != Kinds.Kind.MTH || varSymbol.pos >= jCTree.getStartPosition()) {
                return;
            }
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[this.currentTree.getTag().ordinal()];
            if (i10 != 8) {
                if (i10 != 9) {
                    return;
                }
            } else if (!Flow.this.allowEffectivelyFinalInInnerClasses) {
                if ((varSymbol.flags() & 16) == 0) {
                    reportInnerClsNeedsFinalError(diagnosticPosition, varSymbol);
                    return;
                }
                return;
            }
            if ((varSymbol.flags() & 2199023255568L) == 0) {
                reportEffectivelyFinalError(diagnosticPosition, varSymbol);
            }
        }

        public void letInit(JCTree jCTree) {
            JCTree skipParens = TreeInfo.skipParens(jCTree);
            if (skipParens.hasTag(JCTree.Tag.IDENT) || skipParens.hasTag(JCTree.Tag.SELECT)) {
                Symbol symbol = TreeInfo.symbol(skipParens);
                JCTree jCTree2 = this.currentTree;
                if (jCTree2 == null || symbol.kind != Kinds.Kind.VAR || symbol.owner.kind != Kinds.Kind.MTH || ((Symbol.VarSymbol) symbol).pos >= jCTree2.getStartPosition()) {
                    return;
                }
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[this.currentTree.getTag().ordinal()];
                if (i10 != 8) {
                    if (i10 != 9) {
                        return;
                    }
                } else if (!Flow.this.allowEffectivelyFinalInInnerClasses) {
                    reportInnerClsNeedsFinalError(skipParens, symbol);
                    return;
                }
                reportEffectivelyFinalError(skipParens, symbol);
            }
        }

        @Override
        public void markDead() {
        }

        public void reportEffectivelyFinalError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
            Flow.this.log.error(diagnosticPosition, "cant.ref.non.effectively.final.var", symbol, Flow.this.diags.fragment(this.currentTree.hasTag(JCTree.Tag.LAMBDA) ? "lambda" : "inner.cls", new Object[0]));
        }

        public void reportInnerClsNeedsFinalError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
            Flow.this.log.error(diagnosticPosition, "local.var.accessed.from.icls.needs.final", symbol);
        }

        @Override
        public void visitAssign(JCTree.JCAssign jCAssign) {
            JCTree.JCExpression skipParens = TreeInfo.skipParens(jCAssign.lhs);
            if (!(skipParens instanceof JCTree.JCIdent)) {
                scan(skipParens);
            }
            scan(jCAssign.rhs);
            letInit(skipParens);
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            scan(jCAssignOp.lhs);
            scan(jCAssignOp.rhs);
            letInit(jCAssignOp.lhs);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            JCTree jCTree = this.currentTree;
            try {
                this.currentTree = jCClassDecl.sym.isLocal() ? jCClassDecl : null;
                super.visitClassDef(jCClassDecl);
            } finally {
                this.currentTree = jCTree;
            }
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            Symbol symbol = jCIdent.sym;
            if (symbol.kind == Kinds.Kind.VAR) {
                checkEffectivelyFinal(jCIdent, (Symbol.VarSymbol) symbol);
            }
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            JCTree jCTree = this.currentTree;
            try {
                this.currentTree = jCLambda;
                super.visitLambda(jCLambda);
            } finally {
                this.currentTree = jCTree;
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        }

        @Override
        public void visitTry(JCTree.JCTry jCTry) {
            Symbol symbol;
            Iterator<JCTree> it = jCTry.resources.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (!next.hasTag(JCTree.Tag.VARDEF) && (symbol = TreeInfo.symbol(next)) != null && (symbol.flags() & 2199023255568L) == 0) {
                    Flow.this.log.error(next.pos(), "try.with.resources.expr.effectively.final.var", symbol);
                }
            }
            super.visitTry(jCTry);
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCUnary.getTag().ordinal()];
            if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
                scan(jCUnary.arg);
            } else {
                scan(jCUnary.arg);
                letInit(jCUnary.arg);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void analyzeTree(Env<AttrContext> env, JCTree jCTree, TreeMaker treeMaker) {
            try {
                Flow.this.attrEnv = env;
                Flow.this.make = treeMaker;
                this.pendingExits = new ListBuffer<>();
                scan(jCTree);
            } finally {
                this.pendingExits = null;
                Flow.this.make = null;
            }
        }
    }

    public class FlowAnalyzer extends BaseAnalyzer<FlowPendingExit> {
        List<Type> caught;
        JCTree.JCClassDecl classDef;
        HashMap<Symbol, List<Type>> preciseRethrowTypes;
        List<Type> thrown;

        public class FlowPendingExit extends BaseAnalyzer.PendingExit {
            Type thrown;

            public FlowPendingExit(JCTree jCTree, Type type) {
                super(jCTree);
                this.thrown = type;
            }
        }

        public FlowAnalyzer() {
        }

        private boolean isExceptionOrThrowable(Type type) {
            return type.tsym == Flow.this.syms.throwableType.tsym || type.tsym == Flow.this.syms.exceptionType.tsym;
        }

        public void analyzeTree(Env<AttrContext> env, TreeMaker treeMaker) {
            analyzeTree(env, env.tree, treeMaker);
        }

        public void checkCaughtType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, List<Type> list, List<Type> list2) {
            if (Flow.this.chk.subset(type, list2)) {
                Flow.this.log.error(diagnosticPosition, "except.already.caught", type);
                return;
            }
            if (!Flow.this.chk.isUnchecked(diagnosticPosition, type) && !isExceptionOrThrowable(type) && !Flow.this.chk.intersects(type, list)) {
                Flow.this.log.error(diagnosticPosition, "except.never.thrown.in.try", type);
                return;
            }
            if (Flow.this.allowImprovedCatchAnalysis) {
                List<Type> intersect = Flow.this.chk.intersect(List.of(type), list);
                if (!Flow.this.chk.diff(intersect, list2).isEmpty() || isExceptionOrThrowable(type)) {
                    return;
                }
                Flow.this.log.warning(diagnosticPosition, intersect.length() == 1 ? "unreachable.catch" : "unreachable.catch.1", intersect);
            }
        }

        public void errorUncaught() {
            FlowPendingExit flowPendingExit = (FlowPendingExit) this.pendingExits.next();
            while (flowPendingExit != null) {
                JCTree.JCClassDecl jCClassDecl = this.classDef;
                if (jCClassDecl != null && jCClassDecl.pos == flowPendingExit.tree.pos) {
                    Flow.this.log.error(flowPendingExit.tree.pos(), "unreported.exception.default.constructor", flowPendingExit.thrown);
                } else if (flowPendingExit.tree.hasTag(JCTree.Tag.VARDEF) && ((JCTree.JCVariableDecl) flowPendingExit.tree).sym.isResourceVariable()) {
                    Flow.this.log.error(flowPendingExit.tree.pos(), "unreported.exception.implicit.close", flowPendingExit.thrown, ((JCTree.JCVariableDecl) flowPendingExit.tree).sym.name);
                } else {
                    Flow.this.log.error(flowPendingExit.tree.pos(), "unreported.exception.need.to.catch.or.throw", flowPendingExit.thrown);
                }
                flowPendingExit = (FlowPendingExit) this.pendingExits.next();
            }
        }

        @Override
        public void markDead() {
        }

        public void markThrown(JCTree jCTree, Type type) {
            if (Flow.this.chk.isUnchecked(jCTree.pos(), type)) {
                return;
            }
            if (!Flow.this.chk.isHandled(type, this.caught)) {
                this.pendingExits.append(new FlowPendingExit(jCTree, type));
            }
            this.thrown = Flow.this.chk.incl(type, this.thrown);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            scan(jCMethodInvocation.meth);
            scan(jCMethodInvocation.args);
            for (List thrownTypes = jCMethodInvocation.meth.type.getThrownTypes(); thrownTypes.nonEmpty(); thrownTypes = thrownTypes.tail) {
                markThrown(jCMethodInvocation, (Type) thrownTypes.head);
            }
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            scan(jCBlock.stats);
        }

        @Override
        public void visitBreak(JCTree.JCBreak jCBreak) {
            recordExit(new FlowPendingExit(jCBreak, null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (jCClassDecl.sym == null) {
                return;
            }
            JCTree.JCClassDecl jCClassDecl2 = this.classDef;
            List<Type> list = this.thrown;
            List<Type> list2 = this.caught;
            ListBuffer<P> listBuffer = this.pendingExits;
            Lint lint = Flow.this.lint;
            boolean z10 = true;
            boolean z11 = jCClassDecl.name == Flow.this.names.empty;
            this.pendingExits = new ListBuffer<>();
            if (!z11) {
                this.caught = List.nil();
            }
            this.classDef = jCClassDecl;
            this.thrown = List.nil();
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCClassDecl.sym);
            try {
                for (List list3 = jCClassDecl.defs; list3.nonEmpty(); list3 = list3.tail) {
                    if (!((JCTree) list3.head).hasTag(JCTree.Tag.METHODDEF) && (TreeInfo.flags((JCTree) list3.head) & 8) != 0) {
                        scan((JCTree) list3.head);
                        errorUncaught();
                    }
                }
                if (!z11) {
                    for (List list4 = jCClassDecl.defs; list4.nonEmpty(); list4 = list4.tail) {
                        if (TreeInfo.isInitialConstructor((JCTree) list4.head)) {
                            List<Type> thrownTypes = ((JCTree.JCMethodDecl) list4.head).sym.type.getThrownTypes();
                            if (z10) {
                                this.caught = thrownTypes;
                                z10 = false;
                            } else {
                                this.caught = Flow.this.chk.intersect(thrownTypes, this.caught);
                            }
                        }
                    }
                }
                for (List list5 = jCClassDecl.defs; list5.nonEmpty(); list5 = list5.tail) {
                    if (!((JCTree) list5.head).hasTag(JCTree.Tag.METHODDEF) && (TreeInfo.flags((JCTree) list5.head) & 8) == 0) {
                        scan((JCTree) list5.head);
                        errorUncaught();
                    }
                }
                if (z11) {
                    for (List list6 = jCClassDecl.defs; list6.nonEmpty(); list6 = list6.tail) {
                        if (TreeInfo.isConstructor((JCTree) list6.head)) {
                            JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) list6.head;
                            scan(jCMethodDecl);
                            jCMethodDecl.thrown = Flow.this.make.Types(this.thrown);
                            jCMethodDecl.sym.type = Flow.this.types.createMethodTypeWithThrown(jCMethodDecl.sym.type, this.thrown);
                        }
                    }
                    list = Flow.this.chk.union(this.thrown, list);
                }
                for (List list7 = jCClassDecl.defs; list7.nonEmpty(); list7 = list7.tail) {
                    if ((!z11 || !TreeInfo.isConstructor((JCTree) list7.head)) && ((JCTree) list7.head).hasTag(JCTree.Tag.METHODDEF)) {
                        scan((JCTree) list7.head);
                        errorUncaught();
                    }
                }
                this.thrown = list;
                this.pendingExits = listBuffer;
                this.caught = list2;
                this.classDef = jCClassDecl2;
                Flow.this.lint = lint;
            } catch (Throwable th2) {
                this.pendingExits = listBuffer;
                this.caught = list2;
                this.classDef = jCClassDecl2;
                Flow.this.lint = lint;
                throw th2;
            }
        }

        @Override
        public void visitContinue(JCTree.JCContinue jCContinue) {
            recordExit(new FlowPendingExit(jCContinue, null));
        }

        @Override
        public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCDoWhileLoop.body);
            resolveContinues(jCDoWhileLoop);
            scan(jCDoWhileLoop.cond);
            resolveBreaks(jCDoWhileLoop, abstractCollection);
        }

        @Override
        public void visitForLoop(JCTree.JCForLoop jCForLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            scan(jCForLoop.init);
            this.pendingExits = new ListBuffer<>();
            JCTree.JCExpression jCExpression = jCForLoop.cond;
            if (jCExpression != null) {
                scan(jCExpression);
            }
            scan(jCForLoop.body);
            resolveContinues(jCForLoop);
            scan(jCForLoop.step);
            resolveBreaks(jCForLoop, abstractCollection);
        }

        @Override
        public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
            visitVarDef(jCEnhancedForLoop.var);
            AbstractCollection abstractCollection = this.pendingExits;
            scan(jCEnhancedForLoop.expr);
            this.pendingExits = new ListBuffer<>();
            scan(jCEnhancedForLoop.body);
            resolveContinues(jCEnhancedForLoop);
            resolveBreaks(jCEnhancedForLoop, abstractCollection);
        }

        @Override
        public void visitIf(JCTree.JCIf jCIf) {
            scan(jCIf.cond);
            scan(jCIf.thenpart);
            JCTree.JCStatement jCStatement = jCIf.elsepart;
            if (jCStatement != null) {
                scan(jCStatement);
            }
        }

        @Override
        public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCLabeledStatement.body);
            resolveBreaks(jCLabeledStatement, abstractCollection);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            Type type = jCLambda.type;
            if (type == null || !type.isErroneous()) {
                List<Type> list = this.caught;
                List<Type> list2 = this.thrown;
                ListBuffer<P> listBuffer = this.pendingExits;
                try {
                    this.pendingExits = new ListBuffer<>();
                    this.caught = jCLambda.getDescriptorType(Flow.this.types).getThrownTypes();
                    this.thrown = List.nil();
                    scan(jCLambda.body);
                    List list3 = this.pendingExits.toList();
                    this.pendingExits = new ListBuffer<>();
                    while (list3.nonEmpty()) {
                        FlowPendingExit flowPendingExit = (FlowPendingExit) list3.head;
                        list3 = list3.tail;
                        if (flowPendingExit.thrown == null) {
                            Assert.check(flowPendingExit.tree.hasTag(JCTree.Tag.RETURN));
                        } else {
                            this.pendingExits.append(flowPendingExit);
                        }
                    }
                    errorUncaught();
                    this.pendingExits = listBuffer;
                    this.caught = list;
                    this.thrown = list2;
                } catch (Throwable th2) {
                    this.pendingExits = listBuffer;
                    this.caught = list;
                    this.thrown = list2;
                    throw th2;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            if (jCMethodDecl.body == null) {
                return;
            }
            List<Type> list = this.caught;
            List<Type> thrownTypes = jCMethodDecl.sym.type.getThrownTypes();
            Lint lint = Flow.this.lint;
            Flow flow = Flow.this;
            flow.lint = flow.lint.augment(jCMethodDecl.sym);
            Assert.check(this.pendingExits.isEmpty());
            try {
                for (List list2 = jCMethodDecl.params; list2.nonEmpty(); list2 = list2.tail) {
                    scan((JCTree.JCVariableDecl) list2.head);
                }
                if (TreeInfo.isInitialConstructor(jCMethodDecl)) {
                    this.caught = Flow.this.chk.union(this.caught, thrownTypes);
                } else if ((jCMethodDecl.sym.flags() & 1048584) != TagBits.HasNullTypeAnnotation) {
                    this.caught = thrownTypes;
                }
                scan(jCMethodDecl.body);
                List list3 = this.pendingExits.toList();
                this.pendingExits = new ListBuffer<>();
                while (list3.nonEmpty()) {
                    FlowPendingExit flowPendingExit = (FlowPendingExit) list3.head;
                    list3 = list3.tail;
                    if (flowPendingExit.thrown == null) {
                        Assert.check(flowPendingExit.tree.hasTag(JCTree.Tag.RETURN));
                    } else {
                        this.pendingExits.append(flowPendingExit);
                    }
                }
                this.caught = list;
                Flow.this.lint = lint;
            } catch (Throwable th2) {
                this.caught = list;
                Flow.this.lint = lint;
                throw th2;
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            scan(jCNewClass.encl);
            scan(jCNewClass.args);
            for (List thrownTypes = jCNewClass.constructorType.getThrownTypes(); thrownTypes.nonEmpty(); thrownTypes = thrownTypes.tail) {
                markThrown(jCNewClass, (Type) thrownTypes.head);
            }
            List<Type> list = this.caught;
            try {
                if (jCNewClass.def != null) {
                    for (List thrownTypes2 = jCNewClass.constructor.type.getThrownTypes(); thrownTypes2.nonEmpty(); thrownTypes2 = thrownTypes2.tail) {
                        this.caught = Flow.this.chk.incl((Type) thrownTypes2.head, this.caught);
                    }
                }
                scan(jCNewClass.def);
                this.caught = list;
            } catch (Throwable th2) {
                this.caught = list;
                throw th2;
            }
        }

        @Override
        public void visitReturn(JCTree.JCReturn jCReturn) {
            scan(jCReturn.expr);
            recordExit(new FlowPendingExit(jCReturn, null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitSwitch(JCTree.JCSwitch jCSwitch) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCSwitch.selector);
            for (List list = jCSwitch.cases; list.nonEmpty(); list = list.tail) {
                JCTree.JCCase jCCase = (JCTree.JCCase) list.head;
                JCTree.JCExpression jCExpression = jCCase.pat;
                if (jCExpression != null) {
                    scan(jCExpression);
                }
                scan(jCCase.stats);
            }
            resolveBreaks(jCSwitch, abstractCollection);
        }

        @Override
        public void visitThrow(JCTree.JCThrow jCThrow) {
            scan(jCThrow.expr);
            Symbol symbol = TreeInfo.symbol(jCThrow.expr);
            if (symbol == null || symbol.kind != Kinds.Kind.VAR || (symbol.flags() & 2199023255568L) == 0 || this.preciseRethrowTypes.get(symbol) == null || !Flow.this.allowImprovedRethrowAnalysis) {
                markThrown(jCThrow, jCThrow.expr.type);
            } else {
                Iterator<Type> it = this.preciseRethrowTypes.get(symbol).iterator();
                while (it.hasNext()) {
                    markThrown(jCThrow, it.next());
                }
            }
            markDead();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitTry(JCTree.JCTry jCTry) {
            List<Type> list = this.caught;
            List<Type> list2 = this.thrown;
            this.thrown = List.nil();
            for (List list3 = jCTry.catchers; list3.nonEmpty(); list3 = list3.tail) {
                Iterator<JCTree.JCExpression> it = (TreeInfo.isMultiCatch((JCTree.JCCatch) list3.head) ? ((JCTree.JCTypeUnion) ((JCTree.JCCatch) list3.head).param.vartype).alternatives : List.of(((JCTree.JCCatch) list3.head).param.vartype)).iterator();
                while (it.hasNext()) {
                    this.caught = Flow.this.chk.incl(it.next().type, this.caught);
                }
            }
            ListBuffer<P> listBuffer = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            Iterator<JCTree> it2 = jCTry.resources.iterator();
            while (it2.hasNext()) {
                JCTree next = it2.next();
                if (next instanceof JCTree.JCVariableDecl) {
                    visitVarDef((JCTree.JCVariableDecl) next);
                } else {
                    if (!(next instanceof JCTree.JCExpression)) {
                        throw new AssertionError(jCTry);
                    }
                    scan((JCTree.JCExpression) next);
                }
            }
            Iterator<JCTree> it3 = jCTry.resources.iterator();
            while (it3.hasNext()) {
                JCTree next2 = it3.next();
                Iterator<Type> it4 = (next2.type.isCompound() ? Flow.this.types.interfaces(next2.type).prepend(Flow.this.types.supertype(next2.type)) : List.of(next2.type)).iterator();
                while (it4.hasNext()) {
                    Type next3 = it4.next();
                    if (Flow.this.types.asSuper(next3, Flow.this.syms.autoCloseableType.tsym) != null) {
                        Symbol resolveQualifiedMethod = Flow.this.rs.resolveQualifiedMethod(jCTry, Flow.this.attrEnv, Flow.this.types.skipTypeVars(next3, false), Flow.this.names.close, List.nil(), List.nil());
                        Type memberType = Flow.this.types.memberType(next2.type, resolveQualifiedMethod);
                        if (resolveQualifiedMethod.kind == Kinds.Kind.MTH) {
                            Iterator<Type> it5 = memberType.getThrownTypes().iterator();
                            while (it5.hasNext()) {
                                markThrown(next2, it5.next());
                            }
                        }
                    }
                }
            }
            scan(jCTry.body);
            List<Type> union = Flow.this.allowImprovedCatchAnalysis ? Flow.this.chk.union(this.thrown, List.of(Flow.this.syms.runtimeExceptionType, Flow.this.syms.errorType)) : this.thrown;
            this.thrown = list2;
            this.caught = list;
            List<Type> nil = List.nil();
            for (List list4 = jCTry.catchers; list4.nonEmpty(); list4 = list4.tail) {
                A a10 = list4.head;
                JCTree.JCVariableDecl jCVariableDecl = ((JCTree.JCCatch) a10).param;
                List<JCTree.JCExpression> of2 = TreeInfo.isMultiCatch((JCTree.JCCatch) a10) ? ((JCTree.JCTypeUnion) ((JCTree.JCCatch) list4.head).param.vartype).alternatives : List.of(((JCTree.JCCatch) list4.head).param.vartype);
                List<Type> nil2 = List.nil();
                List<Type> diff = Flow.this.chk.diff(union, nil);
                Iterator<JCTree.JCExpression> it6 = of2.iterator();
                while (it6.hasNext()) {
                    Type type = it6.next().type;
                    if (type != Flow.this.syms.unknownType) {
                        nil2 = nil2.append(type);
                        if (!Flow.this.types.isSameType(type, Flow.this.syms.objectType)) {
                            checkCaughtType(((JCTree.JCCatch) list4.head).pos(), type, union, nil);
                            nil = Flow.this.chk.incl(type, nil);
                        }
                    }
                }
                scan(jCVariableDecl);
                this.preciseRethrowTypes.put(jCVariableDecl.sym, Flow.this.chk.intersect(nil2, diff));
                scan(((JCTree.JCCatch) list4.head).body);
                this.preciseRethrowTypes.remove(jCVariableDecl.sym);
            }
            if (jCTry.finalizer == null) {
                this.thrown = Flow.this.chk.union(this.thrown, Flow.this.chk.diff(union, nil));
                ListBuffer<P> listBuffer2 = this.pendingExits;
                this.pendingExits = listBuffer;
                while (listBuffer2.nonEmpty()) {
                    this.pendingExits.append(listBuffer2.next());
                }
                return;
            }
            List<Type> list5 = this.thrown;
            this.thrown = List.nil();
            ListBuffer<P> listBuffer3 = this.pendingExits;
            this.pendingExits = listBuffer;
            scan(jCTry.finalizer);
            if (!jCTry.finallyCanCompleteNormally) {
                this.thrown = Flow.this.chk.union(this.thrown, list2);
                return;
            }
            this.thrown = Flow.this.chk.union(this.thrown, Flow.this.chk.diff(union, nil));
            this.thrown = Flow.this.chk.union(this.thrown, list5);
            while (listBuffer3.nonEmpty()) {
                this.pendingExits.append(listBuffer3.next());
            }
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if (jCVariableDecl.init != null) {
                Lint lint = Flow.this.lint;
                Flow flow = Flow.this;
                flow.lint = flow.lint.augment(jCVariableDecl.sym);
                try {
                    scan(jCVariableDecl.init);
                } finally {
                    Flow.this.lint = lint;
                }
            }
        }

        @Override
        public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
            AbstractCollection abstractCollection = this.pendingExits;
            this.pendingExits = new ListBuffer<>();
            scan(jCWhileLoop.cond);
            scan(jCWhileLoop.body);
            resolveContinues(jCWhileLoop);
            resolveBreaks(jCWhileLoop, abstractCollection);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void analyzeTree(Env<AttrContext> env, JCTree jCTree, TreeMaker treeMaker) {
            try {
                Flow.this.attrEnv = env;
                Flow.this.make = treeMaker;
                this.pendingExits = new ListBuffer<>();
                this.preciseRethrowTypes = new HashMap<>();
                this.caught = null;
                this.thrown = null;
                this.classDef = null;
                scan(jCTree);
            } finally {
                this.pendingExits = null;
                Flow.this.make = null;
                this.caught = null;
                this.thrown = null;
                this.classDef = null;
            }
        }
    }

    public enum FlowKind {
        NORMAL("var.might.already.be.assigned", false),
        SPECULATIVE_LOOP("var.might.be.assigned.in.loop", true);

        final String errKey;
        final boolean isFinal;

        FlowKind(String str, boolean z10) {
            this.errKey = str;
            this.isFinal = z10;
        }

        public boolean isFinal() {
            return this.isFinal;
        }
    }

    public class LambdaAliveAnalyzer extends AliveAnalyzer {
        boolean inLambda;

        public LambdaAliveAnalyzer() {
            super();
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            if (this.inLambda || jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                return;
            }
            this.inLambda = true;
            try {
                super.visitLambda(jCLambda);
            } finally {
                this.inLambda = false;
            }
        }

        @Override
        public void visitReturn(JCTree.JCReturn jCReturn) {
            recordExit(new BaseAnalyzer.PendingExit(jCReturn));
        }
    }

    public class LambdaAssignAnalyzer extends AssignAnalyzer {
        Scope.WriteableScope enclosedSymbols;
        boolean inLambda;

        public LambdaAssignAnalyzer(Env<AttrContext> env) {
            super();
            this.enclosedSymbols = Scope.WriteableScope.create(env.enclClass.sym);
        }

        @Override
        public boolean trackable(Symbol.VarSymbol varSymbol) {
            return this.enclosedSymbols.includes(varSymbol) && varSymbol.owner.kind == Kinds.Kind.MTH;
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            if (this.inLambda) {
                return;
            }
            this.inLambda = true;
            try {
                super.visitLambda(jCLambda);
            } finally {
                this.inLambda = false;
            }
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            this.enclosedSymbols.enter(jCVariableDecl.sym);
            super.visitVarDef(jCVariableDecl);
        }
    }

    public class LambdaFlowAnalyzer extends FlowAnalyzer {
        boolean inLambda;
        List<Type> inferredThrownTypes;

        public LambdaFlowAnalyzer() {
            super();
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            Type type = jCLambda.type;
            if ((type == null || !type.isErroneous()) && !this.inLambda) {
                List<Type> list = this.caught;
                List<Type> list2 = this.thrown;
                ListBuffer<P> listBuffer = this.pendingExits;
                this.inLambda = true;
                try {
                    this.pendingExits = new ListBuffer<>();
                    this.caught = List.of(Flow.this.syms.throwableType);
                    this.thrown = List.nil();
                    scan(jCLambda.body);
                    this.inferredThrownTypes = this.thrown;
                } finally {
                    this.pendingExits = listBuffer;
                    this.caught = list;
                    this.thrown = list2;
                    this.inLambda = false;
                }
            }
        }
    }

    public Flow(Context context) {
        context.put((Context.Key<Context.Key<Flow>>) flowKey, (Context.Key<Flow>) this);
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        this.types = Types.instance(context);
        this.chk = Check.instance(context);
        this.lint = Lint.instance(context);
        this.rs = Resolve.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        Source instance = Source.instance(context);
        this.allowImprovedRethrowAnalysis = instance.allowImprovedRethrowAnalysis();
        this.allowImprovedCatchAnalysis = instance.allowImprovedCatchAnalysis();
        this.allowEffectivelyFinalInInnerClasses = instance.allowEffectivelyFinalInInnerClasses();
        this.enforceThisDotInit = instance.enforceThisDotInit();
    }

    public static Flow instance(Context context) {
        Flow flow = (Flow) context.get(flowKey);
        return flow == null ? new Flow(context) : flow;
    }

    public void analyzeLambda(Env<AttrContext> env, JCTree.JCLambda jCLambda, TreeMaker treeMaker, boolean z10) {
        Log.DiscardDiagnosticHandler discardDiagnosticHandler = !z10 ? new Log.DiscardDiagnosticHandler(this.log) : null;
        try {
            new LambdaAliveAnalyzer().analyzeTree(env, jCLambda, treeMaker);
        } finally {
            if (!z10) {
                this.log.popDiagnosticHandler(discardDiagnosticHandler);
            }
        }
    }

    public List<Type> analyzeLambdaThrownTypes(Env<AttrContext> env, JCTree.JCLambda jCLambda, TreeMaker treeMaker) {
        Log.DiscardDiagnosticHandler discardDiagnosticHandler = new Log.DiscardDiagnosticHandler(this.log);
        try {
            new LambdaAssignAnalyzer(env).analyzeTree(env, jCLambda);
            LambdaFlowAnalyzer lambdaFlowAnalyzer = new LambdaFlowAnalyzer();
            lambdaFlowAnalyzer.analyzeTree(env, jCLambda, treeMaker);
            return lambdaFlowAnalyzer.inferredThrownTypes;
        } finally {
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
        }
    }

    public void analyzeTree(Env<AttrContext> env, TreeMaker treeMaker) {
        new AliveAnalyzer().analyzeTree(env, treeMaker);
        new AssignAnalyzer().analyzeTree(env);
        new FlowAnalyzer().analyzeTree(env, treeMaker);
        new CaptureAnalyzer().analyzeTree(env, treeMaker);
    }
}
