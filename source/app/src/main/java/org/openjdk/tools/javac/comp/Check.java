package org.openjdk.tools.javac.comp;

import android.provider.Telephony;
import java.lang.annotation.Documented;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotations;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.jvm.Profile;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Abort;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.MandatoryWarningHandler;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.Warner;

public class Check {
    protected static final Context.Key<Check> checkKey = new Context.Key<>();
    private static final Types.SimpleVisitor<Boolean, Void> diamondTypeChecker = new Types.SimpleVisitor<Boolean, Void>() {
        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Void r22) {
            return visit(arrayType.elemtype, r22);
        }

        @Override
        public Boolean visitCapturedType(Type.CapturedType capturedType, Void r22) {
            return Boolean.FALSE;
        }

        @Override
        public Boolean visitClassType(Type.ClassType classType, Void r32) {
            if (classType.isCompound()) {
                return Boolean.FALSE;
            }
            Iterator<Type> it = classType.allparams().iterator();
            while (it.hasNext()) {
                if (!visit(it.next(), r32).booleanValue()) {
                    return Boolean.FALSE;
                }
            }
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Void r22) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return Boolean.valueOf(typeVar.tsym.owner.type.getTypeArguments().contains(typeVar));
        }

        @Override
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Void r22) {
            return visit(wildcardType.type, r22);
        }
    };
    private static final boolean ignoreAnnotatedCasts = true;
    boolean allowDefaultMethods;
    boolean allowDiamondWithAnonymousClassCreation;
    boolean allowPrivateSafeVarargs;
    boolean allowSimplifiedVarargs;
    boolean allowStrictMethodClashCheck;
    private Set<Name> defaultTargets;
    private final DeferredAttr deferredAttr;
    private DeferredLintHandler deferredLintHandler;
    private MandatoryWarningHandler deprecationHandler;
    private final Name[] dfltTargetMeta;
    private final JCDiagnostic.Factory diags;
    private final Enter enter;
    private final JavaFileManager fileManager;
    private final Infer infer;
    private Lint lint;
    private final Log log;
    private Symbol.MethodSymbol method;
    private final Names names;
    private final Profile profile;
    private MandatoryWarningHandler removalHandler;
    private final Resolve rs;
    private final Source source;
    private MandatoryWarningHandler sunApiHandler;
    private final Symtab syms;
    char syntheticNameChar;
    private final TypeAnnotations typeAnnotations;
    private final Types types;
    private MandatoryWarningHandler uncheckedHandler;
    private final boolean warnOnAnyAccessToMembers;
    private Map<Pair<Symbol.ModuleSymbol, Name>, Symbol.ClassSymbol> compiled = new HashMap();
    private Map<Pair<Name, Name>, Integer> localClassNameIndexes = new HashMap();
    CheckContext basicHandler = new CheckContext() {
        @Override
        public Warner checkWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
            return Check.this.convertWarner(diagnosticPosition, type, type2);
        }

        @Override
        public boolean compatible(Type type, Type type2, Warner warner) {
            return Check.this.types.isAssignable(type, type2, warner);
        }

        @Override
        public DeferredAttr.DeferredAttrContext deferredAttrContext() {
            return Check.this.deferredAttr.emptyDeferredAttrContext;
        }

        @Override
        public InferenceContext inferenceContext() {
            return Check.this.infer.emptyContext;
        }

        @Override
        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
            Check.this.log.error(diagnosticPosition, "prob.found.req", jCDiagnostic);
        }

        public String toString() {
            return "CheckContext: basicHandler";
        }
    };
    Types.UnaryVisitor<Boolean> isTypeArgErroneous = new Types.UnaryVisitor<Boolean>() {
        @Override
        public Boolean visitCapturedType(Type.CapturedType capturedType, Void r22) {
            return Boolean.valueOf(visit(capturedType.getUpperBound()).booleanValue() || visit(capturedType.getLowerBound()).booleanValue());
        }

        @Override
        public Boolean visitType(Type type, Void r22) {
            return Boolean.valueOf(type.isErroneous());
        }

        @Override
        public Boolean visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return visit(typeVar.getUpperBound());
        }

        @Override
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Void r22) {
            return visit(wildcardType.type);
        }
    };
    Warner overrideWarner = new Warner();
    private Filter<Symbol> equalsHasCodeFilter = new Filter() {
        @Override
        public final boolean accepts(Object obj) {
            boolean lambda$new$3;
            lambda$new$3 = Check.lambda$new$3((Symbol) obj);
            return lambda$new$3;
        }
    };

    public class C1SpecialTreeVisitor extends JCTree.Visitor {
        boolean specialized = false;

        public C1SpecialTreeVisitor() {
        }

        @Override
        public void visitTree(JCTree jCTree) {
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if ((jCVariableDecl.mods.flags & 16384) != 0) {
                JCTree.JCExpression jCExpression = jCVariableDecl.init;
                if (!(jCExpression instanceof JCTree.JCNewClass) || ((JCTree.JCNewClass) jCExpression).def == null) {
                    return;
                }
                this.specialized = true;
            }
        }
    }

    public static class AnonymousClass5 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Lint$LintCategory;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[Lint.LintCategory.values().length];
            $SwitchMap$com$sun$tools$javac$code$Lint$LintCategory = iArr;
            try {
                iArr[Lint.LintCategory.UNCHECKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Lint$LintCategory[Lint.LintCategory.VARARGS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[Attribute.RetentionPolicy.values().length];
            $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy = iArr3;
            try {
                iArr3[Attribute.RetentionPolicy.RUNTIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[Attribute.RetentionPolicy.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr4 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr4;
            try {
                iArr4[JCTree.Tag.SELECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.IDENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr5 = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr5;
            try {
                iArr5[Kinds.Kind.VAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.TYP.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public interface CheckContext {
        Warner checkWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2);

        boolean compatible(Type type, Type type2, Warner warner);

        DeferredAttr.DeferredAttrContext deferredAttrContext();

        InferenceContext inferenceContext();

        void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic);
    }

    public class ClashFilter implements Filter<Symbol> {
        Type site;

        public ClashFilter(Type type) {
            this.site = type;
        }

        public boolean shouldSkip(Symbol symbol) {
            return (symbol.flags() & 4398046511104L) != 0 && symbol.owner == this.site.tsym;
        }

        @Override
        public boolean accepts(Symbol symbol) {
            return symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 4096) == 0 && !shouldSkip(symbol) && symbol.isInheritedIn(this.site.tsym, Check.this.types) && !symbol.isConstructor();
        }
    }

    public class ConversionWarner extends Warner {
        final Type expected;
        final Type found;
        final String uncheckedKey;

        public ConversionWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Type type, Type type2) {
            super(diagnosticPosition);
            this.uncheckedKey = str;
            this.found = type;
            this.expected = type2;
        }

        @Override
        public void warn(Lint.LintCategory lintCategory) {
            boolean z10 = this.warned;
            super.warn(lintCategory);
            if (z10) {
                return;
            }
            int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$Lint$LintCategory[lintCategory.ordinal()];
            if (i10 == 1) {
                Check.this.warnUnchecked(pos(), "prob.found.req", Check.this.diags.fragment(this.uncheckedKey, new Object[0]), this.found, this.expected);
                return;
            }
            if (i10 != 2) {
                throw new AssertionError((Object) ("Unexpected lint: " + ((Object) lintCategory)));
            }
            if (Check.this.method == null || Check.this.method.attribute(Check.this.syms.trustMeType.tsym) == null) {
                return;
            }
            Check check = Check.this;
            if (!check.isTrustMeAllowedOnMethod(check.method) || Check.this.types.isReifiable(Check.this.method.type.getParameterTypes().last())) {
                return;
            }
            Check.this.warnUnsafeVararg(pos(), "varargs.unsafe.use.varargs.param", Check.this.method.params.last());
        }
    }

    public class CycleChecker extends TreeScanner {
        List<Symbol> seenClasses = List.nil();
        boolean errorFound = false;
        boolean partialCheck = false;

        public CycleChecker() {
        }

        private void checkSymbol(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
            if (symbol != null) {
                Kinds.Kind kind = symbol.kind;
                Kinds.Kind kind2 = Kinds.Kind.TYP;
                if (kind == kind2) {
                    Env<AttrContext> env = Check.this.enter.getEnv((Symbol.TypeSymbol) symbol);
                    if (env == null) {
                        if (symbol.kind == kind2) {
                            checkClass(diagnosticPosition, symbol, List.nil());
                            return;
                        }
                        return;
                    } else {
                        DiagnosticSource currentSource = Check.this.log.currentSource();
                        try {
                            Check.this.log.useSource(env.toplevel.sourcefile);
                            scan(env.tree);
                            return;
                        } finally {
                            Check.this.log.useSource(currentSource.getFile());
                        }
                    }
                }
            }
            this.partialCheck = true;
        }

        public void checkClass(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, List<JCTree> list) {
            if ((symbol.flags_field & TagBits.HasDirectWildcard) != 0) {
                return;
            }
            if (this.seenClasses.contains(symbol)) {
                this.errorFound = true;
                Check.this.noteCyclic(diagnosticPosition, (Symbol.ClassSymbol) symbol);
                return;
            }
            if (symbol.type.isErroneous()) {
                return;
            }
            try {
                this.seenClasses = this.seenClasses.prepend(symbol);
                if (symbol.type.hasTag(TypeTag.CLASS)) {
                    if (!list.nonEmpty()) {
                        Type.ClassType classType = (Type.ClassType) symbol.type;
                        Type type = classType.supertype_field;
                        if (type != null && classType.interfaces_field != null) {
                            checkSymbol(diagnosticPosition, type.tsym);
                            Iterator<Type> it = classType.interfaces_field.iterator();
                            while (it.hasNext()) {
                                checkSymbol(diagnosticPosition, it.next().tsym);
                            }
                        }
                        this.partialCheck = true;
                        this.seenClasses = this.seenClasses.tail;
                        return;
                    }
                    scan(list);
                    Symbol symbol2 = symbol.owner;
                    if (symbol2.kind == Kinds.Kind.TYP) {
                        checkSymbol(diagnosticPosition, symbol2);
                    }
                }
                this.seenClasses = this.seenClasses.tail;
            } catch (Throwable th2) {
                this.seenClasses = this.seenClasses.tail;
                throw th2;
            }
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            List<JCTree> nil = List.nil();
            if (jCClassDecl.getExtendsClause() != null) {
                nil = nil.prepend(jCClassDecl.getExtendsClause());
            }
            if (jCClassDecl.getImplementsClause() != null) {
                Iterator<JCTree.JCExpression> it = jCClassDecl.getImplementsClause().iterator();
                while (it.hasNext()) {
                    nil = nil.prepend(it.next());
                }
            }
            checkClass(jCClassDecl.pos(), jCClassDecl.sym, nil);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            checkSymbol(jCIdent.pos(), jCIdent.sym);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            super.visitSelect(jCFieldAccess);
            checkSymbol(jCFieldAccess.pos(), jCFieldAccess.sym);
        }

        @Override
        public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
            scan(jCTypeApply.clazz);
        }

        @Override
        public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
            scan(jCArrayTypeTree.elemtype);
        }
    }

    public class DefaultMethodClashFilter implements Filter<Symbol> {
        Type site;

        public DefaultMethodClashFilter(Type type) {
            this.site = type;
        }

        @Override
        public boolean accepts(Symbol symbol) {
            return symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 8796093022208L) != 0 && symbol.isInheritedIn(this.site.tsym, Check.this.types) && !symbol.isConstructor();
        }
    }

    public static class NestedCheckContext implements CheckContext {
        CheckContext enclosingContext;

        public NestedCheckContext(CheckContext checkContext) {
            this.enclosingContext = checkContext;
        }

        @Override
        public Warner checkWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
            return this.enclosingContext.checkWarner(diagnosticPosition, type, type2);
        }

        @Override
        public boolean compatible(Type type, Type type2, Warner warner) {
            return this.enclosingContext.compatible(type, type2, warner);
        }

        @Override
        public DeferredAttr.DeferredAttrContext deferredAttrContext() {
            return this.enclosingContext.deferredAttrContext();
        }

        @Override
        public InferenceContext inferenceContext() {
            return this.enclosingContext.inferenceContext();
        }

        @Override
        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
            this.enclosingContext.report(diagnosticPosition, jCDiagnostic);
        }
    }

    public class Validator extends JCTree.Visitor {
        boolean checkRaw;
        Env<AttrContext> env;
        boolean isOuter;

        public Validator(Env<AttrContext> env) {
            this.env = env;
        }

        public void validateTree(JCTree jCTree, boolean z10, boolean z11) {
            if (jCTree != null) {
                boolean z12 = this.checkRaw;
                this.checkRaw = z10;
                this.isOuter = z11;
                try {
                    try {
                        jCTree.accept(this);
                        if (z10) {
                            Check.this.checkRaw(jCTree, this.env);
                        }
                    } catch (Symbol.CompletionFailure e10) {
                        Check.this.completionError(jCTree.pos(), e10);
                    }
                } finally {
                    this.checkRaw = z12;
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
        public void validateTrees(List<? extends JCTree> list, boolean z10, boolean z11) {
            for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                validateTree((JCTree) list2.head, z10, z11);
            }
        }

        @Override
        public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
            jCAnnotatedType.underlyingType.accept(this);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            if (jCFieldAccess.type.hasTag(TypeTag.CLASS)) {
                visitSelectInternal(jCFieldAccess);
                if (jCFieldAccess.selected.type.isParameterized() && jCFieldAccess.type.tsym.type.getTypeArguments().nonEmpty()) {
                    Check.this.log.error(jCFieldAccess.pos(), "improperly.formed.type.param.missing", new Object[0]);
                }
            }
        }

        public void visitSelectInternal(JCTree.JCFieldAccess jCFieldAccess) {
            if (jCFieldAccess.type.tsym.isStatic() && jCFieldAccess.selected.type.isParameterized()) {
                Check.this.log.error(jCFieldAccess.pos(), "cant.select.static.class.from.param.type", new Object[0]);
            } else {
                jCFieldAccess.selected.accept(this);
            }
        }

        @Override
        public void visitTree(JCTree jCTree) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
            if (jCTypeApply.type.hasTag(TypeTag.CLASS)) {
                List list = jCTypeApply.arguments;
                List typeArguments = jCTypeApply.type.tsym.type.getTypeArguments();
                Type firstIncompatibleTypeArg = Check.this.firstIncompatibleTypeArg(jCTypeApply.type);
                if (firstIncompatibleTypeArg != null) {
                    Iterator<JCTree.JCExpression> it = jCTypeApply.arguments.iterator();
                    while (it.hasNext()) {
                        JCTree.JCExpression next = it.next();
                        if (next.type == firstIncompatibleTypeArg) {
                            Check.this.log.error(next, "not.within.bounds", firstIncompatibleTypeArg, typeArguments.head);
                        }
                        typeArguments = typeArguments.tail;
                    }
                }
                boolean z10 = jCTypeApply.type.tsym.flatName() == Check.this.names.java_lang_Class;
                for (List typeArguments2 = jCTypeApply.type.tsym.type.getTypeArguments(); list.nonEmpty() && typeArguments2.nonEmpty(); typeArguments2 = typeArguments2.tail) {
                    validateTree((JCTree) list.head, (this.isOuter && z10) ? false : true, false);
                    list = list.tail;
                }
                if (jCTypeApply.type.getEnclosingType().isRaw()) {
                    Check.this.log.error(jCTypeApply.pos(), "improperly.formed.type.inner.raw.param", new Object[0]);
                }
                if (jCTypeApply.clazz.hasTag(JCTree.Tag.SELECT)) {
                    visitSelectInternal((JCTree.JCFieldAccess) jCTypeApply.clazz);
                }
            }
        }

        @Override
        public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
            validateTree(jCArrayTypeTree.elemtype, this.checkRaw, this.isOuter);
        }

        @Override
        public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
            if (jCPrimitiveTypeTree.type.hasTag(TypeTag.VOID)) {
                Check.this.log.error(jCPrimitiveTypeTree.pos(), "void.not.allowed.here", new Object[0]);
            }
            super.visitTypeIdent(jCPrimitiveTypeTree);
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            validateTrees(jCTypeParameter.bounds, true, this.isOuter);
            Check.this.checkClassBounds(jCTypeParameter.pos(), jCTypeParameter.type);
        }

        @Override
        public void visitWildcard(JCTree.JCWildcard jCWildcard) {
            JCTree jCTree = jCWildcard.inner;
            if (jCTree != null) {
                validateTree(jCTree, true, this.isOuter);
            }
        }
    }

    public Check(Context context) {
        context.put((Context.Key<Context.Key<Check>>) checkKey, (Context.Key<Check>) this);
        Names instance = Names.instance(context);
        this.names = instance;
        this.dfltTargetMeta = new Name[]{instance.PACKAGE, instance.TYPE, instance.FIELD, instance.METHOD, instance.CONSTRUCTOR, instance.ANNOTATION_TYPE, instance.LOCAL_VARIABLE, instance.PARAMETER};
        Log instance2 = Log.instance(context);
        this.log = instance2;
        this.rs = Resolve.instance(context);
        this.syms = Symtab.instance(context);
        this.enter = Enter.instance(context);
        this.deferredAttr = DeferredAttr.instance(context);
        this.infer = Infer.instance(context);
        this.types = Types.instance(context);
        this.typeAnnotations = TypeAnnotations.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        Options instance3 = Options.instance(context);
        this.lint = Lint.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        Source instance4 = Source.instance(context);
        this.source = instance4;
        this.allowSimplifiedVarargs = instance4.allowSimplifiedVarargs();
        this.allowDefaultMethods = instance4.allowDefaultMethods();
        this.allowStrictMethodClashCheck = instance4.allowStrictMethodClashCheck();
        this.allowPrivateSafeVarargs = instance4.allowPrivateSafeVarargs();
        this.allowDiamondWithAnonymousClassCreation = instance4.allowDiamondWithAnonymousClassCreation();
        this.warnOnAnyAccessToMembers = instance3.isSet("warnOnAccessToMembers");
        this.syntheticNameChar = Target.instance(context).syntheticNameChar();
        this.profile = Profile.instance(context);
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.DEPRECATION;
        boolean isEnabled = lint.isEnabled(lintCategory);
        Lint lint2 = this.lint;
        Lint.LintCategory lintCategory2 = Lint.LintCategory.REMOVAL;
        boolean isEnabled2 = lint2.isEnabled(lintCategory2);
        Lint lint3 = this.lint;
        Lint.LintCategory lintCategory3 = Lint.LintCategory.UNCHECKED;
        boolean isEnabled3 = lint3.isEnabled(lintCategory3);
        this.deprecationHandler = new MandatoryWarningHandler(instance2, isEnabled, true, "deprecated", lintCategory);
        this.removalHandler = new MandatoryWarningHandler(instance2, isEnabled2, true, "removal", lintCategory2);
        this.uncheckedHandler = new MandatoryWarningHandler(instance2, isEnabled3, true, "unchecked", lintCategory3);
        this.sunApiHandler = new MandatoryWarningHandler(instance2, false, true, "sunapi", null);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
    }

    private Object asTypeParam(Type type) {
        return type.hasTag(TypeTag.TYPEVAR) ? this.diags.fragment("type.parameter", type) : type;
    }

    private void assertConvertible(JCTree jCTree, Type type, Type type2, Warner warner) {
        if (!this.types.isConvertible(type, type2, warner) && type2.isCompound()) {
            Types types = this.types;
            if (types.isSubtype(type, types.supertype(type2))) {
                Types types2 = this.types;
                types2.isSubtypeUnchecked(type, types2.interfaces(type2), warner);
            }
        }
    }

    private boolean belongsToRestrictedPackage(Symbol symbol) {
        String name = symbol.packge().fullname.toString();
        return name.startsWith("java.") || name.startsWith("org.openjdk.javax.") || name.startsWith("sun.") || name.contains(".internal.");
    }

    private void checkClassOverrideEqualsAndHash(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.OVERRIDES;
        if (lint.isEnabled(lintCategory)) {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) this.syms.objectType.tsym.members().findFirst(this.names.equals);
            Symbol.MethodSymbol methodSymbol2 = (Symbol.MethodSymbol) this.syms.objectType.tsym.members().findFirst(this.names.hashCode);
            boolean z10 = this.types.implementation(methodSymbol, classSymbol, false, this.equalsHasCodeFilter).owner == classSymbol;
            boolean z11 = this.types.implementation(methodSymbol2, classSymbol, false, this.equalsHasCodeFilter) != methodSymbol2;
            if (!z10 || z11) {
                return;
            }
            this.log.warning(lintCategory, diagnosticPosition, "override.equals.but.not.hashcode", classSymbol);
        }
    }

    private void checkCyclicConstructor(JCTree.JCClassDecl jCClassDecl, Symbol symbol, Map<Symbol, Symbol> map) {
        if (symbol != null) {
            long j10 = symbol.flags_field;
            if ((j10 & TagBits.HasDirectWildcard) == 0) {
                if ((j10 & TagBits.HasUnresolvedEnclosingType) != 0) {
                    this.log.error(TreeInfo.diagnosticPositionFor(symbol, jCClassDecl), "recursive.ctor.invocation", new Object[0]);
                } else {
                    symbol.flags_field = j10 | TagBits.HasUnresolvedEnclosingType;
                    checkCyclicConstructor(jCClassDecl, map.remove(symbol), map);
                    symbol.flags_field &= -134217729;
                }
                symbol.flags_field |= TagBits.HasDirectWildcard;
            }
        }
    }

    private boolean checkExtends(Type type, Type type2) {
        if (type.isUnbound()) {
            return true;
        }
        if (!type.hasTag(TypeTag.WILDCARD)) {
            return this.types.isSubtype(this.types.cvarUpperBound(type), type2);
        }
        if (type.isExtendsBound()) {
            Types types = this.types;
            return types.isCastable(type2, types.wildUpperBound(type), this.types.noWarnings);
        }
        if (!type.isSuperBound()) {
            return true;
        }
        Types types2 = this.types;
        return !types2.notSoftSubtype(types2.wildLowerBound(type), type2);
    }

    private boolean checkNameClash(Symbol.ClassSymbol classSymbol, Symbol symbol, Symbol symbol2) {
        ClashFilter clashFilter = new ClashFilter(classSymbol.type);
        if (clashFilter.accepts(symbol) && clashFilter.accepts(symbol2)) {
            Types types = this.types;
            if (types.hasSameArgs(symbol.erasure(types), symbol2.erasure(this.types))) {
                return true;
            }
        }
        return false;
    }

    private void checkNonCyclic1(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, List<Type.TypeVar> list) {
        TypeTag typeTag = TypeTag.TYPEVAR;
        if (!type.hasTag(typeTag) || (type.tsym.flags() & TagBits.HasUnresolvedMemberTypes) == 0) {
            if (list.contains(type)) {
                ((Type.TypeVar) type).bound = this.types.createErrorType(type);
                this.log.error(diagnosticPosition, "cyclic.inheritance", type);
            } else if (type.hasTag(typeTag)) {
                Type.TypeVar typeVar = (Type.TypeVar) type;
                List<Type.TypeVar> prepend = list.prepend(typeVar);
                Iterator<Type> it = this.types.getBounds(typeVar).iterator();
                while (it.hasNext()) {
                    checkNonCyclic1(diagnosticPosition, it.next(), prepend);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean checkNonCyclicInternal(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        boolean z10;
        Symbol.TypeSymbol typeSymbol = type.tsym;
        long j10 = typeSymbol.flags_field;
        if ((j10 & TagBits.HasDirectWildcard) != 0) {
            return true;
        }
        if ((j10 & TagBits.HasUnresolvedEnclosingType) != 0) {
            noteCyclic(diagnosticPosition, (Symbol.ClassSymbol) typeSymbol);
        } else if (!typeSymbol.type.isErroneous()) {
            try {
                typeSymbol.flags_field = TagBits.HasUnresolvedEnclosingType | typeSymbol.flags_field;
                if (typeSymbol.type.hasTag(TypeTag.CLASS)) {
                    Type.ClassType classType = (Type.ClassType) typeSymbol.type;
                    List list = classType.interfaces_field;
                    z10 = true;
                    if (list != null) {
                        while (list.nonEmpty()) {
                            z10 &= checkNonCyclicInternal(diagnosticPosition, (Type) list.head);
                            list = list.tail;
                        }
                    }
                    Type type2 = classType.supertype_field;
                    if (type2 != null && type2 != null && type2.hasTag(TypeTag.CLASS)) {
                        z10 &= checkNonCyclicInternal(diagnosticPosition, type2);
                    }
                    Symbol symbol = typeSymbol.owner;
                    if (symbol.kind == Kinds.Kind.TYP) {
                        z10 &= checkNonCyclicInternal(diagnosticPosition, symbol.type);
                    }
                } else {
                    z10 = true;
                }
                typeSymbol.flags_field = (-134217729) & typeSymbol.flags_field;
                if (z10) {
                    z10 = (typeSymbol.flags_field & TagBits.HasUnresolvedMemberTypes) == 0 && typeSymbol.isCompleted();
                }
                if (z10) {
                    typeSymbol.flags_field |= TagBits.HasDirectWildcard;
                }
                return z10;
            } catch (Throwable th2) {
                typeSymbol.flags_field = (-134217729) & typeSymbol.flags_field;
                throw th2;
            }
        }
        z10 = true;
        if (z10) {
        }
        if (z10) {
        }
        return z10;
    }

    private boolean checkTypeContainsImportableElement(Symbol.TypeSymbol typeSymbol, Symbol.TypeSymbol typeSymbol2, Symbol.PackageSymbol packageSymbol, Name name, Set<Symbol> set) {
        if (typeSymbol != null && set.add(typeSymbol)) {
            if (checkTypeContainsImportableElement(this.types.supertype(typeSymbol.type).tsym, typeSymbol2, packageSymbol, name, set)) {
                return true;
            }
            Iterator<Type> it = this.types.interfaces(typeSymbol.type).iterator();
            while (it.hasNext()) {
                if (checkTypeContainsImportableElement(it.next().tsym, typeSymbol2, packageSymbol, name, set)) {
                    return true;
                }
            }
            for (Symbol symbol : typeSymbol.members().getSymbolsByName(name)) {
                if (symbol.isStatic() && importAccessible(symbol, packageSymbol) && symbol.isMemberOf(typeSymbol2, this.types)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkUniqueImport(JCDiagnostic.DiagnosticPosition diagnosticPosition, Scope scope, Scope scope2, Scope scope3, final Symbol symbol, boolean z10) {
        Filter<Symbol> filter = new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$checkUniqueImport$9;
                lambda$checkUniqueImport$9 = Check.lambda$checkUniqueImport$9(Symbol.this, (Symbol) obj);
                return lambda$checkUniqueImport$9;
            }
        };
        Symbol findFirst = scope.findFirst(symbol.name, filter);
        if (findFirst == null && !z10) {
            findFirst = scope2.findFirst(symbol.name, filter);
        }
        if (findFirst != null) {
            if (z10) {
                this.log.error(diagnosticPosition, "already.defined.static.single.import", findFirst);
            } else {
                this.log.error(diagnosticPosition, "already.defined.single.import", findFirst);
            }
            return false;
        }
        Symbol findFirst2 = scope3.findFirst(symbol.name, filter);
        if (findFirst2 == null) {
            return true;
        }
        this.log.error(diagnosticPosition, "already.defined.this.unit", findFirst2);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkVisible(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol.PackageSymbol packageSymbol, boolean z10) {
        List<Symbol.ModuleSymbol> list;
        if (!isAPISymbol(symbol) && !z10) {
            this.log.warning(Lint.LintCategory.EXPORTS, diagnosticPosition, CompilerProperties.Warnings.LeaksNotAccessible(Kinds.kindName(symbol), symbol, symbol.packge().modle));
            return;
        }
        Symbol.PackageSymbol packge = symbol.packge();
        Directive.ExportsDirective findExport = findExport(packge);
        Directive.ExportsDirective findExport2 = findExport(packageSymbol);
        if (findExport == null) {
            this.log.warning(Lint.LintCategory.EXPORTS, diagnosticPosition, CompilerProperties.Warnings.LeaksNotAccessibleUnexported(Kinds.kindName(symbol), symbol, symbol.packge().modle));
            return;
        }
        List<Symbol.ModuleSymbol> list2 = findExport.modules;
        if (list2 != null && ((list = findExport2.modules) == null || !list2.containsAll(list))) {
            this.log.warning(Lint.LintCategory.EXPORTS, diagnosticPosition, CompilerProperties.Warnings.LeaksNotAccessibleUnexportedQualified(Kinds.kindName(symbol), symbol, symbol.packge().modle));
        }
        Symbol.ModuleSymbol moduleSymbol = packge.modle;
        Symbol.ModuleSymbol moduleSymbol2 = packageSymbol.modle;
        if (moduleSymbol == moduleSymbol2 || moduleSymbol == this.syms.java_base) {
            return;
        }
        List of2 = List.of(moduleSymbol2);
        while (of2.nonEmpty()) {
            Symbol.ModuleSymbol moduleSymbol3 = (Symbol.ModuleSymbol) of2.head;
            of2 = of2.tail;
            if (moduleSymbol3 == packge.modle) {
                return;
            }
            Iterator<Directive.RequiresDirective> it = moduleSymbol3.requires.iterator();
            while (it.hasNext()) {
                Directive.RequiresDirective next = it.next();
                if (next.isTransitive()) {
                    of2 = of2.prepend(next.module);
                }
            }
        }
        this.log.warning(Lint.LintCategory.EXPORTS, diagnosticPosition, CompilerProperties.Warnings.LeaksNotAccessibleNotRequiredTransitive(Kinds.kindName(symbol), symbol, symbol.packge().modle));
    }

    private void closure(Type type, Map<Symbol.TypeSymbol, Type> map) {
        if (type.hasTag(TypeTag.CLASS) && map.put(type.tsym, type) == null) {
            closure(this.types.supertype(type), map);
            Iterator<Type> it = this.types.interfaces(type).iterator();
            while (it.hasNext()) {
                closure(it.next(), map);
            }
        }
    }

    private Name[] defaultTargetMetaInfo(JCTree.JCAnnotation jCAnnotation, Symbol symbol) {
        return this.dfltTargetMeta;
    }

    private Directive.ExportsDirective findExport(Symbol.PackageSymbol packageSymbol) {
        Iterator<Directive.ExportsDirective> it = packageSymbol.modle.exports.iterator();
        while (it.hasNext()) {
            Directive.ExportsDirective next = it.next();
            if (next.packge == packageSymbol) {
                return next;
            }
        }
        return null;
    }

    private Symbol firstDirectIncompatibility(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2, Type type3) {
        Symbol.MethodSymbol implementation;
        Iterator<Symbol> it = type.tsym.members().getSymbols(Scope.LookupKind.NON_RECURSIVE).iterator();
        while (true) {
            Type type4 = null;
            if (!it.hasNext()) {
                return null;
            }
            Symbol next = it.next();
            if (next.kind == Kinds.Kind.MTH && next.isInheritedIn(type3.tsym, this.types)) {
                long j10 = 4096;
                long j11 = 0;
                if ((next.flags() & 4096) == 0 && ((implementation = ((Symbol.MethodSymbol) next).implementation(type3.tsym, this.types, false)) == null || (implementation.flags() & 1024) != 0)) {
                    for (Symbol symbol : type2.tsym.members().getSymbolsByName(next.name)) {
                        if (next != symbol && symbol.kind == Kinds.Kind.MTH && symbol.isInheritedIn(type3.tsym, this.types) && (symbol.flags() & j10) == j11) {
                            if (type4 == null) {
                                type4 = this.types.memberType(type, next);
                            }
                            Type memberType = this.types.memberType(type2, symbol);
                            if (this.types.overrideEquivalent(type4, memberType)) {
                                List<Type> typeArguments = type4.getTypeArguments();
                                List<Type> typeArguments2 = memberType.getTypeArguments();
                                Type returnType = type4.getReturnType();
                                Type subst = this.types.subst(memberType.getReturnType(), typeArguments2, typeArguments);
                                if (this.types.isSameType(returnType, subst)) {
                                    continue;
                                } else {
                                    if (!returnType.isPrimitiveOrVoid() && !subst.isPrimitiveOrVoid()) {
                                        Types types = this.types;
                                        if (types.covariantReturnType(returnType, subst, types.noWarnings)) {
                                            continue;
                                        } else {
                                            Types types2 = this.types;
                                            if (types2.covariantReturnType(subst, returnType, types2.noWarnings)) {
                                                continue;
                                            }
                                        }
                                    }
                                    if (!checkCommonOverriderIn(next, symbol, type3)) {
                                        this.log.error(diagnosticPosition, "types.incompatible.diff.ret", type, type2, ((Object) symbol.name) + "(" + ((Object) this.types.memberType(type2, symbol).getParameterTypes()) + ")");
                                        return symbol;
                                    }
                                }
                            } else if (checkNameClash((Symbol.ClassSymbol) type3.tsym, next, symbol) && !checkCommonOverriderIn(next, symbol, type3)) {
                                this.log.error(diagnosticPosition, "name.clash.same.erasure.no.override", next, next.location(), symbol, symbol.location());
                                return symbol;
                            }
                        }
                        j10 = 4096;
                        j11 = 0;
                    }
                }
            }
        }
    }

    private Symbol firstIncompatibility(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2, Type type3) {
        HashMap hashMap;
        HashMap hashMap2 = new HashMap();
        closure(type, hashMap2);
        if (type == type2) {
            hashMap = hashMap2;
        } else {
            hashMap = new HashMap();
            closure(type2, hashMap2, hashMap);
        }
        for (Type type4 : hashMap2.values()) {
            Iterator<Type> it = hashMap.values().iterator();
            while (it.hasNext()) {
                Symbol firstDirectIncompatibility = firstDirectIncompatibility(diagnosticPosition, type4, it.next(), type3);
                if (firstDirectIncompatibility != null) {
                    return firstDirectIncompatibility;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type firstIncompatibleTypeArg(Type type) {
        List<Type> allparams = type.tsym.type.allparams();
        List<Type> allparams2 = type.allparams();
        List typeArguments = type.getTypeArguments();
        ListBuffer listBuffer = new ListBuffer();
        for (List typeArguments2 = type.tsym.type.getTypeArguments(); typeArguments.nonEmpty() && typeArguments2.nonEmpty(); typeArguments2 = typeArguments2.tail) {
            listBuffer.append(this.types.subst(((Type) typeArguments2.head).getUpperBound(), allparams, allparams2));
            typeArguments = typeArguments.tail;
        }
        List typeArguments3 = type.getTypeArguments();
        Types types = this.types;
        for (List substBounds = types.substBounds(allparams, allparams, types.capture(type).allparams()); typeArguments3.nonEmpty() && substBounds.nonEmpty(); substBounds = substBounds.tail) {
            ((Type) typeArguments3.head).withTypeVar((Type.TypeVar) substBounds.head);
            typeArguments3 = typeArguments3.tail;
        }
        List typeArguments4 = type.getTypeArguments();
        for (List list = listBuffer.toList(); typeArguments4.nonEmpty() && list.nonEmpty(); list = list.tail) {
            Type type2 = (Type) typeArguments4.head;
            if (!isTypeArgErroneous(type2) && !((Type) list.head).isErroneous() && !checkExtends(type2, (Type) list.head)) {
                return (Type) typeArguments4.head;
            }
            typeArguments4 = typeArguments4.tail;
        }
        List typeArguments5 = type.getTypeArguments();
        List list2 = listBuffer.toList();
        Iterator<Type> it = this.types.capture(type).getTypeArguments().iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next.hasTag(TypeTag.TYPEVAR) && next.getUpperBound().isErroneous() && !((Type) list2.head).isErroneous() && !isTypeArgErroneous((Type) typeArguments5.head)) {
                return (Type) typeArguments5.head;
            }
            list2 = list2.tail;
            typeArguments5 = typeArguments5.tail;
        }
        return null;
    }

    private Set<Name> getDefaultTargetSet() {
        if (this.defaultTargets == null) {
            HashSet hashSet = new HashSet();
            hashSet.add(this.names.ANNOTATION_TYPE);
            hashSet.add(this.names.CONSTRUCTOR);
            hashSet.add(this.names.FIELD);
            hashSet.add(this.names.LOCAL_VARIABLE);
            hashSet.add(this.names.METHOD);
            hashSet.add(this.names.PACKAGE);
            hashSet.add(this.names.PARAMETER);
            hashSet.add(this.names.TYPE);
            this.defaultTargets = Collections.unmodifiableSet(hashSet);
        }
        return this.defaultTargets;
    }

    private long implicitEnumFinalFlag(JCTree jCTree) {
        if (!jCTree.hasTag(JCTree.Tag.CLASSDEF)) {
            return 0L;
        }
        C1SpecialTreeVisitor c1SpecialTreeVisitor = new C1SpecialTreeVisitor();
        Iterator<JCTree> it = ((JCTree.JCClassDecl) jCTree).defs.iterator();
        while (it.hasNext()) {
            it.next().accept(c1SpecialTreeVisitor);
            if (c1SpecialTreeVisitor.specialized) {
                return 0L;
            }
        }
        return 16L;
    }

    public static Check instance(Context context) {
        Check check = (Check) context.get(checkKey);
        return check == null ? new Check(context) : check;
    }

    private boolean is292targetTypeCast(JCTree.JCTypeCast jCTypeCast) {
        Symbol symbol;
        JCTree.JCExpression skipParens = TreeInfo.skipParens(jCTypeCast.expr);
        return skipParens.hasTag(JCTree.Tag.APPLY) && (symbol = TreeInfo.symbol(((JCTree.JCMethodInvocation) skipParens).meth)) != null && symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 137438953472L) != 0;
    }

    public boolean isAPISymbol(Symbol symbol) {
        while (symbol.kind != Kinds.Kind.PCK) {
            if ((symbol.flags() & 1) == 0 && (symbol.flags() & 4) == 0) {
                return false;
            }
            symbol = symbol.owner;
        }
        return true;
    }

    private boolean isCanonical(JCTree jCTree) {
        while (jCTree.hasTag(JCTree.Tag.SELECT)) {
            JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCTree;
            if (jCFieldAccess.sym.owner.getQualifiedName() != TreeInfo.symbol(jCFieldAccess.selected).getQualifiedName()) {
                return false;
            }
            jCTree = jCFieldAccess.selected;
        }
        return true;
    }

    private boolean isDeprecatedOverrideIgnorable(Symbol.MethodSymbol methodSymbol, Symbol.ClassSymbol classSymbol) {
        Symbol.ClassSymbol enclClass = methodSymbol.enclClass();
        Type supertype = this.types.supertype(classSymbol.type);
        if (!supertype.hasTag(TypeTag.CLASS)) {
            return true;
        }
        Symbol.MethodSymbol implementation = methodSymbol.implementation((Symbol.ClassSymbol) supertype.tsym, this.types, false);
        return (enclClass == null || (enclClass.flags() & 512) == 0) ? implementation != methodSymbol : (this.types.interfaces(classSymbol.type).contains(enclClass.type) || implementation == null) ? false : true;
    }

    private boolean isEffectivelyNonPublic(Symbol symbol) {
        if (symbol.packge() == this.syms.rootPackage) {
            return false;
        }
        while (symbol.kind != Kinds.Kind.PCK) {
            if ((symbol.flags() & 1) == 0) {
                return true;
            }
            symbol = symbol.owner;
        }
        return false;
    }

    private boolean isTargetSubsetOf(Set<Name> set, Set<Name> set2) {
        Names names;
        Name name;
        for (Name name2 : set) {
            for (Name name3 : set2) {
                if (name3 != name2 && ((name3 != (name = (names = this.names).TYPE) || name2 != names.ANNOTATION_TYPE) && (name3 != names.TYPE_USE || (name2 != name && name2 != names.ANNOTATION_TYPE && name2 != names.TYPE_PARAMETER)))) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean isTrustMeAllowedOnMethod(Symbol symbol) {
        if ((symbol.flags() & 17179869184L) == 0) {
            return false;
        }
        if (!symbol.isConstructor()) {
            if ((symbol.flags() & ((this.allowPrivateSafeVarargs ? 2 : 0) | 24)) == 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean lambda$checkImportsUnique$8(Symbol symbol) {
        return symbol.kind == Kinds.Kind.TYP;
    }

    public void lambda$checkMethod$2(Type type, Symbol symbol, Env env, List list, List list2, boolean z10, InferenceContext inferenceContext) {
        checkMethod(inferenceContext.asInstType(type), symbol, env, list, list2, z10, inferenceContext);
    }

    public void lambda$checkModuleExists$10(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ModuleSymbol moduleSymbol) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.MODULE;
        if (lint.isEnabled(lintCategory)) {
            this.log.warning(lintCategory, diagnosticPosition, CompilerProperties.Warnings.ModuleNotFound(moduleSymbol));
        }
    }

    public void lambda$checkModuleRequires$12(Directive.RequiresDirective requiresDirective, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        if (requiresDirective.isTransitive() && this.lint.isEnabled(Lint.LintCategory.REQUIRES_TRANSITIVE_AUTOMATIC)) {
            this.log.warning(diagnosticPosition, CompilerProperties.Warnings.RequiresTransitiveAutomatic);
        } else if (this.lint.isEnabled(Lint.LintCategory.REQUIRES_AUTOMATIC)) {
            this.log.warning(diagnosticPosition, CompilerProperties.Warnings.RequiresAutomatic);
        }
    }

    public void lambda$checkPackageExistsForOpens$11(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.PackageSymbol packageSymbol) {
        if (this.lint.isEnabled(Lint.LintCategory.OPENS)) {
            this.log.warning(diagnosticPosition, CompilerProperties.Warnings.PackageEmptyOrNotFound(packageSymbol));
        }
    }

    public void lambda$checkRedundantCast$1(JCTree.JCTypeCast jCTypeCast) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.CAST;
        if (lint.isEnabled(lintCategory)) {
            this.log.warning(lintCategory, jCTypeCast.pos(), "redundant.cast", jCTypeCast.clazz.type);
        }
    }

    public void lambda$checkSunAPI$6(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        this.log.mandatoryWarning(diagnosticPosition, "sun.proprietary", symbol);
    }

    public void lambda$checkType$0(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2, CheckContext checkContext, InferenceContext inferenceContext) {
        checkType(diagnosticPosition, inferenceContext.asInstType(type), inferenceContext.asInstType(type2), checkContext);
    }

    public static boolean lambda$checkUniqueImport$9(Symbol symbol, Symbol symbol2) {
        return (symbol2 == symbol || symbol2.type.isErroneous()) ? false : true;
    }

    public static boolean lambda$new$3(Symbol symbol) {
        return Symbol.MethodSymbol.implementation_filter.accepts(symbol) && (symbol.flags() & 35184372088832L) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [A, org.openjdk.tools.javac.code.Type] */
    public void noteCyclic(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        this.log.error(diagnosticPosition, "cyclic.inheritance", classSymbol);
        for (List interfaces = this.types.interfaces(classSymbol.type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            interfaces.head = this.types.createErrorType((Symbol.ClassSymbol) ((Type) interfaces.head).tsym, Type.noType);
        }
        Type supertype = this.types.supertype(classSymbol.type);
        if (supertype.hasTag(TypeTag.CLASS)) {
            ((Type.ClassType) classSymbol.type).supertype_field = this.types.createErrorType((Symbol.ClassSymbol) supertype.tsym, Type.noType);
        }
        classSymbol.type = this.types.createErrorType(classSymbol, classSymbol.type);
        classSymbol.flags_field |= TagBits.HasDirectWildcard;
    }

    public static int protection(long j10) {
        short s10 = (short) (j10 & 7);
        if (s10 == 0) {
            return 2;
        }
        if (s10 != 2) {
            return s10 != 4 ? 0 : 1;
        }
        return 3;
    }

    private void syntheticError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if (symbol.type.isErroneous()) {
            return;
        }
        this.log.error(diagnosticPosition, "synthetic.name.conflict", symbol, symbol.location());
    }

    private void validateAnnotation(JCTree.JCAnnotation jCAnnotation, Symbol symbol) {
        validateAnnotationTree(jCAnnotation);
        if (jCAnnotation.type.tsym.isAnnotationType() && !annotationApplicable(jCAnnotation, symbol)) {
            this.log.error(jCAnnotation.pos(), "annotation.type.not.applicable", new Object[0]);
        }
        if (jCAnnotation.annotationType.type.tsym == this.syms.functionalInterfaceType.tsym) {
            if (symbol.kind != Kinds.Kind.TYP) {
                this.log.error(jCAnnotation.pos(), "bad.functional.intf.anno", new Object[0]);
            } else {
                if (symbol.isInterface() && (symbol.flags() & 8192) == 0) {
                    return;
                }
                this.log.error(jCAnnotation.pos(), "bad.functional.intf.anno.1", this.diags.fragment("not.a.functional.intf", symbol));
            }
        }
    }

    private void validateDefault(Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        for (Symbol symbol2 : symbol.members().getSymbols()) {
            if (symbol2.name != this.names.value && symbol2.kind == Kinds.Kind.MTH && ((Symbol.MethodSymbol) symbol2).defaultValue == null) {
                this.log.error(diagnosticPosition, "invalid.repeatable.annotation.elem.nondefault", symbol, symbol2);
            }
        }
    }

    private void validateDocumented(Symbol symbol, Symbol symbol2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        if (symbol2.attribute(this.syms.documentedType.tsym) == null || symbol.attribute(this.syms.documentedType.tsym) != null) {
            return;
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation.not.documented", symbol, symbol2);
    }

    private void validateInherited(Symbol symbol, Symbol symbol2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        if (symbol2.attribute(this.syms.inheritedType.tsym) == null || symbol.attribute(this.syms.inheritedType.tsym) != null) {
            return;
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation.not.inherited", symbol, symbol2);
    }

    private void validateRetention(Symbol.TypeSymbol typeSymbol, Symbol.TypeSymbol typeSymbol2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Attribute.RetentionPolicy retention = this.types.getRetention(typeSymbol);
        Attribute.RetentionPolicy retention2 = this.types.getRetention(typeSymbol2);
        int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[retention2.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 || retention != Attribute.RetentionPolicy.SOURCE) {
                return;
            }
        } else if (retention == Attribute.RetentionPolicy.RUNTIME) {
            return;
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation.retention", typeSymbol, retention, typeSymbol2, retention2);
    }

    private void validateTarget(Symbol.TypeSymbol typeSymbol, Symbol.TypeSymbol typeSymbol2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Set<Name> set;
        Set<Name> set2;
        Attribute.Array attributeTargetAttribute = getAttributeTargetAttribute(typeSymbol);
        if (attributeTargetAttribute == null) {
            set = getDefaultTargetSet();
        } else {
            HashSet hashSet = new HashSet();
            for (Attribute attribute : attributeTargetAttribute.values) {
                if (attribute instanceof Attribute.Enum) {
                    hashSet.add(((Attribute.Enum) attribute).value.name);
                }
            }
            set = hashSet;
        }
        Attribute.Array attributeTargetAttribute2 = getAttributeTargetAttribute(typeSymbol2);
        if (attributeTargetAttribute2 == null) {
            set2 = getDefaultTargetSet();
        } else {
            HashSet hashSet2 = new HashSet();
            for (Attribute attribute2 : attributeTargetAttribute2.values) {
                if (attribute2 instanceof Attribute.Enum) {
                    hashSet2.add(((Attribute.Enum) attribute2).value.name);
                }
            }
            set2 = hashSet2;
        }
        if (isTargetSubsetOf(set, set2)) {
            return;
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation.incompatible.target", typeSymbol, typeSymbol2);
    }

    private void validateValue(Symbol.TypeSymbol typeSymbol, Symbol.TypeSymbol typeSymbol2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Symbol findFirst = typeSymbol.members().findFirst(this.names.value);
        if (findFirst == null || findFirst.kind != Kinds.Kind.MTH) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation.no.value", typeSymbol);
            return;
        }
        Type returnType = ((Symbol.MethodSymbol) findFirst).getReturnType();
        if (returnType.hasTag(TypeTag.ARRAY) && this.types.isSameType(((Type.ArrayType) returnType).elemtype, typeSymbol2.type)) {
            return;
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation.value.return", typeSymbol, returnType, this.types.makeArrayType(typeSymbol2.type));
    }

    private boolean withinAnonConstr(Env<AttrContext> env) {
        JCTree.JCMethodDecl jCMethodDecl;
        return env.enclClass.name.isEmpty() && (jCMethodDecl = env.enclMethod) != null && jCMethodDecl.name == this.names.init;
    }

    public boolean annotationApplicable(JCTree.JCAnnotation jCAnnotation, Symbol symbol) {
        Name[] nameArr;
        Kinds.Kind kind;
        Attribute.Array attributeTargetAttribute = getAttributeTargetAttribute(jCAnnotation.annotationType.type.tsym);
        if (attributeTargetAttribute != null) {
            nameArr = new Name[attributeTargetAttribute.values.length];
            int i10 = 0;
            while (true) {
                Attribute[] attributeArr = attributeTargetAttribute.values;
                if (i10 >= attributeArr.length) {
                    break;
                }
                Attribute attribute = attributeArr[i10];
                if (!(attribute instanceof Attribute.Enum)) {
                    return true;
                }
                nameArr[i10] = ((Attribute.Enum) attribute).value.name;
                i10++;
            }
        } else {
            nameArr = defaultTargetMetaInfo(jCAnnotation, symbol);
        }
        for (Name name : nameArr) {
            Names names = this.names;
            if (name == names.TYPE) {
                if (symbol.kind == Kinds.Kind.TYP) {
                    return true;
                }
            } else if (name == names.FIELD) {
                if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind != Kinds.Kind.MTH) {
                    return true;
                }
            } else if (name == names.METHOD) {
                if (symbol.kind == Kinds.Kind.MTH && !symbol.isConstructor()) {
                    return true;
                }
            } else if (name == names.PARAMETER) {
                if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH && (symbol.flags() & 8589934592L) != 0) {
                    return true;
                }
            } else if (name == names.CONSTRUCTOR) {
                if (symbol.kind == Kinds.Kind.MTH && symbol.isConstructor()) {
                    return true;
                }
            } else if (name == names.LOCAL_VARIABLE) {
                if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH && (symbol.flags() & 8589934592L) == 0) {
                    return true;
                }
            } else if (name == names.ANNOTATION_TYPE) {
                if (symbol.kind == Kinds.Kind.TYP && (symbol.flags() & 8192) != 0) {
                    return true;
                }
            } else if (name == names.PACKAGE) {
                if (symbol.kind == Kinds.Kind.PCK) {
                    return true;
                }
            } else if (name == names.TYPE_USE) {
                Kinds.Kind kind2 = symbol.kind;
                if (kind2 == Kinds.Kind.TYP || kind2 == Kinds.Kind.VAR || ((kind2 == (kind = Kinds.Kind.MTH) && !symbol.isConstructor() && !symbol.type.getReturnType().hasTag(TypeTag.VOID)) || (symbol.kind == kind && symbol.isConstructor()))) {
                    return true;
                }
            } else {
                if (name != names.TYPE_PARAMETER) {
                    return true;
                }
                if (symbol.kind == Kinds.Kind.TYP && symbol.type.hasTag(TypeTag.TYPEVAR)) {
                    return true;
                }
            }
        }
        return false;
    }

    public Object cannotOverride(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2) {
        return this.diags.fragment((methodSymbol2.owner.flags() & 512) == 0 ? "cant.override" : (methodSymbol.owner.flags() & 512) == 0 ? "cant.implement" : "clashes.with", methodSymbol, methodSymbol.location(), methodSymbol2, methodSymbol2.location());
    }

    public Warner castWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
        return new ConversionWarner(diagnosticPosition, "unchecked.cast.to.type", type, type2);
    }

    public void checkAccessFromSerializableElement(JCTree jCTree, boolean z10) {
        if (!this.warnOnAnyAccessToMembers) {
            Lint lint = this.lint;
            Lint.LintCategory lintCategory = Lint.LintCategory.SERIAL;
            if (!lint.isEnabled(lintCategory) || this.lint.isSuppressed(lintCategory) || !z10) {
                return;
            }
        }
        Symbol symbol = TreeInfo.symbol(jCTree);
        if (symbol.kind.matches(Kinds.KindSelector.VAL_MTH)) {
            if (symbol.kind == Kinds.Kind.VAR) {
                if ((symbol.flags() & 8589934592L) != 0 || symbol.isLocal()) {
                    return;
                }
                Name name = symbol.name;
                Names names = this.names;
                if (name == names._this || name == names._super) {
                    return;
                }
            }
            if (this.types.isSubtype(symbol.owner.type, this.syms.serializableType) || !isEffectivelyNonPublic(symbol)) {
                return;
            }
            if (!z10) {
                this.log.warning(jCTree.pos(), "access.to.member.from.serializable.element", symbol);
            } else if (belongsToRestrictedPackage(symbol)) {
                this.log.warning(Lint.LintCategory.SERIAL, jCTree.pos(), "access.to.member.from.serializable.lambda", symbol);
            }
        }
    }

    public void checkAllDefined(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        Symbol.MethodSymbol firstUnimplementedAbstract = this.types.firstUnimplementedAbstract(classSymbol);
        if (firstUnimplementedAbstract != null) {
            Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(firstUnimplementedAbstract.flags(), firstUnimplementedAbstract.name, this.types.memberType(classSymbol.type, firstUnimplementedAbstract), firstUnimplementedAbstract.owner);
            this.log.error(diagnosticPosition, "does.not.override.abstract", classSymbol, methodSymbol, methodSymbol.location());
        }
    }

    public void checkAnnotationResType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            checkAnnotationResType(diagnosticPosition, this.types.elemtype(type));
        } else if ((type.tsym.flags() & 8192) != 0) {
            checkNonCyclicElementsInternal(diagnosticPosition, type.tsym);
        }
    }

    public void checkCanonical(JCTree jCTree) {
        if (isCanonical(jCTree)) {
            return;
        }
        this.log.error(jCTree.pos(), "import.requires.canonical", TreeInfo.symbol(jCTree));
    }

    public Type checkCastable(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
        return checkCastable(diagnosticPosition, type, type2, this.basicHandler);
    }

    public void checkClassBounds(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        checkClassBounds(diagnosticPosition, new HashMap(), type);
    }

    public Type checkClassOrArrayType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        return (type.hasTag(TypeTag.CLASS) || type.hasTag(TypeTag.ARRAY) || type.hasTag(TypeTag.ERROR)) ? type : typeTagError(diagnosticPosition, this.diags.fragment("type.req.class.array", new Object[0]), asTypeParam(type));
    }

    public void checkClassOverrideEqualsAndHashIfNeeded(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        List<Type> interfaces;
        if (classSymbol == ((Symbol.ClassSymbol) this.syms.objectType.tsym) || classSymbol.isInterface() || classSymbol.isEnum() || (classSymbol.flags() & 8192) != 0 || (classSymbol.flags() & 1024) != 0) {
            return;
        }
        if (!classSymbol.isAnonymous() || (interfaces = this.types.interfaces(classSymbol.type)) == null || interfaces.isEmpty() || interfaces.head.tsym != this.syms.comparatorType.tsym) {
            checkClassOverrideEqualsAndHash(diagnosticPosition, classSymbol);
        }
    }

    public Type checkClassType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        return (type.hasTag(TypeTag.CLASS) || type.hasTag(TypeTag.ERROR)) ? type : typeTagError(diagnosticPosition, this.diags.fragment("type.req.class", new Object[0]), asTypeParam(type));
    }

    public boolean checkCommonOverriderIn(Symbol symbol, Symbol symbol2, Type type) {
        HashMap hashMap = new HashMap();
        Type memberType = this.types.memberType(type, symbol);
        Type memberType2 = this.types.memberType(type, symbol2);
        closure(type, hashMap);
        Iterator<Type> it = hashMap.values().iterator();
        while (it.hasNext()) {
            for (Symbol symbol3 : it.next().tsym.members().getSymbolsByName(symbol.name)) {
                if (symbol3 != symbol && symbol3 != symbol2 && symbol3.kind == Kinds.Kind.MTH && (symbol3.flags() & 2147487744L) == 0) {
                    Type memberType3 = this.types.memberType(type, symbol3);
                    if (this.types.overrideEquivalent(memberType3, memberType) && this.types.overrideEquivalent(memberType3, memberType2) && this.types.returnTypeSubstitutable(memberType3, memberType) && this.types.returnTypeSubstitutable(memberType3, memberType2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean checkCompatibleAbstracts(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2, Type type3) {
        if ((type3.tsym.flags() & 16777216) != 0) {
            type = this.types.capture(type);
            type2 = this.types.capture(type2);
        }
        return firstIncompatibility(diagnosticPosition, type, type2, type3) == null;
    }

    public void checkCompatibleConcretes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        long j10;
        Type supertype = this.types.supertype(type);
        if (supertype.hasTag(TypeTag.CLASS)) {
            Type type2 = supertype;
            while (type2.hasTag(TypeTag.CLASS) && type2.tsym.type.isParameterized()) {
                for (Symbol symbol : type2.tsym.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                    if (symbol.kind == Kinds.Kind.MTH) {
                        long j11 = 2147487752L;
                        long j12 = 0;
                        if ((symbol.flags() & 2147487752L) == 0 && symbol.isInheritedIn(type.tsym, this.types)) {
                            boolean z10 = true;
                            if (((Symbol.MethodSymbol) symbol).implementation(type.tsym, this.types, true) == symbol) {
                                Type memberType = this.types.memberType(type2, symbol);
                                int length = memberType.getParameterTypes().length();
                                if (memberType != symbol.type) {
                                    Type type3 = supertype;
                                    while (type3.hasTag(TypeTag.CLASS)) {
                                        for (Symbol symbol2 : type3.tsym.members().getSymbolsByName(symbol.name)) {
                                            if (symbol2 != symbol) {
                                                if (symbol2.kind == Kinds.Kind.MTH) {
                                                    j10 = 0;
                                                    if ((symbol2.flags() & j11) == 0 && symbol2.type.getParameterTypes().length() == length && symbol2.isInheritedIn(type.tsym, this.types)) {
                                                        if (((Symbol.MethodSymbol) symbol2).implementation(type.tsym, this.types, true) == symbol2) {
                                                            if (this.types.overrideEquivalent(memberType, this.types.memberType(type3, symbol2))) {
                                                                this.log.error(diagnosticPosition, "concrete.inheritance.conflict", symbol, type2, symbol2, type3, supertype);
                                                            }
                                                        }
                                                        z10 = true;
                                                        j12 = 0;
                                                    }
                                                } else {
                                                    j10 = 0;
                                                }
                                                j12 = j10;
                                                z10 = true;
                                            } else {
                                                z10 = z10;
                                            }
                                            j11 = 2147487752L;
                                        }
                                        type3 = this.types.supertype(type3);
                                        z10 = z10;
                                        j11 = 2147487752L;
                                    }
                                }
                            }
                        }
                    }
                }
                type2 = this.types.supertype(type2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkCompatibleSupertypes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        List<Type> interfaces = this.types.interfaces(type);
        Type supertype = this.types.supertype(type);
        if (supertype.hasTag(TypeTag.CLASS) && (supertype.tsym.flags() & 1024) != 0) {
            interfaces = interfaces.prepend(supertype);
        }
        for (List list = interfaces; list.nonEmpty(); list = list.tail) {
            if (!((Type) list.head).getTypeArguments().isEmpty()) {
                A a10 = list.head;
                if (!checkCompatibleAbstracts(diagnosticPosition, (Type) a10, (Type) a10, type)) {
                    return;
                }
            }
            for (List list2 = interfaces; list2 != list; list2 = list2.tail) {
                if (!checkCompatibleAbstracts(diagnosticPosition, (Type) list.head, (Type) list2.head, type)) {
                    return;
                }
            }
        }
        checkCompatibleConcretes(diagnosticPosition, type);
    }

    public void checkConflicts(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol.TypeSymbol typeSymbol) {
        Type type = typeSymbol.type;
        while (type != Type.noType) {
            for (Symbol symbol2 : type.tsym.members().getSymbolsByName(symbol.name, Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.kind == symbol2.kind) {
                    Types types = this.types;
                    if (types.isSameType(types.erasure(symbol.type), this.types.erasure(symbol2.type)) && symbol != symbol2 && (symbol.flags() & 4096) != (symbol2.flags() & 4096) && (symbol.flags() & 2147483648L) == 0 && (symbol2.flags() & 2147483648L) == 0) {
                        if ((symbol2.flags() & 4096) == 0) {
                            symbol = symbol2;
                        }
                        syntheticError(diagnosticPosition, symbol);
                        return;
                    }
                }
            }
            type = this.types.supertype(type);
        }
    }

    public Type checkConstructorRefType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        Type checkClassOrArrayType = checkClassOrArrayType(diagnosticPosition, type);
        if (!checkClassOrArrayType.hasTag(TypeTag.CLASS)) {
            if (!checkClassOrArrayType.hasTag(TypeTag.ARRAY) || this.types.isReifiable(((Type.ArrayType) checkClassOrArrayType).elemtype)) {
                return checkClassOrArrayType;
            }
            this.log.error(diagnosticPosition, "generic.array.creation", new Object[0]);
            return this.types.createErrorType(checkClassOrArrayType);
        }
        if ((checkClassOrArrayType.tsym.flags() & 1536) != 0) {
            this.log.error(diagnosticPosition, "abstract.cant.be.instantiated", checkClassOrArrayType.tsym);
            return this.types.createErrorType(checkClassOrArrayType);
        }
        if ((checkClassOrArrayType.tsym.flags() & 16384) == 0) {
            return checkClassType(diagnosticPosition, checkClassOrArrayType, true);
        }
        this.log.error(diagnosticPosition, "enum.cant.be.instantiated", new Object[0]);
        return this.types.createErrorType(checkClassOrArrayType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkCyclicConstructors(JCTree.JCClassDecl jCClassDecl) {
        HashMap hashMap = new HashMap();
        for (List list = jCClassDecl.defs; list.nonEmpty(); list = list.tail) {
            JCTree.JCMethodInvocation firstConstructorCall = TreeInfo.firstConstructorCall((JCTree) list.head);
            if (firstConstructorCall != null) {
                JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) list.head;
                if (TreeInfo.name(firstConstructorCall.meth) == this.names._this) {
                    hashMap.put(jCMethodDecl.sym, TreeInfo.symbol(firstConstructorCall.meth));
                } else {
                    jCMethodDecl.sym.flags_field |= TagBits.HasDirectWildcard;
                }
            }
        }
        for (Symbol symbol : (Symbol[]) hashMap.o().toArray(new Symbol[0])) {
            checkCyclicConstructor(jCClassDecl, symbol, hashMap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkDefaultMethodClashes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        Symbol symbol;
        String str;
        for (Symbol symbol2 : this.types.membersClosure(type, false).getSymbols(new DefaultMethodClashFilter(type))) {
            Assert.check(symbol2.kind == Kinds.Kind.MTH);
            List<Symbol.MethodSymbol> interfaceCandidates = this.types.interfaceCandidates(type, (Symbol.MethodSymbol) symbol2);
            if (interfaceCandidates.size() > 1) {
                ListBuffer listBuffer = new ListBuffer();
                ListBuffer listBuffer2 = new ListBuffer();
                Iterator<Symbol.MethodSymbol> it = interfaceCandidates.iterator();
                while (it.hasNext()) {
                    Symbol.MethodSymbol next = it.next();
                    if ((next.flags() & 8796093022208L) != 0) {
                        listBuffer2 = listBuffer2.append(next);
                    } else if ((next.flags() & 1024) != 0) {
                        listBuffer = listBuffer.append(next);
                    }
                    if (listBuffer2.nonEmpty() && listBuffer2.size() + listBuffer.size() >= 2) {
                        Symbol symbol3 = (Symbol) listBuffer2.first();
                        if (listBuffer2.size() > 1) {
                            symbol = (Symbol) listBuffer2.toList().tail.head;
                            str = "types.incompatible.unrelated.defaults";
                        } else {
                            symbol = (Symbol) listBuffer.first();
                            str = "types.incompatible.abstract.default";
                        }
                        this.log.error(diagnosticPosition, str, Kinds.kindName(type.tsym), type, symbol2.name, this.types.memberType(type, symbol2).getParameterTypes(), symbol3.location(), symbol.location());
                    }
                }
            }
        }
    }

    public void checkDeprecated(final JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, final Symbol symbol2) {
        if (symbol2.isDeprecatedForRemoval() || (symbol2.isDeprecated() && !symbol.isDeprecated())) {
            if (symbol2.outermostClass() != symbol.outermostClass() || symbol2.outermostClass() == null) {
                this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                    @Override
                    public final void report() {
                        Check.this.lambda$checkDeprecated$5(diagnosticPosition, symbol2);
                    }
                });
            }
        }
    }

    public void checkDeprecatedAnnotation(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.DEP_ANN;
        if (lint.isEnabled(lintCategory) && symbol.isDeprecatableViaAnnotation() && (symbol.flags() & 131072) != 0 && !this.syms.deprecatedType.isErroneous() && symbol.attribute(this.syms.deprecatedType.tsym) == null) {
            this.log.warning(lintCategory, diagnosticPosition, "missing.deprecated.annotation", new Object[0]);
        }
        Lint lint2 = this.lint;
        Lint.LintCategory lintCategory2 = Lint.LintCategory.DEPRECATION;
        if (!lint2.isEnabled(lintCategory2) || symbol.isDeprecatableViaAnnotation() || this.syms.deprecatedType.isErroneous() || symbol.attribute(this.syms.deprecatedType.tsym) == null) {
            return;
        }
        this.log.warning(lintCategory2, diagnosticPosition, "deprecated.annotation.has.no.effect", Kinds.kindName(symbol));
    }

    public Type checkDiamond(JCTree.JCNewClass jCNewClass, Type type) {
        if (!TreeInfo.isDiamond(jCNewClass) || type.isErroneous()) {
            return checkClassType(jCNewClass.clazz.pos(), type, true);
        }
        if (jCNewClass.def != null && !this.allowDiamondWithAnonymousClassCreation) {
            this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, jCNewClass.clazz.pos(), CompilerProperties.Errors.CantApplyDiamond1(type, CompilerProperties.Fragments.DiamondAndAnonClassNotSupportedInSource(this.source.name)));
        }
        if (type.tsym.type.getTypeArguments().isEmpty()) {
            this.log.error(jCNewClass.clazz.pos(), "cant.apply.diamond.1", type, this.diags.fragment("diamond.non.generic", type));
            return this.types.createErrorType(type);
        }
        List<JCTree.JCExpression> list = jCNewClass.typeargs;
        if (list == null || !list.nonEmpty()) {
            return type;
        }
        this.log.error(jCNewClass.clazz.pos(), "cant.apply.diamond.1", type, this.diags.fragment("diamond.and.explicit.params", type));
        return this.types.createErrorType(type);
    }

    public List<Type> checkDiamondDenotable(Type.ClassType classType) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = classType.allparams().iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (!diamondTypeChecker.visit(next, null).booleanValue()) {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    public boolean checkDisjoint(JCDiagnostic.DiagnosticPosition diagnosticPosition, long j10, long j11, long j12) {
        long j13 = j11 & j10;
        if (j13 == 0) {
            return true;
        }
        long j14 = j10 & j12;
        if (j14 == 0) {
            return true;
        }
        this.log.error(diagnosticPosition, "illegal.combination.of.modifiers", Flags.asFlagSet(TreeInfo.firstFlag(j13)), Flags.asFlagSet(TreeInfo.firstFlag(j14)));
        return false;
    }

    public void checkDivZero(final JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Type type) {
        if (type.constValue() != null && type.getTag().isSubRangeOf(TypeTag.LONG) && ((Number) type.constValue()).longValue() == 0) {
            int i10 = ((Symbol.OperatorSymbol) symbol).opcode;
            if (i10 == 108 || i10 == 112 || i10 == 109 || i10 == 113) {
                this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                    @Override
                    public final void report() {
                        Check.this.lambda$checkDivZero$7(diagnosticPosition);
                    }
                });
            }
        }
    }

    public void checkEmptyIf(JCTree.JCIf jCIf) {
        if (jCIf.thenpart.hasTag(JCTree.Tag.SKIP) && jCIf.elsepart == null) {
            Lint lint = this.lint;
            Lint.LintCategory lintCategory = Lint.LintCategory.EMPTY;
            if (lint.isEnabled(lintCategory)) {
                this.log.warning(lintCategory, jCIf.thenpart.pos(), "empty.if", new Object[0]);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0079, code lost:
    
        if ((r23 & 16896) != 0) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long checkFlags(JCDiagnostic.DiagnosticPosition diagnosticPosition, long j10, Symbol symbol, JCTree jCTree) {
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new AssertionError();
                }
                long j16 = 8;
                if (symbol.isLocal()) {
                    if ((symbol.owner.flags_field & 8) == 0 && (j10 & 16384) != 0) {
                        this.log.error(diagnosticPosition, "enums.must.be.static", new Object[0]);
                    }
                    j14 = 23568;
                } else {
                    Symbol symbol2 = symbol.owner;
                    if (symbol2.kind != Kinds.Kind.TYP) {
                        j14 = 32273;
                    } else if (symbol2.owner.kind == Kinds.Kind.PCK || (symbol2.flags_field & 8) != 0) {
                        j14 = 24095;
                    } else {
                        if ((j10 & 16384) != 0) {
                            this.log.error(diagnosticPosition, "enums.must.be.static", new Object[0]);
                        }
                        j14 = 24087;
                    }
                }
                j16 = 0;
                if ((j10 & 512) != 0) {
                    j16 |= 1024;
                }
                if ((j10 & 16384) != 0) {
                    j14 &= -1041;
                    j16 |= implicitEnumFinalFlag(jCTree);
                }
                j15 = j16 | (symbol.owner.flags_field & 2048);
            } else if (symbol.name != this.names.init) {
                long j17 = symbol.owner.flags_field;
                if ((j17 & 512) != 0) {
                    long j18 = j17 & 8192;
                    j13 = Flags.AnnotationTypeElementMask;
                    if (j18 == 0 && (j10 & 8796093022218L) != 0) {
                        long j19 = (j10 & 2) != 0 ? 0L : 1L;
                        if ((j10 & 8796093022208L) != 0) {
                            j19 |= 1024;
                        }
                        long j20 = j19;
                        j14 = 8796093025291L;
                        j13 = j20;
                    } else {
                        j14 = 1025;
                    }
                    if (((j10 | j13) & 1024) != 0) {
                    }
                    j15 = (symbol.owner.flags_field & 2048) | j13;
                } else {
                    j14 = 3391;
                    j13 = 0;
                    if (((j10 | j13) & 1024) != 0) {
                    }
                    j15 = (symbol.owner.flags_field & 2048) | j13;
                }
            } else if ((symbol.owner.flags_field & 16384) != 0) {
                j14 = 2;
                j13 = 2;
                if (((j10 | j13) & 1024) != 0 || (j10 & 8796093022208L) != 0) {
                    j15 = (symbol.owner.flags_field & 2048) | j13;
                }
                j12 = j14;
            } else {
                j14 = 7;
                j13 = 0;
                if (((j10 | j13) & 1024) != 0) {
                }
                j15 = (symbol.owner.flags_field & 2048) | j13;
            }
            j13 = j15;
            j12 = j14;
        } else {
            if (TreeInfo.isReceiverParam(jCTree)) {
                j11 = 8589934592L;
            } else {
                Symbol symbol3 = symbol.owner;
                if (symbol3.kind != Kinds.Kind.TYP) {
                    j11 = Flags.LocalVarFlags;
                } else if ((symbol3.flags_field & 512) != 0) {
                    j12 = 25;
                    j13 = 25;
                } else {
                    j11 = 16607;
                }
            }
            j12 = j11;
            j13 = 0;
        }
        long j21 = j10 & Flags.ExtendedStandardFlags & (~j12);
        if (j21 == 0) {
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.TYP;
            if ((kind == kind2 || checkDisjoint(diagnosticPosition, j10, 1024L, 8796093022218L)) && checkDisjoint(diagnosticPosition, j10, 10L, 8796093022208L) && checkDisjoint(diagnosticPosition, j10, 1536L, 304L) && checkDisjoint(diagnosticPosition, j10, 1L, 6L) && checkDisjoint(diagnosticPosition, j10, 2L, 5L) && checkDisjoint(diagnosticPosition, j10, 16L, 64L) && symbol.kind != kind2) {
                checkDisjoint(diagnosticPosition, j10, 1280L, 2048L);
            }
        } else if ((j21 & 512) != 0) {
            this.log.error(diagnosticPosition, "intf.not.allowed.here", new Object[0]);
            j12 |= 512;
        } else {
            this.log.error(diagnosticPosition, "mod.not.allowed.here", Flags.asFlagSet(j21));
        }
        return (j10 & ((-8796093026304L) | j12)) | j13;
    }

    public void checkForBadAuxiliaryClassAccess(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Symbol.ClassSymbol classSymbol) {
        if (!this.lint.isEnabled(Lint.LintCategory.AUXILIARYCLASS) || (classSymbol.flags() & 17592186044416L) == 0 || !this.rs.isAccessible(env, classSymbol) || this.fileManager.isSameFile(classSymbol.sourcefile, env.toplevel.sourcefile)) {
            return;
        }
        this.log.warning(diagnosticPosition, "auxiliary.class.accessed.from.outside.of.its.source.file", classSymbol, classSymbol.sourcefile);
    }

    public void checkFunctionalInterface(JCTree.JCClassDecl jCClassDecl, Symbol.ClassSymbol classSymbol) {
        if (classSymbol.attribute(this.syms.functionalInterfaceType.tsym) != null) {
            try {
                this.types.findDescriptorSymbol(classSymbol);
            } catch (Types.FunctionDescriptorLookupError e10) {
                JCDiagnostic.DiagnosticPosition pos = jCClassDecl.pos();
                Iterator<JCTree.JCAnnotation> it = jCClassDecl.getModifiers().annotations.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    JCTree.JCAnnotation next = it.next();
                    if (next.annotationType.type.tsym == this.syms.functionalInterfaceType.tsym) {
                        pos = next.pos();
                        break;
                    }
                }
                this.log.error(pos, "bad.functional.intf.anno.1", e10.getDiagnostic());
            }
        }
    }

    public void checkHideClashes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Symbol.MethodSymbol methodSymbol) {
        for (Symbol symbol : this.types.membersClosure(type, true).getSymbolsByName(methodSymbol.name, new ClashFilter(type))) {
            Types types = this.types;
            if (!types.isSubSignature(methodSymbol.type, types.memberType(type, symbol), this.allowStrictMethodClashCheck)) {
                Types types2 = this.types;
                if (types2.hasSameArgs(symbol.erasure(types2), methodSymbol.erasure(this.types))) {
                    this.log.error(diagnosticPosition, "name.clash.same.erasure.no.hide", methodSymbol, methodSymbol.location(), symbol, symbol.location());
                    return;
                }
                checkPotentiallyAmbiguousOverloads(diagnosticPosition, type, methodSymbol, (Symbol.MethodSymbol) symbol);
            }
        }
    }

    public void checkImplementations(JCTree.JCClassDecl jCClassDecl) {
        Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
        checkImplementations(jCClassDecl, classSymbol, classSymbol);
    }

    public void checkImportedPackagesObservable(JCTree.JCCompilationUnit jCCompilationUnit) {
        Iterator<JCTree.JCImport> it = jCCompilationUnit.getImports().iterator();
        while (it.hasNext()) {
            JCTree.JCImport next = it.next();
            if (!next.staticImport && TreeInfo.name(next.qualid) == this.names.asterisk) {
                Symbol.TypeSymbol typeSymbol = ((JCTree.JCFieldAccess) next.qualid).selected.type.tsym;
                Map<Name, Symbol.PackageSymbol> map = jCCompilationUnit.modle.visiblePackages;
                if (map != null) {
                    Iterator<Symbol.PackageSymbol> it2 = map.values().iterator();
                    while (it2.hasNext()) {
                        if (Convert.packagePart(it2.next().fullname) == typeSymbol.flatName()) {
                            break;
                        }
                    }
                }
                if (typeSymbol.kind == Kinds.Kind.PCK && typeSymbol.members().isEmpty() && !typeSymbol.exists()) {
                    this.log.error(JCDiagnostic.DiagnosticFlag.RESOLVE_ERROR, next.pos, "doesnt.exist", typeSymbol);
                }
            }
        }
    }

    public void checkImportsResolvable(JCTree.JCCompilationUnit jCCompilationUnit) {
        Symbol symbol;
        Iterator<JCTree.JCImport> it = jCCompilationUnit.getImports().iterator();
        while (it.hasNext()) {
            JCTree.JCImport next = it.next();
            if (next.staticImport && next.qualid.hasTag(JCTree.Tag.SELECT)) {
                JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) next.qualid;
                if (jCFieldAccess.name != this.names.asterisk && (symbol = TreeInfo.symbol(jCFieldAccess.selected)) != null && symbol.kind == Kinds.Kind.TYP) {
                    Symbol.TypeSymbol typeSymbol = (Symbol.TypeSymbol) TreeInfo.symbol(jCFieldAccess.selected);
                    if (!checkTypeContainsImportableElement(typeSymbol, typeSymbol, jCCompilationUnit.packge, jCFieldAccess.name, new HashSet())) {
                        this.log.error(next.pos(), "cant.resolve.location", Kinds.KindName.STATIC, jCFieldAccess.name, List.nil(), List.nil(), Kinds.typeKindName(TreeInfo.symbol(jCFieldAccess.selected).type), TreeInfo.symbol(jCFieldAccess.selected).type);
                    }
                }
            }
        }
    }

    public void checkImportsUnique(JCTree.JCCompilationUnit jCCompilationUnit) {
        JCTree.JCImport jCImport;
        Scope scope;
        Scope.WriteableScope create = Scope.WriteableScope.create(jCCompilationUnit.packge);
        Scope.WriteableScope create2 = Scope.WriteableScope.create(jCCompilationUnit.packge);
        Scope scope2 = jCCompilationUnit.toplevelScope;
        Iterator<JCTree> it = jCCompilationUnit.defs.iterator();
        while (it.hasNext()) {
            JCTree next = it.next();
            if (next.hasTag(JCTree.Tag.IMPORT) && (scope = (jCImport = (JCTree.JCImport) next).importScope) != null) {
                for (Symbol symbol : scope.getSymbols(new Filter() {
                    @Override
                    public final boolean accepts(Object obj) {
                        boolean lambda$checkImportsUnique$8;
                        lambda$checkImportsUnique$8 = Check.lambda$checkImportsUnique$8((Symbol) obj);
                        return lambda$checkImportsUnique$8;
                    }
                })) {
                    if (jCImport.isStatic()) {
                        checkUniqueImport(jCImport.pos(), create, create2, scope2, symbol, true);
                        create2.enter(symbol);
                    } else {
                        checkUniqueImport(jCImport.pos(), create, create2, scope2, symbol, false);
                        create.enter(symbol);
                    }
                }
                jCImport.importScope = null;
            }
        }
    }

    public void checkLeaksNotAccessible(Env<AttrContext> env, JCTree.JCClassDecl jCClassDecl) {
        Directive.ExportsDirective findExport;
        JCTree.JCCompilationUnit jCCompilationUnit = env.toplevel;
        Symbol.ModuleSymbol moduleSymbol = jCCompilationUnit.modle;
        Symtab symtab = this.syms;
        if (moduleSymbol == symtab.unnamedModule || moduleSymbol == symtab.noModule || (jCClassDecl.sym.flags() & 16777216) != 0 || (findExport = findExport(jCCompilationUnit.packge)) == null || findExport.modules != null) {
            return;
        }
        new TreeScanner(env, jCClassDecl, jCCompilationUnit) {
            boolean inSuperType;
            Lint lint;
            final JCTree.JCClassDecl val$check;
            final Env val$env;
            final JCTree.JCCompilationUnit val$toplevel;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.val$env = env;
                this.val$check = jCClassDecl;
                this.val$toplevel = jCCompilationUnit;
                this.lint = ((AttrContext) env.info).lint;
            }

            @Override
            public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
                if (jCAnnotation.attribute.type.tsym.getAnnotation(Documented.class) != null) {
                    super.visitAnnotation(jCAnnotation);
                }
            }

            @Override
            public void visitBlock(JCTree.JCBlock jCBlock) {
            }

            @Override
            public void visitClassDef(JCTree.JCClassDecl jCClassDecl2) {
                if (jCClassDecl2 == this.val$check && Check.this.isAPISymbol(jCClassDecl2.sym)) {
                    Lint lint = this.lint;
                    try {
                        Lint augment = lint.augment(jCClassDecl2.sym);
                        this.lint = augment;
                        if (augment.isEnabled(Lint.LintCategory.EXPORTS)) {
                            scan(jCClassDecl2.mods);
                            scan(jCClassDecl2.typarams);
                            try {
                                this.inSuperType = true;
                                scan(jCClassDecl2.extending);
                                scan(jCClassDecl2.implementing);
                                this.inSuperType = false;
                                scan(jCClassDecl2.defs);
                            } catch (Throwable th2) {
                                this.inSuperType = false;
                                throw th2;
                            }
                        }
                        this.lint = lint;
                    } catch (Throwable th3) {
                        this.lint = lint;
                        throw th3;
                    }
                }
            }

            @Override
            public void visitIdent(JCTree.JCIdent jCIdent) {
                Symbol symbol = TreeInfo.symbol(jCIdent);
                if (symbol.kind != Kinds.Kind.TYP || symbol.type.hasTag(TypeTag.TYPEVAR)) {
                    return;
                }
                Check.this.checkVisible(jCIdent.pos(), symbol, this.val$toplevel.packge, this.inSuperType);
            }

            @Override
            public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
                if (Check.this.isAPISymbol(jCMethodDecl.sym)) {
                    Lint lint = this.lint;
                    try {
                        Lint augment = lint.augment(jCMethodDecl.sym);
                        this.lint = augment;
                        if (augment.isEnabled(Lint.LintCategory.EXPORTS)) {
                            super.visitMethodDef(jCMethodDecl);
                        }
                    } finally {
                        this.lint = lint;
                    }
                }
            }

            @Override
            public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
                Symbol symbol = TreeInfo.symbol(jCFieldAccess);
                Symbol symbol2 = TreeInfo.symbol(jCFieldAccess.selected);
                if (symbol.kind == Kinds.Kind.TYP && symbol2.kind == Kinds.Kind.PCK) {
                    Check.this.checkVisible(jCFieldAccess.pos(), symbol, this.val$toplevel.packge, this.inSuperType);
                } else {
                    super.visitSelect(jCFieldAccess);
                }
            }

            @Override
            public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
                scan(jCTypeApply.clazz);
                boolean z10 = this.inSuperType;
                try {
                    this.inSuperType = false;
                    scan(jCTypeApply.arguments);
                } finally {
                    this.inSuperType = z10;
                }
            }

            @Override
            public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
                if (Check.this.isAPISymbol(jCVariableDecl.sym) || jCVariableDecl.sym.owner.kind == Kinds.Kind.MTH) {
                    Lint lint = this.lint;
                    try {
                        Lint augment = lint.augment(jCVariableDecl.sym);
                        this.lint = augment;
                        if (augment.isEnabled(Lint.LintCategory.EXPORTS)) {
                            scan(jCVariableDecl.mods);
                            scan(jCVariableDecl.vartype);
                        }
                    } finally {
                        this.lint = lint;
                    }
                }
            }
        }.scan(jCClassDecl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type checkMethod(final Type type, final Symbol symbol, final Env<AttrContext> env, final List<JCTree.JCExpression> list, final List<Type> list2, final boolean z10, InferenceContext inferenceContext) {
        if (inferenceContext.free(type)) {
            inferenceContext.addFreeTypeListener(List.of(type), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    Check.this.lambda$checkMethod$2(type, symbol, env, list, list2, z10, inferenceContext2);
                }
            });
            return type;
        }
        List parameterTypes = type.getParameterTypes();
        List parameterTypes2 = symbol.type.getParameterTypes();
        if (parameterTypes2.length() != parameterTypes.length()) {
            parameterTypes2 = parameterTypes;
        }
        Type type2 = z10 ? (Type) parameterTypes.last() : null;
        if (symbol.name == this.names.init && symbol.owner == this.syms.enumSym) {
            parameterTypes = parameterTypes.tail.tail;
            parameterTypes2 = parameterTypes2.tail.tail;
        }
        if (list != null) {
            List list3 = list;
            while (parameterTypes.head != type2) {
                JCTree jCTree = (JCTree) list3.head;
                assertConvertible(jCTree, jCTree.type, (Type) parameterTypes.head, convertWarner(jCTree.pos(), jCTree.type, (Type) parameterTypes2.head));
                list3 = list3.tail;
                parameterTypes = parameterTypes.tail;
                parameterTypes2 = parameterTypes2.tail;
            }
            if (z10) {
                Type elemtype = this.types.elemtype(type2);
                while (list3.tail != null) {
                    JCTree jCTree2 = (JCTree) list3.head;
                    assertConvertible(jCTree2, jCTree2.type, elemtype, convertWarner(jCTree2.pos(), jCTree2.type, elemtype));
                    list3 = list3.tail;
                }
            } else if ((symbol.flags() & 70385924046848L) == 17179869184L) {
                Type last = type.getParameterTypes().last();
                Type last2 = list2.last();
                Types types = this.types;
                if (types.isSubtypeUnchecked(last2, types.elemtype(last))) {
                    Types types2 = this.types;
                    if (!types2.isSameType(types2.erasure(last), this.types.erasure(last2))) {
                        this.log.warning(list.last().pos(), "inexact.non-varargs.call", this.types.elemtype(last), last);
                    }
                }
            }
        }
        if (z10) {
            Type last3 = type.getParameterTypes().last();
            if (!this.types.isReifiable(last3) && (!this.allowSimplifiedVarargs || symbol.baseSymbol().attribute(this.syms.trustMeType.tsym) == null || !isTrustMeAllowedOnMethod(symbol))) {
                warnUnchecked(env.tree.pos(), "unchecked.generic.array.creation", last3);
            }
            if ((symbol.baseSymbol().flags() & 70368744177664L) == 0) {
                TreeInfo.setVarargsElement(env.tree, this.types.elemtype(last3));
            }
        }
        return type;
    }

    public void checkModuleExists(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Symbol.ModuleSymbol moduleSymbol) {
        if (moduleSymbol.kind != Kinds.Kind.MDL) {
            this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                @Override
                public final void report() {
                    Check.this.lambda$checkModuleExists$10(diagnosticPosition, moduleSymbol);
                }
            });
        }
    }

    public void checkModuleName(JCTree.JCModuleDecl jCModuleDecl) {
        Name name;
        JCTree.JCExpression jCExpression;
        JCDiagnostic.DiagnosticPosition diagnosticPosition;
        String name2;
        int length;
        Assert.checkNonNull(jCModuleDecl.sym.name);
        if (this.lint.isEnabled(Lint.LintCategory.MODULE)) {
            JCTree.JCExpression jCExpression2 = jCModuleDecl.qualId;
            while (jCExpression2 != null) {
                int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression2.getTag().ordinal()];
                if (i10 == 1) {
                    JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCExpression2;
                    name = jCFieldAccess.name;
                    JCDiagnostic.DiagnosticPosition pos = jCFieldAccess.pos();
                    jCExpression = jCFieldAccess.selected;
                    diagnosticPosition = pos;
                } else {
                    if (i10 != 2) {
                        throw new AssertionError((Object) ("Unexpected qualified identifier: " + jCExpression2.toString()));
                    }
                    name = ((JCTree.JCIdent) jCExpression2).name;
                    diagnosticPosition = jCExpression2.pos();
                    jCExpression = null;
                }
                if (name != null && (length = (name2 = name.toString()).length()) > 0 && Character.isDigit(name2.charAt(length - 1))) {
                    this.log.warning(Lint.LintCategory.MODULE, diagnosticPosition, CompilerProperties.Warnings.PoorChoiceForModuleName(name));
                }
                jCExpression2 = jCExpression;
            }
        }
    }

    public void checkModuleRequires(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Directive.RequiresDirective requiresDirective) {
        if ((requiresDirective.module.flags() & 4503599627370496L) != 0) {
            this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                @Override
                public final void report() {
                    Check.this.lambda$checkModuleRequires$12(requiresDirective, diagnosticPosition);
                }
            });
        }
    }

    public void checkNonCyclic(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        checkNonCyclicInternal(diagnosticPosition, type);
    }

    public void checkNonCyclicDecl(JCTree.JCClassDecl jCClassDecl) {
        CycleChecker cycleChecker = new CycleChecker();
        cycleChecker.scan(jCClassDecl);
        if (cycleChecker.errorFound || cycleChecker.partialCheck) {
            return;
        }
        jCClassDecl.sym.flags_field |= TagBits.HasDirectWildcard;
    }

    public void checkNonCyclicElements(JCTree.JCClassDecl jCClassDecl) {
        long j10 = jCClassDecl.sym.flags_field;
        if ((8192 & j10) == 0) {
            return;
        }
        Assert.check((j10 & TagBits.HasUnresolvedEnclosingType) == 0);
        try {
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            classSymbol.flags_field = TagBits.HasUnresolvedEnclosingType | classSymbol.flags_field;
            Iterator<JCTree> it = jCClassDecl.defs.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next.hasTag(JCTree.Tag.METHODDEF)) {
                    JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) next;
                    checkAnnotationResType(jCMethodDecl.pos(), jCMethodDecl.restype.type);
                }
            }
        } finally {
            Symbol.ClassSymbol classSymbol2 = jCClassDecl.sym;
            classSymbol2.flags_field = 34359738368L | (classSymbol2.flags_field & (-134217729));
        }
    }

    public void checkNonCyclicElementsInternal(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
        long j10 = typeSymbol.flags_field;
        if ((j10 & 34359738368L) != 0) {
            return;
        }
        if ((j10 & TagBits.HasUnresolvedEnclosingType) != 0) {
            this.log.error(diagnosticPosition, "cyclic.annotation.element", new Object[0]);
            return;
        }
        try {
            typeSymbol.flags_field = j10 | TagBits.HasUnresolvedEnclosingType;
            for (Symbol symbol : typeSymbol.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.kind == Kinds.Kind.MTH) {
                    checkAnnotationResType(diagnosticPosition, ((Symbol.MethodSymbol) symbol).type.getReturnType());
                }
            }
        } finally {
            typeSymbol.flags_field = (typeSymbol.flags_field & (-134217729)) | 34359738368L;
        }
    }

    public Type checkNonVoid(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        if (!type.hasTag(TypeTag.VOID)) {
            return type;
        }
        this.log.error(diagnosticPosition, "void.not.allowed.here", new Object[0]);
        return this.types.createErrorType(type);
    }

    public void checkNotRepeated(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Set<Type> set) {
        if (set.contains(type)) {
            this.log.error(diagnosticPosition, "repeated.interface", new Object[0]);
        } else {
            set.add(type);
        }
    }

    public Type checkNullOrRefType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        return (type.isReference() || type.hasTag(TypeTag.BOT)) ? type : typeTagError(diagnosticPosition, this.diags.fragment("type.req.ref", new Object[0]), type);
    }

    public void checkOverride(JCTree jCTree, Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, Symbol.ClassSymbol classSymbol) {
        if ((methodSymbol.flags() & 2147487744L) == 0 && (methodSymbol2.flags() & 4096) == 0) {
            if ((methodSymbol.flags() & 8) != 0 && (methodSymbol2.flags() & 8) == 0) {
                this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.static", cannotOverride(methodSymbol, methodSymbol2));
                methodSymbol.flags_field |= 35184372088832L;
                return;
            }
            if ((methodSymbol2.flags() & 16) != 0 || ((methodSymbol.flags() & 8) == 0 && (methodSymbol2.flags() & 8) != 0)) {
                this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.meth", cannotOverride(methodSymbol, methodSymbol2), Flags.asFlagSet(methodSymbol2.flags() & 24));
                methodSymbol.flags_field |= 35184372088832L;
                return;
            }
            if ((methodSymbol.owner.flags() & 8192) != 0) {
                return;
            }
            if (protection(methodSymbol.flags()) > protection(methodSymbol2.flags())) {
                this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.weaker.access", cannotOverride(methodSymbol, methodSymbol2), (methodSymbol2.flags() & 7) == 0 ? Telephony.Sms.Intents.EXTRA_PACKAGE_NAME : Flags.asFlagSet(methodSymbol2.flags() & 7));
                methodSymbol.flags_field |= 35184372088832L;
                return;
            }
            Type memberType = this.types.memberType(classSymbol.type, methodSymbol);
            Type memberType2 = this.types.memberType(classSymbol.type, methodSymbol2);
            List<Type> typeArguments = memberType.getTypeArguments();
            List<Type> typeArguments2 = memberType2.getTypeArguments();
            Type returnType = memberType.getReturnType();
            Type subst = this.types.subst(memberType2.getReturnType(), typeArguments2, typeArguments);
            this.overrideWarner.clear();
            if (!this.types.returnTypeSubstitutable(memberType, memberType2, subst, this.overrideWarner)) {
                if ((methodSymbol.flags() & 8) != 0 && (methodSymbol2.flags() & 8) != 0) {
                    this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), CompilerProperties.Errors.OverrideIncompatibleRet(CompilerProperties.Fragments.CantHide(methodSymbol, methodSymbol.location(), methodSymbol2, methodSymbol2.location()), returnType, subst));
                    methodSymbol.flags_field |= 35184372088832L;
                    return;
                } else {
                    this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.incompatible.ret", cannotOverride(methodSymbol, methodSymbol2), returnType, subst);
                    methodSymbol.flags_field |= 35184372088832L;
                    return;
                }
            }
            if (this.overrideWarner.hasNonSilentLint(Lint.LintCategory.UNCHECKED)) {
                warnUnchecked(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.unchecked.ret", uncheckedOverrides(methodSymbol, methodSymbol2), returnType, subst);
            }
            List<Type> subst2 = this.types.subst(memberType2.getThrownTypes(), typeArguments2, typeArguments);
            List<Type> unhandled = unhandled(memberType.getThrownTypes(), this.types.erasure(subst2));
            List<Type> unhandled2 = unhandled(memberType.getThrownTypes(), subst2);
            if (unhandled.nonEmpty()) {
                this.log.error(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.meth.doesnt.throw", cannotOverride(methodSymbol, methodSymbol2), unhandled2.head);
                methodSymbol.flags_field |= 35184372088832L;
                return;
            }
            if (unhandled2.nonEmpty()) {
                warnUnchecked(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.unchecked.thrown", cannotOverride(methodSymbol, methodSymbol2), unhandled2.head);
                return;
            }
            if (((methodSymbol.flags() ^ methodSymbol2.flags()) & 17179869184L) != 0 && this.lint.isEnabled(Lint.LintCategory.OVERRIDES)) {
                this.log.warning(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), (17179869184L & methodSymbol.flags()) != 0 ? "override.varargs.missing" : "override.varargs.extra", varargsOverrides(methodSymbol, methodSymbol2));
            }
            if ((methodSymbol2.flags() & 2147483648L) != 0) {
                this.log.warning(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), "override.bridge", uncheckedOverrides(methodSymbol, methodSymbol2));
            }
            if (isDeprecatedOverrideIgnorable(methodSymbol2, classSymbol)) {
                return;
            }
            Lint lint = setLint(this.lint.augment(methodSymbol));
            try {
                checkDeprecated(TreeInfo.diagnosticPositionFor(methodSymbol, jCTree), methodSymbol, methodSymbol2);
            } finally {
                setLint(lint);
            }
        }
    }

    public void checkOverrideClashes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Symbol.MethodSymbol methodSymbol) {
        ClashFilter clashFilter = new ClashFilter(type);
        List nil = List.nil();
        Iterator<Symbol> it = this.types.membersClosure(type, false).getSymbolsByName(methodSymbol.name, clashFilter).iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Symbol next = it.next();
            if (methodSymbol.overrides(next, type.tsym, this.types, false)) {
                if (next != methodSymbol) {
                    nil = List.nil();
                    z10 = true;
                }
                for (Symbol symbol : this.types.membersClosure(type, false).getSymbolsByName(methodSymbol.name, clashFilter)) {
                    if (symbol != next) {
                        Types types = this.types;
                        if (types.isSubSignature(methodSymbol.type, types.memberType(type, symbol), this.allowStrictMethodClashCheck)) {
                            continue;
                        } else {
                            Types types2 = this.types;
                            if (types2.hasSameArgs(symbol.erasure(types2), next.erasure(this.types))) {
                                methodSymbol.flags_field |= 4398046511104L;
                                this.log.error(diagnosticPosition, next == methodSymbol ? "name.clash.same.erasure.no.override" : "name.clash.same.erasure.no.override.1", methodSymbol, methodSymbol.location(), symbol, symbol.location(), next, next.location());
                                return;
                            }
                        }
                    }
                }
            } else if (next != methodSymbol && !z10) {
                nil = nil.prepend((Symbol.MethodSymbol) next);
            }
        }
        if (z10) {
            return;
        }
        Iterator it2 = nil.iterator();
        while (it2.hasNext()) {
            checkPotentiallyAmbiguousOverloads(diagnosticPosition, type, methodSymbol, (Symbol.MethodSymbol) it2.next());
        }
    }

    public void checkPackageExistsForOpens(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Symbol.PackageSymbol packageSymbol) {
        if (packageSymbol.members().isEmpty() && (packageSymbol.flags() & 72057594037927936L) == 0) {
            this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                @Override
                public final void report() {
                    Check.this.lambda$checkPackageExistsForOpens$11(diagnosticPosition, packageSymbol);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f7, code lost:
    
        r11.flags_field |= 281474976710656L;
        r12.flags_field |= 281474976710656L;
        r8.log.warning(org.openjdk.tools.javac.code.Lint.LintCategory.OVERLOADS, r9, "potentially.ambiguous.overload", r11, r11.location(), r12, r12.location());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0116, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkPotentiallyAmbiguousOverloads(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2) {
        if (methodSymbol != methodSymbol2 && this.allowDefaultMethods && this.lint.isEnabled(Lint.LintCategory.OVERLOADS) && (methodSymbol.flags() & 281474976710656L) == 0 && (methodSymbol2.flags() & 281474976710656L) == 0) {
            Type memberType = this.types.memberType(type, methodSymbol);
            Type memberType2 = this.types.memberType(type, methodSymbol2);
            TypeTag typeTag = TypeTag.FORALL;
            if (memberType.hasTag(typeTag) && memberType2.hasTag(typeTag)) {
                Type.ForAll forAll = (Type.ForAll) memberType;
                Type.ForAll forAll2 = (Type.ForAll) memberType2;
                if (this.types.hasSameBounds(forAll, forAll2)) {
                    memberType2 = this.types.subst(memberType2, forAll2.tvars, forAll.tvars);
                }
            }
            int max = Math.max(memberType.getParameterTypes().length(), memberType2.getParameterTypes().length());
            List adjustArgs = this.rs.adjustArgs(memberType.getParameterTypes(), methodSymbol, max, true);
            List adjustArgs2 = this.rs.adjustArgs(memberType2.getParameterTypes(), methodSymbol2, max, true);
            if (adjustArgs.length() != adjustArgs2.length()) {
                return;
            }
            boolean z10 = false;
            while (adjustArgs.nonEmpty() && adjustArgs2.nonEmpty()) {
                Type type2 = (Type) adjustArgs.head;
                Type type3 = (Type) adjustArgs2.head;
                if (!this.types.isSubtype(type3, type2) && !this.types.isSubtype(type2, type3)) {
                    if (!this.types.isFunctionalInterface(type2) || !this.types.isFunctionalInterface(type3) || this.types.findDescriptorType(type2).getParameterTypes().length() <= 0 || this.types.findDescriptorType(type2).getParameterTypes().length() != this.types.findDescriptorType(type3).getParameterTypes().length()) {
                        break;
                    } else {
                        z10 = true;
                    }
                }
                adjustArgs = adjustArgs.tail;
                adjustArgs2 = adjustArgs2.tail;
            }
        }
    }

    public void checkProfile(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if (this.profile == Profile.DEFAULT || (symbol.flags() & 35184372088832L) == 0) {
            return;
        }
        this.log.error(diagnosticPosition, "not.in.profile", symbol, this.profile);
    }

    public void checkRaw(JCTree jCTree, Env<AttrContext> env) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.RAW;
        if (lint.isEnabled(lintCategory) && jCTree.type.hasTag(TypeTag.CLASS) && !TreeInfo.isDiamond(jCTree) && !withinAnonConstr(env) && jCTree.type.isRaw()) {
            Log log = this.log;
            JCDiagnostic.DiagnosticPosition pos = jCTree.pos();
            Type type = jCTree.type;
            log.warning(lintCategory, pos, "raw.class.use", type, type.tsym.type);
        }
    }

    public void checkRedundantCast(Env<AttrContext> env, final JCTree.JCTypeCast jCTypeCast) {
        if (jCTypeCast.type.isErroneous() || !this.types.isSameType(jCTypeCast.expr.type, jCTypeCast.clazz.type) || TreeInfo.containsTypeAnnotation(jCTypeCast.clazz) || is292targetTypeCast(jCTypeCast)) {
            return;
        }
        this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
            @Override
            public final void report() {
                Check.this.lambda$checkRedundantCast$1(jCTypeCast);
            }
        });
    }

    public Type checkRefType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        return type.isReference() ? type : typeTagError(diagnosticPosition, this.diags.fragment("type.req.ref", new Object[0]), type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [A, org.openjdk.tools.javac.code.Type] */
    public List<Type> checkRefTypes(List<JCTree.JCExpression> list, List<Type> list2) {
        List list3 = list2;
        List<JCTree.JCExpression> list4 = list;
        while (list3.nonEmpty()) {
            list3.head = checkRefType(list4.head.pos(), (Type) list3.head);
            List<JCTree.JCExpression> list5 = list4.tail;
            list3 = list3.tail;
            list4 = list5;
        }
        return list2;
    }

    public void checkSunAPI(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Symbol symbol) {
        if ((symbol.flags() & 274877906944L) != 0) {
            this.deferredLintHandler.report(new DeferredLintHandler.LintLogger() {
                @Override
                public final void report() {
                    Check.this.lambda$checkSunAPI$6(diagnosticPosition, symbol);
                }
            });
        }
    }

    public void checkTransparentClass(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol, Scope scope) {
        for (Symbol symbol : scope.getSymbolsByName(classSymbol.name)) {
            if (symbol.owner != classSymbol.owner) {
                return;
            }
            if (symbol.kind == Kinds.Kind.TYP && !symbol.type.hasTag(TypeTag.TYPEVAR) && symbol.owner.kind.matches(Kinds.KindSelector.VAL_MTH) && classSymbol.name != this.names.error) {
                duplicateError(diagnosticPosition, symbol);
                return;
            }
        }
    }

    public void checkTransparentVar(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol, Scope scope) {
        Symbol next;
        Symbol symbol;
        Iterator<Symbol> it = scope.getSymbolsByName(varSymbol.name).iterator();
        while (it.hasNext() && (symbol = (next = it.next()).owner) == varSymbol.owner) {
            if (next.kind == Kinds.Kind.VAR && symbol.kind.matches(Kinds.KindSelector.VAL_MTH) && varSymbol.name != this.names.error) {
                duplicateError(diagnosticPosition, next);
                return;
            }
        }
    }

    public Type checkType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
        return checkType(diagnosticPosition, type, type2, this.basicHandler);
    }

    public boolean checkUnique(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Scope scope) {
        Kinds.Kind kind;
        if (symbol.type.isErroneous()) {
            return true;
        }
        if (symbol.owner.name == this.names.any) {
            return false;
        }
        for (Symbol symbol2 : scope.getSymbolsByName(symbol.name, Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol != symbol2 && (symbol2.flags() & 4398046511104L) == 0 && (kind = symbol.kind) == symbol2.kind && symbol.name != this.names.error) {
                Kinds.Kind kind2 = Kinds.Kind.MTH;
                if (kind == kind2 && !this.types.hasSameArgs(symbol.type, symbol2.type)) {
                    Types types = this.types;
                    if (types.hasSameArgs(types.erasure(symbol.type), this.types.erasure(symbol2.type))) {
                    }
                }
                if ((symbol.flags() & 17179869184L) != (17179869184L & symbol2.flags())) {
                    varargsDuplicateError(diagnosticPosition, symbol, symbol2);
                    return true;
                }
                if (symbol.kind != kind2 || this.types.hasSameArgs(symbol.type, symbol2.type, false)) {
                    duplicateError(diagnosticPosition, symbol2);
                    return false;
                }
                duplicateErasureError(diagnosticPosition, symbol, symbol2);
                symbol.flags_field |= 4398046511104L;
                return true;
            }
        }
        return true;
    }

    public boolean checkUniqueClassName(JCDiagnostic.DiagnosticPosition diagnosticPosition, Name name, Scope scope) {
        Name name2;
        for (Symbol symbol : scope.getSymbolsByName(name, Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol.kind == Kinds.Kind.TYP && symbol.name != this.names.error) {
                duplicateError(diagnosticPosition, symbol);
                return false;
            }
        }
        for (Symbol symbol2 = scope.owner; symbol2 != null; symbol2 = symbol2.owner) {
            if (symbol2.kind == Kinds.Kind.TYP && (name2 = symbol2.name) == name && name2 != this.names.error) {
                duplicateError(diagnosticPosition, symbol2);
                return true;
            }
        }
        return true;
    }

    public boolean checkValidGenericType(Type type) {
        return firstIncompatibleTypeArg(type) == null;
    }

    public void checkVarargsMethodDecl(Env<AttrContext> env, JCTree.JCMethodDecl jCMethodDecl) {
        Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
        if (this.allowSimplifiedVarargs) {
            boolean z10 = methodSymbol.attribute(this.syms.trustMeType.tsym) != null;
            Type elemtype = methodSymbol.isVarArgs() ? this.types.elemtype(jCMethodDecl.params.last().type) : null;
            if (z10 && !isTrustMeAllowedOnMethod(methodSymbol)) {
                if (elemtype != null) {
                    this.log.error(jCMethodDecl, "varargs.invalid.trustme.anno", this.syms.trustMeType.tsym, this.allowPrivateSafeVarargs ? this.diags.fragment("varargs.trustme.on.virtual.varargs", methodSymbol) : this.diags.fragment("varargs.trustme.on.virtual.varargs.final.only", methodSymbol));
                    return;
                } else {
                    this.log.error(jCMethodDecl, "varargs.invalid.trustme.anno", this.syms.trustMeType.tsym, this.diags.fragment("varargs.trustme.on.non.varargs.meth", methodSymbol));
                    return;
                }
            }
            if (z10 && elemtype != null && this.types.isReifiable(elemtype)) {
                warnUnsafeVararg(jCMethodDecl, "varargs.redundant.trustme.anno", this.syms.trustMeType.tsym, this.diags.fragment("varargs.trustme.on.reifiable.varargs", elemtype));
            } else {
                if (z10 || elemtype == null || this.types.isReifiable(elemtype)) {
                    return;
                }
                warnUnchecked(jCMethodDecl.params.head.pos(), "unchecked.varargs.non.reifiable.type", elemtype);
            }
        }
    }

    public void clearLocalClassNameIndexes(Symbol.ClassSymbol classSymbol) {
        Symbol symbol = classSymbol.owner;
        if (symbol == null || symbol.kind == Kinds.Kind.NIL) {
            return;
        }
        this.localClassNameIndexes.remove(new Pair(symbol.enclClass().flatname, classSymbol.name));
    }

    public Type completionError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.CompletionFailure completionFailure) {
        this.log.error(JCDiagnostic.DiagnosticFlag.NON_DEFERRABLE, diagnosticPosition, "cant.access", completionFailure.sym, completionFailure.getDetailValue());
        if (completionFailure instanceof ClassFinder.BadClassFile) {
            throw new Abort();
        }
        return this.syms.errType;
    }

    public Warner convertWarner(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
        return new ConversionWarner(diagnosticPosition, "unchecked.assign", type, type2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Type> diff(List<Type> list, List<Type> list2) {
        for (List<Type> list3 = list2; list3.nonEmpty(); list3 = list3.tail) {
            list = excl(list3.head, list);
        }
        return list;
    }

    public void duplicateErasureError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol symbol2) {
        if (symbol.type.isErroneous() || symbol2.type.isErroneous()) {
            return;
        }
        this.log.error(diagnosticPosition, "name.clash.same.erasure", symbol, symbol2);
    }

    public void duplicateError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if (symbol.type.isErroneous()) {
            return;
        }
        Symbol location = symbol.location();
        if (location.kind == Kinds.Kind.MTH && ((Symbol.MethodSymbol) location).isStaticOrInstanceInit()) {
            this.log.error(diagnosticPosition, "already.defined.in.clinit", Kinds.kindName(symbol), symbol, Kinds.kindName(symbol.location()), Kinds.kindName(symbol.location().enclClass()), symbol.location().enclClass());
        } else {
            this.log.error(diagnosticPosition, "already.defined", Kinds.kindName(symbol), symbol, Kinds.kindName(symbol.location()), symbol.location());
        }
    }

    public void earlyRefError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        this.log.error(diagnosticPosition, "cant.ref.before.ctor.called", symbol);
    }

    public List<Type> excl(Type type, List<Type> list) {
        if (list.isEmpty()) {
            return list;
        }
        List<Type> excl = excl(type, list.tail);
        return this.types.isSubtype(list.head, type) ? excl : excl == list.tail ? list : excl.prepend(list.head);
    }

    public Attribute.Array getAttributeTargetAttribute(Symbol.TypeSymbol typeSymbol) {
        Attribute.Compound target = typeSymbol.getAnnotationTypeMetadata().getTarget();
        if (target == null) {
            return null;
        }
        Attribute member = target.member(this.names.value);
        if (member instanceof Attribute.Array) {
            return (Attribute.Array) member;
        }
        return null;
    }

    public Symbol.ClassSymbol getCompiled(Symbol.ClassSymbol classSymbol) {
        return this.compiled.get(Pair.of(classSymbol.packge().modle, classSymbol.flatname));
    }

    public boolean importAccessible(Symbol symbol, Symbol.PackageSymbol packageSymbol) {
        try {
            int flags = (int) (symbol.flags() & 7);
            if (flags != 0) {
                if (flags == 2) {
                    return false;
                }
                if (flags != 4) {
                    return true;
                }
            }
            return symbol.packge() == packageSymbol;
        } catch (ClassFinder.BadClassFile e10) {
            throw e10;
        } catch (Symbol.CompletionFailure unused) {
            return false;
        }
    }

    public List<Type> incl(Type type, List<Type> list) {
        return subset(type, list) ? list : excl(type, list).prepend(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.openjdk.tools.javac.util.List<org.openjdk.tools.javac.code.Type>, org.openjdk.tools.javac.util.List] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.openjdk.tools.javac.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [org.openjdk.tools.javac.util.List<A>] */
    public List<Type> intersect(List<Type> list, List<Type> list2) {
        List<Type> nil = List.nil();
        for (List list3 = list; list3.nonEmpty(); list3 = list3.tail) {
            if (subset((Type) list3.head, list2)) {
                nil = incl((Type) list3.head, nil);
            }
        }
        while (list2.nonEmpty()) {
            if (subset((Type) list2.head, list)) {
                nil = incl((Type) list2.head, nil);
            }
            list2 = list2.tail;
        }
        return nil;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean intersects(Type type, List<Type> list) {
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (this.types.isSubtype(type, list2.head) || this.types.isSubtype(list2.head, type)) {
                return true;
            }
        }
        return false;
    }

    public boolean isHandled(Type type, List<Type> list) {
        return isUnchecked(type) || subset(type, list);
    }

    public boolean isOverrider(Symbol symbol) {
        if (symbol.kind == Kinds.Kind.MTH && !symbol.isStatic()) {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) symbol;
            Symbol.TypeSymbol typeSymbol = (Symbol.TypeSymbol) methodSymbol.owner;
            Iterator<Type> it = this.types.closure(typeSymbol.type).iterator();
            while (it.hasNext()) {
                Type next = it.next();
                if (next != typeSymbol.type) {
                    for (Symbol symbol2 : next.tsym.members().getSymbolsByName(methodSymbol.name)) {
                        if (!symbol2.isStatic() && methodSymbol.overrides(symbol2, typeSymbol, this.types, true)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public boolean isTypeAnnotation(JCTree.JCAnnotation jCAnnotation, final boolean z10) {
        List<Attribute> annotationTargets = this.typeAnnotations.annotationTargets(jCAnnotation.annotationType.type.tsym);
        if (annotationTargets == null) {
            return false;
        }
        return annotationTargets.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isTypeAnnotation$4;
                lambda$isTypeAnnotation$4 = Check.this.lambda$isTypeAnnotation$4(z10, (Attribute) obj);
                return lambda$isTypeAnnotation$4;
            }
        });
    }

    public boolean isTypeArgErroneous(Type type) {
        return this.isTypeArgErroneous.visit(type).booleanValue();
    }

    public boolean isUnchecked(Symbol.ClassSymbol classSymbol) {
        return classSymbol.kind == Kinds.Kind.ERR || classSymbol.isSubClass(this.syms.errorType.tsym, this.types) || classSymbol.isSubClass(this.syms.runtimeExceptionType.tsym, this.types);
    }

    public Name localClassName(Symbol.ClassSymbol classSymbol) {
        Name name = classSymbol.owner.enclClass().flatname;
        String name2 = name.toString();
        Pair<Name, Name> pair = new Pair<>(name, classSymbol.name);
        Integer num = this.localClassNameIndexes.get(pair);
        int intValue = num == null ? 1 : num.intValue();
        while (true) {
            Name fromString = this.names.fromString(name2 + this.syntheticNameChar + intValue + ((Object) classSymbol.name));
            if (getCompiled(classSymbol.packge().modle, fromString) == null) {
                this.localClassNameIndexes.put(pair, Integer.valueOf(intValue + 1));
                return fromString;
            }
            intValue++;
        }
    }

    public void newRound() {
        this.compiled.clear();
        this.localClassNameIndexes.clear();
    }

    public void putCompiled(Symbol.ClassSymbol classSymbol) {
        this.compiled.put(Pair.of(classSymbol.packge().modle, classSymbol.flatname), classSymbol);
    }

    public void removeCompiled(Symbol.ClassSymbol classSymbol) {
        this.compiled.remove(Pair.of(classSymbol.packge().modle, classSymbol.flatname));
    }

    public void reportDeferredDiagnostics() {
        this.deprecationHandler.reportDeferredDiagnostic();
        this.removalHandler.reportDeferredDiagnostic();
        this.uncheckedHandler.reportDeferredDiagnostic();
        this.sunApiHandler.reportDeferredDiagnostic();
    }

    public Lint setLint(Lint lint) {
        Lint lint2 = this.lint;
        this.lint = lint;
        return lint2;
    }

    public Symbol.MethodSymbol setMethod(Symbol.MethodSymbol methodSymbol) {
        Symbol.MethodSymbol methodSymbol2 = this.method;
        this.method = methodSymbol;
        return methodSymbol2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean subset(Type type, List<Type> list) {
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (this.types.isSubtype(type, list2.head)) {
                return true;
            }
        }
        return false;
    }

    public Type typeTagError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Object obj, Object obj2) {
        boolean z10 = obj2 instanceof Type;
        if (z10 && ((Type) obj2).hasTag(TypeTag.VOID)) {
            this.log.error(diagnosticPosition, "illegal.start.of.type", new Object[0]);
            return this.syms.errType;
        }
        this.log.error(diagnosticPosition, "type.found.req", obj2, obj);
        return this.types.createErrorType(z10 ? (Type) obj2 : this.syms.errType);
    }

    public Object uncheckedOverrides(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2) {
        return this.diags.fragment((methodSymbol2.owner.flags() & 512) == 0 ? "unchecked.override" : (methodSymbol.owner.flags() & 512) == 0 ? "unchecked.implement" : "unchecked.clash.with", methodSymbol, methodSymbol.location(), methodSymbol2, methodSymbol2.location());
    }

    public List<Type> unhandled(List<Type> list, List<Type> list2) {
        List<Type> list3 = List.nil();
        for (List<Type> list4 = list; list4.nonEmpty(); list4 = list4.tail) {
            if (!isHandled(list4.head, list2)) {
                list3 = list3.prepend(list4.head);
            }
            list3 = list3;
        }
        return list3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Type> union(List<Type> list, List<Type> list2) {
        for (List<Type> list3 = list2; list3.nonEmpty(); list3 = list3.tail) {
            list = incl(list3.head, list);
        }
        return list;
    }

    public void validate(JCTree jCTree, Env<AttrContext> env) {
        validate(jCTree, env, true);
    }

    public boolean validateAnnotationDeferErrors(JCTree.JCAnnotation jCAnnotation) {
        Log.DiscardDiagnosticHandler discardDiagnosticHandler = new Log.DiscardDiagnosticHandler(this.log);
        try {
            return validateAnnotation(jCAnnotation);
        } finally {
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
        }
    }

    public void validateAnnotationMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.MethodSymbol methodSymbol) {
        Type type = this.syms.annotationType;
        while (type.hasTag(TypeTag.CLASS)) {
            for (Symbol symbol : type.tsym.members().getSymbolsByName(methodSymbol.name)) {
                if (symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 5) != 0 && this.types.overrideEquivalent(methodSymbol.type, symbol.type)) {
                    this.log.error(diagnosticPosition, "intf.annotation.member.clash", symbol, type);
                }
            }
            type = this.types.supertype(type);
        }
    }

    public void validateAnnotationTree(JCTree jCTree) {
        jCTree.accept(new TreeScanner() {
            @Override
            public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
                if (jCAnnotation.type.isErroneous()) {
                    return;
                }
                super.visitAnnotation(jCAnnotation);
                Check.this.validateAnnotation(jCAnnotation);
            }
        });
    }

    public void validateAnnotationType(JCTree jCTree) {
        if (jCTree != null) {
            validateAnnotationType(jCTree.pos(), jCTree.type);
        }
    }

    public void validateAnnotations(List<JCTree.JCAnnotation> list, Symbol symbol) {
        Iterator<JCTree.JCAnnotation> it = list.iterator();
        while (it.hasNext()) {
            validateAnnotation(it.next(), symbol);
        }
    }

    public void validateRepeatable(Symbol.TypeSymbol typeSymbol, Attribute.Compound compound, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Type type;
        Assert.check(this.types.isSameType(compound.type, this.syms.repeatableType));
        List<Pair<Symbol.MethodSymbol, Attribute>> list = compound.values;
        if (list.isEmpty()) {
            type = null;
        } else {
            Assert.check(list.head.fst.name == this.names.value);
            type = ((Attribute.Class) list.head.snd).getValue();
        }
        if (type == null) {
            return;
        }
        validateValue(type.tsym, typeSymbol, diagnosticPosition);
        validateRetention(type.tsym, typeSymbol, diagnosticPosition);
        validateDocumented(type.tsym, typeSymbol, diagnosticPosition);
        validateInherited(type.tsym, typeSymbol, diagnosticPosition);
        validateTarget(type.tsym, typeSymbol, diagnosticPosition);
        validateDefault(type.tsym, diagnosticPosition);
    }

    public boolean validateTargetAnnotationValue(JCTree.JCAnnotation jCAnnotation) {
        boolean z10 = true;
        if (jCAnnotation.annotationType.type.tsym == this.syms.annotationTargetType.tsym) {
            List<JCTree.JCExpression> list = jCAnnotation.args;
            if (list.tail != null) {
                if (!list.head.hasTag(JCTree.Tag.ASSIGN)) {
                    return false;
                }
                JCTree.JCAssign jCAssign = (JCTree.JCAssign) jCAnnotation.args.head;
                if (TreeInfo.symbol(jCAssign.lhs).name != this.names.value) {
                    return false;
                }
                JCTree.JCExpression jCExpression = jCAssign.rhs;
                if (!jCExpression.hasTag(JCTree.Tag.NEWARRAY)) {
                    return false;
                }
                HashSet hashSet = new HashSet();
                Iterator<JCTree.JCExpression> it = ((JCTree.JCNewArray) jCExpression).elems.iterator();
                while (it.hasNext()) {
                    JCTree.JCExpression next = it.next();
                    if (!hashSet.add(TreeInfo.symbol(next))) {
                        this.log.error(next.pos(), "repeated.annotation.target", new Object[0]);
                        z10 = false;
                    }
                }
            }
        }
        return z10;
    }

    public void validateTypeAnnotation(JCTree.JCAnnotation jCAnnotation, boolean z10) {
        Assert.checkNonNull(jCAnnotation.type);
        validateAnnotationTree(jCAnnotation);
        if (!jCAnnotation.hasTag(JCTree.Tag.TYPE_ANNOTATION) || jCAnnotation.annotationType.type.isErroneous() || isTypeAnnotation(jCAnnotation, z10)) {
            return;
        }
        this.log.error(jCAnnotation.pos(), CompilerProperties.Errors.AnnotationTypeNotApplicableToType(jCAnnotation.type));
    }

    public void validateTypeAnnotations(List<JCTree.JCAnnotation> list, boolean z10) {
        Iterator<JCTree.JCAnnotation> it = list.iterator();
        while (it.hasNext()) {
            validateTypeAnnotation(it.next(), z10);
        }
    }

    public void varargsDuplicateError(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol symbol2) {
        if (symbol.type.isErroneous() || symbol2.type.isErroneous()) {
            return;
        }
        this.log.error(diagnosticPosition, "array.and.varargs", symbol, symbol2, symbol2.location());
    }

    public Object varargsOverrides(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2) {
        return this.diags.fragment((methodSymbol2.owner.flags() & 512) == 0 ? "varargs.override" : (methodSymbol.owner.flags() & 512) == 0 ? "varargs.implement" : "varargs.clash.with", methodSymbol, methodSymbol.location(), methodSymbol2, methodSymbol2.location());
    }

    public void lambda$checkDeprecated$5(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if (symbol.isDeprecatedForRemoval()) {
            if (this.lint.isSuppressed(Lint.LintCategory.REMOVAL)) {
                return;
            }
            if (symbol.kind == Kinds.Kind.MDL) {
                this.removalHandler.report(diagnosticPosition, "has.been.deprecated.for.removal.module", symbol);
                return;
            } else {
                this.removalHandler.report(diagnosticPosition, "has.been.deprecated.for.removal", symbol, symbol.location());
                return;
            }
        }
        if (this.lint.isSuppressed(Lint.LintCategory.DEPRECATION)) {
            return;
        }
        if (symbol.kind == Kinds.Kind.MDL) {
            this.deprecationHandler.report(diagnosticPosition, "has.been.deprecated.module", symbol);
        } else {
            this.deprecationHandler.report(diagnosticPosition, "has.been.deprecated", symbol, symbol.location());
        }
    }

    public void lambda$checkDivZero$7(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.DIVZERO;
        if (lint.isEnabled(lintCategory)) {
            this.log.warning(lintCategory, diagnosticPosition, "div.zero", new Object[0]);
        }
    }

    public void warnStatic(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.STATIC;
        if (lint.isEnabled(lintCategory)) {
            this.log.warning(lintCategory, diagnosticPosition, str, objArr);
        }
    }

    public void warnUnchecked(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        if (this.lint.isSuppressed(Lint.LintCategory.UNCHECKED)) {
            return;
        }
        this.uncheckedHandler.report(diagnosticPosition, str, objArr);
    }

    public void warnUnsafeVararg(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        Lint lint = this.lint;
        Lint.LintCategory lintCategory = Lint.LintCategory.VARARGS;
        if (lint.isEnabled(lintCategory) && this.allowSimplifiedVarargs) {
            this.log.warning(lintCategory, diagnosticPosition, str, objArr);
        }
    }

    public Type checkCastable(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2, CheckContext checkContext) {
        if (this.types.isCastable(type, type2, castWarner(diagnosticPosition, type, type2))) {
            return type2;
        }
        checkContext.report(diagnosticPosition, this.diags.fragment("inconvertible.types", type, type2));
        return this.types.createErrorType(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkClassBounds(JCDiagnostic.DiagnosticPosition diagnosticPosition, Map<Symbol.TypeSymbol, Type> map, Type type) {
        if (type.isErroneous()) {
            return;
        }
        for (List interfaces = this.types.interfaces(type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            Type type2 = (Type) interfaces.head;
            Type put = map.put(type2.tsym, type2);
            if (put != null) {
                List<Type> allparams = put.allparams();
                List<Type> allparams2 = type2.allparams();
                if (!this.types.containsTypeEquivalent(allparams, allparams2)) {
                    this.log.error(diagnosticPosition, "cant.inherit.diff.arg", type2.tsym, Type.toString(allparams), Type.toString(allparams2));
                }
            }
            checkClassBounds(diagnosticPosition, map, type2);
        }
        Type supertype = this.types.supertype(type);
        if (supertype != Type.noType) {
            checkClassBounds(diagnosticPosition, map, supertype);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkImplementations(JCTree jCTree, Symbol.ClassSymbol classSymbol, Symbol.ClassSymbol classSymbol2) {
        Symbol.MethodSymbol methodSymbol;
        Symbol.MethodSymbol implementation;
        for (List closure = this.types.closure(classSymbol2.type); closure.nonEmpty(); closure = closure.tail) {
            Symbol.ClassSymbol classSymbol3 = (Symbol.ClassSymbol) ((Type) closure.head).tsym;
            if ((classSymbol3.flags() & 1024) != 0) {
                for (Symbol symbol : classSymbol3.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                    if (symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 1032) == 1024 && (implementation = (methodSymbol = (Symbol.MethodSymbol) symbol).implementation(classSymbol, this.types, false)) != null && implementation != methodSymbol && (implementation.owner.flags() & 512) == (512 & classSymbol.flags())) {
                        checkOverride(jCTree, implementation, methodSymbol, classSymbol);
                    }
                }
            }
        }
    }

    public void checkNonCyclic(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type.TypeVar typeVar) {
        checkNonCyclic1(diagnosticPosition, typeVar, List.nil());
    }

    public Type checkType(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Type type, final Type type2, final CheckContext checkContext) {
        InferenceContext inferenceContext = checkContext.inferenceContext();
        if (inferenceContext.free(type2) || inferenceContext.free(type)) {
            inferenceContext.addFreeTypeListener(List.of(type2, type), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    Check.this.lambda$checkType$0(diagnosticPosition, type, type2, checkContext, inferenceContext2);
                }
            });
        }
        if (type2.hasTag(TypeTag.ERROR)) {
            return type2;
        }
        if (type2.hasTag(TypeTag.NONE) || checkContext.compatible(type, type2, checkContext.checkWarner(diagnosticPosition, type, type2))) {
            return type;
        }
        if (type.isNumeric() && type2.isNumeric()) {
            checkContext.report(diagnosticPosition, this.diags.fragment("possible.loss.of.precision", type, type2));
            return this.types.createErrorType(type);
        }
        checkContext.report(diagnosticPosition, this.diags.fragment("inconvertible.types", type, type2));
        return this.types.createErrorType(type);
    }

    public Symbol.ClassSymbol getCompiled(Symbol.ModuleSymbol moduleSymbol, Name name) {
        return this.compiled.get(Pair.of(moduleSymbol, name));
    }

    public void validate(JCTree jCTree, Env<AttrContext> env, boolean z10) {
        new Validator(env).validateTree(jCTree, z10, true);
    }

    public void validateAnnotationType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        if (type.isPrimitive() || this.types.isSameType(type, this.syms.stringType) || (type.tsym.flags() & 16384) != 0 || (type.tsym.flags() & 8192) != 0 || this.types.cvarLowerBound(type).tsym == this.syms.classType.tsym) {
            return;
        }
        if (this.types.isArray(type)) {
            Types types = this.types;
            if (!types.isArray(types.elemtype(type))) {
                validateAnnotationType(diagnosticPosition, this.types.elemtype(type));
                return;
            }
        }
        this.log.error(diagnosticPosition, "invalid.annotation.member.type", new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void validate(List<? extends JCTree> list, Env<AttrContext> env) {
        for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            validate((JCTree) list2.head, env);
        }
    }

    public boolean lambda$isTypeAnnotation$4(Attribute attribute, boolean z10) {
        Name name = ((Attribute.Enum) attribute).value.name;
        Names names = this.names;
        return name == names.TYPE_USE || (z10 && name == names.TYPE_PARAMETER);
    }

    public boolean isUnchecked(Type type) {
        return type.hasTag(TypeTag.TYPEVAR) ? isUnchecked(this.types.supertype(type)) : type.hasTag(TypeTag.CLASS) ? isUnchecked((Symbol.ClassSymbol) type.tsym) : type.hasTag(TypeTag.BOT);
    }

    private void closure(Type type, Map<Symbol.TypeSymbol, Type> map, Map<Symbol.TypeSymbol, Type> map2) {
        if (type.hasTag(TypeTag.CLASS) && map.get(type.tsym) == null && map2.put(type.tsym, type) == null) {
            closure(this.types.supertype(type), map, map2);
            Iterator<Type> it = this.types.interfaces(type).iterator();
            while (it.hasNext()) {
                closure(it.next(), map, map2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type checkClassType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, boolean z10) {
        Type checkClassType = checkClassType(diagnosticPosition, type);
        if (z10 && checkClassType.isParameterized()) {
            for (List typeArguments = checkClassType.getTypeArguments(); typeArguments.nonEmpty(); typeArguments = typeArguments.tail) {
                if (((Type) typeArguments.head).hasTag(TypeTag.WILDCARD)) {
                    return typeTagError(diagnosticPosition, this.diags.fragment("type.req.exact", new Object[0]), typeArguments.head);
                }
            }
        }
        return checkClassType;
    }

    public boolean isUnchecked(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        try {
            return isUnchecked(type);
        } catch (Symbol.CompletionFailure e10) {
            completionError(diagnosticPosition, e10);
            return true;
        }
    }

    public boolean validateAnnotation(JCTree.JCAnnotation jCAnnotation) {
        Annotate.AnnotationTypeMetadata annotationTypeMetadata = jCAnnotation.annotationType.type.tsym.getAnnotationTypeMetadata();
        Set<Symbol.MethodSymbol> annotationElements = annotationTypeMetadata.getAnnotationElements();
        Iterator<JCTree.JCExpression> it = jCAnnotation.args.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            JCTree.JCExpression next = it.next();
            if (next.hasTag(JCTree.Tag.ASSIGN)) {
                JCTree.JCAssign jCAssign = (JCTree.JCAssign) next;
                Symbol symbol = TreeInfo.symbol(jCAssign.lhs);
                if (symbol != null && !symbol.type.isErroneous() && !annotationElements.remove(symbol)) {
                    this.log.error(jCAssign.lhs.pos(), "duplicate.annotation.member.value", symbol.name, jCAnnotation.type);
                    z10 = false;
                }
            }
        }
        List nil = List.nil();
        Set<Symbol.MethodSymbol> annotationElementsWithDefault = annotationTypeMetadata.getAnnotationElementsWithDefault();
        for (Symbol.MethodSymbol methodSymbol : annotationElements) {
            if (!methodSymbol.type.isErroneous() && !annotationElementsWithDefault.contains(methodSymbol)) {
                nil = nil.append(methodSymbol.name);
            }
        }
        List reverse = nil.reverse();
        if (reverse.nonEmpty()) {
            this.log.error(jCAnnotation.pos(), reverse.size() > 1 ? "annotation.missing.default.value.1" : "annotation.missing.default.value", jCAnnotation.type, reverse);
            z10 = false;
        }
        return z10 && validateTargetAnnotationValue(jCAnnotation);
    }

    public void checkOverride(Env<AttrContext> env, JCTree.JCMethodDecl jCMethodDecl, Symbol.MethodSymbol methodSymbol) {
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) methodSymbol.owner;
        if ((classSymbol.flags() & 16384) != 0 && this.names.finalize.equals(methodSymbol.name) && methodSymbol.overrides(this.syms.enumFinalFinalize, classSymbol, this.types, false)) {
            this.log.error(jCMethodDecl.pos(), "enum.no.finalize", new Object[0]);
            return;
        }
        Type type = classSymbol.type;
        while (type.hasTag(TypeTag.CLASS)) {
            if (type != classSymbol.type) {
                checkOverride(jCMethodDecl, type, classSymbol, methodSymbol);
            }
            Iterator<Type> it = this.types.interfaces(type).iterator();
            while (it.hasNext()) {
                checkOverride(jCMethodDecl, it.next(), classSymbol, methodSymbol);
            }
            type = this.types.supertype(type);
        }
        boolean z10 = methodSymbol.attribute(this.syms.overrideType.tsym) != null;
        if ((z10 || !(!env.info.isAnonymousDiamond || methodSymbol.isConstructor() || methodSymbol.isPrivate())) && !isOverrider(methodSymbol)) {
            JCDiagnostic.DiagnosticPosition pos = jCMethodDecl.pos();
            Iterator<JCTree.JCAnnotation> it2 = jCMethodDecl.getModifiers().annotations.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                JCTree.JCAnnotation next = it2.next();
                if (next.annotationType.type.tsym == this.syms.overrideType.tsym) {
                    pos = next.pos();
                    break;
                }
            }
            this.log.error(pos, z10 ? CompilerProperties.Errors.MethodDoesNotOverrideSuperclass : CompilerProperties.Errors.AnonymousDiamondMethodDoesNotOverrideSuperclass(CompilerProperties.Fragments.DiamondAnonymousMethodsImplicitlyOverride));
        }
    }

    public void checkOverride(JCTree jCTree, Type type, Symbol.ClassSymbol classSymbol, Symbol.MethodSymbol methodSymbol) {
        for (Symbol symbol : type.tsym.members().getSymbolsByName(methodSymbol.name)) {
            if (methodSymbol.overrides(symbol, classSymbol, this.types, false) && (symbol.flags() & 1024) == 0) {
                checkOverride(jCTree, methodSymbol, (Symbol.MethodSymbol) symbol, classSymbol);
            }
        }
    }
}
