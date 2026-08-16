package org.openjdk.tools.javac.comp;

import java.util.EnumSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;

public class MemberEnter extends JCTree.Visitor {
    protected static final Context.Key<MemberEnter> memberEnterKey = new Context.Key<>();
    private final Annotate annotate;
    private final Attr attr;
    private final Check chk;
    private final DeferredLintHandler deferredLintHandler;
    private final Enter enter;
    protected Env<AttrContext> env;
    private final Log log;
    private final Symtab syms;
    private final Types types;

    public static class InitTreeVisitor extends JCTree.Visitor {
        private static final Set<JCTree.Tag> ALLOWED_OPERATORS = EnumSet.of(JCTree.Tag.POS, JCTree.Tag.NEG, JCTree.Tag.NOT, JCTree.Tag.COMPL, JCTree.Tag.PLUS, JCTree.Tag.MINUS, JCTree.Tag.MUL, JCTree.Tag.DIV, JCTree.Tag.MOD, JCTree.Tag.SL, JCTree.Tag.SR, JCTree.Tag.USR, JCTree.Tag.LT, JCTree.Tag.LE, JCTree.Tag.GT, JCTree.Tag.GE, JCTree.Tag.EQ, JCTree.Tag.NE, JCTree.Tag.BITAND, JCTree.Tag.BITXOR, JCTree.Tag.BITOR, JCTree.Tag.AND, JCTree.Tag.OR);
        boolean result = true;

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            if (!ALLOWED_OPERATORS.contains(jCBinary.getTag())) {
                this.result = false;
            } else {
                jCBinary.lhs.accept(this);
                jCBinary.rhs.accept(this);
            }
        }

        @Override
        public void visitConditional(JCTree.JCConditional jCConditional) {
            jCConditional.cond.accept(this);
            jCConditional.truepart.accept(this);
            jCConditional.falsepart.accept(this);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
        }

        @Override
        public void visitLiteral(JCTree.JCLiteral jCLiteral) {
        }

        @Override
        public void visitParens(JCTree.JCParens jCParens) {
            jCParens.expr.accept(this);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            jCFieldAccess.selected.accept(this);
        }

        @Override
        public void visitTree(JCTree jCTree) {
            this.result = false;
        }

        @Override
        public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
            jCTypeCast.expr.accept(this);
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            if (ALLOWED_OPERATORS.contains(jCUnary.getTag())) {
                jCUnary.arg.accept(this);
            } else {
                this.result = false;
            }
        }
    }

    public MemberEnter(Context context) {
        context.put((Context.Key<Context.Key<MemberEnter>>) memberEnterKey, (Context.Key<MemberEnter>) this);
        this.enter = Enter.instance(context);
        this.log = Log.instance(context);
        this.chk = Check.instance(context);
        this.attr = Attr.instance(context);
        this.syms = Symtab.instance(context);
        this.annotate = Annotate.instance(context);
        this.types = Types.instance(context);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
    }

    public static MemberEnter instance(Context context) {
        MemberEnter memberEnter = (MemberEnter) context.get(memberEnterKey);
        return memberEnter == null ? new MemberEnter(context) : memberEnter;
    }

    public void checkReceiver(JCTree.JCVariableDecl jCVariableDecl, Env<AttrContext> env) {
        this.attr.attribExpr(jCVariableDecl.nameexpr, env);
        Symbol.MethodSymbol methodSymbol = env.enclMethod.sym;
        if (!methodSymbol.isConstructor()) {
            checkType(jCVariableDecl.vartype, methodSymbol.owner.type, "incorrect.receiver.type");
            checkType(jCVariableDecl.nameexpr, methodSymbol.owner.type, "incorrect.receiver.name");
            return;
        }
        Type type = methodSymbol.owner.owner.type;
        if (type.hasTag(TypeTag.METHOD)) {
            type = methodSymbol.owner.owner.owner.type;
        }
        if (!type.hasTag(TypeTag.CLASS)) {
            this.log.error(jCVariableDecl, "receiver.parameter.not.applicable.constructor.toplevel.class", new Object[0]);
        } else {
            checkType(jCVariableDecl.vartype, type, "incorrect.constructor.receiver.type");
            checkType(jCVariableDecl.nameexpr, type, "incorrect.constructor.receiver.name");
        }
    }

    public void checkType(JCTree jCTree, Type type, String str) {
        if (jCTree.type.isErroneous() || this.types.isSameType(jCTree.type, type)) {
            return;
        }
        this.log.error(jCTree, str, type, jCTree.type);
    }

    public Env<AttrContext> getInitEnv(JCTree.JCVariableDecl jCVariableDecl, Env<AttrContext> env) {
        return initEnv(jCVariableDecl, env);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Env<AttrContext> getMethodEnv(JCTree.JCMethodDecl jCMethodDecl, Env<AttrContext> env) {
        Env<AttrContext> methodEnv = methodEnv(jCMethodDecl, env);
        AttrContext attrContext = methodEnv.info;
        attrContext.lint = attrContext.lint.augment(jCMethodDecl.sym);
        for (List list = jCMethodDecl.typarams; list.nonEmpty(); list = list.tail) {
            methodEnv.info.scope.enterIfAbsent(((JCTree.JCTypeParameter) list.head).type.tsym);
        }
        for (List list2 = jCMethodDecl.params; list2.nonEmpty(); list2 = list2.tail) {
            methodEnv.info.scope.enterIfAbsent(((JCTree.JCVariableDecl) list2.head).sym);
        }
        return methodEnv;
    }

    public Env<AttrContext> initEnv(JCTree.JCVariableDecl jCVariableDecl, Env<AttrContext> env) {
        Env<AttrContext> dupto = env.dupto(new AttrContextEnv(jCVariableDecl, env.info.dup()));
        Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
        if (varSymbol.owner.kind == Kinds.Kind.TYP) {
            dupto.info.scope = env.info.scope.dupUnshared(varSymbol);
        }
        if ((jCVariableDecl.mods.flags & 8) != 0 || ((env.enclClass.sym.flags() & 512) != 0 && env.enclMethod == null)) {
            dupto.info.staticLevel++;
        }
        return dupto;
    }

    public void memberEnter(JCTree jCTree, Env<AttrContext> env) {
        Env<AttrContext> env2 = this.env;
        try {
            try {
                this.env = env;
                jCTree.accept(this);
            } catch (Symbol.CompletionFailure e10) {
                this.chk.completionError(jCTree.pos(), e10);
            }
        } finally {
            this.env = env2;
        }
    }

    public Env<AttrContext> methodEnv(JCTree.JCMethodDecl jCMethodDecl, Env<AttrContext> env) {
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCMethodDecl, attrContext.dup(attrContext.scope.dupUnshared(jCMethodDecl.sym)));
        dup.enclMethod = jCMethodDecl;
        if (jCMethodDecl.sym.type != null) {
            AttrContext attrContext2 = dup.info;
            Attr attr = this.attr;
            attr.getClass();
            attrContext2.returnResult = new Attr.ResultInfo(attr, Kinds.KindSelector.VAL, jCMethodDecl.sym.type.getReturnType());
        }
        if ((jCMethodDecl.mods.flags & 8) != 0) {
            dup.info.staticLevel++;
        }
        return dup;
    }

    public boolean needsLazyConstValue(JCTree jCTree) {
        InitTreeVisitor initTreeVisitor = new InitTreeVisitor();
        jCTree.accept(initTreeVisitor);
        return initTreeVisitor.result;
    }

    public Type signature(Symbol.MethodSymbol methodSymbol, List<JCTree.JCTypeParameter> list, List<JCTree.JCVariableDecl> list2, JCTree jCTree, JCTree.JCVariableDecl jCVariableDecl, List<JCTree.JCExpression> list3, Env<AttrContext> env) {
        Type type;
        List<Type> classEnter = this.enter.classEnter(list, env);
        this.attr.attribTypeVariables(list, env);
        ListBuffer listBuffer = new ListBuffer();
        for (List<JCTree.JCVariableDecl> list4 = list2; list4.nonEmpty(); list4 = list4.tail) {
            memberEnter(list4.head, env);
            listBuffer.append(list4.head.vartype.type);
        }
        Type attribType = jCTree == null ? this.syms.voidType : this.attr.attribType(jCTree, env);
        if (jCVariableDecl != null) {
            memberEnter(jCVariableDecl, env);
            type = jCVariableDecl.vartype.type;
        } else {
            type = null;
        }
        ListBuffer listBuffer2 = new ListBuffer();
        for (List<JCTree.JCExpression> list5 = list3; list5.nonEmpty(); list5 = list5.tail) {
            Type attribType2 = this.attr.attribType(list5.head, env);
            if (attribType2.hasTag(TypeTag.TYPEVAR)) {
                Symbol.TypeSymbol typeSymbol = attribType2.tsym;
                if (typeSymbol.owner == methodSymbol) {
                    typeSymbol.flags_field |= 140737488355328L;
                }
            } else {
                attribType2 = this.chk.checkClassType(list5.head.pos(), attribType2);
            }
            listBuffer2.append(attribType2);
        }
        Type.MethodType methodType = new Type.MethodType(listBuffer.toList(), attribType, listBuffer2.toList(), this.syms.methodClass);
        methodType.recvtype = type;
        return classEnter.isEmpty() ? methodType : new Type.ForAll(classEnter, methodType);
    }

    @Override
    public void visitErroneous(JCTree.JCErroneous jCErroneous) {
        List<? extends JCTree> list = jCErroneous.errs;
        if (list != null) {
            memberEnter(list, this.env);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        Scope.WriteableScope enterScope = this.enter.enterScope(this.env);
        Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(0L, jCMethodDecl.name, null, enterScope.owner);
        methodSymbol.flags_field = this.chk.checkFlags(jCMethodDecl.pos(), jCMethodDecl.mods.flags, methodSymbol, jCMethodDecl);
        jCMethodDecl.sym = methodSymbol;
        if ((jCMethodDecl.mods.flags & 8796093022208L) != 0) {
            methodSymbol.enclClass().flags_field |= 8796093022208L;
        }
        Env<AttrContext> methodEnv = methodEnv(jCMethodDecl, this.env);
        JCDiagnostic.DiagnosticPosition pos = this.deferredLintHandler.setPos(jCMethodDecl.pos());
        try {
            methodSymbol.type = signature(methodSymbol, jCMethodDecl.typarams, jCMethodDecl.params, jCMethodDecl.restype, jCMethodDecl.recvparam, jCMethodDecl.thrown, methodEnv);
            this.deferredLintHandler.setPos(pos);
            if (this.types.isSignaturePolymorphic(methodSymbol)) {
                methodSymbol.flags_field |= 70368744177664L;
            }
            ListBuffer listBuffer = new ListBuffer();
            JCTree.JCVariableDecl jCVariableDecl = null;
            for (List list = jCMethodDecl.params; list.nonEmpty(); list = list.tail) {
                jCVariableDecl = (JCTree.JCVariableDecl) list.head;
                listBuffer.append(Assert.checkNonNull(jCVariableDecl.sym));
            }
            methodSymbol.params = listBuffer.toList();
            if (jCVariableDecl != null && (jCVariableDecl.mods.flags & 17179869184L) != 0) {
                methodSymbol.flags_field |= 17179869184L;
            }
            methodEnv.info.scope.leave();
            if (this.chk.checkUnique(jCMethodDecl.pos(), methodSymbol, enterScope)) {
                enterScope.enter(methodSymbol);
            }
            this.annotate.annotateLater(jCMethodDecl.mods.annotations, methodEnv, methodSymbol, jCMethodDecl.pos());
            this.annotate.queueScanTreeAndTypeAnnotate(jCMethodDecl, methodEnv, methodSymbol, jCMethodDecl.pos());
            if (jCMethodDecl.defaultValue != null) {
                methodSymbol.defaultValue = this.annotate.unfinishedDefaultValue();
                this.annotate.annotateDefaultValueLater(jCMethodDecl.defaultValue, methodEnv, methodSymbol, jCMethodDecl.pos());
            }
        } catch (Throwable th2) {
            this.deferredLintHandler.setPos(pos);
            throw th2;
        }
    }

    @Override
    public void visitTree(JCTree jCTree) {
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        Env<AttrContext> env = this.env;
        if ((jCVariableDecl.mods.flags & 8) != 0 || (env.info.scope.owner.flags() & 512) != 0) {
            Env<AttrContext> env2 = this.env;
            env = env2.dup(jCVariableDecl, env2.info.dup());
            env.info.staticLevel++;
        }
        JCDiagnostic.DiagnosticPosition pos = this.deferredLintHandler.setPos(jCVariableDecl.pos());
        try {
            if (TreeInfo.isEnumInit(jCVariableDecl)) {
                this.attr.attribIdentAsEnumType(env, (JCTree.JCIdent) jCVariableDecl.vartype);
            } else {
                this.attr.attribType(jCVariableDecl.vartype, env);
                if (TreeInfo.isReceiverParam(jCVariableDecl)) {
                    checkReceiver(jCVariableDecl, env);
                }
            }
            this.deferredLintHandler.setPos(pos);
            if ((jCVariableDecl.mods.flags & 17179869184L) != 0) {
                JCTree.JCExpression jCExpression = jCVariableDecl.vartype;
                jCExpression.type = ((Type.ArrayType) jCExpression.type).makeVarargs();
            }
            Scope.WriteableScope enterScope = this.enter.enterScope(this.env);
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(0L, jCVariableDecl.name, jCVariableDecl.vartype.type, enterScope.owner);
            long checkFlags = this.chk.checkFlags(jCVariableDecl.pos(), jCVariableDecl.mods.flags, varSymbol, jCVariableDecl);
            varSymbol.flags_field = checkFlags;
            jCVariableDecl.sym = varSymbol;
            JCTree.JCExpression jCExpression2 = jCVariableDecl.init;
            if (jCExpression2 != null) {
                long j10 = checkFlags | TagBits.TypeVariablesAreConnected;
                varSymbol.flags_field = j10;
                if ((j10 & 16) != 0 && needsLazyConstValue(jCExpression2)) {
                    Env<AttrContext> initEnv = getInitEnv(jCVariableDecl, this.env);
                    initEnv.info.enclVar = varSymbol;
                    varSymbol.setLazyConstValue(initEnv(jCVariableDecl, initEnv), this.attr, jCVariableDecl);
                }
            }
            if (this.chk.checkUnique(jCVariableDecl.pos(), varSymbol, enterScope)) {
                this.chk.checkTransparentVar(jCVariableDecl.pos(), varSymbol, enterScope);
                enterScope.enter(varSymbol);
            }
            this.annotate.annotateLater(jCVariableDecl.mods.annotations, env, varSymbol, jCVariableDecl.pos());
            this.annotate.queueScanTreeAndTypeAnnotate(jCVariableDecl.vartype, env, varSymbol, jCVariableDecl.pos());
            varSymbol.pos = jCVariableDecl.pos;
        } catch (Throwable th2) {
            this.deferredLintHandler.setPos(pos);
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void memberEnter(List<? extends JCTree> list, Env<AttrContext> env) {
        for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            memberEnter((JCTree) list2.head, env);
        }
    }
}
