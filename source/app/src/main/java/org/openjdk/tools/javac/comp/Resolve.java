package org.openjdk.tools.javac.comp;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.element.ElementVisitor;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.api.Formattable;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.ModuleFinder;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.FatalError;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.Iterators;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.Warner;

public class Resolve {
    protected static final Context.Key<Resolve> resolveKey = new Context.Key<>();
    public final boolean allowFunctionalInterfaceMostSpecific;
    public final boolean allowMethodHandles;
    public final boolean allowModules;
    Attr attr;
    public final boolean checkVarargsAccessAfterResolution;
    Check chk;
    private final boolean compactMethodDiags;
    DeferredAttr deferredAttr;
    JCDiagnostic.Factory diags;
    ClassFinder finder;
    private final InapplicableMethodException inapplicableMethodException;
    Infer infer;
    Log log;
    private final SymbolNotFoundError methodNotFound;
    ModuleFinder moduleFinder;
    Names names;
    Scope.WriteableScope polymorphicSignatureScope;
    private final ReferenceLookupResult referenceNotFound;
    Symtab syms;
    private final SymbolNotFoundError typeNotFound;
    Types types;
    private final SymbolNotFoundError varNotFound;
    final EnumSet<VerboseResolutionMode> verboseResolutionMode;
    Types.SimpleVisitor<Void, Env<AttrContext>> accessibilityChecker = new Types.SimpleVisitor<Void, Env<AttrContext>>() {
        public void visit(List<Type> list, Env<AttrContext> env) {
            Iterator<Type> it = list.iterator();
            while (it.hasNext()) {
                visit(it.next(), (Type) env);
            }
        }

        @Override
        public Void visitType(Type type, Env<AttrContext> env) {
            return null;
        }

        @Override
        public Void visitArrayType(Type.ArrayType arrayType, Env<AttrContext> env) {
            visit(arrayType.elemtype, (Type) env);
            return null;
        }

        @Override
        public Void visitClassType(Type.ClassType classType, Env<AttrContext> env) {
            visit(classType.getTypeArguments(), env);
            if (!Resolve.this.isAccessible(env, (Type) classType, true)) {
                Resolve resolve = Resolve.this;
                resolve.accessBase(new AccessError(env, null, classType.tsym), env.tree.pos(), env.enclClass.sym, classType, classType.tsym.name, true);
            }
            return null;
        }

        @Override
        public Void visitMethodType(Type.MethodType methodType, Env<AttrContext> env) {
            visit(methodType.getParameterTypes(), env);
            visit(methodType.getReturnType(), (Type) env);
            visit(methodType.getThrownTypes(), env);
            return null;
        }

        @Override
        public Void visitWildcardType(Type.WildcardType wildcardType, Env<AttrContext> env) {
            visit(wildcardType.type, (Type) env);
            return null;
        }
    };
    MethodCheck nilMethodCheck = new MethodCheck() {
        @Override
        public void argumentsAcceptable(Env<AttrContext> env, DeferredAttr.DeferredAttrContext deferredAttrContext, List<Type> list, List<Type> list2, Warner warner) {
        }

        @Override
        public MethodCheck mostSpecificCheck(List<Type> list) {
            return this;
        }
    };
    MethodCheck arityMethodCheck = new AbstractMethodCheck() {
        @Override
        public void checkArg(JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10, Type type, Type type2, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
        }

        public String toString() {
            return "arityMethodCheck";
        }
    };
    MethodCheck resolveMethodCheck = new AnonymousClass4();
    Warner noteWarner = new Warner();
    private final RecoveryLoadClass noRecovery = new RecoveryLoadClass() {
        @Override
        public final Symbol loadClass(Env env, Name name) {
            Symbol lambda$new$1;
            lambda$new$1 = Resolve.lambda$new$1(env, name);
            return lambda$new$1;
        }
    };
    private final RecoveryLoadClass doRecoveryLoadClass = new AnonymousClass6();
    private final RecoveryLoadClass namedImportScopeRecovery = new RecoveryLoadClass() {
        @Override
        public final Symbol loadClass(Env env, Name name) {
            Symbol lambda$new$3;
            lambda$new$3 = Resolve.this.lambda$new$3(env, name);
            return lambda$new$3;
        }
    };
    private final RecoveryLoadClass starImportScopeRecovery = new RecoveryLoadClass() {
        @Override
        public final Symbol loadClass(Env env, Name name) {
            Symbol lambda$new$5;
            lambda$new$5 = Resolve.this.lambda$new$5(env, name);
            return lambda$new$5;
        }
    };
    LogResolveHelper basicLogResolveHelper = new LogResolveHelper() {
        @Override
        public List<Type> getArgumentTypes(ResolveError resolveError, Symbol symbol, Name name, List<Type> list) {
            return list;
        }

        @Override
        public boolean resolveDiagnosticNeeded(Type type, List<Type> list, List<Type> list2) {
            return !type.isErroneous();
        }
    };
    LogResolveHelper methodLogResolveHelper = new LogResolveHelper() {
        @Override
        public List<Type> getArgumentTypes(ResolveError resolveError, Symbol symbol, Name name, List<Type> list) {
            Resolve resolve = Resolve.this;
            return list.map(new ResolveDeferredRecoveryMap(DeferredAttr.AttrMode.SPECULATIVE, symbol, resolve.currentResolutionContext.step));
        }

        @Override
        public boolean resolveDiagnosticNeeded(Type type, List<Type> list, List<Type> list2) {
            return (type.isErroneous() || Type.isErroneous(list) || (list2 != null && Type.isErroneous(list2))) ? false : true;
        }
    };
    ReferenceChooser basicReferenceChooser = new ReferenceChooser() {
        @Override
        public Symbol boundResult(ReferenceLookupResult referenceLookupResult) {
            return (!referenceLookupResult.isSuccess() || referenceLookupResult.hasKind(ReferenceLookupResult.StaticKind.NON_STATIC)) ? referenceLookupResult.sym : new BadMethodReferenceError(referenceLookupResult.sym, false);
        }

        @Override
        public Symbol unboundResult(ReferenceLookupResult referenceLookupResult, ReferenceLookupResult referenceLookupResult2) {
            ReferenceLookupResult.StaticKind staticKind = ReferenceLookupResult.StaticKind.STATIC;
            if (referenceLookupResult.hasKind(staticKind) && (!referenceLookupResult2.isSuccess() || referenceLookupResult2.hasKind(staticKind))) {
                return referenceLookupResult.sym;
            }
            ReferenceLookupResult.StaticKind staticKind2 = ReferenceLookupResult.StaticKind.NON_STATIC;
            if (referenceLookupResult2.hasKind(staticKind2) && (!referenceLookupResult.isSuccess() || referenceLookupResult.hasKind(staticKind2))) {
                return referenceLookupResult2.sym;
            }
            if (referenceLookupResult.isSuccess() && referenceLookupResult2.isSuccess()) {
                return Resolve.this.ambiguityError(referenceLookupResult.sym, referenceLookupResult2.sym);
            }
            if (referenceLookupResult.isSuccess() || referenceLookupResult2.isSuccess()) {
                return new BadMethodReferenceError(referenceLookupResult.isSuccess() ? referenceLookupResult.sym : referenceLookupResult2.sym, true);
            }
            return (!referenceLookupResult.canIgnore() || referenceLookupResult2.canIgnore()) ? referenceLookupResult.sym : referenceLookupResult2.sym;
        }
    };
    ReferenceChooser structuralReferenceChooser = new ReferenceChooser() {
        @Override
        public Symbol boundResult(ReferenceLookupResult referenceLookupResult) {
            return (referenceLookupResult.isSuccess() && referenceLookupResult.hasKind(ReferenceLookupResult.StaticKind.STATIC)) ? new BadMethodReferenceError(referenceLookupResult.sym, false) : referenceLookupResult.sym;
        }

        @Override
        public Symbol unboundResult(ReferenceLookupResult referenceLookupResult, ReferenceLookupResult referenceLookupResult2) {
            if (referenceLookupResult.isSuccess() && !referenceLookupResult.hasKind(ReferenceLookupResult.StaticKind.NON_STATIC)) {
                return referenceLookupResult.sym;
            }
            if (referenceLookupResult2.isSuccess() && !referenceLookupResult2.hasKind(ReferenceLookupResult.StaticKind.STATIC)) {
                return referenceLookupResult2.sym;
            }
            if (referenceLookupResult.isSuccess() || referenceLookupResult2.isSuccess()) {
                return new BadMethodReferenceError(referenceLookupResult.isSuccess() ? referenceLookupResult.sym : referenceLookupResult2.sym, true);
            }
            return (!referenceLookupResult.canIgnore() || referenceLookupResult2.canIgnore()) ? referenceLookupResult.sym : referenceLookupResult2.sym;
        }
    };
    private final Formattable.LocalizedString noArgs = new Formattable.LocalizedString("compiler.misc.no.args");
    final List<MethodResolutionPhase> methodResolutionSteps = List.of(MethodResolutionPhase.BASIC, MethodResolutionPhase.BOX, MethodResolutionPhase.VARARITY);
    MethodResolutionContext currentResolutionContext = null;

    public static class AnonymousClass17 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$KindName;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[Kinds.KindName.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$KindName = iArr;
            try {
                iArr[Kinds.KindName.METHOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$KindName[Kinds.KindName.CONSTRUCTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr2;
            try {
                iArr2[JCTree.Tag.LAMBDA.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CONDEXPR.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr3;
            try {
                iArr3[Kinds.Kind.ABSENT_MTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.WRONG_MTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.AMBIGUOUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.WRONG_MTHS.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public class AnonymousClass4 extends AbstractMethodCheck {
        public AnonymousClass4() {
            super();
        }

        public void lambda$varargsAccessible$0(Env env, Type type, InferenceContext inferenceContext) {
            varargsAccessible(env, inferenceContext.asInstType(type), inferenceContext);
        }

        private Attr.ResultInfo methodCheckResult(boolean z10, Type type, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
            return new MethodResultInfo(type, new MethodCheckContext(!deferredAttrContext.phase.isBoxingRequired(), deferredAttrContext, warner, z10) {
                MethodCheckDiag methodDiag;
                final boolean val$varargsCheck;

                {
                    this.val$varargsCheck = z10;
                    Resolve resolve = Resolve.this;
                    this.methodDiag = z10 ? MethodCheckDiag.VARARG_MISMATCH : MethodCheckDiag.ARG_MISMATCH;
                }

                @Override
                public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                    AnonymousClass4.this.reportMC(diagnosticPosition, this.methodDiag, this.deferredAttrContext.inferenceContext, jCDiagnostic);
                }
            });
        }

        private void varargsAccessible(final Env<AttrContext> env, final Type type, InferenceContext inferenceContext) {
            if (inferenceContext.free(type)) {
                inferenceContext.addFreeTypeListener(List.of(type), new Infer.FreeTypeListener() {
                    @Override
                    public final void typesInferred(InferenceContext inferenceContext2) {
                        Resolve.AnonymousClass4.this.lambda$varargsAccessible$0(env, type, inferenceContext2);
                    }
                });
                return;
            }
            Resolve resolve = Resolve.this;
            if (resolve.isAccessible(env, resolve.types.erasure(type))) {
                return;
            }
            Symbol.ClassSymbol classSymbol = env.enclClass.sym;
            reportMC(env.tree, MethodCheckDiag.INACCESSIBLE_VARARGS, inferenceContext, type, Kinds.kindName(classSymbol), classSymbol);
        }

        @Override
        public void argumentsAcceptable(Env<AttrContext> env, DeferredAttr.DeferredAttrContext deferredAttrContext, List<Type> list, List<Type> list2, Warner warner) {
            super.argumentsAcceptable(env, deferredAttrContext, list, list2, warner);
            if (deferredAttrContext.phase.isVarargsRequired()) {
                if (deferredAttrContext.mode == DeferredAttr.AttrMode.CHECK || !Resolve.this.checkVarargsAccessAfterResolution) {
                    varargsAccessible(env, Resolve.this.types.elemtype(list2.last()), deferredAttrContext.inferenceContext);
                }
            }
        }

        @Override
        public void checkArg(JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10, Type type, Type type2, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
            methodCheckResult(z10, type2, deferredAttrContext, warner).check(diagnosticPosition, type);
        }

        @Override
        public MethodCheck mostSpecificCheck(List<Type> list) {
            return new MostSpecificCheck(list);
        }

        public String toString() {
            return "resolveMethodCheck";
        }
    }

    public class AnonymousClass6 implements RecoveryLoadClass {
        public AnonymousClass6() {
        }

        public Iterable lambda$loadClass$2(final List list, Name name) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$null$1;
                    lambda$null$1 = Resolve.AnonymousClass6.this.lambda$null$1(list);
                    return lambda$null$1;
                }
            };
        }

        public Symbol.ClassSymbol lambda$loadClass$3(List list, Symbol.ModuleSymbol moduleSymbol, Name name) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    return Resolve.this.finder.loadClass(moduleSymbol, (Name) it.next());
                } catch (Symbol.CompletionFailure unused) {
                }
            }
            return null;
        }

        public static boolean lambda$loadClass$4(Symbol.ClassSymbol classSymbol) {
            return classSymbol.kind == Kinds.Kind.TYP;
        }

        public Iterator lambda$null$0(Name name) {
            return Resolve.this.syms.getClassesForName(name).iterator();
        }

        public Iterator lambda$null$1(List list) {
            return Iterators.createCompoundIterator(list, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterator lambda$null$0;
                    lambda$null$0 = Resolve.AnonymousClass6.this.lambda$null$0((Name) obj);
                    return lambda$null$0;
                }
            });
        }

        @Override
        public Symbol loadClass(Env<AttrContext> env, Name name) {
            final List<Name> classCandidates = Convert.classCandidates(name);
            return Resolve.this.lookupInvisibleSymbol(env, name, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterable lambda$loadClass$2;
                    lambda$loadClass$2 = Resolve.AnonymousClass6.this.lambda$loadClass$2(classCandidates, (Name) obj);
                    return lambda$loadClass$2;
                }
            }, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    Symbol.ClassSymbol lambda$loadClass$3;
                    lambda$loadClass$3 = Resolve.AnonymousClass6.this.lambda$loadClass$3(classCandidates, (Symbol.ModuleSymbol) obj, (Name) obj2);
                    return lambda$loadClass$3;
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$loadClass$4;
                    lambda$loadClass$4 = Resolve.AnonymousClass6.lambda$loadClass$4((Symbol.ClassSymbol) obj);
                    return lambda$loadClass$4;
                }
            }, false, Resolve.this.typeNotFound);
        }
    }

    public abstract class AbstractMethodCheck implements MethodCheck {
        public AbstractMethodCheck() {
        }

        private JCTree treeForDiagnostics(Env<AttrContext> env) {
            AttrContext attrContext = env.info;
            return attrContext.preferredTreeForDiagnostics != null ? attrContext.preferredTreeForDiagnostics : env.tree;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void argumentsAcceptable(Env<AttrContext> env, DeferredAttr.DeferredAttrContext deferredAttrContext, List<Type> list, List<Type> list2, Warner warner) {
            A a10;
            boolean isVarargsRequired = deferredAttrContext.phase.isVarargsRequired();
            JCTree treeForDiagnostics = treeForDiagnostics(env);
            List<JCTree.JCExpression> args = TreeInfo.args(treeForDiagnostics);
            InferenceContext inferenceContext = deferredAttrContext.inferenceContext;
            Type last = isVarargsRequired ? list2.last() : null;
            if (last == null && list.size() != list2.size()) {
                reportMC(treeForDiagnostics, MethodCheckDiag.ARITY_MISMATCH, inferenceContext, new Object[0]);
            }
            List list3 = list;
            List list4 = list2;
            List<JCTree.JCExpression> list5 = args;
            while (list3.nonEmpty() && (a10 = list4.head) != last) {
                List<JCTree.JCExpression> list6 = list5;
                checkArg(list5 != null ? list5.head : null, false, (Type) list3.head, (Type) a10, deferredAttrContext, warner);
                list3 = list3.tail;
                list4 = list4.tail;
                list5 = list6 != null ? list6.tail : list6;
            }
            List<JCTree.JCExpression> list7 = list5;
            if (list4.head != last) {
                reportMC(treeForDiagnostics, MethodCheckDiag.ARITY_MISMATCH, inferenceContext, new Object[0]);
            }
            if (isVarargsRequired) {
                Type elemtype = Resolve.this.types.elemtype(last);
                while (list3.nonEmpty()) {
                    checkArg(list7 != null ? list7.head : null, true, (Type) list3.head, elemtype, deferredAttrContext, warner);
                    list3 = list3.tail;
                    if (list7 != null) {
                        list7 = list7.tail;
                    }
                }
            }
        }

        public abstract void checkArg(JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10, Type type, Type type2, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner);

        @Override
        public MethodCheck mostSpecificCheck(List<Type> list) {
            return Resolve.this.nilMethodCheck;
        }

        public void reportMC(JCDiagnostic.DiagnosticPosition diagnosticPosition, MethodCheckDiag methodCheckDiag, InferenceContext inferenceContext, Object... objArr) {
            Object[] objArr2;
            Resolve resolve = Resolve.this;
            Infer infer = resolve.infer;
            boolean z10 = inferenceContext != infer.emptyContext;
            InapplicableMethodException inapplicableMethodException = z10 ? infer.inferenceException : resolve.inapplicableMethodException;
            if (!z10 || methodCheckDiag.inferKey.equals(methodCheckDiag.basicKey)) {
                objArr2 = objArr;
            } else {
                Object[] objArr3 = new Object[objArr.length + 1];
                System.arraycopy(objArr, 0, objArr3, 1, objArr.length);
                objArr3[0] = inferenceContext.inferenceVars();
                objArr2 = objArr3;
            }
            String str = z10 ? methodCheckDiag.inferKey : methodCheckDiag.basicKey;
            Resolve resolve2 = Resolve.this;
            throw inapplicableMethodException.setMessage(resolve2.diags.create(JCDiagnostic.DiagnosticType.FRAGMENT, resolve2.log.currentSource(), diagnosticPosition, str, objArr2));
        }
    }

    public class AccessError extends InvalidSymbolError {
        private Env<AttrContext> env;
        private Type site;

        public AccessError(Env<AttrContext> env, Type type, Symbol symbol) {
            super(Kinds.Kind.HIDDEN, symbol, "access error");
            this.env = env;
            this.site = type;
        }

        private String toString(Type type) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) type);
            if (type != null) {
                sb2.append("[tsym:");
                sb2.append((Object) type.tsym);
                if (type.tsym != null) {
                    sb2.append("packge:");
                    sb2.append((Object) type.tsym.packge());
                }
                sb2.append("]");
            }
            return sb2.toString();
        }

        @Override
        public boolean exists() {
            return false;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            Env<AttrContext> env;
            Type type2;
            if (this.sym.owner.type.hasTag(TypeTag.ERROR)) {
                return null;
            }
            Symbol symbol2 = this.sym;
            Name name2 = symbol2.name;
            Resolve resolve = Resolve.this;
            if (name2 == resolve.names.init && symbol2.owner != type.tsym) {
                return new SymbolNotFoundError(resolve, Kinds.Kind.ABSENT_MTH).getDiagnostic(diagnosticType, diagnosticPosition, symbol, type, name, list, list2);
            }
            if ((symbol2.flags() & 1) == 0 && ((env = this.env) == null || (type2 = this.site) == null || Resolve.this.isAccessible(env, type2))) {
                if ((this.sym.flags() & 6) != 0) {
                    Resolve resolve2 = Resolve.this;
                    JCDiagnostic.Factory factory = resolve2.diags;
                    DiagnosticSource currentSource = resolve2.log.currentSource();
                    Symbol symbol3 = this.sym;
                    return factory.create(diagnosticType, currentSource, diagnosticPosition, "report.access", symbol3, Flags.asFlagSet(symbol3.flags() & 6), this.sym.location());
                }
                Resolve resolve3 = Resolve.this;
                JCDiagnostic.Factory factory2 = resolve3.diags;
                DiagnosticSource currentSource2 = resolve3.log.currentSource();
                Symbol symbol4 = this.sym;
                return factory2.create(diagnosticType, currentSource2, diagnosticPosition, "not.def.public.cant.access", symbol4, symbol4.location());
            }
            Symbol symbol5 = this.sym;
            if (symbol5.owner.kind == Kinds.Kind.PCK) {
                Resolve resolve4 = Resolve.this;
                JCDiagnostic.Factory factory3 = resolve4.diags;
                DiagnosticSource currentSource3 = resolve4.log.currentSource();
                Symbol symbol6 = this.sym;
                return factory3.create(diagnosticType, currentSource3, diagnosticPosition, "not.def.access.package.cant.access", symbol6, symbol6.location(), Resolve.this.inaccessiblePackageReason(this.env, this.sym.packge()));
            }
            Symbol.PackageSymbol packge = symbol5.packge();
            Resolve resolve5 = Resolve.this;
            if (packge == resolve5.syms.rootPackage || resolve5.symbolPackageVisible(this.env, this.sym)) {
                Resolve resolve6 = Resolve.this;
                JCDiagnostic.Factory factory4 = resolve6.diags;
                DiagnosticSource currentSource4 = resolve6.log.currentSource();
                Symbol symbol7 = this.sym;
                return factory4.create(diagnosticType, currentSource4, diagnosticPosition, "not.def.access.class.intf.cant.access", symbol7, symbol7.location());
            }
            Resolve resolve7 = Resolve.this;
            JCDiagnostic.Factory factory5 = resolve7.diags;
            DiagnosticSource currentSource5 = resolve7.log.currentSource();
            Symbol symbol8 = this.sym;
            return factory5.create(diagnosticType, currentSource5, diagnosticPosition, "not.def.access.class.intf.cant.access.reason", symbol8, symbol8.location(), this.sym.location().packge(), Resolve.this.inaccessiblePackageReason(this.env, this.sym.packge()));
        }
    }

    public class AmbiguityError extends ResolveError {
        List<Symbol> ambiguousSyms;

        public AmbiguityError(Symbol symbol, Symbol symbol2) {
            super(Kinds.Kind.AMBIGUOUS, "ambiguity error");
            this.ambiguousSyms = List.nil();
            this.ambiguousSyms = flatten(symbol2).appendList(flatten(symbol));
        }

        private List<Symbol> flatten(Symbol symbol) {
            return symbol.kind == Kinds.Kind.AMBIGUOUS ? ((AmbiguityError) symbol.baseSymbol()).ambiguousSyms : List.of(symbol);
        }

        @Override
        public Symbol access(Name name, Symbol.TypeSymbol typeSymbol) {
            Symbol last = this.ambiguousSyms.last();
            return last.kind == Kinds.Kind.TYP ? Resolve.this.types.createErrorType(name, typeSymbol, last.type).tsym : last;
        }

        public AmbiguityError addAmbiguousSymbol(Symbol symbol) {
            this.ambiguousSyms = this.ambiguousSyms.prepend(symbol);
            return this;
        }

        @Override
        public boolean exists() {
            return true;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            List<Symbol> reverse = this.ambiguousSyms.reverse();
            Symbol symbol2 = reverse.head;
            Symbol symbol3 = reverse.tail.head;
            Name name2 = symbol2.name;
            Resolve resolve = Resolve.this;
            if (name2 == resolve.names.init) {
                name2 = symbol2.owner.name;
            }
            return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, "ref.ambiguous", name2, Kinds.kindName(symbol2), symbol2, symbol2.location(type, Resolve.this.types), Kinds.kindName(symbol3), symbol3, symbol3.location(type, Resolve.this.types));
        }

        public Symbol mergeAbstracts(Type type) {
            return Resolve.this.types.mergeAbstracts(this.ambiguousSyms.reverse(), type, true).orElse(this);
        }
    }

    public class ArrayConstructorReferenceLookupHelper extends ReferenceLookupHelper {
        public ArrayConstructorReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(jCMemberReference, Resolve.this.names.init, type, list, list2, methodResolutionPhase);
        }

        @Override
        public Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase) {
            Scope.WriteableScope create = Scope.WriteableScope.create(Resolve.this.syms.arrayClass);
            Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(1L, this.name, null, this.site.tsym);
            methodSymbol.type = new Type.MethodType(List.of(Resolve.this.syms.intType), this.site, List.nil(), Resolve.this.syms.methodClass);
            create.enter(methodSymbol);
            Resolve resolve = Resolve.this;
            return resolve.findMethodInScope(env, this.site, this.name, this.argtypes, this.typeargtypes, create, resolve.methodNotFound, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired(), false);
        }

        @Override
        public JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol) {
            return JCTree.JCMemberReference.ReferenceKind.ARRAY_CTOR;
        }
    }

    public class BadConstructorReferenceError extends InvalidSymbolError {
        public BadConstructorReferenceError(Symbol symbol) {
            super(Kinds.Kind.MISSING_ENCL, symbol, "BadConstructorReferenceError");
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            Resolve resolve = Resolve.this;
            return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, "cant.access.inner.cls.constr", type.tsym.name, list, type.getEnclosingType());
        }
    }

    public class BadMethodReferenceError extends StaticError {
        boolean unboundLookup;

        public BadMethodReferenceError(Symbol symbol, boolean z10) {
            super(symbol);
            this.unboundLookup = z10;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            String str = !this.unboundLookup ? "bad.static.method.in.bound.lookup" : this.sym.isStatic() ? "bad.static.method.in.unbound.lookup" : "bad.instance.method.in.unbound.lookup";
            if (this.sym.kind.isResolutionError()) {
                return ((ResolveError) this.sym).getDiagnostic(diagnosticType, diagnosticPosition, symbol, type, name, list, list2);
            }
            Resolve resolve = Resolve.this;
            return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, str, Kinds.kindName(this.sym), this.sym);
        }
    }

    public class BadVarargsMethod extends ResolveError {
        ResolveError delegatedError;

        public BadVarargsMethod(ResolveError resolveError) {
            super(resolveError.kind, "badVarargs");
            this.delegatedError = resolveError;
        }

        @Override
        public Symbol access(Name name, Symbol.TypeSymbol typeSymbol) {
            return this.delegatedError.access(name, typeSymbol);
        }

        @Override
        public Symbol baseSymbol() {
            return this.delegatedError.baseSymbol();
        }

        @Override
        public boolean exists() {
            return true;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            return this.delegatedError.getDiagnostic(diagnosticType, diagnosticPosition, symbol, type, name, list, list2);
        }
    }

    public abstract class BasicLookupHelper extends LookupHelper {
        public BasicLookupHelper(Resolve resolve, Name name, Type type, List<Type> list, List<Type> list2) {
            this(name, type, list, list2, MethodResolutionPhase.VARARITY);
        }

        @Override
        public Symbol access(Env<AttrContext> env, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol symbol2) {
            return symbol2.kind.isResolutionError() ? Resolve.this.accessMethod(symbol2, diagnosticPosition, symbol, this.site, this.name, true, this.argtypes, this.typeargtypes) : symbol2;
        }

        @Override
        public void debug(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
            Resolve.this.reportVerboseResolutionDiagnostic(diagnosticPosition, this.name, this.site, this.argtypes, this.typeargtypes, symbol);
        }

        public abstract Symbol doLookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase);

        @Override
        public final Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase) {
            Symbol doLookup = doLookup(env, methodResolutionPhase);
            return doLookup.kind == Kinds.Kind.AMBIGUOUS ? ((AmbiguityError) doLookup.baseSymbol()).mergeAbstracts(this.site) : doLookup;
        }

        public BasicLookupHelper(Name name, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(name, type, list, list2, methodResolutionPhase);
        }
    }

    public class ConstructorReferenceLookupHelper extends ReferenceLookupHelper {
        boolean needsInference;

        public ConstructorReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(jCMemberReference, Resolve.this.names.init, type, list, list2, methodResolutionPhase);
            if (type.isRaw()) {
                this.site = new Type.ClassType(type.getEnclosingType(), type.tsym.type.getTypeArguments(), type.tsym, type.getMetadata());
                this.needsInference = true;
            }
        }

        @Override
        public Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase) {
            Symbol findDiamond = this.needsInference ? Resolve.this.findDiamond(env, this.site, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired()) : Resolve.this.findMethod(env, this.site, this.name, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
            return Resolve.this.enclosingInstanceMissing(env, this.site) ? new BadConstructorReferenceError(findDiamond) : findDiamond;
        }

        @Override
        public JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol) {
            return this.site.getEnclosingType().hasTag(TypeTag.NONE) ? JCTree.JCMemberReference.ReferenceKind.TOPLEVEL : JCTree.JCMemberReference.ReferenceKind.IMPLICIT_INNER;
        }
    }

    public class DiamondError extends InapplicableSymbolError {
        Symbol sym;

        public DiamondError(Symbol symbol, MethodResolutionContext methodResolutionContext) {
            super(symbol.kind, "diamondError", methodResolutionContext);
            this.sym = symbol;
        }

        public JCDiagnostic getDetails() {
            Symbol symbol = this.sym;
            if (symbol.kind == Kinds.Kind.WRONG_MTH) {
                return ((InapplicableSymbolError) symbol.baseSymbol()).errCandidate().snd;
            }
            return null;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            JCDiagnostic details = getDetails();
            if (details != null && Resolve.this.compactMethodDiags) {
                Resolve resolve = Resolve.this;
                JCDiagnostic rewrite = MethodResolutionDiagHelper.rewrite(resolve.diags, diagnosticPosition, resolve.log.currentSource(), diagnosticType, details);
                if (rewrite != null) {
                    return rewrite;
                }
            }
            String str = details == null ? "cant.apply.diamond" : "cant.apply.diamond.1";
            Resolve resolve2 = Resolve.this;
            return resolve2.diags.create(diagnosticType, resolve2.log.currentSource(), diagnosticPosition, str, Resolve.this.diags.fragment("diamond", type.tsym), details);
        }
    }

    public static class InapplicableMethodException extends RuntimeException {
        private static final long serialVersionUID = 0;
        JCDiagnostic diagnostic = null;
        JCDiagnostic.Factory diags;

        public InapplicableMethodException(JCDiagnostic.Factory factory) {
            this.diags = factory;
        }

        public JCDiagnostic getDiagnostic() {
            return this.diagnostic;
        }

        public InapplicableMethodException setMessage() {
            return setMessage((JCDiagnostic) null);
        }

        public InapplicableMethodException setMessage(String str) {
            return setMessage(str != null ? this.diags.fragment(str, new Object[0]) : null);
        }

        public InapplicableMethodException setMessage(String str, Object... objArr) {
            return setMessage(str != null ? this.diags.fragment(str, objArr) : null);
        }

        public InapplicableMethodException setMessage(JCDiagnostic jCDiagnostic) {
            this.diagnostic = jCDiagnostic;
            return this;
        }
    }

    public class InapplicableSymbolError extends ResolveError {
        protected MethodResolutionContext resolveContext;

        public InapplicableSymbolError(Resolve resolve, MethodResolutionContext methodResolutionContext) {
            this(Kinds.Kind.WRONG_MTH, "inapplicable symbol error", methodResolutionContext);
        }

        @Override
        public Symbol access(Name name, Symbol.TypeSymbol typeSymbol) {
            Resolve resolve = Resolve.this;
            return resolve.types.createErrorType(name, typeSymbol, resolve.syms.errSymbol.type).tsym;
        }

        public Pair<Symbol, JCDiagnostic> errCandidate() {
            Iterator it = this.resolveContext.candidates.iterator();
            MethodResolutionContext.Candidate candidate = null;
            while (it.hasNext()) {
                MethodResolutionContext.Candidate candidate2 = (MethodResolutionContext.Candidate) it.next();
                if (!candidate2.isApplicable()) {
                    candidate = candidate2;
                }
            }
            Assert.checkNonNull(candidate);
            return new Pair<>(candidate.sym, candidate.details);
        }

        @Override
        public boolean exists() {
            return true;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            if (name == Resolve.this.names.error) {
                return null;
            }
            Pair<Symbol, JCDiagnostic> errCandidate = errCandidate();
            if (Resolve.this.compactMethodDiags) {
                Resolve resolve = Resolve.this;
                JCDiagnostic rewrite = MethodResolutionDiagHelper.rewrite(resolve.diags, diagnosticPosition, resolve.log.currentSource(), diagnosticType, errCandidate.snd);
                if (rewrite != null) {
                    return rewrite;
                }
            }
            Symbol asMemberOf = errCandidate.fst.asMemberOf(type, Resolve.this.types);
            Resolve resolve2 = Resolve.this;
            JCDiagnostic.Factory factory = resolve2.diags;
            DiagnosticSource currentSource = resolve2.log.currentSource();
            Kinds.KindName kindName = Kinds.kindName(asMemberOf);
            Name name2 = asMemberOf.name;
            Resolve resolve3 = Resolve.this;
            if (name2 == resolve3.names.init) {
                name2 = asMemberOf.owner.name;
            }
            return factory.create(diagnosticType, currentSource, diagnosticPosition, "cant.apply.symbol", kindName, name2, resolve3.methodArguments(asMemberOf.type.getParameterTypes()), Resolve.this.methodArguments(list), Kinds.kindName(asMemberOf.owner), asMemberOf.owner.type, errCandidate.snd);
        }

        @Override
        public String toString() {
            return super.toString();
        }

        public InapplicableSymbolError(Kinds.Kind kind, String str, MethodResolutionContext methodResolutionContext) {
            super(kind, str);
            this.resolveContext = methodResolutionContext;
        }
    }

    public class InapplicableSymbolsError extends InapplicableSymbolError {
        public InapplicableSymbolsError(MethodResolutionContext methodResolutionContext) {
            super(Kinds.Kind.WRONG_MTHS, "inapplicable symbols", methodResolutionContext);
        }

        private List<JCDiagnostic> candidateDetails(Map<Symbol, JCDiagnostic> map, Type type) {
            List<JCDiagnostic> nil = List.nil();
            for (Map.Entry<Symbol, JCDiagnostic> entry : map.entrySet()) {
                Symbol key = entry.getKey();
                nil = nil.prepend(Resolve.this.diags.fragment("inapplicable.method", Kinds.kindName(key), key.location(type, Resolve.this.types), key.asMemberOf(type, Resolve.this.types), entry.getValue()));
            }
            return nil;
        }

        public Map<Symbol, JCDiagnostic> mapCandidates() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = this.resolveContext.candidates.iterator();
            while (it.hasNext()) {
                MethodResolutionContext.Candidate candidate = (MethodResolutionContext.Candidate) it.next();
                if (!candidate.isApplicable()) {
                    linkedHashMap.put(candidate.sym, candidate.details);
                }
            }
            return linkedHashMap;
        }

        public Map<Symbol, JCDiagnostic> filterCandidates(Map<Symbol, JCDiagnostic> map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<Symbol, JCDiagnostic> entry : map.entrySet()) {
                JCDiagnostic value = entry.getValue();
                if (!new MethodResolutionDiagHelper.Template(MethodCheckDiag.ARITY_MISMATCH.regex(), new MethodResolutionDiagHelper.Template[0]).matches(value)) {
                    linkedHashMap.put(entry.getKey(), value);
                }
            }
            return linkedHashMap;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            List<Type> list3;
            Name name2;
            Map<Symbol, JCDiagnostic> mapCandidates = mapCandidates();
            Map<Symbol, JCDiagnostic> filterCandidates = Resolve.this.compactMethodDiags ? filterCandidates(mapCandidates) : mapCandidates();
            if (filterCandidates.isEmpty()) {
                filterCandidates = mapCandidates;
            }
            boolean z10 = mapCandidates.size() != filterCandidates.size();
            if (filterCandidates.size() <= 1) {
                if (filterCandidates.size() != 1) {
                    return new SymbolNotFoundError(Resolve.this, Kinds.Kind.ABSENT_MTH).getDiagnostic(diagnosticType, diagnosticPosition, symbol, type, name, list, list2);
                }
                Map.Entry<Symbol, JCDiagnostic> next = filterCandidates.entrySet().iterator().next();
                final Pair pair = new Pair(next.getKey(), next.getValue());
                JCDiagnostic diagnostic = new InapplicableSymbolError(this.resolveContext) {
                    {
                        Resolve resolve = Resolve.this;
                    }

                    @Override
                    public Pair<Symbol, JCDiagnostic> errCandidate() {
                        return pair;
                    }
                }.getDiagnostic(diagnosticType, diagnosticPosition, symbol, type, name, list, list2);
                if (z10) {
                    diagnostic.setFlag(JCDiagnostic.DiagnosticFlag.COMPRESSED);
                }
                return diagnostic;
            }
            JCDiagnostic.Factory factory = Resolve.this.diags;
            EnumSet of2 = z10 ? EnumSet.of(JCDiagnostic.DiagnosticFlag.COMPRESSED) : EnumSet.noneOf(JCDiagnostic.DiagnosticFlag.class);
            DiagnosticSource currentSource = Resolve.this.log.currentSource();
            Kinds.KindName absentKind = name == Resolve.this.names.init ? Kinds.KindName.CONSTRUCTOR : this.kind.absentKind();
            Resolve resolve = Resolve.this;
            if (name == resolve.names.init) {
                name2 = type.tsym.name;
                list3 = list;
            } else {
                list3 = list;
                name2 = name;
            }
            return new JCDiagnostic.MultilineDiagnostic(factory.create(diagnosticType, null, of2, currentSource, diagnosticPosition, "cant.apply.symbols", absentKind, name2, resolve.methodArguments(list3)), candidateDetails(filterCandidates, type));
        }
    }

    public enum InterfaceLookupPhase {
        ABSTRACT_OK {
            @Override
            public InterfaceLookupPhase update(Symbol symbol, Resolve resolve) {
                return (symbol.flags() & 17920) != 0 ? this : InterfaceLookupPhase.DEFAULT_OK;
            }
        },
        DEFAULT_OK {
            @Override
            public InterfaceLookupPhase update(Symbol symbol, Resolve resolve) {
                return this;
            }
        };

        public abstract InterfaceLookupPhase update(Symbol symbol, Resolve resolve);
    }

    public abstract class InvalidSymbolError extends ResolveError {
        Symbol sym;

        public InvalidSymbolError(Kinds.Kind kind, Symbol symbol, String str) {
            super(kind, str);
            this.sym = symbol;
        }

        @Override
        public Symbol access(Name name, Symbol.TypeSymbol typeSymbol) {
            return (this.sym.kind.isResolutionError() || !this.sym.kind.matches(Kinds.KindSelector.TYP)) ? this.sym : Resolve.this.types.createErrorType(name, typeSymbol, this.sym.type).tsym;
        }

        @Override
        public boolean exists() {
            return true;
        }

        @Override
        public String toString() {
            return super.toString() + " wrongSym=" + ((Object) this.sym);
        }
    }

    public class InvisibleSymbolError extends InvalidSymbolError {
        private final Env<AttrContext> env;
        private final boolean suppressError;

        public InvisibleSymbolError(Env<AttrContext> env, boolean z10, Symbol symbol) {
            super(Kinds.Kind.HIDDEN, symbol, "invisible class error");
            this.env = env;
            this.suppressError = z10;
            this.name = symbol.name;
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            Kinds.Kind kind;
            if (this.suppressError) {
                return null;
            }
            Symbol symbol2 = this.sym;
            if (symbol2.kind == Kinds.Kind.PCK) {
                JCDiagnostic inaccessiblePackageReason = Resolve.this.inaccessiblePackageReason(this.env, symbol2.packge());
                Resolve resolve = Resolve.this;
                return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, "package.not.visible", this.sym, inaccessiblePackageReason);
            }
            JCDiagnostic inaccessiblePackageReason2 = Resolve.this.inaccessiblePackageReason(this.env, symbol2.packge());
            if (diagnosticPosition.getTree() != null) {
                Symbol symbol3 = this.sym;
                JCTree tree = diagnosticPosition.getTree();
                while (true) {
                    Kinds.Kind kind2 = symbol3.kind;
                    kind = Kinds.Kind.PCK;
                    if (kind2 == kind || !tree.hasTag(JCTree.Tag.SELECT)) {
                        break;
                    }
                    symbol3 = symbol3.owner;
                    tree = ((JCTree.JCFieldAccess) tree).selected;
                }
                if (symbol3.kind == kind) {
                    JCDiagnostic.DiagnosticPosition pos = tree.pos();
                    Resolve resolve2 = Resolve.this;
                    return resolve2.diags.create(diagnosticType, resolve2.log.currentSource(), pos, "package.not.visible", symbol3, inaccessiblePackageReason2);
                }
            }
            Resolve resolve3 = Resolve.this;
            JCDiagnostic.Factory factory = resolve3.diags;
            DiagnosticSource currentSource = resolve3.log.currentSource();
            Symbol symbol4 = this.sym;
            return factory.create(diagnosticType, currentSource, diagnosticPosition, "not.def.access.package.cant.access", symbol4, symbol4.packge(), inaccessiblePackageReason2);
        }
    }

    public interface LogResolveHelper {
        List<Type> getArgumentTypes(ResolveError resolveError, Symbol symbol, Name name, List<Type> list);

        boolean resolveDiagnosticNeeded(Type type, List<Type> list, List<Type> list2);
    }

    public class LookupFilter implements Filter<Symbol> {
        boolean abstractOk;

        public LookupFilter(boolean z10) {
            this.abstractOk = z10;
        }

        @Override
        public boolean accepts(Symbol symbol) {
            long flags = symbol.flags();
            return symbol.kind == Kinds.Kind.MTH && (4096 & flags) == 0 && (this.abstractOk || (8796093022208L & flags) != 0 || (flags & 1024) == 0);
        }
    }

    public abstract class LookupHelper {
        List<Type> argtypes;
        MethodResolutionPhase maxPhase;
        Name name;
        Type site;
        List<Type> typeargtypes;

        public LookupHelper(Name name, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            this.name = name;
            this.site = type;
            this.argtypes = list;
            this.typeargtypes = list2;
            this.maxPhase = methodResolutionPhase;
        }

        public abstract Symbol access(Env<AttrContext> env, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol symbol2);

        public void debug(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        }

        public abstract Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase);

        public final boolean shouldStop(Symbol symbol, MethodResolutionPhase methodResolutionPhase) {
            return methodResolutionPhase.ordinal() > this.maxPhase.ordinal() || !symbol.kind.isResolutionError() || symbol.kind == Kinds.Kind.AMBIGUOUS;
        }
    }

    public interface MethodCheck {
        void argumentsAcceptable(Env<AttrContext> env, DeferredAttr.DeferredAttrContext deferredAttrContext, List<Type> list, List<Type> list2, Warner warner);

        MethodCheck mostSpecificCheck(List<Type> list);
    }

    public abstract class MethodCheckContext implements Check.CheckContext {
        DeferredAttr.DeferredAttrContext deferredAttrContext;
        Warner rsWarner;
        boolean strict;

        public MethodCheckContext(boolean z10, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
            this.strict = z10;
            this.deferredAttrContext = deferredAttrContext;
            this.rsWarner = warner;
        }

        @Override
        public Warner checkWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
            return this.rsWarner;
        }

        @Override
        public boolean compatible(Type type, Type type2, Warner warner) {
            InferenceContext inferenceContext = this.deferredAttrContext.inferenceContext;
            return this.strict ? Resolve.this.types.isSubtypeUnchecked(inferenceContext.asUndetVar(type), inferenceContext.asUndetVar(type2), warner) : Resolve.this.types.isConvertible(inferenceContext.asUndetVar(type), inferenceContext.asUndetVar(type2), warner);
        }

        @Override
        public DeferredAttr.DeferredAttrContext deferredAttrContext() {
            return this.deferredAttrContext;
        }

        @Override
        public InferenceContext inferenceContext() {
            return this.deferredAttrContext.inferenceContext;
        }

        @Override
        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
            throw Resolve.this.inapplicableMethodException.setMessage(jCDiagnostic);
        }

        public String toString() {
            return "MethodCheckContext";
        }
    }

    public enum MethodCheckDiag {
        ARITY_MISMATCH("arg.length.mismatch", "infer.arg.length.mismatch"),
        ARG_MISMATCH("no.conforming.assignment.exists", "infer.no.conforming.assignment.exists"),
        VARARG_MISMATCH("varargs.argument.mismatch", "infer.varargs.argument.mismatch"),
        INACCESSIBLE_VARARGS("inaccessible.varargs.type", "inaccessible.varargs.type");

        final String basicKey;
        final String inferKey;

        MethodCheckDiag(String str, String str2) {
            this.basicKey = str;
            this.inferKey = str2;
        }

        public String regex() {
            return String.format("([a-z]*\\.)*(%s|%s)", this.basicKey, this.inferKey);
        }
    }

    public class MethodReferenceCheck extends AbstractMethodCheck {
        InferenceContext pendingInferenceContext;

        public MethodReferenceCheck(InferenceContext inferenceContext) {
            super();
            this.pendingInferenceContext = inferenceContext;
        }

        private Attr.ResultInfo methodCheckResult(boolean z10, Type type, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
            return new MethodResultInfo(type, new MethodCheckContext(!deferredAttrContext.phase.isBoxingRequired(), deferredAttrContext, warner, z10) {
                MethodCheckDiag methodDiag;
                final boolean val$varargsCheck;

                {
                    this.val$varargsCheck = z10;
                    Resolve resolve = Resolve.this;
                    this.methodDiag = z10 ? MethodCheckDiag.VARARG_MISMATCH : MethodCheckDiag.ARG_MISMATCH;
                }

                @Override
                public boolean compatible(Type type2, Type type3, Warner warner2) {
                    Type asUndetVar = MethodReferenceCheck.this.pendingInferenceContext.asUndetVar(type2);
                    if (asUndetVar.hasTag(TypeTag.UNDETVAR) && type3.isPrimitive()) {
                        type3 = Resolve.this.types.boxedClass(type3).type;
                    }
                    return super.compatible(asUndetVar, type3, warner2);
                }

                @Override
                public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                    MethodReferenceCheck.this.reportMC(diagnosticPosition, this.methodDiag, this.deferredAttrContext.inferenceContext, jCDiagnostic);
                }
            });
        }

        @Override
        public void checkArg(JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10, Type type, Type type2, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner) {
            methodCheckResult(z10, type2, deferredAttrContext, warner).check(diagnosticPosition, type);
        }

        @Override
        public MethodCheck mostSpecificCheck(List<Type> list) {
            return new MostSpecificCheck(list);
        }

        public String toString() {
            return "MethodReferenceCheck";
        }
    }

    public class MethodReferenceLookupHelper extends ReferenceLookupHelper {
        Type originalSite;

        public MethodReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Name name, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(jCMemberReference, name, Resolve.this.types.skipTypeVars(type, true), list, list2, methodResolutionPhase);
            this.originalSite = type;
        }

        @Override
        public final Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase) {
            return Resolve.this.findMethod(env, this.site, this.name, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
        }

        @Override
        public JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol) {
            if (symbol.isStatic()) {
                return JCTree.JCMemberReference.ReferenceKind.STATIC;
            }
            Name name = TreeInfo.name(this.referenceTree.getQualifierExpression());
            return (name == null || name != Resolve.this.names._super) ? JCTree.JCMemberReference.ReferenceKind.BOUND : JCTree.JCMemberReference.ReferenceKind.SUPER;
        }

        @Override
        public ReferenceLookupHelper unboundLookup(InferenceContext inferenceContext) {
            return TreeInfo.isStaticSelector(this.referenceTree.expr, Resolve.this.names) ? (this.argtypes.nonEmpty() && (this.argtypes.head.hasTag(TypeTag.NONE) || Resolve.this.types.isSubtypeUnchecked(inferenceContext.asUndetVar(this.argtypes.head), this.originalSite))) ? new UnboundMethodReferenceLookupHelper(this.referenceTree, this.name, this.originalSite, this.argtypes, this.typeargtypes, this.maxPhase) : new ReferenceLookupHelper(this.referenceTree, this.name, this.site, this.argtypes, this.typeargtypes, this.maxPhase) {
                {
                    Resolve resolve = Resolve.this;
                }

                @Override
                public Symbol lookup(Env<AttrContext> env, MethodResolutionPhase methodResolutionPhase) {
                    return Resolve.this.methodNotFound;
                }

                @Override
                public JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol) {
                    Assert.error();
                    return null;
                }

                @Override
                public ReferenceLookupHelper unboundLookup(InferenceContext inferenceContext2) {
                    return this;
                }
            } : super.unboundLookup(inferenceContext);
        }
    }

    public class MethodResolutionContext {
        MethodCheck methodCheck;
        private List<Candidate> candidates = List.nil();
        MethodResolutionPhase step = null;
        private boolean internalResolution = false;
        private DeferredAttr.AttrMode attrMode = DeferredAttr.AttrMode.SPECULATIVE;

        public class Candidate {
            final JCDiagnostic details;
            final Type mtype;
            final MethodResolutionPhase step;
            final Symbol sym;

            public boolean equals(Object obj) {
                if (obj instanceof Candidate) {
                    Symbol symbol = this.sym;
                    Symbol symbol2 = ((Candidate) obj).sym;
                    if (symbol != symbol2 && (symbol.overrides(symbol2, symbol.owner.type.tsym, Resolve.this.types, false) || symbol2.overrides(symbol, symbol2.owner.type.tsym, Resolve.this.types, false))) {
                        return true;
                    }
                    if ((symbol.isConstructor() || symbol2.isConstructor()) && symbol.owner != symbol2.owner) {
                        return true;
                    }
                }
                return false;
            }

            public boolean isApplicable() {
                return this.mtype != null;
            }

            private Candidate(MethodResolutionPhase methodResolutionPhase, Symbol symbol, JCDiagnostic jCDiagnostic, Type type) {
                this.step = methodResolutionPhase;
                this.sym = symbol;
                this.details = jCDiagnostic;
                this.mtype = type;
            }
        }

        public MethodResolutionContext() {
            this.methodCheck = Resolve.this.resolveMethodCheck;
        }

        public void addApplicableCandidate(Symbol symbol, Type type) {
            this.candidates = this.candidates.append(new Candidate(Resolve.this.currentResolutionContext.step, symbol, null, type));
        }

        public void addInapplicableCandidate(Symbol symbol, JCDiagnostic jCDiagnostic) {
            this.candidates = this.candidates.append(new Candidate(Resolve.this.currentResolutionContext.step, symbol, jCDiagnostic, null));
        }

        public DeferredAttr.AttrMode attrMode() {
            return this.attrMode;
        }

        public DeferredAttr.DeferredAttrContext deferredAttrContext(Symbol symbol, InferenceContext inferenceContext, Attr.ResultInfo resultInfo, Warner warner) {
            DeferredAttr.DeferredAttrContext deferredAttrContext = resultInfo == null ? Resolve.this.deferredAttr.emptyDeferredAttrContext : resultInfo.checkContext.deferredAttrContext();
            DeferredAttr deferredAttr = Resolve.this.deferredAttr;
            deferredAttr.getClass();
            return new DeferredAttr.DeferredAttrContext(this.attrMode, symbol, this.step, inferenceContext, deferredAttrContext, warner);
        }

        public boolean internal() {
            return this.internalResolution;
        }
    }

    public static class MethodResolutionDiagHelper {
        static final Template argMismatchTemplate;
        static final Template inferArgMismatchTemplate;
        static final Map<Template, DiagnosticRewriter> rewriters;
        static final Template skip;

        public static class AnonymousClass2 extends Template {
            BiPredicate<Object, List<Type>> containsPredicate;

            public AnonymousClass2(String str, Template... templateArr) {
                super(str, templateArr);
                this.containsPredicate = new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        boolean lambda$$0;
                        lambda$$0 = Resolve.MethodResolutionDiagHelper.AnonymousClass2.this.lambda$$0(obj, (List) obj2);
                        return lambda$$0;
                    }
                };
            }

            public boolean lambda$$0(Object obj, List list) {
                if (obj instanceof Type) {
                    return ((Type) obj).containsAny(list);
                }
                if (obj instanceof JCDiagnostic) {
                    return containsAny((JCDiagnostic) obj, list);
                }
                return false;
            }

            public boolean lambda$containsAny$1(List list, Object obj) {
                return this.containsPredicate.test(obj, list);
            }

            public boolean containsAny(JCDiagnostic jCDiagnostic, final List<Type> list) {
                return Stream.of(jCDiagnostic.getArgs()).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$containsAny$1;
                        lambda$containsAny$1 = Resolve.MethodResolutionDiagHelper.AnonymousClass2.this.lambda$containsAny$1(list, obj);
                        return lambda$containsAny$1;
                    }
                });
            }

            @Override
            public boolean matches(Object obj) {
                if (!super.matches(obj)) {
                    return false;
                }
                JCDiagnostic jCDiagnostic = (JCDiagnostic) obj;
                return !containsAny(jCDiagnostic, (List) jCDiagnostic.getArgs()[0]);
            }
        }

        public static class ArgMismatchRewriter implements DiagnosticRewriter {
            int causeIndex;

            public ArgMismatchRewriter(int i10) {
                this.causeIndex = i10;
            }

            @Override
            public JCDiagnostic rewriteDiagnostic(JCDiagnostic.Factory factory, JCDiagnostic.DiagnosticPosition diagnosticPosition, DiagnosticSource diagnosticSource, JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic jCDiagnostic) {
                JCDiagnostic jCDiagnostic2 = (JCDiagnostic) jCDiagnostic.getArgs()[this.causeIndex];
                JCDiagnostic.DiagnosticPosition diagnosticPosition2 = jCDiagnostic.getDiagnosticPosition();
                return factory.create(diagnosticType, diagnosticSource, diagnosticPosition2 == null ? diagnosticPosition : diagnosticPosition2, "prob.found.req", jCDiagnostic2);
            }
        }

        public interface DiagnosticRewriter {
            JCDiagnostic rewriteDiagnostic(JCDiagnostic.Factory factory, JCDiagnostic.DiagnosticPosition diagnosticPosition, DiagnosticSource diagnosticSource, JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic jCDiagnostic);
        }

        public static class Template {
            String regex;
            Template[] subTemplates;

            public Template(String str, Template... templateArr) {
                this.regex = str;
                this.subTemplates = templateArr;
            }

            public boolean matches(Object obj) {
                JCDiagnostic jCDiagnostic = (JCDiagnostic) obj;
                Object[] args = jCDiagnostic.getArgs();
                if (!jCDiagnostic.getCode().matches(this.regex) || this.subTemplates.length != jCDiagnostic.getArgs().length) {
                    return false;
                }
                for (int i10 = 0; i10 < args.length; i10++) {
                    if (!this.subTemplates[i10].matches(args[i10])) {
                        return false;
                    }
                }
                return true;
            }
        }

        static {
            Template template = new Template("", new Template[0]) {
                @Override
                public boolean matches(Object obj) {
                    return true;
                }
            };
            skip = template;
            MethodCheckDiag methodCheckDiag = MethodCheckDiag.ARG_MISMATCH;
            Template template2 = new Template(methodCheckDiag.regex(), template);
            argMismatchTemplate = template2;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(methodCheckDiag.regex(), template, template);
            inferArgMismatchTemplate = anonymousClass2;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            rewriters = linkedHashMap;
            linkedHashMap.put(template2, new ArgMismatchRewriter(0));
            linkedHashMap.put(anonymousClass2, new ArgMismatchRewriter(1));
        }

        public static JCDiagnostic rewrite(JCDiagnostic.Factory factory, JCDiagnostic.DiagnosticPosition diagnosticPosition, DiagnosticSource diagnosticSource, JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic jCDiagnostic) {
            for (Map.Entry<Template, DiagnosticRewriter> entry : rewriters.entrySet()) {
                if (entry.getKey().matches(jCDiagnostic)) {
                    JCDiagnostic rewriteDiagnostic = entry.getValue().rewriteDiagnostic(factory, diagnosticPosition, diagnosticSource, diagnosticType, jCDiagnostic);
                    rewriteDiagnostic.setFlag(JCDiagnostic.DiagnosticFlag.COMPRESSED);
                    return rewriteDiagnostic;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'VARARITY' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class MethodResolutionPhase {
        private static final MethodResolutionPhase[] $VALUES;
        public static final MethodResolutionPhase BASIC;
        public static final MethodResolutionPhase BOX;
        public static final MethodResolutionPhase VARARITY;
        final boolean isBoxingRequired;
        final boolean isVarargsRequired;

        static {
            MethodResolutionPhase methodResolutionPhase = new MethodResolutionPhase("BASIC", 0, false, false);
            BASIC = methodResolutionPhase;
            boolean z10 = true;
            MethodResolutionPhase methodResolutionPhase2 = new MethodResolutionPhase("BOX", 1, true, false);
            BOX = methodResolutionPhase2;
            MethodResolutionPhase methodResolutionPhase3 = new MethodResolutionPhase("VARARITY", 2, z10, z10) {
                @Override
                public Symbol mergeResults(Symbol symbol, Symbol symbol2) {
                    int i10;
                    Assert.check(symbol.kind.isResolutionError() && symbol.kind != Kinds.Kind.AMBIGUOUS);
                    if (!symbol2.kind.isResolutionError()) {
                        return symbol2;
                    }
                    int[] iArr = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
                    int i11 = iArr[symbol.kind.ordinal()];
                    return ((i11 == 2 || i11 == 5) && (i10 = iArr[symbol2.kind.ordinal()]) != 1) ? (i10 == 2 && symbol.kind == Kinds.Kind.WRONG_MTHS) ? symbol : symbol2 : symbol;
                }
            };
            VARARITY = methodResolutionPhase3;
            $VALUES = new MethodResolutionPhase[]{methodResolutionPhase, methodResolutionPhase2, methodResolutionPhase3};
        }

        public static MethodResolutionPhase valueOf(String str) {
            return (MethodResolutionPhase) Enum.valueOf(MethodResolutionPhase.class, str);
        }

        public static MethodResolutionPhase[] values() {
            return (MethodResolutionPhase[]) $VALUES.clone();
        }

        public boolean isBoxingRequired() {
            return this.isBoxingRequired;
        }

        public boolean isVarargsRequired() {
            return this.isVarargsRequired;
        }

        public Symbol mergeResults(Symbol symbol, Symbol symbol2) {
            return symbol2;
        }

        private MethodResolutionPhase(String str, int i10, boolean z10, boolean z11) {
            this.isBoxingRequired = z10;
            this.isVarargsRequired = z11;
        }
    }

    public class MethodResultInfo extends Attr.ResultInfo {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public MethodResultInfo(Type type, Check.CheckContext checkContext) {
            super(r2, Kinds.KindSelector.VAL, type, checkContext);
            Attr attr = Resolve.this.attr;
            attr.getClass();
        }

        private Type U(Type type) {
            return type == this.pt ? type : Resolve.this.types.cvarUpperBound(type);
        }

        @Override
        public Type check(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
            if (type.hasTag(TypeTag.DEFERRED)) {
                return ((DeferredAttr.DeferredType) type).check(this);
            }
            Type U10 = U(type);
            return super.check(diagnosticPosition, Resolve.this.chk.checkNonVoid(diagnosticPosition, (diagnosticPosition == null || diagnosticPosition.getTree() == null) ? Resolve.this.types.capture(U10) : this.checkContext.inferenceContext().cachedCapture(diagnosticPosition.getTree(), U10, true)));
        }

        @Override
        public MethodResultInfo dup(Type type) {
            return new MethodResultInfo(type, this.checkContext);
        }

        @Override
        public Attr.ResultInfo dup(Check.CheckContext checkContext) {
            return new MethodResultInfo(this.pt, checkContext);
        }

        @Override
        public Attr.ResultInfo dup(Type type, Check.CheckContext checkContext) {
            return new MethodResultInfo(type, checkContext);
        }
    }

    public class MostSpecificCheck implements MethodCheck {
        List<Type> actuals;

        public class MostSpecificCheckContext extends MethodCheckContext {
            Type actual;

            public class MostSpecificFunctionReturnChecker extends DeferredAttr.PolyScanner {
                boolean result = true;
                final Type sRet;
                final Type tRet;

                public MostSpecificFunctionReturnChecker(Type type, Type type2) {
                    this.tRet = type;
                    this.sRet = type2;
                }

                public JCTree.JCExpression asExpr(JCTree.JCExpression jCExpression) {
                    JCTree speculativeTree;
                    return (!jCExpression.type.hasTag(TypeTag.DEFERRED) || (speculativeTree = ((DeferredAttr.DeferredType) jCExpression.type).speculativeTree(MostSpecificCheckContext.this.deferredAttrContext)) == Resolve.this.deferredAttr.stuckTree) ? jCExpression : (JCTree.JCExpression) speculativeTree;
                }

                private List<JCTree.JCExpression> lambdaResults(JCTree.JCLambda jCLambda) {
                    if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                        return List.of(asExpr((JCTree.JCExpression) jCLambda.body));
                    }
                    final ListBuffer listBuffer = new ListBuffer();
                    new DeferredAttr.LambdaReturnScanner() {
                        @Override
                        public void visitReturn(JCTree.JCReturn jCReturn) {
                            JCTree.JCExpression jCExpression = jCReturn.expr;
                            if (jCExpression != null) {
                                listBuffer.append(MostSpecificFunctionReturnChecker.this.asExpr(jCExpression));
                            }
                        }
                    }.scan(jCLambda.body);
                    return listBuffer.toList();
                }

                @Override
                public void skip(JCTree jCTree) {
                    this.result = false;
                }

                @Override
                public void visitConditional(JCTree.JCConditional jCConditional) {
                    scan(asExpr(jCConditional.truepart));
                    scan(asExpr(jCConditional.falsepart));
                }

                @Override
                public void visitLambda(JCTree.JCLambda jCLambda) {
                    Type type = this.sRet;
                    TypeTag typeTag = TypeTag.VOID;
                    if (type.hasTag(typeTag)) {
                        this.result = this.result;
                        return;
                    }
                    if (this.tRet.hasTag(typeTag)) {
                        this.result = false;
                        return;
                    }
                    List<JCTree.JCExpression> lambdaResults = lambdaResults(jCLambda);
                    if (!lambdaResults.isEmpty() && MostSpecificCheckContext.this.unrelatedFunctionalInterfaces(this.tRet, this.sRet)) {
                        Iterator<JCTree.JCExpression> it = lambdaResults.iterator();
                        while (it.hasNext()) {
                            this.result = MostSpecificCheckContext.this.functionalInterfaceMostSpecific(this.tRet, this.sRet, it.next()) & this.result;
                        }
                        return;
                    }
                    if (lambdaResults.isEmpty() || this.tRet.isPrimitive() == this.sRet.isPrimitive()) {
                        this.result &= MostSpecificCheckContext.this.compatibleBySubtyping(this.tRet, this.sRet);
                        return;
                    }
                    Iterator<JCTree.JCExpression> it2 = lambdaResults.iterator();
                    while (it2.hasNext()) {
                        JCTree.JCExpression next = it2.next();
                        boolean z10 = true;
                        boolean z11 = next.isStandalone() && next.type.isPrimitive();
                        boolean z12 = this.result;
                        if (z11 != this.tRet.isPrimitive() || z11 == this.sRet.isPrimitive()) {
                            z10 = false;
                        }
                        this.result = z12 & z10;
                    }
                }

                @Override
                public void visitParens(JCTree.JCParens jCParens) {
                    scan(asExpr(jCParens.expr));
                }

                @Override
                public void visitReference(JCTree.JCMemberReference jCMemberReference) {
                    Type type = this.sRet;
                    TypeTag typeTag = TypeTag.VOID;
                    if (type.hasTag(typeTag)) {
                        this.result = this.result;
                        return;
                    }
                    boolean hasTag = this.tRet.hasTag(typeTag);
                    boolean z10 = false;
                    if (hasTag) {
                        this.result = false;
                        return;
                    }
                    if (this.tRet.isPrimitive() == this.sRet.isPrimitive()) {
                        this.result &= MostSpecificCheckContext.this.compatibleBySubtyping(this.tRet, this.sRet);
                        return;
                    }
                    boolean z11 = jCMemberReference.refPolyKind == JCTree.JCPolyExpression.PolyKind.STANDALONE && jCMemberReference.sym.type.getReturnType().isPrimitive();
                    boolean z12 = this.result;
                    if (z11 == this.tRet.isPrimitive() && z11 != this.sRet.isPrimitive()) {
                        z10 = true;
                    }
                    this.result = z12 & z10;
                }
            }

            public MostSpecificCheckContext(DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner, Type type) {
                super(true, deferredAttrContext, warner);
                this.actual = type;
            }

            public boolean compatibleBySubtyping(Type type, Type type2) {
                if (!this.strict && type.isPrimitive() != type2.isPrimitive()) {
                    type = type.isPrimitive() ? Resolve.this.types.boxedClass(type).type : Resolve.this.types.unboxedType(type);
                }
                return Resolve.this.types.isSubtypeNoCapture(type, this.deferredAttrContext.inferenceContext.asUndetVar(type2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            public boolean functionalInterfaceMostSpecific(Type type, Type type2, JCTree jCTree) {
                Types types = Resolve.this.types;
                Type findDescriptorType = types.findDescriptorType(types.capture(type));
                Type findDescriptorType2 = Resolve.this.types.findDescriptorType(type);
                Type findDescriptorType3 = Resolve.this.types.findDescriptorType(type2);
                List<Type> typeArguments = findDescriptorType.getTypeArguments();
                List<Type> typeArguments2 = findDescriptorType2.getTypeArguments();
                List<Type> typeArguments3 = findDescriptorType3.getTypeArguments();
                if (findDescriptorType.hasTag(TypeTag.FORALL) && !Resolve.this.types.hasSameBounds((Type.ForAll) findDescriptorType, (Type.ForAll) findDescriptorType2)) {
                    return false;
                }
                List list = typeArguments;
                List list2 = typeArguments3;
                while (list.nonEmpty() && list2.nonEmpty()) {
                    Type upperBound = ((Type) list.head).getUpperBound();
                    Type subst = Resolve.this.types.subst(((Type) list2.head).getUpperBound(), typeArguments3, typeArguments);
                    if ((upperBound.containsAny(typeArguments) && inferenceContext().free(subst)) || !Resolve.this.types.isSameType(upperBound, inferenceContext().asUndetVar(subst))) {
                        return false;
                    }
                    list = list.tail;
                    list2 = list2.tail;
                }
                if (list.isEmpty() && list2.isEmpty()) {
                    List parameterTypes = findDescriptorType.getParameterTypes();
                    List parameterTypes2 = findDescriptorType2.getParameterTypes();
                    List parameterTypes3 = findDescriptorType3.getParameterTypes();
                    while (parameterTypes.nonEmpty() && parameterTypes2.nonEmpty() && parameterTypes3.nonEmpty()) {
                        Type type3 = (Type) parameterTypes.head;
                        Type subst2 = Resolve.this.types.subst((Type) parameterTypes2.head, typeArguments2, typeArguments);
                        Type subst3 = Resolve.this.types.subst((Type) parameterTypes3.head, typeArguments3, typeArguments);
                        if ((type3.containsAny(typeArguments) && inferenceContext().free(subst3)) || !Resolve.this.types.isSubtype(inferenceContext().asUndetVar(subst3), type3) || !Resolve.this.types.isSameType(subst2, inferenceContext().asUndetVar(subst3))) {
                            return false;
                        }
                        parameterTypes = parameterTypes.tail;
                        parameterTypes2 = parameterTypes2.tail;
                        parameterTypes3 = parameterTypes3.tail;
                    }
                    if (parameterTypes.isEmpty() && parameterTypes2.isEmpty() && parameterTypes3.isEmpty()) {
                        Type returnType = findDescriptorType.getReturnType();
                        Type subst4 = Resolve.this.types.subst(findDescriptorType3.getReturnType(), typeArguments3, typeArguments);
                        if (returnType.containsAny(typeArguments) && inferenceContext().free(subst4)) {
                            return false;
                        }
                        MostSpecificFunctionReturnChecker mostSpecificFunctionReturnChecker = new MostSpecificFunctionReturnChecker(returnType, subst4);
                        mostSpecificFunctionReturnChecker.scan(jCTree);
                        return mostSpecificFunctionReturnChecker.result;
                    }
                }
                return false;
            }

            public boolean unrelatedFunctionalInterfaces(Type type, Type type2) {
                return Resolve.this.types.isFunctionalInterface(type.tsym) && Resolve.this.types.isFunctionalInterface(type2.tsym) && unrelatedInterfaces(type, type2);
            }

            private boolean unrelatedInterfaces(Type type, Type type2) {
                if (type.isCompound()) {
                    Iterator<Type> it = Resolve.this.types.interfaces(type).iterator();
                    while (it.hasNext()) {
                        if (!unrelatedInterfaces(it.next(), type2)) {
                            return false;
                        }
                    }
                    return true;
                }
                if (!type2.isCompound()) {
                    return Resolve.this.types.asSuper(type, type2.tsym) == null && Resolve.this.types.asSuper(type2, type.tsym) == null;
                }
                Iterator<Type> it2 = Resolve.this.types.interfaces(type2).iterator();
                while (it2.hasNext()) {
                    if (!unrelatedInterfaces(type, it2.next())) {
                        return false;
                    }
                }
                return true;
            }

            @Override
            public boolean compatible(Type type, Type type2, Warner warner) {
                Type type3;
                JCTree speculativeTree;
                return (Resolve.this.allowFunctionalInterfaceMostSpecific && unrelatedFunctionalInterfaces(type, type2) && (type3 = this.actual) != null && type3.getTag() == TypeTag.DEFERRED && (speculativeTree = ((DeferredAttr.DeferredType) this.actual).speculativeTree(this.deferredAttrContext)) != Resolve.this.deferredAttr.stuckTree) ? functionalInterfaceMostSpecific(type, type2, speculativeTree) : compatibleBySubtyping(type, type2);
            }
        }

        public MostSpecificCheck(List<Type> list) {
            this.actuals = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void argumentsAcceptable(Env<AttrContext> env, DeferredAttr.DeferredAttrContext deferredAttrContext, List<Type> list, List<Type> list2, Warner warner) {
            List adjustArgs = Resolve.this.adjustArgs(list2, deferredAttrContext.msym, list.length(), deferredAttrContext.phase.isVarargsRequired());
            List<Type> list3 = list;
            while (adjustArgs.nonEmpty()) {
                methodCheckResult((Type) adjustArgs.head, deferredAttrContext, warner, this.actuals.head).check(null, list3.head);
                List<Type> list4 = list3.tail;
                adjustArgs = adjustArgs.tail;
                this.actuals = this.actuals.isEmpty() ? this.actuals : this.actuals.tail;
                list3 = list4;
            }
        }

        public Attr.ResultInfo methodCheckResult(Type type, DeferredAttr.DeferredAttrContext deferredAttrContext, Warner warner, Type type2) {
            Attr attr = Resolve.this.attr;
            attr.getClass();
            return new Attr.ResultInfo(attr, Kinds.KindSelector.VAL, type, new MostSpecificCheckContext(deferredAttrContext, warner, type2));
        }

        @Override
        public MethodCheck mostSpecificCheck(List<Type> list) {
            Assert.error("Cannot get here!");
            return null;
        }
    }

    public interface RecoveryLoadClass {
        Symbol loadClass(Env<AttrContext> env, Name name);
    }

    public abstract class ReferenceChooser {
        public ReferenceChooser() {
        }

        public abstract Symbol boundResult(ReferenceLookupResult referenceLookupResult);

        public Symbol result(ReferenceLookupResult referenceLookupResult, ReferenceLookupResult referenceLookupResult2) {
            return referenceLookupResult2 != Resolve.this.referenceNotFound ? unboundResult(referenceLookupResult, referenceLookupResult2) : boundResult(referenceLookupResult);
        }

        public abstract Symbol unboundResult(ReferenceLookupResult referenceLookupResult, ReferenceLookupResult referenceLookupResult2);
    }

    public abstract class ReferenceLookupHelper extends LookupHelper {
        JCTree.JCMemberReference referenceTree;

        public ReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Name name, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(name, type, list, list2, methodResolutionPhase);
            this.referenceTree = jCMemberReference;
        }

        @Override
        public Symbol access(Env<AttrContext> env, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol symbol2) {
            return symbol2.kind == Kinds.Kind.AMBIGUOUS ? ((AmbiguityError) symbol2.baseSymbol()).mergeAbstracts(this.site) : symbol2;
        }

        public abstract JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol);

        public ReferenceLookupHelper unboundLookup(InferenceContext inferenceContext) {
            return null;
        }
    }

    public static class ReferenceLookupResult {
        StaticKind staticKind;
        Symbol sym;

        public enum StaticKind {
            STATIC,
            NON_STATIC,
            BOTH,
            UNDEFINED;

            public static StaticKind from(Symbol symbol) {
                return symbol.isStatic() ? STATIC : NON_STATIC;
            }

            public static StaticKind reduce(StaticKind staticKind, StaticKind staticKind2) {
                StaticKind staticKind3 = UNDEFINED;
                return staticKind == staticKind3 ? staticKind2 : (staticKind2 == staticKind3 || staticKind == staticKind2) ? staticKind : BOTH;
            }
        }

        public ReferenceLookupResult(Symbol symbol, MethodResolutionContext methodResolutionContext) {
            this.staticKind = staticKind(symbol, methodResolutionContext);
            this.sym = symbol;
        }

        public static boolean lambda$staticKind$0(MethodResolutionContext methodResolutionContext, MethodResolutionContext.Candidate candidate) {
            return candidate.isApplicable() && candidate.step == methodResolutionContext.step;
        }

        public static StaticKind lambda$staticKind$1(MethodResolutionContext.Candidate candidate) {
            return StaticKind.from(candidate.sym);
        }

        private StaticKind staticKind(Symbol symbol, final MethodResolutionContext methodResolutionContext) {
            int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()];
            return (i10 == 3 || i10 == 4) ? (StaticKind) methodResolutionContext.candidates.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$staticKind$0;
                    lambda$staticKind$0 = Resolve.ReferenceLookupResult.lambda$staticKind$0(Resolve.MethodResolutionContext.this, (Resolve.MethodResolutionContext.Candidate) obj);
                    return lambda$staticKind$0;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Resolve.ReferenceLookupResult.StaticKind lambda$staticKind$1;
                    lambda$staticKind$1 = Resolve.ReferenceLookupResult.lambda$staticKind$1((Resolve.MethodResolutionContext.Candidate) obj);
                    return lambda$staticKind$1;
                }
            }).reduce(new BinaryOperator() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return Resolve.ReferenceLookupResult.StaticKind.reduce((Resolve.ReferenceLookupResult.StaticKind) obj, (Resolve.ReferenceLookupResult.StaticKind) obj2);
                }
            }).orElse(StaticKind.UNDEFINED) : StaticKind.UNDEFINED;
        }

        public boolean canIgnore() {
            int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[this.sym.kind.ordinal()];
            if (i10 == 1) {
                return true;
            }
            if (i10 == 2) {
                return new MethodResolutionDiagHelper.Template(MethodCheckDiag.ARITY_MISMATCH.regex(), new MethodResolutionDiagHelper.Template[0]).matches(((InapplicableSymbolError) this.sym.baseSymbol()).errCandidate().snd);
            }
            if (i10 != 5) {
                return false;
            }
            InapplicableSymbolsError inapplicableSymbolsError = (InapplicableSymbolsError) this.sym.baseSymbol();
            return inapplicableSymbolsError.filterCandidates(inapplicableSymbolsError.mapCandidates()).isEmpty();
        }

        public boolean hasKind(StaticKind staticKind) {
            return this.staticKind == staticKind;
        }

        public boolean isSuccess() {
            return this.staticKind != StaticKind.UNDEFINED;
        }
    }

    public class ResolveDeferredRecoveryMap extends DeferredAttr.RecoveryDeferredTypeMap {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ResolveDeferredRecoveryMap(DeferredAttr.AttrMode attrMode, Symbol symbol, MethodResolutionPhase methodResolutionPhase) {
            super(attrMode, symbol, methodResolutionPhase);
            DeferredAttr deferredAttr = Resolve.this.deferredAttr;
            deferredAttr.getClass();
        }

        @Override
        public Type typeOf(DeferredAttr.DeferredType deferredType) {
            Type typeOf = super.typeOf(deferredType);
            if (!typeOf.isErroneous()) {
                int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[TreeInfo.skipParens(deferredType.tree).getTag().ordinal()];
                return (i10 == 1 || i10 == 2) ? deferredType : (i10 == 3 && typeOf == Type.recoveryType) ? deferredType : typeOf;
            }
            return typeOf;
        }
    }

    public abstract class ResolveError extends Symbol {
        final String debugName;

        public ResolveError(Kinds.Kind kind, String str) {
            super(kind, 0L, null, null, null);
            this.debugName = str;
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            throw new AssertionError();
        }

        public Symbol access(Name name, Symbol.TypeSymbol typeSymbol) {
            Resolve resolve = Resolve.this;
            return resolve.types.createErrorType(name, typeSymbol, resolve.syms.errSymbol.type).tsym;
        }

        @Override
        public boolean exists() {
            return false;
        }

        public abstract JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2);

        @Override
        public boolean isStatic() {
            return false;
        }

        @Override
        public String toString() {
            return this.debugName;
        }
    }

    public class StaticError extends InvalidSymbolError {
        public StaticError(Symbol symbol) {
            super(Kinds.Kind.STATICERR, symbol, "static error");
        }

        @Override
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            Symbol symbol2 = this.sym;
            Object obj = (symbol2.kind == Kinds.Kind.TYP && symbol2.type.hasTag(TypeTag.CLASS)) ? Resolve.this.types.erasure(this.sym.type).tsym : this.sym;
            Resolve resolve = Resolve.this;
            return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, "non-static.cant.be.ref", Kinds.kindName(this.sym), obj);
        }
    }

    public class SymbolNotFoundError extends ResolveError {
        public SymbolNotFoundError(Resolve resolve, Kinds.Kind kind) {
            this(kind, "symbol not found error");
        }

        private Object args(List<Type> list) {
            return list.isEmpty() ? list : Resolve.this.methodArguments(list);
        }

        private String getErrorKey(Kinds.KindName kindName, boolean z10, boolean z11) {
            String str = z11 ? ".location" : "";
            int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$KindName[kindName.ordinal()];
            if (i10 == 1 || i10 == 2) {
                String str2 = str + ".args";
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(z10 ? ".params" : "");
                str = sb2.toString();
            }
            return "cant.resolve" + str;
        }

        private JCDiagnostic getLocationDiag(Symbol symbol, Type type) {
            return symbol.kind == Kinds.Kind.VAR ? Resolve.this.diags.fragment("location.1", Kinds.kindName(symbol), symbol, symbol.type) : Resolve.this.diags.fragment("location", Kinds.typeKindName(type), type, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0087  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public JCDiagnostic getDiagnostic(JCDiagnostic.DiagnosticType diagnosticType, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
            boolean z10;
            boolean z11;
            Name name2 = name;
            List<Type> nil = list == null ? List.nil() : list;
            List<Type> nil2 = list2 == null ? List.nil() : list2;
            if (name2 == Resolve.this.names.error) {
                return null;
            }
            Symbol symbol2 = symbol == null ? type.tsym : symbol;
            if (!symbol2.name.isEmpty()) {
                if (symbol2.kind == Kinds.Kind.PCK && !type.tsym.exists()) {
                    Resolve resolve = Resolve.this;
                    return resolve.diags.create(diagnosticType, resolve.log.currentSource(), diagnosticPosition, "doesnt.exist", symbol2);
                }
                if (!symbol2.name.equals(Resolve.this.names._this) && !symbol2.name.equals(Resolve.this.names._super)) {
                    z10 = true;
                    z11 = name2 == Resolve.this.names.init;
                    Kinds.KindName absentKind = !z11 ? Kinds.KindName.CONSTRUCTOR : this.kind.absentKind();
                    if (z11) {
                        name2 = type.tsym.name;
                    }
                    String errorKey = getErrorKey(absentKind, nil2.nonEmpty(), z10);
                    if (z10) {
                        Resolve resolve2 = Resolve.this;
                        return resolve2.diags.create(diagnosticType, resolve2.log.currentSource(), diagnosticPosition, errorKey, absentKind, name2, nil2, args(nil));
                    }
                    Resolve resolve3 = Resolve.this;
                    return resolve3.diags.create(diagnosticType, resolve3.log.currentSource(), diagnosticPosition, errorKey, absentKind, name2, nil2, args(nil), getLocationDiag(symbol2, type));
                }
            }
            z10 = false;
            if (name2 == Resolve.this.names.init) {
            }
            if (!z11) {
            }
            if (z11) {
            }
            String errorKey2 = getErrorKey(absentKind, nil2.nonEmpty(), z10);
            if (z10) {
            }
        }

        public SymbolNotFoundError(Kinds.Kind kind, String str) {
            super(kind, str);
        }
    }

    public class UnboundMethodReferenceLookupHelper extends MethodReferenceLookupHelper {
        public UnboundMethodReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Name name, Type type, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
            super(jCMemberReference, name, type, list.tail, list2, methodResolutionPhase);
            if (!type.isRaw() || list.head.hasTag(TypeTag.NONE)) {
                return;
            }
            this.site = Resolve.this.types.skipTypeVars(Resolve.this.types.asSuper(list.head, type.tsym), true);
        }

        @Override
        public JCTree.JCMemberReference.ReferenceKind referenceKind(Symbol symbol) {
            return JCTree.JCMemberReference.ReferenceKind.UNBOUND;
        }

        @Override
        public ReferenceLookupHelper unboundLookup(InferenceContext inferenceContext) {
            return this;
        }
    }

    public enum VerboseResolutionMode {
        SUCCESS(FirebaseAnalytics.d.f67668H),
        FAILURE("failure"),
        APPLICABLE("applicable"),
        INAPPLICABLE("inapplicable"),
        DEFERRED_INST("deferred-inference"),
        PREDEF("predef"),
        OBJECT_INIT("object-init"),
        INTERNAL("internal");

        final String opt;

        VerboseResolutionMode(String str) {
            this.opt = str;
        }

        public static EnumSet<VerboseResolutionMode> getVerboseResolutionMode(Options options) {
            String str = options.get("debug.verboseResolution");
            EnumSet<VerboseResolutionMode> noneOf = EnumSet.noneOf(VerboseResolutionMode.class);
            if (str == null) {
                return noneOf;
            }
            if (str.contains(Tj.d.f25405q)) {
                noneOf = EnumSet.allOf(VerboseResolutionMode.class);
            }
            java.util.List asList = Arrays.asList(str.split(DocLint.SEPARATOR));
            for (VerboseResolutionMode verboseResolutionMode : values()) {
                if (asList.contains(verboseResolutionMode.opt)) {
                    noneOf.add(verboseResolutionMode);
                } else {
                    if (asList.contains("-" + verboseResolutionMode.opt)) {
                        noneOf.remove(verboseResolutionMode);
                    }
                }
            }
            return noneOf;
        }
    }

    public Resolve(Context context) {
        context.put((Context.Key<Context.Key<Resolve>>) resolveKey, (Context.Key<Resolve>) this);
        this.syms = Symtab.instance(context);
        this.varNotFound = new SymbolNotFoundError(this, Kinds.Kind.ABSENT_VAR);
        SymbolNotFoundError symbolNotFoundError = new SymbolNotFoundError(this, Kinds.Kind.ABSENT_MTH);
        this.methodNotFound = symbolNotFoundError;
        this.typeNotFound = new SymbolNotFoundError(this, Kinds.Kind.ABSENT_TYP);
        this.referenceNotFound = new ReferenceLookupResult(symbolNotFoundError, null);
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.attr = Attr.instance(context);
        this.deferredAttr = DeferredAttr.instance(context);
        this.chk = Check.instance(context);
        this.infer = Infer.instance(context);
        this.finder = ClassFinder.instance(context);
        this.moduleFinder = ModuleFinder.instance(context);
        this.types = Types.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        Source instance = Source.instance(context);
        Options instance2 = Options.instance(context);
        Option option = Option.XDIAGS;
        this.compactMethodDiags = instance2.isSet(option, JavaCore.COMPACT) || (instance2.isUnset(option) && instance2.isUnset("rawDiagnostics"));
        this.verboseResolutionMode = VerboseResolutionMode.getVerboseResolutionMode(instance2);
        this.allowMethodHandles = Target.instance(context).hasMethodHandles();
        this.allowFunctionalInterfaceMostSpecific = instance.allowFunctionalInterfaceMostSpecific();
        this.checkVarargsAccessAfterResolution = instance.allowPostApplicabilityVarargsAccessCheck();
        this.polymorphicSignatureScope = Scope.WriteableScope.create(this.syms.noSymbol);
        this.inapplicableMethodException = new InapplicableMethodException(this.diags);
        this.allowModules = instance.allowModules();
    }

    private static Symbol bestOf(Symbol symbol, Symbol symbol2) {
        return symbol.kind.betterThan(symbol2.kind) ? symbol : symbol2;
    }

    private Symbol createInvisibleSymbolError(Env<AttrContext> env, boolean z10, Symbol symbol) {
        return symbolPackageVisible(env, symbol) ? new AccessError(env, null, symbol) : new InvisibleSymbolError(env, z10, symbol);
    }

    public Symbol findDiamond(Env<AttrContext> env, Type type, List<Type> list, List<Type> list2, boolean z10, boolean z11) {
        SymbolNotFoundError symbolNotFoundError = this.methodNotFound;
        Symbol symbol = symbolNotFoundError;
        for (final Symbol symbol2 : (type.tsym.isInterface() ? this.syms.objectType.tsym : type.tsym).members().getSymbolsByName(this.names.init)) {
            if (symbol2.kind == Kinds.Kind.MTH && (symbol2.flags_field & 4096) == 0) {
                symbol = selectBest(env, type, list, list2, new Symbol.MethodSymbol(symbol2.flags(), this.names.init, new Type.ForAll(type.tsym.type.getTypeArguments().appendList(symbol2.type.hasTag(TypeTag.FORALL) ? ((Type.ForAll) symbol2.type).tvars : List.nil()), this.types.createMethodTypeWithReturn(symbol2.type.asMethodType(), type)), type.tsym) {
                    @Override
                    public Symbol baseSymbol() {
                        return symbol2;
                    }
                }, symbol, z10, z11);
            }
        }
        return symbol;
    }

    public static Resolve instance(Context context) {
        Resolve resolve = (Resolve) context.get(resolveKey);
        return resolve == null ? new Resolve(context) : resolve;
    }

    private boolean isImportOnDemand(Env<AttrContext> env, Name name) {
        if (!env.tree.hasTag(JCTree.Tag.IMPORT)) {
            return false;
        }
        JCTree jCTree = ((JCTree.JCImport) env.tree).qualid;
        return jCTree.hasTag(JCTree.Tag.SELECT) && TreeInfo.name(jCTree) == this.names.asterisk && TreeInfo.fullName(((JCTree.JCFieldAccess) jCTree).selected) == name;
    }

    public static boolean isInitializer(Env<AttrContext> env) {
        Kinds.Kind kind;
        Symbol symbol = env.info.scope.owner;
        return symbol.isConstructor() || (symbol.owner.kind == Kinds.Kind.TYP && (((kind = symbol.kind) == Kinds.Kind.VAR || (kind == Kinds.Kind.MTH && (symbol.flags() & TagBits.HasNullTypeAnnotation) != 0)) && (symbol.flags() & 8) == 0));
    }

    private boolean isInnerSubClass(Symbol.ClassSymbol classSymbol, Symbol symbol) {
        while (classSymbol != null && !classSymbol.isSubClass(symbol, this.types)) {
            classSymbol = classSymbol.owner.enclClass();
        }
        return classSymbol != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean isProtectedAccessible(Symbol symbol, Symbol.ClassSymbol classSymbol, Type type) {
        if (type.hasTag(TypeTag.TYPEVAR)) {
            type = type.getUpperBound();
        }
        while (classSymbol != null && (!classSymbol.isSubClass(symbol.owner, this.types) || (classSymbol.flags() & 512) != 0 || ((symbol.flags() & 8) == 0 && symbol.kind != Kinds.Kind.TYP && !type.tsym.isSubClass(classSymbol, this.types)))) {
            classSymbol = classSymbol.owner.enclClass();
        }
        return false;
    }

    public static boolean isStatic(Env<AttrContext> env) {
        Env<AttrContext> env2 = env.outer;
        return env2 != null && env.info.staticLevel > env2.info.staticLevel;
    }

    public static boolean lambda$inaccessiblePackageReason$8(Symbol.PackageSymbol packageSymbol, Directive.ExportsDirective exportsDirective) {
        return exportsDirective.packge == packageSymbol;
    }

    public static boolean lambda$lookupPackage$6(Name name, Symbol.PackageSymbol packageSymbol) {
        return packageSymbol.fullname.startsWith(name);
    }

    public static boolean lambda$lookupPackage$7(Symbol.PackageSymbol packageSymbol) {
        packageSymbol.complete();
        return packageSymbol.exists();
    }

    public static Symbol lambda$new$1(Env env, Name name) {
        return null;
    }

    public Symbol lambda$new$3(Env env, final Name name) {
        Symbol findFirst = env.toplevel.namedImportScope.findFirst(Convert.shortName(name), new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$null$2;
                lambda$null$2 = Resolve.lambda$null$2(Name.this, (Symbol) obj);
                return lambda$null$2;
            }
        });
        if (findFirst != null) {
            return new InvisibleSymbolError(env, true, findFirst);
        }
        return null;
    }

    public Symbol lambda$new$5(Env env, final Name name) {
        Symbol findFirst = env.toplevel.starImportScope.findFirst(Convert.shortName(name), new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$null$4;
                lambda$null$4 = Resolve.lambda$null$4(Name.this, (Symbol) obj);
                return lambda$null$4;
            }
        });
        if (findFirst == null) {
            return null;
        }
        try {
            return new InvisibleSymbolError(env, true, this.finder.loadClass(findFirst.packge().modle, name));
        } catch (Symbol.CompletionFailure unused) {
            return null;
        }
    }

    public static boolean lambda$null$2(Name name, Symbol symbol) {
        return symbol.kind == Kinds.Kind.TYP && symbol.flatName() == name;
    }

    public static boolean lambda$null$4(Name name, Symbol symbol) {
        return symbol.kind == Kinds.Kind.TYP && symbol.flatName() == name;
    }

    public Iterator lambda$superclasses$0(Type type) {
        return new Iterator<Symbol.TypeSymbol>(type) {
            Symbol.TypeSymbol currentSym;
            final Type val$intype;
            List seen = List.nil();
            Symbol.TypeSymbol prevSym = null;

            {
                this.val$intype = type;
                this.currentSym = symbolFor(type);
            }

            @Override
            public boolean hasNext() {
                Symbol.TypeSymbol typeSymbol = this.currentSym;
                Resolve resolve = Resolve.this;
                if (typeSymbol == resolve.syms.noSymbol) {
                    this.currentSym = symbolFor(resolve.types.supertype(this.prevSym.type));
                }
                return this.currentSym != null;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            public Symbol.TypeSymbol symbolFor(Type type2) {
                if (!type2.hasTag(TypeTag.CLASS) && !type2.hasTag(TypeTag.TYPEVAR)) {
                    return null;
                }
                Type skipTypeVars = Resolve.this.types.skipTypeVars(type2, false);
                if (this.seen.contains(skipTypeVars.tsym)) {
                    return null;
                }
                this.seen = this.seen.prepend(skipTypeVars.tsym);
                return skipTypeVars.tsym;
            }

            @Override
            public Symbol.TypeSymbol next() {
                Symbol.TypeSymbol typeSymbol = this.currentSym;
                this.prevSym = typeSymbol;
                Symbol.TypeSymbol typeSymbol2 = Resolve.this.syms.noSymbol;
                this.currentSym = typeSymbol2;
                Assert.check((typeSymbol == null && typeSymbol == typeSymbol2) ? false : true);
                return this.prevSym;
            }
        };
    }

    private void logResolveError(ResolveError resolveError, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
        JCDiagnostic diagnostic = resolveError.getDiagnostic(JCDiagnostic.DiagnosticType.ERROR, diagnosticPosition, symbol, type, name, list, list2);
        if (diagnostic != null) {
            diagnostic.setFlag(JCDiagnostic.DiagnosticFlag.RESOLVE_ERROR);
            this.log.report(diagnostic);
        }
    }

    public <S extends Symbol> Symbol lookupInvisibleSymbol(Env<AttrContext> env, Name name, Function<Name, Iterable<S>> function, BiFunction<Symbol.ModuleSymbol, Name, S> biFunction, Predicate<S> predicate, boolean z10, Symbol symbol) {
        S apply;
        for (S s10 : function.apply(name)) {
            if (predicate.test(s10)) {
                return createInvisibleSymbolError(env, z10, s10);
            }
        }
        HashSet<Symbol.ModuleSymbol> hashSet = new HashSet(this.syms.getAllModules());
        hashSet.remove(env.toplevel.modle);
        for (Symbol.ModuleSymbol moduleSymbol : hashSet) {
            if (moduleSymbol.sourceLocation == null) {
                if (moduleSymbol.classLocation == null) {
                    moduleSymbol = this.moduleFinder.findModule(moduleSymbol);
                }
                if (moduleSymbol.kind != Kinds.Kind.ERR && (apply = biFunction.apply(moduleSymbol, name)) != null && predicate.test(apply)) {
                    return createInvisibleSymbolError(env, z10, apply);
                }
            }
        }
        return symbol;
    }

    private boolean notOverriddenIn(Type type, Symbol symbol) {
        Symbol.MethodSymbol implementation;
        if (symbol.kind != Kinds.Kind.MTH || symbol.isConstructor() || symbol.isStatic() || (implementation = ((Symbol.MethodSymbol) symbol).implementation(type.tsym, this.types, true)) == null || implementation == symbol || symbol.owner == implementation.owner) {
            return true;
        }
        Types types = this.types;
        return !types.isSubSignature(types.memberType(type, implementation), this.types.memberType(type, symbol));
    }

    private List<Type> pruneInterfaces(Type type) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.types.interfaces(type).iterator();
        while (it.hasNext()) {
            Type next = it.next();
            Iterator<Type> it2 = this.types.directSupertypes(type).iterator();
            boolean z10 = true;
            while (it2.hasNext()) {
                Type next2 = it2.next();
                if (next != next2 && this.types.isSubtypeNoCapture(next2, next)) {
                    z10 = false;
                }
            }
            if (z10) {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    private Symbol resolveSelfContainingInternal(Env<AttrContext> env, Symbol symbol, boolean z10) {
        Symbol findFirst;
        Name name = this.names._this;
        Env<AttrContext> env2 = env;
        if (z10) {
            env2 = env.outer;
        }
        if (env2 == null) {
            return null;
        }
        boolean z11 = false;
        for (Env<AttrContext> env3 = env2; env3 != null && env3.outer != null; env3 = env3.outer) {
            if (isStatic(env3)) {
                z11 = true;
            }
            if (env3.enclClass.sym.isSubClass(symbol.owner.enclClass(), this.types) && (findFirst = env3.info.scope.findFirst(name)) != null) {
                return z11 ? new StaticError(findFirst) : findFirst;
            }
            if ((env3.enclClass.sym.flags() & 8) != 0) {
                z11 = true;
            }
        }
        return null;
    }

    private boolean signatureMoreSpecific(List<Type> list, Env<AttrContext> env, Type type, Symbol symbol, Symbol symbol2, boolean z10) {
        boolean z11;
        this.noteWarner.clear();
        int max = Math.max(Math.max(symbol.type.getParameterTypes().length(), list.length()), symbol2.type.getParameterTypes().length());
        MethodResolutionContext methodResolutionContext = this.currentResolutionContext;
        try {
            MethodResolutionContext methodResolutionContext2 = new MethodResolutionContext();
            this.currentResolutionContext = methodResolutionContext2;
            methodResolutionContext2.step = methodResolutionContext.step;
            methodResolutionContext2.methodCheck = methodResolutionContext.methodCheck.mostSpecificCheck(list);
            Types types = this.types;
            if (instantiate(env, type, symbol2, null, adjustArgs(types.cvarLowerBounds(types.memberType(type, symbol).getParameterTypes()), symbol, max, z10), null, false, z10, this.noteWarner) != null) {
                if (!this.noteWarner.hasLint(Lint.LintCategory.UNCHECKED)) {
                    z11 = true;
                    return z11;
                }
            }
            z11 = false;
            return z11;
        } finally {
            this.currentResolutionContext = methodResolutionContext;
        }
    }

    public boolean symbolPackageVisible(Env<AttrContext> env, Symbol symbol) {
        Symbol.ModuleSymbol moduleSymbol = env.toplevel.modle;
        Symbol.PackageSymbol packge = symbol.packge();
        return moduleSymbol == packge.modle || moduleSymbol.visiblePackages.containsKey(packge.fullname);
    }

    public Symbol accessBase(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol2, Type type, Name name, boolean z10) {
        return accessInternal(symbol, diagnosticPosition, symbol2, type, name, z10, List.nil(), null, this.basicLogResolveHelper);
    }

    public Symbol accessInternal(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol2, Type type, Name name, boolean z10, List<Type> list, List<Type> list2, LogResolveHelper logResolveHelper) {
        if (!symbol.kind.isResolutionError()) {
            return symbol;
        }
        ResolveError resolveError = (ResolveError) symbol.baseSymbol();
        Symbol access = resolveError.access(name, z10 ? type.tsym : this.syms.noSymbol);
        List<Type> argumentTypes = logResolveHelper.getArgumentTypes(resolveError, access, name, list);
        if (!logResolveHelper.resolveDiagnosticNeeded(type, argumentTypes, list2)) {
            return access;
        }
        logResolveError(resolveError, diagnosticPosition, symbol2, type, name, argumentTypes, list2);
        return access;
    }

    public Symbol accessMethod(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol2, Type type, Name name, boolean z10, List<Type> list, List<Type> list2) {
        return accessInternal(symbol, diagnosticPosition, symbol2, type, name, z10, list, list2, this.methodLogResolveHelper);
    }

    public List<Type> adjustArgs(List<Type> list, Symbol symbol, int i10, boolean z10) {
        if ((symbol.flags() & 17179869184L) != 0 && z10) {
            Type elemtype = this.types.elemtype(list.last());
            if (elemtype == null) {
                Assert.error("Bad varargs = " + ((Object) list.last()) + " " + ((Object) symbol));
            }
            list = list.reverse().tail.prepend(elemtype).reverse();
            while (list.length() < i10) {
                list = list.append(list.last());
            }
        }
        return list;
    }

    public Symbol ambiguityError(Symbol symbol, Symbol symbol2) {
        return ((symbol.flags() | symbol2.flags()) & 4398046511104L) != 0 ? (symbol.flags() & 4398046511104L) == 0 ? symbol : symbol2 : new AmbiguityError(symbol, symbol2);
    }

    public void checkAccessibleType(Env<AttrContext> env, Type type) {
        this.accessibilityChecker.visit(type, env);
    }

    public Type checkMethod(Env<AttrContext> env, Type type, Symbol symbol, Attr.ResultInfo resultInfo, List<Type> list, List<Type> list2, Warner warner) {
        MethodResolutionContext methodResolutionContext = this.currentResolutionContext;
        try {
            MethodResolutionContext methodResolutionContext2 = new MethodResolutionContext();
            this.currentResolutionContext = methodResolutionContext2;
            methodResolutionContext2.attrMode = resultInfo.pt == Infer.anyPoly ? DeferredAttr.AttrMode.SPECULATIVE : DeferredAttr.AttrMode.CHECK;
            if (env.tree.hasTag(JCTree.Tag.REFERENCE)) {
                this.currentResolutionContext.methodCheck = new MethodReferenceCheck(resultInfo.checkContext.inferenceContext());
            }
            MethodResolutionContext methodResolutionContext3 = this.currentResolutionContext;
            MethodResolutionPhase methodResolutionPhase = env.info.pendingResolutionPhase;
            methodResolutionContext3.step = methodResolutionPhase;
            Type rawInstantiate = rawInstantiate(env, type, symbol, resultInfo, list, list2, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired(), warner);
            this.currentResolutionContext = methodResolutionContext;
            return rawInstantiate;
        } catch (Throwable th2) {
            this.currentResolutionContext = methodResolutionContext;
            throw th2;
        }
    }

    public void checkNonAbstract(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if ((symbol.flags() & 1024) == 0 || (symbol.flags() & 8796093022208L) != 0) {
            return;
        }
        this.log.error(diagnosticPosition, "abstract.cant.be.accessed.directly", Kinds.kindName(symbol), symbol, symbol.location());
    }

    public List<Type> dummyArgs(int i10) {
        ListBuffer listBuffer = new ListBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            listBuffer.append(Type.noType);
        }
        return listBuffer.toList();
    }

    public boolean enclosingInstanceMissing(Env<AttrContext> env, Type type) {
        TypeTag typeTag = TypeTag.CLASS;
        if (!type.hasTag(typeTag) || !type.getEnclosingType().hasTag(typeTag)) {
            return false;
        }
        Symbol resolveSelfContainingInternal = resolveSelfContainingInternal(env, type.tsym, false);
        return resolveSelfContainingInternal == null || resolveSelfContainingInternal.kind.isResolutionError();
    }

    public Symbol findConstructor(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, List<Type> list, List<Type> list2, boolean z10, boolean z11) {
        Symbol findMethod = findMethod(env, type, this.names.init, list, list2, z10, z11);
        this.chk.checkDeprecated(diagnosticPosition, env.info.scope.owner, findMethod);
        return findMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol findField(Env<AttrContext> env, Type type, Name name, Symbol.TypeSymbol typeSymbol) {
        while (typeSymbol.type.hasTag(TypeTag.TYPEVAR)) {
            typeSymbol = typeSymbol.type.getUpperBound().tsym;
        }
        Symbol symbol = this.varNotFound;
        for (Symbol symbol2 : typeSymbol.members().getSymbolsByName(name)) {
            if (symbol2.kind == Kinds.Kind.VAR && (symbol2.flags_field & 4096) == 0) {
                return isAccessible(env, type, symbol2) ? symbol2 : new AccessError(env, type, symbol2);
            }
        }
        Type supertype = this.types.supertype(typeSymbol.type);
        if (supertype != null && (supertype.hasTag(TypeTag.CLASS) || supertype.hasTag(TypeTag.TYPEVAR))) {
            symbol = bestOf(symbol, findField(env, type, name, supertype.tsym));
        }
        for (List interfaces = this.types.interfaces(typeSymbol.type); symbol.kind != Kinds.Kind.AMBIGUOUS && interfaces.nonEmpty(); interfaces = interfaces.tail) {
            Symbol findField = findField(env, type, name, ((Type) interfaces.head).tsym);
            symbol = (symbol.exists() && findField.exists() && findField.owner != symbol.owner) ? new AmbiguityError(symbol, findField) : bestOf(symbol, findField);
        }
        return symbol;
    }

    public Symbol findFun(Env<AttrContext> env, Name name, List<Type> list, List<Type> list2, boolean z10, boolean z11) {
        JCTree jCTree;
        Symbol symbol = this.methodNotFound;
        boolean z12 = false;
        for (Env<AttrContext> env2 = env; env2.outer != null; env2 = env2.outer) {
            boolean z13 = isStatic(env2) ? true : z12;
            Assert.check(env2.info.preferredTreeForDiagnostics == null);
            env2.info.preferredTreeForDiagnostics = env.tree;
            try {
                jCTree = null;
                try {
                    Symbol findMethod = findMethod(env2, env2.enclClass.sym.type, name, list, list2, z10, z11);
                    if (findMethod.exists()) {
                        if (!z13 || findMethod.kind != Kinds.Kind.MTH || findMethod.owner.kind != Kinds.Kind.TYP || (8 & findMethod.flags()) != 0) {
                            env2.info.preferredTreeForDiagnostics = null;
                            return findMethod;
                        }
                        StaticError staticError = new StaticError(findMethod);
                        env2.info.preferredTreeForDiagnostics = null;
                        return staticError;
                    }
                    symbol = bestOf(symbol, findMethod);
                    env2.info.preferredTreeForDiagnostics = null;
                    z12 = (env2.enclClass.sym.flags() & 8) != 0 ? true : z13;
                } catch (Throwable th2) {
                    th = th2;
                    env2.info.preferredTreeForDiagnostics = jCTree;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                jCTree = null;
            }
        }
        Symbol findMethod2 = findMethod(env, this.syms.predefClass.type, name, list, list2, z10, z11);
        if (findMethod2.exists()) {
            return findMethod2;
        }
        Iterator<Symbol> it = env.toplevel.namedImportScope.getSymbolsByName(name).iterator();
        Symbol symbol2 = symbol;
        while (it.hasNext()) {
            Symbol next = it.next();
            Symbol symbol3 = env.toplevel.namedImportScope.getOrigin(next).owner;
            if (next.kind == Kinds.Kind.MTH) {
                if (next.owner.type != symbol3.type) {
                    next = next.clone(symbol3);
                }
                symbol2 = selectBest(env, symbol3.type, list, list2, !isAccessible(env, symbol3.type, next) ? new AccessError(env, symbol3.type, next) : next, symbol2, z10, z11);
            }
        }
        if (symbol2.exists()) {
            return symbol2;
        }
        Iterator<Symbol> it2 = env.toplevel.starImportScope.getSymbolsByName(name).iterator();
        while (it2.hasNext()) {
            Symbol next2 = it2.next();
            Symbol symbol4 = env.toplevel.starImportScope.getOrigin(next2).owner;
            if (next2.kind == Kinds.Kind.MTH) {
                if (next2.owner.type != symbol4.type) {
                    next2 = next2.clone(symbol4);
                }
                symbol2 = selectBest(env, symbol4.type, list, list2, !isAccessible(env, symbol4.type, next2) ? new AccessError(env, symbol4.type, next2) : next2, symbol2, z10, z11);
            }
        }
        return symbol2;
    }

    public Symbol findGlobalType(Env<AttrContext> env, Scope scope, Name name, RecoveryLoadClass recoveryLoadClass) {
        Symbol symbol = this.typeNotFound;
        Iterator<Symbol> it = scope.getSymbolsByName(name).iterator();
        while (it.hasNext()) {
            Symbol loadClass = loadClass(env, it.next().flatName(), recoveryLoadClass);
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.TYP;
            if (kind == kind2 && loadClass.kind == kind2 && symbol != loadClass) {
                return new AmbiguityError(symbol, loadClass);
            }
            symbol = bestOf(symbol, loadClass);
        }
        return symbol;
    }

    public Symbol findIdent(Env<AttrContext> env, Name name, Kinds.KindSelector kindSelector) {
        Symbol symbol = this.typeNotFound;
        if (kindSelector.contains(Kinds.KindSelector.VAL)) {
            Symbol findVar = findVar(env, name);
            if (findVar.exists()) {
                return findVar;
            }
            symbol = bestOf(symbol, findVar);
        }
        if (kindSelector.contains(Kinds.KindSelector.TYP)) {
            Symbol findType = findType(env, name);
            if (findType.exists()) {
                return findType;
            }
            symbol = bestOf(symbol, findType);
        }
        return kindSelector.contains(Kinds.KindSelector.PCK) ? lookupPackage(env, name) : symbol;
    }

    public Symbol findIdentInPackage(Env<AttrContext> env, Symbol.TypeSymbol typeSymbol, Name name, Kinds.KindSelector kindSelector) {
        Name formFullName = Symbol.TypeSymbol.formFullName(name, typeSymbol);
        Symbol symbol = this.typeNotFound;
        if (kindSelector.contains(Kinds.KindSelector.TYP)) {
            Symbol loadClass = loadClass(env, formFullName, (!this.allowModules || kindSelector.contains(Kinds.KindSelector.PCK) || typeSymbol.exists() || env.info.isSpeculative) ? this.noRecovery : this.doRecoveryLoadClass);
            if (!loadClass.exists()) {
                symbol = bestOf(symbol, loadClass);
            } else if (name == loadClass.name) {
                return loadClass;
            }
        }
        return kindSelector.contains(Kinds.KindSelector.PCK) ? lookupPackage(env, formFullName) : symbol;
    }

    public Symbol findIdentInType(Env<AttrContext> env, Type type, Name name, Kinds.KindSelector kindSelector) {
        Symbol symbol = this.typeNotFound;
        if (kindSelector.contains(Kinds.KindSelector.VAL)) {
            Symbol findField = findField(env, type, name, type.tsym);
            if (findField.exists()) {
                return findField;
            }
            symbol = bestOf(symbol, findField);
        }
        if (!kindSelector.contains(Kinds.KindSelector.TYP)) {
            return symbol;
        }
        Symbol findMemberType = findMemberType(env, type, name, type.tsym);
        return findMemberType.exists() ? findMemberType : bestOf(symbol, findMemberType);
    }

    public Symbol findImmediateMemberType(Env<AttrContext> env, Type type, Name name, Symbol.TypeSymbol typeSymbol) {
        for (Symbol symbol : typeSymbol.members().getSymbolsByName(name)) {
            if (symbol.kind == Kinds.Kind.TYP) {
                return isAccessible(env, type, symbol) ? symbol : new AccessError(env, type, symbol);
            }
        }
        return this.typeNotFound;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol findInheritedMemberType(Env<AttrContext> env, Type type, Name name, Symbol.TypeSymbol typeSymbol) {
        Symbol symbol = this.typeNotFound;
        Type supertype = this.types.supertype(typeSymbol.type);
        if (supertype != null && supertype.hasTag(TypeTag.CLASS)) {
            symbol = bestOf(symbol, findMemberType(env, type, name, supertype.tsym));
        }
        for (List interfaces = this.types.interfaces(typeSymbol.type); symbol.kind != Kinds.Kind.AMBIGUOUS && interfaces.nonEmpty(); interfaces = interfaces.tail) {
            Symbol findMemberType = findMemberType(env, type, name, ((Type) interfaces.head).tsym);
            symbol = (symbol.kind.isResolutionError() || findMemberType.kind.isResolutionError() || findMemberType.owner == symbol.owner) ? bestOf(symbol, findMemberType) : new AmbiguityError(symbol, findMemberType);
        }
        return symbol;
    }

    public Symbol findMemberType(Env<AttrContext> env, Type type, Name name, Symbol.TypeSymbol typeSymbol) {
        Symbol findImmediateMemberType = findImmediateMemberType(env, type, name, typeSymbol);
        return findImmediateMemberType != this.typeNotFound ? findImmediateMemberType : findInheritedMemberType(env, type, name, typeSymbol);
    }

    public Symbol findMethod(Env<AttrContext> env, Type type, Name name, List<Type> list, List<Type> list2, boolean z10, boolean z11) {
        return findMethod(env, type, name, list, list2, type.tsym.type, this.methodNotFound, z10, z11);
    }

    public Symbol findMethodInScope(Env<AttrContext> env, Type type, Name name, List<Type> list, List<Type> list2, Scope scope, Symbol symbol, boolean z10, boolean z11, boolean z12) {
        Iterator<Symbol> it = scope.getSymbolsByName(name, new LookupFilter(z12)).iterator();
        Symbol symbol2 = symbol;
        while (it.hasNext()) {
            symbol2 = selectBest(env, type, list, list2, it.next(), symbol2, z10, z11);
        }
        return symbol2;
    }

    public Symbol findPolymorphicSignatureInstance(Env<AttrContext> env, final Symbol symbol, List<Type> list) {
        Type instantiatePolymorphicSignatureInstance = this.infer.instantiatePolymorphicSignatureInstance(env, (Symbol.MethodSymbol) symbol, this.currentResolutionContext, list);
        for (Symbol symbol2 : this.polymorphicSignatureScope.getSymbolsByName(symbol.name)) {
            if (this.types.isSameType(instantiatePolymorphicSignatureInstance, symbol2.type) && symbol.owner == symbol2.owner) {
                return symbol2;
            }
        }
        Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol((symbol.flags() & 15) | 137438954496L, symbol.name, instantiatePolymorphicSignatureInstance, symbol.owner) {
            @Override
            public Symbol baseSymbol() {
                return symbol;
            }
        };
        if (!instantiatePolymorphicSignatureInstance.isErroneous()) {
            this.polymorphicSignatureScope.enter(methodSymbol);
        }
        return methodSymbol;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol findType(Env<AttrContext> env, Name name) {
        if (name == this.names.empty) {
            return this.typeNotFound;
        }
        Symbol symbol = this.typeNotFound;
        boolean z10 = false;
        for (Env env2 = env; env2.outer != null; env2 = env2.outer) {
            if (isStatic(env2)) {
                z10 = true;
            }
            Symbol findTypeVar = findTypeVar(env2, name, z10);
            Symbol.ClassSymbol classSymbol = env2.enclClass.sym;
            Symbol findImmediateMemberType = findImmediateMemberType(env2, classSymbol.type, name, classSymbol);
            SymbolNotFoundError symbolNotFoundError = this.typeNotFound;
            if (findTypeVar != symbolNotFoundError && (env.baseClause || findImmediateMemberType == symbolNotFoundError || (findTypeVar.kind == Kinds.Kind.TYP && findTypeVar.exists() && findTypeVar.owner.kind == Kinds.Kind.MTH))) {
                return findTypeVar;
            }
            if (findImmediateMemberType == this.typeNotFound) {
                Symbol.ClassSymbol classSymbol2 = env2.enclClass.sym;
                findImmediateMemberType = findInheritedMemberType(env2, classSymbol2.type, name, classSymbol2);
            }
            if (z10 && findImmediateMemberType.kind == Kinds.Kind.TYP) {
                Type type = findImmediateMemberType.type;
                TypeTag typeTag = TypeTag.CLASS;
                if (type.hasTag(typeTag) && findImmediateMemberType.type.getEnclosingType().hasTag(typeTag) && env2.enclClass.sym.type.isParameterized() && findImmediateMemberType.type.getEnclosingType().isParameterized()) {
                    return new StaticError(findImmediateMemberType);
                }
            }
            if (findImmediateMemberType.exists()) {
                return findImmediateMemberType;
            }
            symbol = bestOf(symbol, findImmediateMemberType);
            if (((env2.baseClause ? (JCTree.JCClassDecl) env2.tree : env2.enclClass).sym.flags() & 8) != 0) {
                z10 = true;
            }
        }
        if (env.tree.hasTag(JCTree.Tag.IMPORT)) {
            return symbol;
        }
        Symbol findGlobalType = findGlobalType(env, env.toplevel.namedImportScope, name, this.namedImportScopeRecovery);
        if (findGlobalType.exists()) {
            return findGlobalType;
        }
        Symbol bestOf = bestOf(symbol, findGlobalType);
        Symbol findGlobalType2 = findGlobalType(env, env.toplevel.packge.members(), name, this.noRecovery);
        if (findGlobalType2.exists()) {
            return findGlobalType2;
        }
        Symbol bestOf2 = bestOf(bestOf, findGlobalType2);
        Symbol findGlobalType3 = findGlobalType(env, env.toplevel.starImportScope, name, this.starImportScopeRecovery);
        return findGlobalType3.exists() ? findGlobalType3 : bestOf(bestOf2, findGlobalType3);
    }

    public Symbol findTypeVar(Env<AttrContext> env, Name name, boolean z10) {
        for (Symbol symbol : env.info.scope.getSymbolsByName(name)) {
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.TYP;
            if (kind == kind2) {
                return (z10 && symbol.type.hasTag(TypeTag.TYPEVAR) && symbol.owner.kind == kind2) ? new StaticError(symbol) : symbol;
            }
        }
        return this.typeNotFound;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol findVar(Env<AttrContext> env, Name name) {
        Symbol symbol = this.varNotFound;
        Env env2 = env;
        boolean z10 = false;
        while (true) {
            Symbol symbol2 = null;
            if (env2.outer == null) {
                Symbol.ClassSymbol classSymbol = this.syms.predefClass;
                Symbol findField = findField(env, classSymbol.type, name, classSymbol);
                if (findField.exists()) {
                    return findField;
                }
                if (symbol.exists()) {
                    return symbol;
                }
                JCTree.JCCompilationUnit jCCompilationUnit = env.toplevel;
                Scope[] scopeArr = {jCCompilationUnit.namedImportScope, jCCompilationUnit.starImportScope};
                for (int i10 = 0; i10 < 2; i10++) {
                    Scope scope = scopeArr[i10];
                    for (Symbol symbol3 : scope.getSymbolsByName(name)) {
                        Kinds.Kind kind = symbol3.kind;
                        Kinds.Kind kind2 = Kinds.Kind.VAR;
                        if (kind == kind2) {
                            if (!symbol.kind.isResolutionError() && symbol3.owner != symbol.owner) {
                                return new AmbiguityError(symbol, symbol3);
                            }
                            if (!symbol.kind.betterThan(kind2)) {
                                symbol2 = scope.getOrigin(symbol3).owner;
                                symbol = isAccessible(env, symbol2.type, symbol3) ? symbol3 : new AccessError(env, symbol2.type, symbol3);
                            }
                        }
                    }
                    if (symbol.exists()) {
                        break;
                    }
                }
                return (symbol.kind != Kinds.Kind.VAR || symbol.owner.type == symbol2.type) ? symbol : symbol.clone(symbol2);
            }
            if (isStatic(env2)) {
                z10 = true;
            }
            Iterator<Symbol> it = ((AttrContext) env2.info).scope.getSymbolsByName(name).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Symbol next = it.next();
                if (next.kind == Kinds.Kind.VAR && (next.flags_field & 4096) == 0) {
                    symbol2 = next;
                    break;
                }
            }
            if (symbol2 == null) {
                Symbol.ClassSymbol classSymbol2 = env2.enclClass.sym;
                symbol2 = findField(env2, classSymbol2.type, name, classSymbol2);
            }
            if (symbol2.exists()) {
                return (z10 && symbol2.kind == Kinds.Kind.VAR && symbol2.owner.kind == Kinds.Kind.TYP && (symbol2.flags() & 8) == 0) ? new StaticError(symbol2) : symbol2;
            }
            symbol = bestOf(symbol, symbol2);
            if ((env2.enclClass.sym.flags() & 8) != 0) {
                z10 = true;
            }
            env2 = env2.outer;
        }
    }

    public Symbol getMemberReference(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, JCTree.JCMemberReference jCMemberReference, Type type, Name name) {
        Type capture = this.types.capture(type);
        ReferenceLookupHelper makeReferenceLookupHelper = makeReferenceLookupHelper(jCMemberReference, capture, name, List.nil(), null, MethodResolutionPhase.VARARITY);
        Env<AttrContext> dup = env.dup(env.tree, env.info.dup());
        Symbol lookupMethod = lookupMethod(dup, env.tree.pos(), capture.tsym, this.nilMethodCheck, makeReferenceLookupHelper);
        env.info.pendingResolutionPhase = dup.info.pendingResolutionPhase;
        return lookupMethod;
    }

    public JCDiagnostic getVerboseApplicableCandidateDiag(int i10, Symbol symbol, Type type) {
        JCDiagnostic fragment = symbol.type.hasTag(TypeTag.FORALL) ? this.diags.fragment("partial.inst.sig", type) : null;
        return this.diags.fragment(fragment == null ? "applicable.method.found" : "applicable.method.found.1", Integer.valueOf(i10), symbol, fragment);
    }

    public JCDiagnostic getVerboseInapplicableCandidateDiag(int i10, Symbol symbol, JCDiagnostic jCDiagnostic) {
        return this.diags.fragment("not.applicable.method.found", Integer.valueOf(i10), symbol, jCDiagnostic);
    }

    public JCDiagnostic inaccessiblePackageReason(Env<AttrContext> env, final Symbol.PackageSymbol packageSymbol) {
        if (env.toplevel.modle.readModules.contains(packageSymbol.modle)) {
            if (!packageSymbol.packge().modle.exports.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$inaccessiblePackageReason$8;
                    lambda$inaccessiblePackageReason$8 = Resolve.lambda$inaccessiblePackageReason$8(Symbol.PackageSymbol.this, (Directive.ExportsDirective) obj);
                    return lambda$inaccessiblePackageReason$8;
                }
            })) {
                return env.toplevel.modle != this.syms.unnamedModule ? this.diags.fragment(CompilerProperties.Fragments.NotDefAccessNotExported(packageSymbol, packageSymbol.modle)) : this.diags.fragment(CompilerProperties.Fragments.NotDefAccessNotExportedFromUnnamed(packageSymbol, packageSymbol.modle));
            }
            Symbol.ModuleSymbol moduleSymbol = env.toplevel.modle;
            return moduleSymbol != this.syms.unnamedModule ? this.diags.fragment(CompilerProperties.Fragments.NotDefAccessNotExportedToModule(packageSymbol, packageSymbol.modle, moduleSymbol)) : this.diags.fragment(CompilerProperties.Fragments.NotDefAccessNotExportedToModuleFromUnnamed(packageSymbol, packageSymbol.modle));
        }
        Symbol.ModuleSymbol moduleSymbol2 = packageSymbol.modle;
        Symbol.ModuleSymbol moduleSymbol3 = this.syms.unnamedModule;
        if (moduleSymbol2 == moduleSymbol3) {
            return this.diags.fragment(CompilerProperties.Fragments.NotDefAccessDoesNotReadUnnamed(packageSymbol, env.toplevel.modle));
        }
        Symbol.ModuleSymbol moduleSymbol4 = env.toplevel.modle;
        return moduleSymbol4 != moduleSymbol3 ? this.diags.fragment(CompilerProperties.Fragments.NotDefAccessDoesNotRead(moduleSymbol4, packageSymbol, moduleSymbol2)) : this.diags.fragment(CompilerProperties.Fragments.NotDefAccessDoesNotReadFromUnnamed(packageSymbol, moduleSymbol2));
    }

    public Type instantiate(Env<AttrContext> env, Type type, Symbol symbol, Attr.ResultInfo resultInfo, List<Type> list, List<Type> list2, boolean z10, boolean z11, Warner warner) {
        try {
            return rawInstantiate(env, type, symbol, resultInfo, list, list2, z10, z11, warner);
        } catch (InapplicableMethodException unused) {
            return null;
        }
    }

    public boolean isAccessible(Env<AttrContext> env, Symbol.TypeSymbol typeSymbol) {
        return isAccessible(env, typeSymbol, false);
    }

    public Symbol loadClass(Env<AttrContext> env, Name name, RecoveryLoadClass recoveryLoadClass) {
        try {
            Symbol.ClassSymbol loadClass = this.finder.loadClass(env.toplevel.modle, name);
            return isAccessible(env, loadClass) ? loadClass : new AccessError(env, null, loadClass);
        } catch (ClassFinder.BadClassFile e10) {
            throw e10;
        } catch (Symbol.CompletionFailure unused) {
            Symbol loadClass2 = recoveryLoadClass.loadClass(env, name);
            return loadClass2 != null ? loadClass2 : this.typeNotFound;
        }
    }

    public void logAccessErrorInternal(Env<AttrContext> env, JCTree jCTree, Type type) {
        AccessError accessError = new AccessError(env, env.enclClass.type, type.tsym);
        JCDiagnostic.DiagnosticPosition pos = jCTree.pos();
        JCTree.JCClassDecl jCClassDecl = env.enclClass;
        logResolveError(accessError, pos, jCClassDecl.sym, jCClassDecl.type, null, null, null);
    }

    public Symbol lookupMethod(Env<AttrContext> env, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, MethodCheck methodCheck, LookupHelper lookupHelper) {
        MethodResolutionContext methodResolutionContext = new MethodResolutionContext();
        methodResolutionContext.methodCheck = methodCheck;
        return lookupMethod(env, diagnosticPosition, symbol, methodResolutionContext, lookupHelper);
    }

    public Symbol lookupPackage(Env<AttrContext> env, Name name) {
        Symbol.PackageSymbol lookupPackage = this.syms.lookupPackage(env.toplevel.modle, name);
        if (this.allowModules && isImportOnDemand(env, name)) {
            lookupPackage.complete();
            if (!lookupPackage.exists()) {
                final Name append = name.append('.', this.names.empty);
                boolean anyMatch = env.toplevel.modle.visiblePackages.values().stream().anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$lookupPackage$6;
                        lambda$lookupPackage$6 = Resolve.lambda$lookupPackage$6(Name.this, (Symbol.PackageSymbol) obj);
                        return lambda$lookupPackage$6;
                    }
                });
                final Symtab symtab = this.syms;
                symtab.getClass();
                Function function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return Symtab.this.getPackagesForName((Name) obj);
                    }
                };
                final Symtab symtab2 = this.syms;
                symtab2.getClass();
                return lookupInvisibleSymbol(env, name, function, new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        return Symtab.this.enterPackage((Symbol.ModuleSymbol) obj, (Name) obj2);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$lookupPackage$7;
                        lambda$lookupPackage$7 = Resolve.lambda$lookupPackage$7((Symbol.PackageSymbol) obj);
                        return lambda$lookupPackage$7;
                    }
                }, anyMatch, lookupPackage);
            }
        }
        return lookupPackage;
    }

    public ReferenceLookupHelper makeReferenceLookupHelper(JCTree.JCMemberReference jCMemberReference, Type type, Name name, List<Type> list, List<Type> list2, MethodResolutionPhase methodResolutionPhase) {
        return !name.equals(this.names.init) ? new MethodReferenceLookupHelper(jCMemberReference, name, type, list, list2, methodResolutionPhase) : type.hasTag(TypeTag.ARRAY) ? new ArrayConstructorReferenceLookupHelper(jCMemberReference, type, list, list2, methodResolutionPhase) : new ConstructorReferenceLookupHelper(jCMemberReference, type, list, list2, methodResolutionPhase);
    }

    public Object methodArguments(List<Type> list) {
        if (list == null || list.isEmpty()) {
            return this.noArgs;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next.hasTag(TypeTag.DEFERRED)) {
                listBuffer.append(((DeferredAttr.DeferredType) next).tree);
            } else {
                listBuffer.append(next);
            }
        }
        return listBuffer;
    }

    public Symbol mostSpecific(List<Type> list, Symbol symbol, Symbol symbol2, Env<AttrContext> env, Type type, boolean z10) {
        int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol2.kind.ordinal()];
        if (i10 != 3) {
            if (i10 != 4) {
                throw new AssertionError();
            }
            AmbiguityError ambiguityError = (AmbiguityError) symbol2.baseSymbol();
            Iterator<Symbol> it = ambiguityError.ambiguousSyms.iterator();
            boolean z11 = true;
            boolean z12 = true;
            while (it.hasNext()) {
                Symbol next = it.next();
                Symbol mostSpecific = mostSpecific(list, symbol, next, env, type, z10);
                z11 &= mostSpecific == symbol;
                z12 &= mostSpecific == next;
            }
            if (z11) {
                return symbol;
            }
            if (!z12) {
                ambiguityError.addAmbiguousSymbol(symbol);
            }
            return ambiguityError;
        }
        if (symbol == symbol2) {
            return symbol;
        }
        boolean signatureMoreSpecific = signatureMoreSpecific(list, env, type, symbol, symbol2, z10);
        boolean signatureMoreSpecific2 = signatureMoreSpecific(list, env, type, symbol2, symbol, z10);
        if (!signatureMoreSpecific || !signatureMoreSpecific2) {
            return signatureMoreSpecific ? symbol : signatureMoreSpecific2 ? symbol2 : ambiguityError(symbol, symbol2);
        }
        if (!this.types.overrideEquivalent(this.types.memberType(type, symbol), this.types.memberType(type, symbol2))) {
            return ambiguityError(symbol, symbol2);
        }
        if ((symbol.flags() & 2147483648L) != (symbol2.flags() & 2147483648L)) {
            return (symbol.flags() & 2147483648L) != 0 ? symbol2 : symbol;
        }
        Symbol.TypeSymbol typeSymbol = (Symbol.TypeSymbol) symbol.owner;
        Symbol.TypeSymbol typeSymbol2 = (Symbol.TypeSymbol) symbol2.owner;
        if (this.types.asSuper(typeSymbol.type, typeSymbol2) != null && (((symbol.owner.flags_field & 512) == 0 || (symbol2.owner.flags_field & 512) != 0) && symbol.overrides(symbol2, typeSymbol, this.types, false))) {
            return symbol;
        }
        if (this.types.asSuper(typeSymbol2.type, typeSymbol) != null && (((symbol2.owner.flags_field & 512) == 0 || (symbol.owner.flags_field & 512) != 0) && symbol2.overrides(symbol, typeSymbol2, this.types, false))) {
            return symbol2;
        }
        boolean z13 = (symbol.flags() & 1024) != 0;
        boolean z14 = (symbol2.flags() & 1024) != 0;
        return (!z13 || z14) ? (!z14 || z13) ? ambiguityError(symbol, symbol2) : symbol : symbol2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type rawInstantiate(Env<AttrContext> env, Type type, Symbol symbol, Attr.ResultInfo resultInfo, List<Type> list, List<Type> list2, boolean z10, boolean z11, Warner warner) throws Infer.InferenceException {
        Type memberType = this.types.memberType(type, symbol);
        List<Type> nil = List.nil();
        List<Type> nil2 = list2 == null ? List.nil() : list2;
        TypeTag typeTag = TypeTag.FORALL;
        if (memberType.hasTag(typeTag) || !nil2.nonEmpty()) {
            if (memberType.hasTag(typeTag) && nil2.nonEmpty()) {
                Type.ForAll forAll = (Type.ForAll) memberType;
                if (nil2.length() != forAll.tvars.length()) {
                    throw this.inapplicableMethodException.setMessage("wrong.number.type.args", Integer.toString(forAll.tvars.length()));
                }
                List list3 = forAll.tvars;
                for (List list4 = nil2; list3.nonEmpty() && list4.nonEmpty(); list4 = list4.tail) {
                    Types types = this.types;
                    for (List subst = types.subst(types.getBounds((Type.TypeVar) list3.head), forAll.tvars, nil2); subst.nonEmpty(); subst = subst.tail) {
                        if (!this.types.isSubtypeUnchecked((Type) list4.head, (Type) subst.head, warner)) {
                            throw this.inapplicableMethodException.setMessage("explicit.param.do.not.conform.to.bounds", list4.head, subst);
                        }
                    }
                    list3 = list3.tail;
                }
                memberType = this.types.subst(forAll.qtype, forAll.tvars, nil2);
            } else if (memberType.hasTag(typeTag)) {
                Type.ForAll forAll2 = (Type.ForAll) memberType;
                List<Type> newInstances = this.types.newInstances(forAll2.tvars);
                nil = nil.appendList(newInstances);
                memberType = this.types.subst(forAll2.qtype, forAll2.tvars, newInstances);
            }
        }
        Type type2 = memberType;
        boolean z12 = nil.tail != null;
        for (List list5 = list; list5.tail != null && !z12; list5 = list5.tail) {
            if (((Type) list5.head).hasTag(TypeTag.FORALL)) {
                z12 = true;
            }
        }
        if (z12) {
            return this.infer.instantiateMethod(env, nil, (Type.MethodType) type2, resultInfo, (Symbol.MethodSymbol) symbol, list, z10, z11, this.currentResolutionContext, warner);
        }
        DeferredAttr.DeferredAttrContext deferredAttrContext = this.currentResolutionContext.deferredAttrContext(symbol, this.infer.emptyContext, resultInfo, warner);
        this.currentResolutionContext.methodCheck.argumentsAcceptable(env, deferredAttrContext, list, type2.getParameterTypes(), warner);
        deferredAttrContext.complete();
        return type2;
    }

    public void reportVerboseResolutionDiagnostic(JCDiagnostic.DiagnosticPosition diagnosticPosition, Name name, Type type, List<Type> list, List<Type> list2, Symbol symbol) {
        boolean isResolutionError = symbol.kind.isResolutionError();
        if (isResolutionError || this.verboseResolutionMode.contains(VerboseResolutionMode.SUCCESS)) {
            if (!isResolutionError || this.verboseResolutionMode.contains(VerboseResolutionMode.FAILURE)) {
                if (symbol.name == this.names.init && symbol.owner == this.syms.objectType.tsym && !this.verboseResolutionMode.contains(VerboseResolutionMode.OBJECT_INIT)) {
                    return;
                }
                if (type != this.syms.predefClass.type || this.verboseResolutionMode.contains(VerboseResolutionMode.PREDEF)) {
                    if (!this.currentResolutionContext.internalResolution || this.verboseResolutionMode.contains(VerboseResolutionMode.INTERNAL)) {
                        ListBuffer listBuffer = new ListBuffer();
                        Iterator it = this.currentResolutionContext.candidates.iterator();
                        int i10 = 0;
                        int i11 = -1;
                        while (it.hasNext()) {
                            MethodResolutionContext.Candidate candidate = (MethodResolutionContext.Candidate) it.next();
                            if (this.currentResolutionContext.step == candidate.step && (!candidate.isApplicable() || this.verboseResolutionMode.contains(VerboseResolutionMode.APPLICABLE))) {
                                if (candidate.isApplicable() || this.verboseResolutionMode.contains(VerboseResolutionMode.INAPPLICABLE)) {
                                    listBuffer.append(candidate.isApplicable() ? getVerboseApplicableCandidateDiag(i10, candidate.sym, candidate.mtype) : getVerboseInapplicableCandidateDiag(i10, candidate.sym, candidate.details));
                                    if (candidate.sym == symbol) {
                                        i11 = i10;
                                    }
                                    i10++;
                                }
                            }
                        }
                        String str = !isResolutionError ? "verbose.resolve.multi" : "verbose.resolve.multi.1";
                        DeferredAttr deferredAttr = this.deferredAttr;
                        deferredAttr.getClass();
                        this.log.report(new JCDiagnostic.MultilineDiagnostic(this.diags.note(this.log.currentSource(), diagnosticPosition, str, name, type.tsym, Integer.valueOf(i11), this.currentResolutionContext.step, methodArguments(list.map(new DeferredAttr.RecoveryDeferredTypeMap(DeferredAttr.AttrMode.SPECULATIVE, symbol, this.currentResolutionContext.step))), methodArguments(list2)), listBuffer.toList()));
                    }
                }
            }
        }
    }

    public Symbol resolveConstructor(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, List<Type> list, List<Type> list2) {
        return resolveConstructor(new MethodResolutionContext(), diagnosticPosition, env, type, list, list2);
    }

    public Symbol resolveDiamond(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, List<Type> list, List<Type> list2) {
        return lookupMethod(env, diagnosticPosition, type.tsym, this.resolveMethodCheck, new BasicLookupHelper(this.names.init, type, list, list2) {
            @Override
            public Symbol access(Env<AttrContext> env2, JCDiagnostic.DiagnosticPosition diagnosticPosition2, Symbol symbol, Symbol symbol2) {
                if (!symbol2.kind.isResolutionError()) {
                    return symbol2;
                }
                Kinds.Kind kind = symbol2.kind;
                Kinds.Kind kind2 = Kinds.Kind.WRONG_MTH;
                if (kind != kind2 && kind != Kinds.Kind.WRONG_MTHS) {
                    return super.access(env2, diagnosticPosition2, symbol, symbol2);
                }
                if (kind == kind2) {
                    JCDiagnostic jCDiagnostic = ((InapplicableSymbolError) symbol2.baseSymbol()).errCandidate().snd;
                }
                Resolve resolve = Resolve.this;
                DiamondError diamondError = new DiamondError(symbol2, resolve.currentResolutionContext);
                Resolve resolve2 = Resolve.this;
                Symbol accessMethod = resolve2.accessMethod(diamondError, diagnosticPosition2, this.site, resolve2.names.init, true, this.argtypes, this.typeargtypes);
                env2.info.pendingResolutionPhase = Resolve.this.currentResolutionContext.step;
                return accessMethod;
            }

            @Override
            public Symbol doLookup(Env<AttrContext> env2, MethodResolutionPhase methodResolutionPhase) {
                return Resolve.this.findDiamond(env2, this.site, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
            }
        });
    }

    public Symbol resolveIdent(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Name name, Kinds.KindSelector kindSelector) {
        return accessBase(findIdent(env, name, kindSelector), diagnosticPosition, env.enclClass.sym.type, name, false);
    }

    public Type resolveImplicitThis(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type) {
        return resolveImplicitThis(diagnosticPosition, env, type, false);
    }

    public Symbol.MethodSymbol resolveInternalConstructor(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, List<Type> list, List<Type> list2) {
        MethodResolutionContext methodResolutionContext = new MethodResolutionContext();
        methodResolutionContext.internalResolution = true;
        Symbol resolveConstructor = resolveConstructor(methodResolutionContext, diagnosticPosition, env, type, list, list2);
        if (resolveConstructor.kind == Kinds.Kind.MTH) {
            return (Symbol.MethodSymbol) resolveConstructor;
        }
        throw new FatalError(this.diags.fragment("fatal.err.cant.locate.ctor", type));
    }

    public Symbol.VarSymbol resolveInternalField(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, Name name) {
        Symbol findField = findField(env, type, name, type.tsym);
        if (findField.kind == Kinds.Kind.VAR) {
            return (Symbol.VarSymbol) findField;
        }
        throw new FatalError(this.diags.fragment("fatal.err.cant.locate.field", name));
    }

    public Symbol.MethodSymbol resolveInternalMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, Name name, List<Type> list, List<Type> list2) {
        MethodResolutionContext methodResolutionContext = new MethodResolutionContext();
        methodResolutionContext.internalResolution = true;
        Symbol resolveQualifiedMethod = resolveQualifiedMethod(methodResolutionContext, diagnosticPosition, env, type.tsym, type, name, list, list2);
        if (resolveQualifiedMethod.kind == Kinds.Kind.MTH) {
            return (Symbol.MethodSymbol) resolveQualifiedMethod;
        }
        throw new FatalError(this.diags.fragment("fatal.err.cant.locate.meth", name));
    }

    public Pair<Symbol, ReferenceLookupHelper> resolveMemberReference(Env<AttrContext> env, JCTree.JCMemberReference jCMemberReference, Type type, Name name, List<Type> list, List<Type> list2, MethodCheck methodCheck, InferenceContext inferenceContext, ReferenceChooser referenceChooser) {
        ReferenceLookupHelper makeReferenceLookupHelper = makeReferenceLookupHelper(jCMemberReference, type, name, list, list2, MethodResolutionPhase.VARARITY);
        Env<AttrContext> dup = env.dup(env.tree, env.info.dup());
        MethodResolutionContext methodResolutionContext = new MethodResolutionContext();
        methodResolutionContext.methodCheck = methodCheck;
        ReferenceLookupResult referenceLookupResult = new ReferenceLookupResult(lookupMethod(dup, env.tree.pos(), type.tsym, methodResolutionContext, makeReferenceLookupHelper), methodResolutionContext);
        Symbol symbol = this.methodNotFound;
        Env<AttrContext> dup2 = env.dup(env.tree, env.info.dup());
        ReferenceLookupHelper unboundLookup = makeReferenceLookupHelper.unboundLookup(inferenceContext);
        ReferenceLookupResult referenceLookupResult2 = this.referenceNotFound;
        if (unboundLookup != null) {
            MethodResolutionContext methodResolutionContext2 = new MethodResolutionContext();
            methodResolutionContext2.methodCheck = methodCheck;
            Symbol lookupMethod = lookupMethod(dup2, env.tree.pos(), type.tsym, methodResolutionContext2, unboundLookup);
            ReferenceLookupResult referenceLookupResult3 = new ReferenceLookupResult(lookupMethod, methodResolutionContext2);
            symbol = lookupMethod;
            referenceLookupResult2 = referenceLookupResult3;
        }
        Symbol result = referenceChooser.result(referenceLookupResult, referenceLookupResult2);
        if (result == symbol) {
            makeReferenceLookupHelper = unboundLookup;
        }
        Pair<Symbol, ReferenceLookupHelper> pair = new Pair<>(result, makeReferenceLookupHelper);
        env.info.pendingResolutionPhase = (result == symbol ? dup2.info : dup.info).pendingResolutionPhase;
        return pair;
    }

    public Symbol resolveMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Name name, List<Type> list, List<Type> list2) {
        Symbol.ClassSymbol classSymbol = env.enclClass.sym;
        return lookupMethod(env, diagnosticPosition, classSymbol, this.resolveMethodCheck, new BasicLookupHelper(name, classSymbol.type, list, list2) {
            @Override
            public Symbol doLookup(Env<AttrContext> env2, MethodResolutionPhase methodResolutionPhase) {
                return Resolve.this.findFun(env2, this.name, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
            }
        });
    }

    public Symbol resolveQualifiedMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, Name name, List<Type> list, List<Type> list2) {
        return resolveQualifiedMethod(diagnosticPosition, env, type.tsym, type, name, list, list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol resolveSelf(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Symbol.TypeSymbol typeSymbol, Name name) {
        Symbol findFirst;
        boolean z10 = false;
        for (Env env2 = env; env2.outer != null; env2 = env2.outer) {
            if (isStatic(env2)) {
                z10 = true;
            }
            if (env2.enclClass.sym == typeSymbol && (findFirst = ((AttrContext) env2.info).scope.findFirst(name)) != null) {
                return accessBase(z10 ? new StaticError(findFirst) : findFirst, diagnosticPosition, env.enclClass.sym.type, name, true);
            }
            if ((env2.enclClass.sym.flags() & 8) != 0) {
                z10 = true;
            }
        }
        if (typeSymbol.isInterface() && name == this.names._super && !isStatic(env) && this.types.isDirectSuperInterface(typeSymbol, env.enclClass.sym)) {
            Iterator<Type> it = pruneInterfaces(env.enclClass.type).iterator();
            while (it.hasNext()) {
                Type next = it.next();
                if (next.tsym == typeSymbol) {
                    env.info.defaultSuperCallSite = next;
                    return new Symbol.VarSymbol(0L, this.names._super, this.types.asSuper(env.enclClass.type, typeSymbol), env.enclClass.sym);
                }
            }
            Iterator<Type> it2 = this.types.directSupertypes(env.enclClass.type).iterator();
            while (it2.hasNext()) {
                Type next2 = it2.next();
                if (next2.tsym.isSubClass(typeSymbol, this.types) && next2.tsym != typeSymbol) {
                    this.log.error(diagnosticPosition, "illegal.default.super.call", typeSymbol, this.diags.fragment("redundant.supertype", typeSymbol, next2));
                    return this.syms.errSymbol;
                }
            }
            Assert.error();
        }
        this.log.error(diagnosticPosition, "not.encl.class", typeSymbol);
        return this.syms.errSymbol;
    }

    public Symbol resolveSelfContaining(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Symbol symbol, boolean z10) {
        Symbol resolveSelfContainingInternal = resolveSelfContainingInternal(env, symbol, z10);
        if (resolveSelfContainingInternal != null) {
            return accessBase(resolveSelfContainingInternal, diagnosticPosition, env.enclClass.sym.type, resolveSelfContainingInternal.name, true);
        }
        this.log.error(diagnosticPosition, "encl.class.required", symbol);
        return this.syms.errSymbol;
    }

    public Symbol selectBest(Env<AttrContext> env, Type type, List<Type> list, List<Type> list2, Symbol symbol, Symbol symbol2, boolean z10, boolean z11) {
        if (symbol.kind == Kinds.Kind.ERR || !symbol.isInheritedIn(type.tsym, this.types)) {
            return symbol2;
        }
        if (z11 && (symbol.flags() & 17179869184L) == 0) {
            return symbol2.kind.isResolutionError() ? new BadVarargsMethod((ResolveError) symbol2.baseSymbol()) : symbol2;
        }
        Assert.check(!symbol.kind.isResolutionError());
        try {
            this.types.noWarnings.clear();
            this.currentResolutionContext.addApplicableCandidate(symbol, rawInstantiate(env, type, symbol, null, list, list2, z10, z11, this.types.noWarnings));
            return !isAccessible(env, type, symbol) ? symbol2.kind == Kinds.Kind.ABSENT_MTH ? new AccessError(env, type, symbol) : symbol2 : (!symbol2.kind.isResolutionError() || symbol2.kind == Kinds.Kind.AMBIGUOUS) ? mostSpecific(list, symbol, symbol2, env, type, z11) : symbol;
        } catch (InapplicableMethodException e10) {
            this.currentResolutionContext.addInapplicableCandidate(symbol, e10.getDiagnostic());
            int i10 = AnonymousClass17.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol2.kind.ordinal()];
            return i10 != 1 ? i10 != 2 ? symbol2 : new InapplicableSymbolsError(this.currentResolutionContext) : new InapplicableSymbolError(this, this.currentResolutionContext);
        }
    }

    public Iterable<Symbol.TypeSymbol> superclasses(final Type type) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$superclasses$0;
                lambda$superclasses$0 = Resolve.this.lambda$superclasses$0(type);
                return lambda$superclasses$0;
            }
        };
    }

    private Symbol resolveConstructor(MethodResolutionContext methodResolutionContext, final JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, List<Type> list, List<Type> list2) {
        return lookupMethod(env, diagnosticPosition, type.tsym, methodResolutionContext, new BasicLookupHelper(this.names.init, type, list, list2) {
            @Override
            public Symbol doLookup(Env<AttrContext> env2, MethodResolutionPhase methodResolutionPhase) {
                return Resolve.this.findConstructor(diagnosticPosition, env2, this.site, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
            }
        });
    }

    public Symbol accessBase(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Name name, boolean z10) {
        return accessBase(symbol, diagnosticPosition, type.tsym, type, name, z10);
    }

    public Symbol accessMethod(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Name name, boolean z10, List<Type> list, List<Type> list2) {
        return accessMethod(symbol, diagnosticPosition, type.tsym, type, name, z10, list, list2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009d, code lost:
    
        if (r0.readModules.contains(r3) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ac, code lost:
    
        if (r0 != r8.packge()) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isAccessible(Env<AttrContext> env, Symbol.TypeSymbol typeSymbol, boolean z10) {
        boolean z11;
        JCTree.JCMethodDecl jCMethodDecl = env.enclMethod;
        if (jCMethodDecl != null && (jCMethodDecl.mods.flags & TagBits.HasTypeVariable) != 0) {
            return true;
        }
        if (env.info.visitingServiceImplementation && env.toplevel.modle == typeSymbol.packge().modle) {
            return true;
        }
        short flags = (short) (typeSymbol.flags() & 7);
        if (flags == 0) {
            Symbol.PackageSymbol packageSymbol = env.toplevel.packge;
            if (packageSymbol != typeSymbol.owner) {
            }
            z11 = true;
        } else if (flags != 1) {
            z11 = flags != 2 ? false : false;
        } else {
            if (this.allowModules) {
                Symbol.ModuleSymbol moduleSymbol = env.toplevel.modle;
                moduleSymbol.complete();
                Symbol.PackageSymbol packge = typeSymbol.packge();
                if (moduleSymbol != packge.modle && moduleSymbol.visiblePackages.get(packge.fullname) != packge) {
                    Symtab symtab = this.syms;
                    if (packge != symtab.rootPackage) {
                        Symbol.ModuleSymbol moduleSymbol2 = packge.modle;
                        if (moduleSymbol2 == symtab.unnamedModule) {
                        }
                    }
                }
            }
            z11 = true;
        }
        return (!z10 || typeSymbol.type.getEnclosingType() == Type.noType) ? z11 : z11 && isAccessible(env, typeSymbol.type.getEnclosingType(), z10);
    }

    public Type resolveImplicitThis(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type, boolean z10) {
        Symbol resolveSelfContaining;
        if (type.tsym.owner.kind.matches(Kinds.KindSelector.VAL_MTH)) {
            resolveSelfContaining = resolveSelf(diagnosticPosition, env, type.getEnclosingType().tsym, this.names._this);
        } else {
            resolveSelfContaining = resolveSelfContaining(diagnosticPosition, env, type.tsym, z10);
        }
        Type type2 = resolveSelfContaining.type;
        if (env.info.isSelfCall && type2.tsym == env.enclClass.sym) {
            this.log.error(diagnosticPosition, "cant.ref.before.ctor.called", "this");
        }
        return type2;
    }

    public Symbol resolveQualifiedMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
        return resolveQualifiedMethod(new MethodResolutionContext(), diagnosticPosition, env, symbol, type, name, list, list2);
    }

    private Symbol findMethod(Env<AttrContext> env, Type type, Name name, List<Type> list, List<Type> list2, Type type2, Symbol symbol, boolean z10, boolean z11) {
        List<Type>[] listArr = new List[2];
        listArr[0] = List.nil();
        listArr[1] = List.nil();
        InterfaceLookupPhase interfaceLookupPhase = InterfaceLookupPhase.ABSTRACT_OK;
        Symbol symbol2 = symbol;
        InterfaceLookupPhase interfaceLookupPhase2 = interfaceLookupPhase;
        for (Symbol.TypeSymbol typeSymbol : superclasses(type2)) {
            symbol2 = findMethodInScope(env, type, name, list, list2, typeSymbol.members(), symbol2, z10, z11, true);
            if (name == this.names.init) {
                return symbol2;
            }
            interfaceLookupPhase2 = interfaceLookupPhase2 == null ? null : interfaceLookupPhase2.update(typeSymbol, this);
            if (interfaceLookupPhase2 != null) {
                Iterator<Type> it = this.types.interfaces(typeSymbol.type).iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    int ordinal = interfaceLookupPhase2.ordinal();
                    Types types = this.types;
                    listArr[ordinal] = types.union(types.closure(next), listArr[interfaceLookupPhase2.ordinal()]);
                }
            }
        }
        Symbol symbol3 = (symbol2.kind.isValid() && (symbol2.flags() & 1024) == 0) ? symbol2 : this.methodNotFound;
        InterfaceLookupPhase[] values = InterfaceLookupPhase.values();
        int length = values.length;
        int i10 = 0;
        while (i10 < length) {
            InterfaceLookupPhase interfaceLookupPhase3 = values[i10];
            Iterator<Type> it2 = listArr[interfaceLookupPhase3.ordinal()].iterator();
            while (it2.hasNext()) {
                Type next2 = it2.next();
                if (next2.isInterface() && (interfaceLookupPhase3 != InterfaceLookupPhase.DEFAULT_OK || (next2.tsym.flags() & 8796093022208L) != 0)) {
                    InterfaceLookupPhase interfaceLookupPhase4 = interfaceLookupPhase3;
                    int i11 = i10;
                    int i12 = length;
                    InterfaceLookupPhase[] interfaceLookupPhaseArr = values;
                    Symbol findMethodInScope = findMethodInScope(env, type, name, list, list2, next2.tsym.members(), symbol2, z10, z11, true);
                    symbol2 = (symbol3 != findMethodInScope && symbol3.kind.isValid() && findMethodInScope.kind.isValid() && this.types.isSubSignature(symbol3.type, findMethodInScope.type)) ? symbol3 : findMethodInScope;
                    length = i12;
                    interfaceLookupPhase3 = interfaceLookupPhase4;
                    i10 = i11;
                    values = interfaceLookupPhaseArr;
                }
            }
            i10++;
        }
        return symbol2;
    }

    private Symbol resolveQualifiedMethod(MethodResolutionContext methodResolutionContext, JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Symbol symbol, Type type, Name name, List<Type> list, List<Type> list2) {
        return lookupMethod(env, diagnosticPosition, symbol, methodResolutionContext, new BasicLookupHelper(name, type, list, list2) {
            @Override
            public Symbol access(Env<AttrContext> env2, JCDiagnostic.DiagnosticPosition diagnosticPosition2, Symbol symbol2, Symbol symbol3) {
                return symbol3.kind.isResolutionError() ? super.access(env2, diagnosticPosition2, symbol2, symbol3) : (!Resolve.this.allowMethodHandles || (((Symbol.MethodSymbol) symbol3).flags() & 70368744177664L) == 0) ? symbol3 : Resolve.this.findPolymorphicSignatureInstance(env2, symbol3, this.argtypes);
            }

            @Override
            public Symbol doLookup(Env<AttrContext> env2, MethodResolutionPhase methodResolutionPhase) {
                return Resolve.this.findMethod(env2, this.site, this.name, this.argtypes, this.typeargtypes, methodResolutionPhase.isBoxingRequired(), methodResolutionPhase.isVarargsRequired());
            }
        });
    }

    public Symbol lookupMethod(Env<AttrContext> env, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, MethodResolutionContext methodResolutionContext, LookupHelper lookupHelper) {
        MethodResolutionContext methodResolutionContext2 = this.currentResolutionContext;
        try {
            Symbol symbol2 = this.methodNotFound;
            this.currentResolutionContext = methodResolutionContext;
            Iterator<MethodResolutionPhase> it = this.methodResolutionSteps.iterator();
            while (it.hasNext()) {
                MethodResolutionPhase next = it.next();
                if (lookupHelper.shouldStop(symbol2, next)) {
                    break;
                }
                MethodResolutionContext methodResolutionContext3 = this.currentResolutionContext;
                MethodResolutionPhase methodResolutionPhase = methodResolutionContext3.step;
                methodResolutionContext3.step = next;
                Symbol lookup = lookupHelper.lookup(env, next);
                lookupHelper.debug(diagnosticPosition, lookup);
                Symbol mergeResults = next.mergeResults(symbol2, lookup);
                AttrContext attrContext = env.info;
                if (symbol2 == mergeResults) {
                    next = methodResolutionPhase;
                }
                attrContext.pendingResolutionPhase = next;
                symbol2 = mergeResults;
            }
            Symbol access = lookupHelper.access(env, diagnosticPosition, symbol, symbol2);
            this.currentResolutionContext = methodResolutionContext2;
            return access;
        } catch (Throwable th2) {
            this.currentResolutionContext = methodResolutionContext2;
            throw th2;
        }
    }

    public boolean isAccessible(Env<AttrContext> env, Type type) {
        return isAccessible(env, type, false);
    }

    public boolean isAccessible(Env<AttrContext> env, Type type, boolean z10) {
        if (type.hasTag(TypeTag.ARRAY)) {
            Types types = this.types;
            return isAccessible(env, types.cvarUpperBound(types.elemtype(type)));
        }
        return isAccessible(env, type.tsym, z10);
    }

    public boolean isAccessible(Env<AttrContext> env, Type type, Symbol symbol) {
        return isAccessible(env, type, symbol, false);
    }

    public boolean isAccessible(Env<AttrContext> env, Type type, Symbol symbol, boolean z10) {
        if (symbol.name == this.names.init && symbol.owner != type.tsym) {
            return false;
        }
        JCTree.JCMethodDecl jCMethodDecl = env.enclMethod;
        if (jCMethodDecl != null && (jCMethodDecl.mods.flags & TagBits.HasTypeVariable) != 0) {
            return true;
        }
        if (env.info.visitingServiceImplementation && env.toplevel.modle == symbol.packge().modle) {
            return true;
        }
        short flags = (short) (symbol.flags() & 7);
        if (flags == 0) {
            Symbol.PackageSymbol packageSymbol = env.toplevel.packge;
            return (packageSymbol == symbol.owner.owner || packageSymbol == symbol.packge()) && isAccessible(env, type, z10) && symbol.isInheritedIn(type.tsym, this.types) && notOverriddenIn(type, symbol);
        }
        if (flags == 2) {
            Symbol.ClassSymbol classSymbol = env.enclClass.sym;
            return (classSymbol == symbol.owner || classSymbol.outermostClass() == symbol.owner.outermostClass()) && symbol.isInheritedIn(type.tsym, this.types);
        }
        if (flags != 4) {
            return isAccessible(env, type, z10) && notOverriddenIn(type, symbol);
        }
        Symbol.PackageSymbol packageSymbol2 = env.toplevel.packge;
        return (packageSymbol2 == symbol.owner.owner || packageSymbol2 == symbol.packge() || isProtectedAccessible(symbol, env.enclClass.sym, type) || (env.info.selectSuper && (symbol.flags() & 8) == 0 && symbol.kind != Kinds.Kind.TYP)) && isAccessible(env, type, z10) && notOverriddenIn(type, symbol);
    }
}
