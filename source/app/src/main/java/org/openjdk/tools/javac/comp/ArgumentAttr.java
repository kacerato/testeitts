package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.ArgumentAttr;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeCopier;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;

public class ArgumentAttr extends JCTree.Visitor {
    protected static final Context.Key<ArgumentAttr> methodAttrKey = new Context.Key<>();
    Map<UniquePos, ArgumentType<?>> argumentTypeCache = new LinkedHashMap();
    private final Attr attr;
    private final DeferredAttr deferredAttr;
    private Env<AttrContext> env;
    private final Log log;
    Type result;
    private final Symtab syms;

    public abstract class ArgumentType<T extends JCTree.JCExpression> extends DeferredAttr.DeferredType implements DeferredAttr.DeferredTypeCompleter {
        T speculativeTree;
        Map<Attr.ResultInfo, Type> speculativeTypes;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ArgumentType(JCTree.JCExpression jCExpression, Env<AttrContext> env, T t10, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env);
            DeferredAttr deferredAttr = ArgumentAttr.this.deferredAttr;
            deferredAttr.getClass();
            this.speculativeTree = t10;
            this.speculativeTypes = map;
        }

        @Override
        public final Type complete(DeferredAttr.DeferredType deferredType, Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext) {
            Assert.check(deferredType == this);
            if (deferredAttrContext.mode == DeferredAttr.AttrMode.SPECULATIVE) {
                Type complete = resultInfo.pt == Type.recoveryType ? ArgumentAttr.this.deferredAttr.basicCompleter.complete(deferredType, resultInfo, deferredAttrContext) : overloadCheck(resultInfo, deferredAttrContext);
                this.speculativeTypes.put(resultInfo, complete);
                return complete;
            }
            if (!this.env.info.isSpeculative) {
                ArgumentAttr argumentAttr = ArgumentAttr.this;
                argumentAttr.argumentTypeCache.remove(new UniquePos(deferredType.tree));
            }
            return ArgumentAttr.this.deferredAttr.basicCompleter.complete(deferredType, resultInfo, deferredAttrContext);
        }

        @Override
        public final DeferredAttr.DeferredTypeCompleter completer() {
            return this;
        }

        public abstract ArgumentType<T> dup(T t10, Env<AttrContext> env);

        public abstract Type overloadCheck(Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext);

        @Override
        public JCTree speculativeTree(DeferredAttr.DeferredAttrContext deferredAttrContext) {
            return this.pertinentToApplicability ? this.speculativeTree : super.speculativeTree(deferredAttrContext);
        }

        @Override
        public Type speculativeType(Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
            if (!this.pertinentToApplicability) {
                return super.speculativeType(symbol, methodResolutionPhase);
            }
            for (Map.Entry<Attr.ResultInfo, Type> entry : this.speculativeTypes.entrySet()) {
                DeferredAttr.DeferredAttrContext deferredAttrContext = entry.getKey().checkContext.deferredAttrContext();
                if (deferredAttrContext.phase == methodResolutionPhase && deferredAttrContext.msym == symbol) {
                    return entry.getValue();
                }
            }
            return Type.noType;
        }
    }

    public class ConditionalType extends ArgumentType<JCTree.JCConditional> {
        public ConditionalType(ArgumentAttr argumentAttr, JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCConditional jCConditional) {
            this(jCExpression, env, jCConditional, new HashMap());
        }

        @Override
        public ArgumentType<JCTree.JCConditional> dup(JCTree.JCConditional jCConditional, Env env) {
            return dup2(jCConditional, (Env<AttrContext>) env);
        }

        @Override
        public Type overloadCheck(Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext) {
            Attr.ResultInfo dup = resultInfo.dup(ArgumentAttr.this.attr.conditionalContext(resultInfo.checkContext));
            if (((JCTree.JCConditional) this.speculativeTree).isStandalone()) {
                JCDiagnostic.DiagnosticPosition diagnosticPosition = this.speculativeTree;
                return dup.check(diagnosticPosition, ((JCTree.JCConditional) diagnosticPosition).type);
            }
            if (resultInfo.pt.hasTag(TypeTag.VOID)) {
                resultInfo.checkContext.report(this.tree, ArgumentAttr.this.attr.diags.fragment("conditional.target.cant.be.void", new Object[0]));
                return ArgumentAttr.this.attr.types.createErrorType(resultInfo.pt);
            }
            ArgumentAttr.this.checkSpeculative(((JCTree.JCConditional) this.speculativeTree).truepart, dup);
            ArgumentAttr.this.checkSpeculative(((JCTree.JCConditional) this.speculativeTree).falsepart, dup);
            return dup.pt;
        }

        public ConditionalType(JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCConditional jCConditional, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env, jCConditional, map);
        }

        public ArgumentType<JCTree.JCConditional> dup2(JCTree.JCConditional jCConditional, Env<AttrContext> env) {
            return new ConditionalType(jCConditional, env, (JCTree.JCConditional) this.speculativeTree, this.speculativeTypes);
        }
    }

    public class ExplicitLambdaType extends ArgumentType<JCTree.JCLambda> {
        Optional<List<Type>> argtypes;
        Optional<List<JCTree.JCReturn>> returnExpressions;

        public ExplicitLambdaType(ArgumentAttr argumentAttr, JCTree.JCLambda jCLambda, Env<AttrContext> env, JCTree.JCLambda jCLambda2) {
            this(jCLambda, env, jCLambda2, new HashMap());
        }

        private void checkLambdaCompatible(Type type, Attr.ResultInfo resultInfo) {
            Check.CheckContext checkContext = resultInfo.checkContext;
            Attr.ResultInfo lambdaBodyResult = ArgumentAttr.this.attr.lambdaBodyResult((JCTree.JCLambda) this.speculativeTree, type, resultInfo);
            Iterator<JCTree.JCReturn> it = returnExpressions().iterator();
            while (it.hasNext()) {
                JCTree.JCReturn next = it.next();
                Type returnType = getReturnType(next);
                if (((JCTree.JCLambda) this.speculativeTree).getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION || !returnType.hasTag(TypeTag.VOID)) {
                    ArgumentAttr.this.checkSpeculative(next.expr, returnType, lambdaBodyResult);
                }
            }
            ArgumentAttr.this.attr.checkLambdaCompatible((JCTree.JCLambda) this.speculativeTree, type, checkContext);
        }

        public List lambda$argtypes$0() {
            List<Type> types = TreeInfo.types(((JCTree.JCLambda) this.speculativeTree).params);
            this.argtypes = Optional.of(types);
            return types;
        }

        public List lambda$returnExpressions$1() {
            List list;
            if (((JCTree.JCLambda) this.speculativeTree).getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                list = List.of(ArgumentAttr.this.attr.make.Return((JCTree.JCExpression) ((JCTree.JCLambda) this.speculativeTree).body));
            } else {
                final ListBuffer listBuffer = new ListBuffer();
                new DeferredAttr.LambdaReturnScanner() {
                    @Override
                    public void visitReturn(JCTree.JCReturn jCReturn) {
                        listBuffer.add(jCReturn);
                    }
                }.scan(((JCTree.JCLambda) this.speculativeTree).body);
                list = listBuffer.toList();
            }
            this.returnExpressions = Optional.of(list);
            return list;
        }

        public List<Type> argtypes() {
            return this.argtypes.orElseGet(new Supplier() {
                @Override
                public final Object get() {
                    List lambda$argtypes$0;
                    lambda$argtypes$0 = ArgumentAttr.ExplicitLambdaType.this.lambda$argtypes$0();
                    return lambda$argtypes$0;
                }
            });
        }

        @Override
        public ArgumentType<JCTree.JCLambda> dup(JCTree.JCLambda jCLambda, Env env) {
            return dup2(jCLambda, (Env<AttrContext>) env);
        }

        public Type getReturnType(JCTree.JCReturn jCReturn) {
            JCTree.JCExpression jCExpression = jCReturn.expr;
            return jCExpression == null ? ArgumentAttr.this.syms.voidType : jCExpression.type;
        }

        @Override
        public Type overloadCheck(Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext) {
            try {
                Attr.TargetInfo targetInfo = ArgumentAttr.this.attr.getTargetInfo((JCTree.JCPolyExpression) this.speculativeTree, resultInfo, argtypes());
                Type type = targetInfo.descriptor;
                Type type2 = targetInfo.target;
                checkLambdaCompatible(type, resultInfo);
                return type2;
            } catch (Types.FunctionDescriptorLookupError e10) {
                resultInfo.checkContext.report(null, e10.getDiagnostic());
                return null;
            }
        }

        public List<JCTree.JCReturn> returnExpressions() {
            return this.returnExpressions.orElseGet(new Supplier() {
                @Override
                public final Object get() {
                    List lambda$returnExpressions$1;
                    lambda$returnExpressions$1 = ArgumentAttr.ExplicitLambdaType.this.lambda$returnExpressions$1();
                    return lambda$returnExpressions$1;
                }
            });
        }

        public ExplicitLambdaType(JCTree.JCLambda jCLambda, Env<AttrContext> env, JCTree.JCLambda jCLambda2, Map<Attr.ResultInfo, Type> map) {
            super(jCLambda, env, jCLambda2, map);
            this.argtypes = Optional.empty();
            this.returnExpressions = Optional.empty();
        }

        public ArgumentType<JCTree.JCLambda> dup2(JCTree.JCLambda jCLambda, Env<AttrContext> env) {
            return new ExplicitLambdaType(jCLambda, env, (JCTree.JCLambda) this.speculativeTree, this.speculativeTypes);
        }
    }

    public class LocalCacheContext {
        Map<UniquePos, ArgumentType<?>> prevCache;

        public LocalCacheContext() {
            this.prevCache = ArgumentAttr.this.argumentTypeCache;
            ArgumentAttr.this.argumentTypeCache = new HashMap();
        }

        public void leave() {
            ArgumentAttr.this.argumentTypeCache = this.prevCache;
        }
    }

    public class ParensType extends ArgumentType<JCTree.JCParens> {
        public ParensType(ArgumentAttr argumentAttr, JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCParens jCParens) {
            this(jCExpression, env, jCParens, new HashMap());
        }

        @Override
        public ArgumentType<JCTree.JCParens> dup(JCTree.JCParens jCParens, Env env) {
            return dup2(jCParens, (Env<AttrContext>) env);
        }

        @Override
        public Type overloadCheck(Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext) {
            return ArgumentAttr.this.checkSpeculative(((JCTree.JCParens) this.speculativeTree).expr, resultInfo);
        }

        public ParensType(JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCParens jCParens, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env, jCParens, map);
        }

        public ArgumentType<JCTree.JCParens> dup2(JCTree.JCParens jCParens, Env<AttrContext> env) {
            return new ParensType(jCParens, env, (JCTree.JCParens) this.speculativeTree, this.speculativeTypes);
        }
    }

    public class ResolvedConstructorType extends ResolvedMemberType<JCTree.JCNewClass> {
        public ResolvedConstructorType(ArgumentAttr argumentAttr, JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCNewClass jCNewClass) {
            this(jCExpression, env, jCNewClass, new HashMap());
        }

        @Override
        public ArgumentType dup(JCTree.JCExpression jCExpression, Env env) {
            return dup((JCTree.JCNewClass) jCExpression, (Env<AttrContext>) env);
        }

        @Override
        public Type methodType() {
            T t10 = this.speculativeTree;
            return ((JCTree.JCNewClass) t10).constructorType != null ? ((JCTree.JCNewClass) t10).constructorType.baseType() : ArgumentAttr.this.syms.errType;
        }

        @Override
        public Attr.ResultInfo resultInfo(Attr.ResultInfo resultInfo) {
            Attr attr = ArgumentAttr.this.attr;
            T t10 = this.speculativeTree;
            return resultInfo.dup(attr.diamondContext((JCTree.JCNewClass) t10, ((JCTree.JCNewClass) t10).clazz.type.tsym, resultInfo.checkContext));
        }

        public ResolvedConstructorType(JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCNewClass jCNewClass, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env, jCNewClass, map);
        }

        public ArgumentType<JCTree.JCNewClass> dup(JCTree.JCNewClass jCNewClass, Env<AttrContext> env) {
            return new ResolvedConstructorType(jCNewClass, env, (JCTree.JCNewClass) this.speculativeTree, this.speculativeTypes);
        }
    }

    public abstract class ResolvedMemberType<E extends JCTree.JCExpression> extends ArgumentType<E> {
        public ResolvedMemberType(JCTree.JCExpression jCExpression, Env<AttrContext> env, E e10, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env, e10, map);
        }

        public abstract Type methodType();

        @Override
        public Type overloadCheck(Attr.ResultInfo resultInfo, DeferredAttr.DeferredAttrContext deferredAttrContext) {
            Type methodType = methodType();
            Attr.ResultInfo resultInfo2 = resultInfo(resultInfo);
            Type check = (methodType != null && methodType.hasTag(TypeTag.METHOD) && methodType.isPartial()) ? ((Infer.PartiallyInferredMethodType) methodType).check(resultInfo2) : resultInfo2.check(this.tree.pos(), this.speculativeTree.type);
            this.speculativeTypes.put(resultInfo2, check);
            return check;
        }

        public abstract Attr.ResultInfo resultInfo(Attr.ResultInfo resultInfo);
    }

    public class ResolvedMethodType extends ResolvedMemberType<JCTree.JCMethodInvocation> {
        public ResolvedMethodType(ArgumentAttr argumentAttr, JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCMethodInvocation jCMethodInvocation) {
            this(jCExpression, env, jCMethodInvocation, new HashMap());
        }

        @Override
        public ArgumentType dup(JCTree.JCExpression jCExpression, Env env) {
            return dup((JCTree.JCMethodInvocation) jCExpression, (Env<AttrContext>) env);
        }

        @Override
        public Type methodType() {
            return ((JCTree.JCMethodInvocation) this.speculativeTree).meth.type;
        }

        @Override
        public Attr.ResultInfo resultInfo(Attr.ResultInfo resultInfo) {
            return resultInfo;
        }

        public ResolvedMethodType(JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree.JCMethodInvocation jCMethodInvocation, Map<Attr.ResultInfo, Type> map) {
            super(jCExpression, env, jCMethodInvocation, map);
        }

        public ArgumentType<JCTree.JCMethodInvocation> dup(JCTree.JCMethodInvocation jCMethodInvocation, Env<AttrContext> env) {
            return new ResolvedMethodType(jCMethodInvocation, env, (JCTree.JCMethodInvocation) this.speculativeTree, this.speculativeTypes);
        }
    }

    public class UniquePos {
        int pos;
        DiagnosticSource source;

        public UniquePos(JCTree jCTree) {
            this.pos = jCTree.pos;
            this.source = ArgumentAttr.this.log.currentSource();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof UniquePos)) {
                return false;
            }
            UniquePos uniquePos = (UniquePos) obj;
            return this.pos == uniquePos.pos && this.source == uniquePos.source;
        }

        public int hashCode() {
            return this.pos << (this.source.hashCode() + 16);
        }

        public String toString() {
            return this.source.getFile().getName() + " @ " + this.source.getLineNumber(this.pos);
        }
    }

    public ArgumentAttr(Context context) {
        context.put((Context.Key<Context.Key<ArgumentAttr>>) methodAttrKey, (Context.Key<ArgumentAttr>) this);
        this.deferredAttr = DeferredAttr.instance(context);
        this.attr = Attr.instance(context);
        this.syms = Symtab.instance(context);
        this.log = Log.instance(context);
    }

    public static ArgumentAttr instance(Context context) {
        ArgumentAttr argumentAttr = (ArgumentAttr) context.get(methodAttrKey);
        return argumentAttr == null ? new ArgumentAttr(context) : argumentAttr;
    }

    public ArgumentType lambda$processArg$0(JCTree.JCExpression jCExpression, UniquePos uniquePos, Function function) {
        DeferredAttr deferredAttr = this.deferredAttr;
        Env<AttrContext> env = this.env;
        Attr attr = this.attr;
        attr.getClass();
        return (ArgumentType) function.apply((JCTree.JCExpression) deferredAttr.attribSpeculative(jCExpression, env, new Attr.MethodAttrInfo(attr, uniquePos) {
            final UniquePos val$pos;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(attr);
                this.val$pos = uniquePos;
                attr.getClass();
            }

            @Override
            public boolean needsArgumentAttr(JCTree jCTree) {
                return !new UniquePos(jCTree).equals(this.val$pos);
            }
        }));
    }

    public ResolvedMethodType lambda$visitApply$4(JCTree.JCMethodInvocation jCMethodInvocation, JCTree.JCMethodInvocation jCMethodInvocation2) {
        return new ResolvedMethodType(this, jCMethodInvocation, this.env, jCMethodInvocation2);
    }

    public ConditionalType lambda$visitConditional$2(JCTree.JCConditional jCConditional, JCTree.JCConditional jCConditional2) {
        return new ConditionalType(this, jCConditional, this.env, jCConditional2);
    }

    public ExplicitLambdaType lambda$visitLambda$3(JCTree.JCLambda jCLambda) {
        return new ExplicitLambdaType(this, jCLambda, this.env, this.deferredAttr.attribSpeculativeLambda(jCLambda, this.env, this.attr.methodAttrInfo));
    }

    public ResolvedConstructorType lambda$visitNewClass$5(JCTree.JCNewClass jCNewClass, JCTree.JCNewClass jCNewClass2) {
        return new ResolvedConstructorType(this, jCNewClass, this.env, jCNewClass2);
    }

    public ParensType lambda$visitParens$1(JCTree.JCParens jCParens, JCTree.JCParens jCParens2) {
        return new ParensType(this, jCParens, this.env, jCParens2);
    }

    public Type attribArg(JCTree jCTree, Env<AttrContext> env) {
        Env<AttrContext> env2 = this.env;
        try {
            this.env = env;
            jCTree.accept(this);
            return this.result;
        } finally {
            this.env = env2;
        }
    }

    public Type checkSpeculative(JCTree.JCExpression jCExpression, Attr.ResultInfo resultInfo) {
        return checkSpeculative(jCExpression, jCExpression.type, resultInfo);
    }

    public <T extends JCTree.JCExpression, Z extends ArgumentType<T>> void processArg(final T t10, final Function<T, Z> function) {
        final UniquePos uniquePos = new UniquePos(t10);
        processArg((ArgumentAttr) t10, (Supplier) new Supplier() {
            @Override
            public final Object get() {
                ArgumentAttr.ArgumentType lambda$processArg$0;
                lambda$processArg$0 = ArgumentAttr.this.lambda$processArg$0(t10, uniquePos, function);
                return lambda$processArg$0;
            }
        });
    }

    public void setResult(JCTree.JCExpression jCExpression, Type type) {
        this.result = type;
        if (this.env.info.isSpeculative) {
            jCExpression.type = type;
        }
    }

    @Override
    public void visitApply(final JCTree.JCMethodInvocation jCMethodInvocation) {
        if (jCMethodInvocation.getTypeArguments().isEmpty()) {
            processArg((ArgumentAttr) jCMethodInvocation, (Function<ArgumentAttr, Z>) new Function() {
                @Override
                public final Object apply(Object obj) {
                    ArgumentAttr.ResolvedMethodType lambda$visitApply$4;
                    lambda$visitApply$4 = ArgumentAttr.this.lambda$visitApply$4(jCMethodInvocation, (JCTree.JCMethodInvocation) obj);
                    return lambda$visitApply$4;
                }
            });
        } else {
            Attr attr = this.attr;
            setResult(jCMethodInvocation, attr.attribTree(jCMethodInvocation, this.env, attr.unknownExprInfo));
        }
    }

    @Override
    public void visitConditional(final JCTree.JCConditional jCConditional) {
        processArg((ArgumentAttr) jCConditional, (Function<ArgumentAttr, Z>) new Function() {
            @Override
            public final Object apply(Object obj) {
                ArgumentAttr.ConditionalType lambda$visitConditional$2;
                lambda$visitConditional$2 = ArgumentAttr.this.lambda$visitConditional$2(jCConditional, (JCTree.JCConditional) obj);
                return lambda$visitConditional$2;
            }
        });
    }

    @Override
    public void visitLambda(final JCTree.JCLambda jCLambda) {
        if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.EXPLICIT) {
            processArg((ArgumentAttr) jCLambda, new Supplier() {
                @Override
                public final Object get() {
                    ArgumentAttr.ExplicitLambdaType lambda$visitLambda$3;
                    lambda$visitLambda$3 = ArgumentAttr.this.lambda$visitLambda$3(jCLambda);
                    return lambda$visitLambda$3;
                }
            });
            return;
        }
        DeferredAttr deferredAttr = this.deferredAttr;
        deferredAttr.getClass();
        setResult(jCLambda, new DeferredAttr.DeferredType(jCLambda, this.env));
    }

    @Override
    public void visitNewClass(final JCTree.JCNewClass jCNewClass) {
        if (TreeInfo.isDiamond(jCNewClass)) {
            processArg((ArgumentAttr) jCNewClass, (Function<ArgumentAttr, Z>) new Function() {
                @Override
                public final Object apply(Object obj) {
                    ArgumentAttr.ResolvedConstructorType lambda$visitNewClass$5;
                    lambda$visitNewClass$5 = ArgumentAttr.this.lambda$visitNewClass$5(jCNewClass, (JCTree.JCNewClass) obj);
                    return lambda$visitNewClass$5;
                }
            });
        } else {
            Attr attr = this.attr;
            setResult(jCNewClass, attr.attribTree(jCNewClass, this.env, attr.unknownExprInfo));
        }
    }

    @Override
    public void visitParens(final JCTree.JCParens jCParens) {
        processArg((ArgumentAttr) jCParens, (Function<ArgumentAttr, Z>) new Function() {
            @Override
            public final Object apply(Object obj) {
                ArgumentAttr.ParensType lambda$visitParens$1;
                lambda$visitParens$1 = ArgumentAttr.this.lambda$visitParens$1(jCParens, (JCTree.JCParens) obj);
                return lambda$visitParens$1;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x005c  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        boolean z10;
        Symbol memberReference;
        Type type;
        Env<AttrContext> dup = this.env.dup(jCMemberReference);
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) this.deferredAttr.attribSpeculative(jCMemberReference.getQualifierExpression(), dup, this.attr.memberReferenceQualifierResult(jCMemberReference), withLocalCacheContext());
        JCTree.JCMemberReference jCMemberReference2 = (JCTree.JCMemberReference) new TreeCopier(this.attr.make).copy((TreeCopier) jCMemberReference);
        jCMemberReference2.expr = jCExpression;
        Symbol symbol = TreeInfo.symbol(jCExpression);
        AttrContext attrContext = dup.info;
        if (symbol != null) {
            Name name = symbol.name;
            if (name == name.table.names._super) {
                z10 = true;
                attrContext.selectSuper = z10;
                memberReference = this.attr.rs.getMemberReference(jCMemberReference, dup, jCMemberReference2, jCExpression.type, jCMemberReference.name);
                if (!memberReference.kind.isResolutionError()) {
                    jCMemberReference.sym = memberReference;
                }
                if (!memberReference.kind.isResolutionTargetError() || (((type = memberReference.type) != null && type.hasTag(TypeTag.FORALL)) || (memberReference.flags() & 17179869184L) != 0 || (TreeInfo.isStaticSelector(jCExpression, jCMemberReference.name.table.names) && jCExpression.type.isRaw() && !jCExpression.type.hasTag(TypeTag.ARRAY)))) {
                    jCMemberReference.setOverloadKind(JCTree.JCMemberReference.OverloadKind.OVERLOADED);
                } else {
                    jCMemberReference.setOverloadKind(JCTree.JCMemberReference.OverloadKind.UNOVERLOADED);
                }
                DeferredAttr deferredAttr = this.deferredAttr;
                deferredAttr.getClass();
                setResult(jCMemberReference, new DeferredAttr.DeferredType(jCMemberReference, this.env));
            }
        }
        z10 = false;
        attrContext.selectSuper = z10;
        memberReference = this.attr.rs.getMemberReference(jCMemberReference, dup, jCMemberReference2, jCExpression.type, jCMemberReference.name);
        if (!memberReference.kind.isResolutionError()) {
        }
        if (memberReference.kind.isResolutionTargetError()) {
        }
        jCMemberReference.setOverloadKind(JCTree.JCMemberReference.OverloadKind.OVERLOADED);
        DeferredAttr deferredAttr2 = this.deferredAttr;
        deferredAttr2.getClass();
        setResult(jCMemberReference, new DeferredAttr.DeferredType(jCMemberReference, this.env));
    }

    @Override
    public void visitTree(JCTree jCTree) {
        jCTree.accept(this.attr);
        this.result = this.attr.result;
    }

    public LocalCacheContext withLocalCacheContext() {
        return new LocalCacheContext();
    }

    public Type checkSpeculative(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Attr.ResultInfo resultInfo) {
        if (type.hasTag(TypeTag.DEFERRED)) {
            return ((DeferredAttr.DeferredType) type).check(resultInfo);
        }
        return resultInfo.check(diagnosticPosition, type);
    }

    public <T extends JCTree.JCExpression, Z extends ArgumentType<T>> void processArg(T t10, Supplier<Z> supplier) {
        UniquePos uniquePos = new UniquePos(t10);
        ArgumentType<?> argumentType = this.argumentTypeCache.get(uniquePos);
        if (argumentType != null) {
            setResult(t10, argumentType.dup(t10, this.env));
            return;
        }
        Z z10 = supplier.get();
        this.argumentTypeCache.put(uniquePos, z10);
        setResult(t10, z10);
    }
}
