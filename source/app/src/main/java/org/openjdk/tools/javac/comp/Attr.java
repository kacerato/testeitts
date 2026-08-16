package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.ExpressionTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.MemberSelectTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.tree.TreeVisitor;
import org.openjdk.source.util.SimpleTreeVisitor;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotations;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.ArgumentAttr;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.tree.TreeTranslator;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.Warner;

public class Attr extends JCTree.Visitor {
    boolean allowDefaultMethods;
    boolean allowLambda;
    boolean allowPoly;
    boolean allowStaticInterfaceMethods;
    boolean allowStringsInSwitch;
    boolean allowTypeAnnos;
    final Analyzer analyzer;
    final Annotate annotate;
    final ArgumentAttr argumentAttr;
    final ConstFold cfolder;
    final Check chk;
    final DeferredAttr deferredAttr;
    final DeferredLintHandler deferredLintHandler;
    final Dependencies dependencies;
    final JCDiagnostic.Factory diags;
    final Enter enter;
    Env<AttrContext> env;
    final Flow flow;
    final Infer infer;
    final Log log;
    final TreeMaker make;
    final MemberEnter memberEnter;
    final ResultInfo methodAttrInfo;
    final Names names;
    final Operators operators;
    final ResultInfo recoveryInfo;
    Type result;
    ResultInfo resultInfo;
    final Resolve rs;
    String sourceName;
    final ResultInfo statInfo;
    final Symtab syms;
    final Target target;
    final TypeAnnotations typeAnnotations;
    final TypeEnter typeEnter;
    final TypeEnvs typeEnvs;
    final Types types;
    final ResultInfo unknownExprInfo;
    final ResultInfo unknownTypeExprInfo;
    final ResultInfo unknownTypeInfo;
    boolean useBeforeDeclarationWarning;
    final ResultInfo varAssignmentInfo;
    protected static final Context.Key<Attr> attrKey = new Context.Key<>();
    static final TypeTag[] primitiveTags = {TypeTag.BYTE, TypeTag.CHAR, TypeTag.SHORT, TypeTag.INT, TypeTag.LONG, TypeTag.FLOAT, TypeTag.DOUBLE, TypeTag.BOOLEAN};
    public static final Filter<Symbol> anyNonAbstractOrDefaultMethod = new Filter() {
        @Override
        public final boolean accepts(Object obj) {
            boolean lambda$static$10;
            lambda$static$10 = Attr.lambda$static$10((Symbol) obj);
            return lambda$static$10;
        }
    };
    private TreeVisitor<Symbol, Env<AttrContext>> identAttributer = new IdentAttributer();
    private JCTree breakTree = null;
    TreeTranslator removeClassParams = new TreeTranslator() {
        @Override
        public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
            this.result = translate((AnonymousClass2) jCTypeApply.clazz);
        }
    };
    Types.MapVisitor<JCDiagnostic.DiagnosticPosition> targetChecker = new Types.MapVisitor<JCDiagnostic.DiagnosticPosition>() {
        private Symbol.TypeSymbol makeNotionalInterface(Type.IntersectionClassType intersectionClassType) {
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<Type> it = intersectionClassType.interfaces_field.iterator();
            while (it.hasNext()) {
                Type next = it.next();
                if (next.isParameterized()) {
                    listBuffer.appendList(next.tsym.type.allparams());
                }
                listBuffer2.append(next.tsym.type);
            }
            Type.IntersectionClassType makeIntersectionType = Attr.this.types.makeIntersectionType(listBuffer2.toList());
            makeIntersectionType.allparams_field = listBuffer.toList();
            Symbol.TypeSymbol typeSymbol = makeIntersectionType.tsym;
            typeSymbol.flags_field |= 512;
            return typeSymbol;
        }

        private void reportIntersectionError(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
            Attr attr = Attr.this;
            Check.CheckContext checkContext = attr.resultInfo.checkContext;
            JCDiagnostic.Factory factory = attr.diags;
            checkContext.report(diagnosticPosition, factory.fragment("bad.intersection.target.for.functional.expr", factory.fragment(str, objArr)));
        }

        public Type visitIntersectionClassType(Type.IntersectionClassType intersectionClassType, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            Symbol findDescriptorSymbol = Attr.this.types.findDescriptorSymbol(makeNotionalInterface(intersectionClassType));
            Iterator<Type> it = intersectionClassType.getExplicitComponents().iterator();
            Type type = null;
            while (it.hasNext()) {
                Type next = it.next();
                Symbol.TypeSymbol typeSymbol = next.tsym;
                if (Attr.this.types.isFunctionalInterface(typeSymbol) && Attr.this.types.findDescriptorSymbol(typeSymbol) == findDescriptorSymbol) {
                    type = next;
                } else if (!typeSymbol.isInterface() || (typeSymbol.flags() & 8192) != 0) {
                    reportIntersectionError(diagnosticPosition, "not.an.intf.component", typeSymbol);
                }
            }
            return type != null ? type : intersectionClassType.getExplicitComponents().head;
        }

        @Override
        public Type visitClassType(Type.ClassType classType, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            return classType.isIntersection() ? visitIntersectionClassType((Type.IntersectionClassType) classType, diagnosticPosition) : classType;
        }
    };
    private Map<Symbol.ClassSymbol, Symbol.MethodSymbol> clinits = new HashMap();

    public static class AnonymousClass10 {
        static final int[] $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.PACKAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.WILDCARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.TYPEVAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[MemberReferenceTree.ReferenceMode.values().length];
            $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode = iArr2;
            try {
                iArr2[MemberReferenceTree.ReferenceMode.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr3;
            try {
                iArr3[Kinds.Kind.ABSENT_MTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MISSING_ENCL.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.WRONG_MTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.WRONG_MTHS.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.AMBIGUOUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.HIDDEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.STATICERR.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.TYP.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.VAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MTH.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.PCK.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.ERR.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            int[] iArr4 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr4;
            try {
                iArr4[JCTree.Tag.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LAMBDA.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PARENS.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CONDEXPR.ordinal()] = 5;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.APPLY.ordinal()] = 6;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEWCLASS.ordinal()] = 7;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LABELLED.ordinal()] = 8;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.DOLOOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.WHILELOOP.ordinal()] = 10;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.FORLOOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.FOREACHLOOP.ordinal()] = 12;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SWITCH.ordinal()] = 13;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.METHODDEF.ordinal()] = 14;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CLASSDEF.ordinal()] = 15;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 16;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BLOCK.ordinal()] = 17;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TOPLEVEL.ordinal()] = 18;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MODULEDEF.ordinal()] = 19;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PACKAGEDEF.ordinal()] = 20;
            } catch (NoSuchFieldError unused39) {
            }
        }
    }

    public static class BreakAttr extends RuntimeException {
        static final long serialVersionUID = -6924771130405446405L;
        private Env<AttrContext> env;

        private BreakAttr(Env<AttrContext> env) {
            this.env = env;
        }
    }

    public enum CheckMode {
        NORMAL,
        NO_TREE_UPDATE {
            @Override
            public boolean updateTreeType() {
                return false;
            }
        },
        NO_INFERENCE_HOOK {
            @Override
            public boolean installPostInferenceHook() {
                return false;
            }
        };

        public boolean installPostInferenceHook() {
            return true;
        }

        public boolean updateTreeType() {
            return true;
        }
    }

    public class ExpressionLambdaReturnContext extends FunctionalReturnContext {
        boolean expStmtExpected;
        JCTree.JCExpression expr;

        public ExpressionLambdaReturnContext(JCTree.JCExpression jCExpression, Check.CheckContext checkContext) {
            super(checkContext);
            this.expr = jCExpression;
        }

        @Override
        public boolean compatible(Type type, Type type2, Warner warner) {
            if (!type2.hasTag(TypeTag.VOID)) {
                return super.compatible(type, type2, warner);
            }
            this.expStmtExpected = true;
            return TreeInfo.isExpressionStatement(this.expr);
        }

        @Override
        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
            if (this.expStmtExpected) {
                this.enclosingContext.report(diagnosticPosition, Attr.this.diags.fragment(CompilerProperties.Fragments.StatExprExpected));
            } else {
                super.report(diagnosticPosition, jCDiagnostic);
            }
        }
    }

    public class FunctionalReturnContext extends Check.NestedCheckContext {
        public FunctionalReturnContext(Check.CheckContext checkContext) {
            super(checkContext);
        }

        @Override
        public boolean compatible(Type type, Type type2, Warner warner) {
            return Attr.this.chk.basicHandler.compatible(inferenceContext().asUndetVar(type), inferenceContext().asUndetVar(type2), warner);
        }

        @Override
        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
            this.enclosingContext.report(diagnosticPosition, Attr.this.diags.fragment("incompatible.ret.type.in.lambda", jCDiagnostic));
        }
    }

    public class IdentAttributer extends SimpleTreeVisitor<Symbol, Env<AttrContext>> {
        private IdentAttributer() {
        }

        @Override
        public Symbol visitIdentifier(IdentifierTree identifierTree, Env<AttrContext> env) {
            return Attr.this.rs.findIdent(env, (Name) identifierTree.getName(), Kinds.KindSelector.TYP_PCK);
        }

        @Override
        public Symbol visitMemberSelect(MemberSelectTree memberSelectTree, Env<AttrContext> env) {
            Symbol visit = visit((Tree) memberSelectTree.getExpression(), (ExpressionTree) env);
            Kinds.Kind kind = visit.kind;
            if (kind == Kinds.Kind.ERR || kind == Kinds.Kind.ABSENT_TYP || kind == Kinds.Kind.HIDDEN) {
                return visit;
            }
            Name name = (Name) memberSelectTree.getIdentifier();
            if (visit.kind == Kinds.Kind.PCK) {
                env.toplevel.packge = (Symbol.PackageSymbol) visit;
                return Attr.this.rs.findIdentInPackage(env, (Symbol.TypeSymbol) visit, name, Kinds.KindSelector.TYP_PCK);
            }
            env.enclClass.sym = (Symbol.ClassSymbol) visit;
            return Attr.this.rs.findMemberType(env, visit.asType(), name, (Symbol.TypeSymbol) visit);
        }
    }

    public class MethodAttrInfo extends ResultInfo {
        public MethodAttrInfo(Attr attr) {
            this(attr.chk.basicHandler);
        }

        @Override
        public ResultInfo dup(Type type) {
            throw new IllegalStateException();
        }

        @Override
        public boolean needsArgumentAttr(JCTree jCTree) {
            return true;
        }

        public MethodAttrInfo(Check.CheckContext checkContext) {
            super(Attr.this, Kinds.KindSelector.VAL, Infer.anyPoly, checkContext);
        }

        @Override
        public ResultInfo dup(Check.CheckContext checkContext) {
            return new MethodAttrInfo(checkContext);
        }

        @Override
        public ResultInfo dup(Type type, Check.CheckContext checkContext) {
            throw new IllegalStateException();
        }

        @Override
        public ResultInfo dup(Type type, Check.CheckContext checkContext, CheckMode checkMode) {
            throw new IllegalStateException();
        }

        @Override
        public ResultInfo dup(CheckMode checkMode) {
            throw new IllegalStateException();
        }
    }

    public class RecoveryInfo extends ResultInfo {
        public RecoveryInfo(final DeferredAttr.DeferredAttrContext deferredAttrContext) {
            super(Attr.this, Kinds.KindSelector.VAL, Type.recoveryType, new Check.NestedCheckContext(Attr.this.chk.basicHandler) {
                @Override
                public boolean compatible(Type type, Type type2, Warner warner) {
                    return true;
                }

                @Override
                public DeferredAttr.DeferredAttrContext deferredAttrContext() {
                    return deferredAttrContext;
                }

                @Override
                public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                    r2.chk.basicHandler.report(diagnosticPosition, jCDiagnostic);
                }
            });
        }
    }

    public class ResultInfo {
        final Check.CheckContext checkContext;
        final CheckMode checkMode;
        final Kinds.KindSelector pkind;
        final Type pt;

        public ResultInfo(Attr attr, Kinds.KindSelector kindSelector, Type type) {
            this(kindSelector, type, attr.chk.basicHandler, CheckMode.NORMAL);
        }

        public Type check(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
            return Attr.this.chk.checkType(diagnosticPosition, type, this.pt, this.checkContext);
        }

        public ResultInfo dup(Type type) {
            return new ResultInfo(this.pkind, type, this.checkContext, this.checkMode);
        }

        public boolean needsArgumentAttr(JCTree jCTree) {
            return false;
        }

        public String toString() {
            Type type = this.pt;
            return type != null ? type.toString() : "";
        }

        public ResultInfo(Attr attr, Kinds.KindSelector kindSelector, Type type, CheckMode checkMode) {
            this(kindSelector, type, attr.chk.basicHandler, checkMode);
        }

        public ResultInfo dup(Check.CheckContext checkContext) {
            return new ResultInfo(this.pkind, this.pt, checkContext, this.checkMode);
        }

        public ResultInfo(Attr attr, Kinds.KindSelector kindSelector, Type type, Check.CheckContext checkContext) {
            this(kindSelector, type, checkContext, CheckMode.NORMAL);
        }

        public ResultInfo dup(Type type, Check.CheckContext checkContext) {
            return new ResultInfo(this.pkind, type, checkContext, this.checkMode);
        }

        public ResultInfo(Kinds.KindSelector kindSelector, Type type, Check.CheckContext checkContext, CheckMode checkMode) {
            this.pkind = kindSelector;
            this.pt = type;
            this.checkContext = checkContext;
            this.checkMode = checkMode;
        }

        public ResultInfo dup(Type type, Check.CheckContext checkContext, CheckMode checkMode) {
            return new ResultInfo(this.pkind, type, checkContext, checkMode);
        }

        public ResultInfo dup(CheckMode checkMode) {
            return new ResultInfo(this.pkind, this.pt, this.checkContext, checkMode);
        }
    }

    public class TargetInfo {
        Type descriptor;
        Type target;

        public TargetInfo(Type type, Type type2) {
            this.target = type;
            this.descriptor = type2;
        }
    }

    public final class TypeAnnotationsValidator extends TreeScanner {
        private final boolean sigOnly;

        public TypeAnnotationsValidator(boolean z10) {
            this.sigOnly = z10;
        }

        private void checkForDeclarationAnnotations(List<? extends JCTree.JCAnnotation> list, Symbol symbol) {
            Iterator<? extends JCTree.JCAnnotation> it = list.iterator();
            while (it.hasNext()) {
                JCTree.JCAnnotation next = it.next();
                if (!next.type.isErroneous() && Attr.this.typeAnnotations.annotationTargetType(next.attribute, symbol) == TypeAnnotations.AnnotationType.DECLARATION) {
                    Attr.this.log.error(next.pos(), CompilerProperties.Errors.AnnotationTypeNotApplicableToType(next.type));
                }
            }
        }

        private void validateAnnotatedType(JCTree jCTree, Type type) {
            if (type.isPrimitiveOrVoid()) {
                return;
            }
            JCTree jCTree2 = jCTree;
            boolean z10 = true;
            while (z10) {
                if (jCTree2.hasTag(JCTree.Tag.TYPEAPPLY)) {
                    List<Type> typeArguments = type.getTypeArguments();
                    JCTree.JCTypeApply jCTypeApply = (JCTree.JCTypeApply) jCTree2;
                    List<JCTree.JCExpression> typeArguments2 = jCTypeApply.getTypeArguments();
                    if (typeArguments2.length() > 0 && typeArguments.length() == typeArguments2.length()) {
                        for (int i10 = 0; i10 < typeArguments.length(); i10++) {
                            validateAnnotatedType(typeArguments2.get(i10), typeArguments.get(i10));
                        }
                    }
                    jCTree2 = jCTypeApply.clazz;
                }
                if (jCTree2.hasTag(JCTree.Tag.SELECT)) {
                    jCTree2 = ((JCTree.JCFieldAccess) jCTree2).getExpression();
                    if (type != null && !type.hasTag(TypeTag.NONE)) {
                        type = type.getEnclosingType();
                    }
                } else if (jCTree2.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                    JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) jCTree2;
                    if (type == null || type.hasTag(TypeTag.NONE)) {
                        if (jCAnnotatedType.getAnnotations().size() == 1) {
                            Attr.this.log.error(jCAnnotatedType.underlyingType.pos(), "cant.type.annotate.scoping.1", jCAnnotatedType.getAnnotations().head.attribute);
                        } else {
                            ListBuffer listBuffer = new ListBuffer();
                            Iterator<JCTree.JCAnnotation> it = jCAnnotatedType.getAnnotations().iterator();
                            while (it.hasNext()) {
                                listBuffer.add(it.next().attribute);
                            }
                            Attr.this.log.error(jCAnnotatedType.underlyingType.pos(), "cant.type.annotate.scoping", listBuffer.toList());
                        }
                        z10 = false;
                    }
                    jCTree2 = jCAnnotatedType.underlyingType;
                } else {
                    if (!jCTree2.hasTag(JCTree.Tag.IDENT)) {
                        if (jCTree2.hasTag(JCTree.Tag.WILDCARD)) {
                            JCTree.JCWildcard jCWildcard = (JCTree.JCWildcard) jCTree2;
                            if (jCWildcard.getKind() == Tree.Kind.EXTENDS_WILDCARD) {
                                validateAnnotatedType(jCWildcard.getBound(), ((Type.WildcardType) type).getExtendsBound());
                            } else if (jCWildcard.getKind() == Tree.Kind.SUPER_WILDCARD) {
                                validateAnnotatedType(jCWildcard.getBound(), ((Type.WildcardType) type).getSuperBound());
                            }
                        } else if (jCTree2.hasTag(JCTree.Tag.TYPEARRAY)) {
                            validateAnnotatedType(((JCTree.JCArrayTypeTree) jCTree2).getType(), ((Type.ArrayType) type).getComponentType());
                        } else if (jCTree2.hasTag(JCTree.Tag.TYPEUNION)) {
                            Iterator<JCTree.JCExpression> it2 = ((JCTree.JCTypeUnion) jCTree2).getTypeAlternatives().iterator();
                            while (it2.hasNext()) {
                                JCTree.JCExpression next = it2.next();
                                validateAnnotatedType(next, next.type);
                            }
                        } else if (jCTree2.hasTag(JCTree.Tag.TYPEINTERSECTION)) {
                            Iterator<JCTree.JCExpression> it3 = ((JCTree.JCTypeIntersection) jCTree2).getBounds().iterator();
                            while (it3.hasNext()) {
                                JCTree.JCExpression next2 = it3.next();
                                validateAnnotatedType(next2, next2.type);
                            }
                        } else if (jCTree2.getKind() != Tree.Kind.PRIMITIVE_TYPE && jCTree2.getKind() != Tree.Kind.ERRONEOUS) {
                            Assert.error("Unexpected tree: " + ((Object) jCTree2) + " with kind: " + ((Object) jCTree2.getKind()) + " within: " + ((Object) jCTree) + " with kind: " + ((Object) jCTree.getKind()));
                        }
                    }
                    z10 = false;
                }
            }
        }

        @Override
        public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
            if (jCAnnotatedType.underlyingType.type.isErroneous()) {
                return;
            }
            super.visitAnnotatedType(jCAnnotatedType);
        }

        @Override
        public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
            Attr.this.chk.validateTypeAnnotation(jCAnnotation, false);
            super.visitAnnotation(jCAnnotation);
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            if (this.sigOnly) {
                return;
            }
            scan(jCBlock.stats);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (this.sigOnly) {
                scan(jCClassDecl.mods);
                scan(jCClassDecl.typarams);
                scan(jCClassDecl.extending);
                scan(jCClassDecl.implementing);
            }
            Iterator<JCTree> it = jCClassDecl.defs.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (!next.hasTag(JCTree.Tag.CLASSDEF)) {
                    scan(next);
                }
            }
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            Type type;
            JCTree.JCVariableDecl jCVariableDecl = jCMethodDecl.recvparam;
            if (jCVariableDecl != null && !jCVariableDecl.vartype.type.isErroneous()) {
                JCTree.JCVariableDecl jCVariableDecl2 = jCMethodDecl.recvparam;
                checkForDeclarationAnnotations(jCVariableDecl2.mods.annotations, jCVariableDecl2.vartype.type.tsym);
            }
            JCTree.JCExpression jCExpression = jCMethodDecl.restype;
            if (jCExpression != null && (type = jCExpression.type) != null) {
                validateAnnotatedType(jCExpression, type);
            }
            if (!this.sigOnly) {
                scan(jCMethodDecl.defaultValue);
                scan(jCMethodDecl.body);
                return;
            }
            scan(jCMethodDecl.mods);
            scan(jCMethodDecl.restype);
            scan(jCMethodDecl.typarams);
            scan(jCMethodDecl.recvparam);
            scan(jCMethodDecl.params);
            scan(jCMethodDecl.thrown);
        }

        @Override
        public void visitNewArray(JCTree.JCNewArray jCNewArray) {
            JCTree.JCExpression jCExpression = jCNewArray.elemtype;
            if (jCExpression != null && jCExpression.type != null) {
                if (jCExpression.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                    JCTree.JCExpression jCExpression2 = jCNewArray.elemtype;
                    checkForDeclarationAnnotations(((JCTree.JCAnnotatedType) jCExpression2).annotations, jCExpression2.type.tsym);
                }
                JCTree.JCExpression jCExpression3 = jCNewArray.elemtype;
                validateAnnotatedType(jCExpression3, jCExpression3.type);
            }
            super.visitNewArray(jCNewArray);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            JCTree.JCExpression jCExpression = jCNewClass.clazz;
            if (jCExpression != null && jCExpression.type != null) {
                if (jCExpression.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                    JCTree.JCExpression jCExpression2 = jCNewClass.clazz;
                    checkForDeclarationAnnotations(((JCTree.JCAnnotatedType) jCExpression2).annotations, jCExpression2.type.tsym);
                }
                JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
                if (jCClassDecl != null) {
                    checkForDeclarationAnnotations(jCClassDecl.mods.annotations, jCNewClass.clazz.type.tsym);
                }
                JCTree.JCExpression jCExpression3 = jCNewClass.clazz;
                validateAnnotatedType(jCExpression3, jCExpression3.type);
            }
            super.visitNewClass(jCNewClass);
        }

        @Override
        public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
            Type type;
            JCTree jCTree = jCTypeCast.clazz;
            if (jCTree != null && (type = jCTree.type) != null) {
                validateAnnotatedType(jCTree, type);
            }
            super.visitTypeCast(jCTypeCast);
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            Attr.this.chk.validateTypeAnnotations(jCTypeParameter.annotations, true);
            scan(jCTypeParameter.bounds);
        }

        @Override
        public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
            Type type;
            JCTree jCTree = jCInstanceOf.clazz;
            if (jCTree != null && (type = jCTree.type) != null) {
                validateAnnotatedType(jCTree, type);
            }
            super.visitTypeTest(jCInstanceOf);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            Type type;
            Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
            if (varSymbol != null && (type = varSymbol.type) != null) {
                validateAnnotatedType(jCVariableDecl.vartype, type);
            }
            scan(jCVariableDecl.mods);
            scan(jCVariableDecl.vartype);
            if (this.sigOnly) {
                return;
            }
            scan(jCVariableDecl.init);
        }
    }

    public Attr(Context context) {
        context.put((Context.Key<Context.Key<Attr>>) attrKey, (Context.Key<Attr>) this);
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        this.rs = Resolve.instance(context);
        this.operators = Operators.instance(context);
        this.chk = Check.instance(context);
        this.flow = Flow.instance(context);
        this.memberEnter = MemberEnter.instance(context);
        this.typeEnter = TypeEnter.instance(context);
        this.make = TreeMaker.instance(context);
        this.enter = Enter.instance(context);
        this.infer = Infer.instance(context);
        this.analyzer = Analyzer.instance(context);
        DeferredAttr instance = DeferredAttr.instance(context);
        this.deferredAttr = instance;
        this.cfolder = ConstFold.instance(context);
        this.target = Target.instance(context);
        this.types = Types.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.annotate = Annotate.instance(context);
        this.typeAnnotations = TypeAnnotations.instance(context);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
        this.typeEnvs = TypeEnvs.instance(context);
        this.dependencies = Dependencies.instance(context);
        this.argumentAttr = ArgumentAttr.instance(context);
        Options instance2 = Options.instance(context);
        Source instance3 = Source.instance(context);
        this.allowStringsInSwitch = instance3.allowStringsInSwitch();
        this.allowPoly = instance3.allowPoly();
        this.allowTypeAnnos = instance3.allowTypeAnnotations();
        this.allowLambda = instance3.allowLambda();
        this.allowDefaultMethods = instance3.allowDefaultMethods();
        this.allowStaticInterfaceMethods = instance3.allowStaticInterfaceMethods();
        this.sourceName = instance3.name;
        this.useBeforeDeclarationWarning = instance2.isSet("useBeforeDeclarationWarning");
        Kinds.KindSelector kindSelector = Kinds.KindSelector.NIL;
        Type.JCNoType jCNoType = Type.noType;
        this.statInfo = new ResultInfo(this, kindSelector, jCNoType);
        this.varAssignmentInfo = new ResultInfo(this, Kinds.KindSelector.ASG, jCNoType);
        this.unknownExprInfo = new ResultInfo(this, Kinds.KindSelector.VAL, jCNoType);
        this.methodAttrInfo = new MethodAttrInfo(this);
        this.unknownTypeInfo = new ResultInfo(this, Kinds.KindSelector.TYP, jCNoType);
        this.unknownTypeExprInfo = new ResultInfo(this, Kinds.KindSelector.VAL_TYP, jCNoType);
        this.recoveryInfo = new RecoveryInfo(instance.emptyDeferredAttrContext);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void addVars(List<JCTree.JCStatement> list, Scope.WriteableScope writeableScope) {
        for (List<JCTree.JCStatement> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            JCTree.JCStatement jCStatement = list2.head;
            if (jCStatement.hasTag(JCTree.Tag.VARDEF)) {
                writeableScope.enter(((JCTree.JCVariableDecl) jCStatement).sym);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void attribClassBody(Env<AttrContext> env, Symbol.ClassSymbol classSymbol) {
        JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) env.tree;
        Assert.check(classSymbol == jCClassDecl.sym);
        attribStats(jCClassDecl.typarams, env);
        if (!classSymbol.isAnonymous()) {
            this.chk.validate(jCClassDecl.typarams, env);
            this.chk.validate(jCClassDecl.extending, env);
            this.chk.validate(jCClassDecl.implementing, env);
        }
        classSymbol.markAbstractIfNeeded(this.types);
        if ((classSymbol.flags() & 1536) == 0) {
            this.chk.checkAllDefined(jCClassDecl.pos(), classSymbol);
        }
        if ((classSymbol.flags() & 8192) != 0) {
            if (jCClassDecl.implementing.nonEmpty()) {
                this.log.error(jCClassDecl.implementing.head.pos(), "cant.extend.intf.annotation", new Object[0]);
            }
            if (jCClassDecl.typarams.nonEmpty()) {
                this.log.error(jCClassDecl.typarams.head.pos(), "intf.annotation.cant.have.type.params", new Object[0]);
            }
            Attribute.Compound repeatable = classSymbol.getAnnotationTypeMetadata().getRepeatable();
            if (repeatable != null) {
                JCDiagnostic.DiagnosticPosition diagnosticPosition = getDiagnosticPosition(jCClassDecl, repeatable.type);
                Assert.checkNonNull(diagnosticPosition);
                this.chk.validateRepeatable(classSymbol, repeatable, diagnosticPosition);
            }
        } else {
            this.chk.checkCompatibleSupertypes(jCClassDecl.pos(), classSymbol.type);
            if (this.allowDefaultMethods) {
                this.chk.checkDefaultMethodClashes(jCClassDecl.pos(), classSymbol.type);
            }
        }
        this.chk.checkClassBounds(jCClassDecl.pos(), classSymbol.type);
        jCClassDecl.type = classSymbol.type;
        for (List list = jCClassDecl.typarams; list.nonEmpty(); list = list.tail) {
            Assert.checkNonNull(env.info.scope.findFirst(((JCTree.JCTypeParameter) list.head).name));
        }
        if (!classSymbol.type.allparams().isEmpty() && this.types.isSubtype(classSymbol.type, this.syms.throwableType)) {
            this.log.error(jCClassDecl.extending.pos(), "generic.throwable", new Object[0]);
        }
        this.chk.checkImplementations(jCClassDecl);
        checkAutoCloseable(jCClassDecl.pos(), env, classSymbol.type);
        for (List list2 = jCClassDecl.defs; list2.nonEmpty(); list2 = list2.tail) {
            attribStat((JCTree) list2.head, env);
            if (classSymbol.owner.kind != Kinds.Kind.PCK && (((classSymbol.flags() & 8) == 0 || classSymbol.name == this.names.empty) && (TreeInfo.flags((JCTree) list2.head) & 520) != 0)) {
                Symbol.VarSymbol varSymbol = ((JCTree) list2.head).hasTag(JCTree.Tag.VARDEF) ? ((JCTree.JCVariableDecl) list2.head).sym : null;
                if (varSymbol == null || varSymbol.kind != Kinds.Kind.VAR || varSymbol.getConstValue() == null) {
                    this.log.error(((JCTree) list2.head).pos(), "icls.cant.have.static.decl", classSymbol);
                }
            }
        }
        this.chk.checkCyclicConstructors(jCClassDecl);
        this.chk.checkNonCyclicElements(jCClassDecl);
        if (env.info.lint.isEnabled(Lint.LintCategory.SERIAL) && isSerializable(classSymbol.type) && (classSymbol.flags() & 16384) == 0 && !classSymbol.isAnonymous() && checkForSerial(classSymbol)) {
            checkSerialVersionUID(jCClassDecl, classSymbol);
        }
        if (this.allowTypeAnnos) {
            this.typeAnnotations.organizeTypeAnnotationsBodies(jCClassDecl);
            validateTypeAnnotations(jCClassDecl, false);
        }
    }

    private Type capture(Type type) {
        return this.types.capture(type);
    }

    private void checkAccessibleTypes(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, InferenceContext inferenceContext, Type... typeArr) {
        checkAccessibleTypes(diagnosticPosition, env, inferenceContext, List.from(typeArr));
    }

    private void checkEnumInitializer(JCTree jCTree, Env<AttrContext> env, Symbol.VarSymbol varSymbol) {
        Symbol.ClassSymbol enclClass;
        if (!isStaticEnumField(varSymbol) || (enclClass = env.info.scope.owner.enclClass()) == null || enclClass.owner == null) {
            return;
        }
        Symbol symbol = varSymbol.owner;
        if ((symbol == enclClass || this.types.isSubtype(enclClass.type, symbol.type)) && Resolve.isInitializer(env)) {
            this.log.error(jCTree.pos(), "illegal.enum.static.ref", new Object[0]);
        }
    }

    private void checkInit(JCTree jCTree, Env<AttrContext> env, Symbol.VarSymbol varSymbol, boolean z10) {
        Env<AttrContext> enclosingInitEnv = enclosingInitEnv(env);
        if (enclosingInitEnv != null && (enclosingInitEnv.info.enclVar == varSymbol || varSymbol.pos > jCTree.pos)) {
            Symbol symbol = varSymbol.owner;
            if (symbol.kind == Kinds.Kind.TYP && symbol == env.info.scope.owner.enclClass()) {
                if (((varSymbol.flags() & 8) != 0) == Resolve.isStatic(env) && (!env.tree.hasTag(JCTree.Tag.ASSIGN) || TreeInfo.skipParens(((JCTree.JCAssign) env.tree).lhs) != jCTree)) {
                    String str = enclosingInitEnv.info.enclVar == varSymbol ? "self.ref" : "forward.ref";
                    if (!z10 || isStaticEnumField(varSymbol)) {
                        this.log.error(jCTree.pos(), "illegal." + str, new Object[0]);
                    } else if (this.useBeforeDeclarationWarning) {
                        this.log.warning(jCTree.pos(), str, varSymbol);
                    }
                }
            }
        }
        varSymbol.getConstValue();
        checkEnumInitializer(jCTree, env, varSymbol);
    }

    private void checkSerialVersionUID(JCTree.JCClassDecl jCClassDecl, Symbol.ClassSymbol classSymbol) {
        Symbol.VarSymbol varSymbol;
        Iterator<Symbol> it = classSymbol.members().getSymbolsByName(this.names.serialVersionUID).iterator();
        while (true) {
            if (!it.hasNext()) {
                varSymbol = null;
                break;
            }
            Symbol next = it.next();
            if (next.kind == Kinds.Kind.VAR) {
                varSymbol = (Symbol.VarSymbol) next;
                break;
            }
        }
        if (varSymbol == null) {
            this.log.warning(Lint.LintCategory.SERIAL, jCClassDecl.pos(), "missing.SVUID", classSymbol);
            return;
        }
        if ((varSymbol.flags() & 24) != 24) {
            this.log.warning(Lint.LintCategory.SERIAL, TreeInfo.diagnosticPositionFor(varSymbol, jCClassDecl), "improper.SVUID", classSymbol);
        } else if (!varSymbol.type.hasTag(TypeTag.LONG)) {
            this.log.warning(Lint.LintCategory.SERIAL, TreeInfo.diagnosticPositionFor(varSymbol, jCClassDecl), "long.SVUID", classSymbol);
        } else if (varSymbol.getConstValue() == null) {
            this.log.warning(Lint.LintCategory.SERIAL, TreeInfo.diagnosticPositionFor(varSymbol, jCClassDecl), "constant.SVUID", classSymbol);
        }
    }

    private Symbol enumConstant(JCTree jCTree, Type type) {
        if (!jCTree.hasTag(JCTree.Tag.IDENT)) {
            return null;
        }
        JCTree.JCIdent jCIdent = (JCTree.JCIdent) jCTree;
        for (Symbol symbol : type.tsym.members().getSymbolsByName(jCIdent.name)) {
            if (symbol.kind == Kinds.Kind.VAR) {
                jCIdent.sym = symbol;
                ((Symbol.VarSymbol) symbol).getConstValue();
                jCIdent.type = symbol.type;
                if ((symbol.flags_field & 16384) == 0) {
                    return null;
                }
                return symbol;
            }
        }
        return null;
    }

    private Type fallbackDescriptorType(JCTree.JCExpression jCExpression) {
        int i10 = AnonymousClass10.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()];
        if (i10 != 2) {
            if (i10 == 3) {
                return new Type.MethodType(List.nil(), Type.recoveryType, List.of(this.syms.throwableType), this.syms.methodClass);
            }
            Assert.error("Cannot get here!");
            return null;
        }
        List nil = List.nil();
        Iterator<JCTree.JCVariableDecl> it = ((JCTree.JCLambda) jCExpression).params.iterator();
        while (it.hasNext()) {
            JCTree.JCExpression jCExpression2 = it.next().vartype;
            nil = jCExpression2 != null ? nil.append(jCExpression2.type) : nil.append(this.syms.errType);
        }
        return new Type.MethodType(nil, Type.recoveryType, List.of(this.syms.throwableType), this.syms.methodClass);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r6 = r6;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private JCTree findJumpTarget(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.Tag tag, Name name, Env<AttrContext> env) {
        for (Env<AttrContext> env2 = env; env2 != null; env2 = env2.next) {
            int i10 = AnonymousClass10.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[env2.tree.getTag().ordinal()];
            if (i10 != 2) {
                switch (i10) {
                    case 8:
                        JCTree.JCLabeledStatement jCLabeledStatement = (JCTree.JCLabeledStatement) env2.tree;
                        if (name == jCLabeledStatement.label) {
                            if (tag != JCTree.Tag.CONTINUE) {
                                return jCLabeledStatement;
                            }
                            if (!jCLabeledStatement.body.hasTag(JCTree.Tag.DOLOOP) && !jCLabeledStatement.body.hasTag(JCTree.Tag.WHILELOOP) && !jCLabeledStatement.body.hasTag(JCTree.Tag.FORLOOP) && !jCLabeledStatement.body.hasTag(JCTree.Tag.FOREACHLOOP)) {
                                this.log.error(diagnosticPosition, "not.loop.label", name);
                            }
                            return TreeInfo.referencedStatement(jCLabeledStatement);
                        }
                        break;
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        if (name == null) {
                            return env2.tree;
                        }
                    case 13:
                        if (name == null && tag == JCTree.Tag.BREAK) {
                            return env2.tree;
                        }
                        break;
                    case 14:
                    case 15:
                        break;
                    default:
                }
            }
            if (name == null) {
                this.log.error(diagnosticPosition, "undef.label", name);
                return null;
            }
            if (tag == JCTree.Tag.CONTINUE) {
                this.log.error(diagnosticPosition, "cont.outside.loop", new Object[0]);
                return null;
            }
            this.log.error(diagnosticPosition, "break.outside.switch.loop", new Object[0]);
            return null;
        }
        if (name == null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private JCDiagnostic.DiagnosticPosition getDiagnosticPosition(JCTree.JCClassDecl jCClassDecl, Type type) {
        for (List list = jCClassDecl.mods.annotations; !list.isEmpty(); list = list.tail) {
            if (this.types.isSameType(((JCTree.JCAnnotation) list.head).annotationType.type, type)) {
                return ((JCTree.JCAnnotation) list.head).pos();
            }
        }
        return null;
    }

    public static Attr instance(Context context) {
        Attr attr = (Attr) context.get(attrKey);
        return attr == null ? new Attr(context) : attr;
    }

    private boolean isBooleanOrNumeric(Env<AttrContext> env, JCTree.JCExpression jCExpression) {
        TypeTag typeTag;
        switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()]) {
            case 1:
                JCTree.JCLiteral jCLiteral = (JCTree.JCLiteral) jCExpression;
                return jCLiteral.typetag.isSubRangeOf(TypeTag.DOUBLE) || (typeTag = jCLiteral.typetag) == TypeTag.BOOLEAN || typeTag == TypeTag.BOT;
            case 2:
            case 3:
                return false;
            case 4:
                return isBooleanOrNumeric(env, ((JCTree.JCParens) jCExpression).expr);
            case 5:
                JCTree.JCConditional jCConditional = (JCTree.JCConditional) jCExpression;
                return isBooleanOrNumeric(env, jCConditional.truepart) && isBooleanOrNumeric(env, jCConditional.falsepart);
            case 6:
                JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) this.deferredAttr.attribSpeculative(jCExpression, env, this.unknownExprInfo, this.argumentAttr.withLocalCacheContext());
                return primitiveOrBoxed(this.types.memberType((jCMethodInvocation.meth.hasTag(JCTree.Tag.IDENT) ? env.enclClass : ((JCTree.JCFieldAccess) jCMethodInvocation.meth).selected).type, TreeInfo.symbol(jCMethodInvocation.meth)).getReturnType());
            case 7:
                return primitiveOrBoxed(((JCTree.JCExpression) this.deferredAttr.attribSpeculative((JCTree.JCExpression) this.removeClassParams.translate((TreeTranslator) ((JCTree.JCNewClass) jCExpression).clazz), env, this.unknownTypeInfo, this.argumentAttr.withLocalCacheContext())).type);
            default:
                return primitiveOrBoxed(this.deferredAttr.attribSpeculative(jCExpression, env, this.unknownExprInfo, this.argumentAttr.withLocalCacheContext()).type);
        }
    }

    private boolean isStaticEnumField(Symbol.VarSymbol varSymbol) {
        return Flags.isEnum(varSymbol.owner) && Flags.isStatic(varSymbol) && !Flags.isConstant(varSymbol) && varSymbol.name != this.names._class;
    }

    public static boolean isType(Symbol symbol) {
        return symbol != null && symbol.kind == Kinds.Kind.TYP;
    }

    public void lambda$check$0(ResultInfo resultInfo, InferenceContext inferenceContext, JCTree jCTree, Type type, Kinds.KindSelector kindSelector, InferenceContext inferenceContext2) {
        check(jCTree, inferenceContext.asInstType(type), kindSelector, resultInfo.dup(inferenceContext.asInstType(resultInfo.pt)));
    }

    public void lambda$checkAccessibleTypes$5(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env env, List list, InferenceContext inferenceContext) {
        checkAccessibleTypes(diagnosticPosition, (Env<AttrContext>) env, inferenceContext, inferenceContext.asInstTypes(list));
    }

    public static void lambda$checkReferenceCompatible$6(JCTree.JCMemberReference jCMemberReference, Type type, InferenceContext inferenceContext) {
        jCMemberReference.referentType = inferenceContext.asInstType(type);
    }

    public static boolean lambda$checkReferenceCompatible$7(Type type) {
        return type.hasTag(TypeTag.UNDETVAR);
    }

    public static void lambda$checkReferenceCompatible$8(Type type) {
        ((Type.UndetVar) type).setThrow();
    }

    public void lambda$setFunctionalInfo$9(Env env, JCTree.JCFunctionalExpression jCFunctionalExpression, Type type, Type type2, Type type3, Check.CheckContext checkContext, InferenceContext inferenceContext) {
        setFunctionalInfo(env, jCFunctionalExpression, type, inferenceContext.asInstType(type2), inferenceContext.asInstType(type3), checkContext);
    }

    public static boolean lambda$static$10(Symbol symbol) {
        return symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 8796093023232L) != 1024;
    }

    public void lambda$visitAnonymousClassDefinition$2(JCTree.JCNewClass jCNewClass, JCTree.JCExpression jCExpression, ResultInfo resultInfo, JCTree.JCClassDecl jCClassDecl, Env env, List list, List list2, Kinds.KindSelector kindSelector, InferenceContext inferenceContext) {
        jCNewClass.constructorType = inferenceContext.asInstType(jCNewClass.constructorType);
        JCTree.JCExpression jCExpression2 = jCNewClass.clazz;
        Type asInstType = inferenceContext.asInstType(jCExpression.type);
        jCExpression.type = asInstType;
        jCExpression2.type = asInstType;
        ResultInfo resultInfo2 = this.resultInfo;
        try {
            this.resultInfo = resultInfo;
            visitAnonymousClassDefinition(jCNewClass, jCExpression, jCExpression.type, jCClassDecl, env, list, list2, kindSelector);
        } finally {
            this.resultInfo = resultInfo2;
        }
    }

    public static boolean lambda$visitLambda$3(Type type) {
        return type.hasTag(TypeTag.UNDETVAR);
    }

    public static void lambda$visitLambda$4(Type type) {
        ((Type.UndetVar) type).setThrow();
    }

    public static void lambda$visitNewClass$1(JCTree.JCNewClass jCNewClass, InferenceContext inferenceContext) {
        jCNewClass.constructorType = inferenceContext.asInstType(jCNewClass.constructorType);
    }

    private Symbol selectSym(JCTree.JCFieldAccess jCFieldAccess, Symbol symbol, Type type, Env<AttrContext> env, ResultInfo resultInfo) {
        Symbol symbol2;
        JCDiagnostic.DiagnosticPosition pos = jCFieldAccess.pos();
        Name name = jCFieldAccess.name;
        switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
                Resolve resolve = this.rs;
                return resolve.accessBase(resolve.findIdentInPackage(env, type.tsym, name, resultInfo.pkind), pos, symbol, type, name, true);
            case 2:
            case 3:
                if (resultInfo.pt.hasTag(TypeTag.METHOD) || resultInfo.pt.hasTag(TypeTag.FORALL)) {
                    return this.rs.resolveQualifiedMethod(pos, env, symbol, type, name, resultInfo.pt.getParameterTypes(), resultInfo.pt.getTypeArguments());
                }
                Names names = this.names;
                if (name == names._this || name == names._super) {
                    return this.rs.resolveSelf(pos, env, type.tsym, name);
                }
                if (name != names._class) {
                    return this.rs.accessBase(this.rs.findIdentInType(env, type, name, resultInfo.pkind), pos, symbol, type, name, true);
                }
                Type type2 = this.syms.classType;
                return new Symbol.VarSymbol(25L, this.names._class, new Type.ClassType(type2.getEnclosingType(), List.of(this.types.erasure(type)), type2.tsym), type.tsym);
            case 4:
                throw new AssertionError(jCFieldAccess);
            case 5:
                Symbol selectSym = type.getUpperBound() != null ? selectSym(jCFieldAccess, symbol, capture(type.getUpperBound()), env, resultInfo) : null;
                if (selectSym == null) {
                    this.log.error(pos, "type.var.cant.be.deref", new Object[0]);
                    return this.syms.errSymbol;
                }
                if ((selectSym.flags() & 2) != 0) {
                    Resolve resolve2 = this.rs;
                    resolve2.getClass();
                    symbol2 = new Resolve.AccessError(env, type, selectSym);
                } else {
                    symbol2 = selectSym;
                }
                this.rs.accessBase(symbol2, pos, symbol, type, name, true);
                return selectSym;
            case 6:
                return this.types.createErrorType(name, type.tsym, type).tsym;
            default:
                if (name == this.names._class) {
                    Type type3 = this.syms.classType;
                    return new Symbol.VarSymbol(25L, this.names._class, new Type.ClassType(type3.getEnclosingType(), List.of(this.types.boxedClass(type).type), type3.tsym), type.tsym);
                }
                this.log.error(pos, "cant.deref", type);
                return this.syms.errSymbol;
        }
    }

    private void setFunctionalInfo(final Env<AttrContext> env, final JCTree.JCFunctionalExpression jCFunctionalExpression, final Type type, final Type type2, final Type type3, final Check.CheckContext checkContext) {
        if (checkContext.inferenceContext().free(type2)) {
            checkContext.inferenceContext().addFreeTypeListener(List.of(type, type2), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext) {
                    Attr.this.lambda$setFunctionalInfo$9(env, jCFunctionalExpression, type, type2, type3, checkContext, inferenceContext);
                }
            });
            return;
        }
        ListBuffer listBuffer = new ListBuffer();
        if (type.hasTag(TypeTag.CLASS)) {
            if (type.isCompound()) {
                listBuffer.append(this.types.removeWildcards(type3));
                Iterator<Type> it = ((Type.IntersectionClassType) pt()).interfaces_field.iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    if (next != type3) {
                        listBuffer.append(this.types.removeWildcards(next));
                    }
                }
            } else {
                listBuffer.append(this.types.removeWildcards(type3));
            }
        }
        jCFunctionalExpression.targets = listBuffer.toList();
        if (checkContext.deferredAttrContext().mode != DeferredAttr.AttrMode.CHECK || type == Type.recoveryType) {
            return;
        }
        try {
            Symbol.ClassSymbol makeFunctionalInterfaceClass = this.types.makeFunctionalInterfaceClass(env, this.names.empty, List.of(jCFunctionalExpression.targets.head), 1024L);
            if (makeFunctionalInterfaceClass != null) {
                this.chk.checkImplementations(env.tree, makeFunctionalInterfaceClass, makeFunctionalInterfaceClass);
                try {
                    makeFunctionalInterfaceClass.flags_field |= 512;
                    this.types.findDescriptorType(makeFunctionalInterfaceClass.type);
                } catch (Types.FunctionDescriptorLookupError unused) {
                    this.resultInfo.checkContext.report(jCFunctionalExpression, this.diags.fragment(CompilerProperties.Fragments.NoSuitableFunctionalIntfInst(jCFunctionalExpression.targets.head)));
                }
            }
        } catch (Types.FunctionDescriptorLookupError e10) {
            this.resultInfo.checkContext.report(env.tree, e10.getDiagnostic());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [org.openjdk.tools.javac.util.List] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v16, types: [org.openjdk.tools.javac.util.List] */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v9 */
    private void visitAnonymousClassDefinition(final JCTree.JCNewClass jCNewClass, final JCTree.JCExpression jCExpression, Type type, final JCTree.JCClassDecl jCClassDecl, final Env<AttrContext> env, final List<Type> list, final List<Type> list2, final Kinds.KindSelector kindSelector) {
        Env<AttrContext> env2;
        ?? r12;
        Type type2;
        Type type3;
        Type type4 = type;
        InferenceContext inferenceContext = this.resultInfo.checkContext.inferenceContext();
        boolean isDiamond = TreeInfo.isDiamond(jCNewClass);
        if (!isDiamond || (((type2 = jCNewClass.constructorType) == null || !inferenceContext.free(type2)) && ((type3 = jCNewClass.clazz.type) == null || !inferenceContext.free(type3)))) {
            if (isDiamond && type4.hasTag(TypeTag.CLASS)) {
                List<Type> checkDiamondDenotable = this.chk.checkDiamondDenotable((Type.ClassType) type4);
                if (!type.isErroneous() && checkDiamondDenotable.nonEmpty()) {
                    JCDiagnostic.Fragment Diamond = CompilerProperties.Fragments.Diamond(type4.tsym);
                    this.log.error(jCNewClass.clazz.pos(), CompilerProperties.Errors.CantApplyDiamond1(Diamond, checkDiamondDenotable.size() > 1 ? CompilerProperties.Fragments.DiamondInvalidArgs(checkDiamondDenotable, Diamond) : CompilerProperties.Fragments.DiamondInvalidArg(checkDiamondDenotable, Diamond)));
                }
                Iterator<Type> it = type.getTypeArguments().iterator();
                while (it.hasNext()) {
                    this.rs.checkAccessibleType(this.env, it.next());
                }
            }
            if (type4.tsym.isInterface() || (type.isErroneous() && type.getOriginalType().tsym.isInterface())) {
                jCClassDecl.implementing = List.of(jCExpression);
            } else {
                jCClassDecl.extending = jCExpression;
            }
            if (this.resultInfo.checkContext.deferredAttrContext().mode == DeferredAttr.AttrMode.CHECK && isSerializable(type4)) {
                env2 = env;
                env2.info.isSerializable = true;
            } else {
                env2 = env;
            }
            attribStat(jCClassDecl, env2);
            if (jCNewClass.encl == null || type4.tsym.isInterface()) {
                r12 = list;
            } else {
                jCNewClass.args = jCNewClass.args.prepend(makeNullCheck(jCNewClass.encl));
                List<Type> prepend = list.prepend(jCNewClass.encl.type);
                jCNewClass.encl = null;
                r12 = prepend;
            }
            if (isDiamond && kindSelector.contains(Kinds.KindSelector.POLY)) {
                r12 = r12.map(this.deferredAttr.deferredCopier);
            }
            List<Type> list3 = r12;
            type4 = jCClassDecl.sym.type;
            Symbol resolveConstructor = this.rs.resolveConstructor(jCNewClass.pos(), env, type4, list3, list2);
            jCNewClass.constructor = resolveConstructor;
            Assert.check(!resolveConstructor.kind.isResolutionError());
            jCNewClass.constructor = resolveConstructor;
            jCNewClass.constructorType = checkId(jCNewClass, type4, resolveConstructor, env, new ResultInfo(this, kindSelector, newMethodTemplate(this.syms.voidType, list3, list2), CheckMode.NO_TREE_UPDATE));
        } else {
            final ResultInfo resultInfo = this.resultInfo;
            inferenceContext.addFreeTypeListener(List.of(jCNewClass.constructorType, jCNewClass.clazz.type), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    Attr.this.lambda$visitAnonymousClassDefinition$2(jCNewClass, jCExpression, resultInfo, jCClassDecl, env, list, list2, kindSelector, inferenceContext2);
                }
            });
            env2 = env;
        }
        Symbol symbol = jCNewClass.constructor;
        if (symbol == null || symbol.kind != Kinds.Kind.MTH) {
            type4 = this.types.createErrorType(jCNewClass.type);
        }
        this.result = check(jCNewClass, type4, Kinds.KindSelector.VAL, this.resultInfo.dup(CheckMode.NO_INFERENCE_HOOK));
        this.chk.validate(jCNewClass.typeargs, env2);
    }

    public Type adjustMethodReturnType(Symbol symbol, Type type, Name name, List<Type> list, Type type2) {
        return (symbol != null && symbol.owner == this.syms.objectType.tsym && name == this.names.getClass && list.isEmpty()) ? new Type.ClassType(type2.getEnclosingType(), List.of(new Type.WildcardType(this.types.erasure(type), BoundKind.EXTENDS, this.syms.boundClass)), type2.tsym, type2.getMetadata()) : (symbol != null && symbol.owner == this.syms.arrayClass && name == this.names.clone && this.types.isArray(type)) ? type : type2;
    }

    public void attrib(Env<AttrContext> env) {
        switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[env.tree.getTag().ordinal()]) {
            case 18:
                attribTopLevel(env);
                return;
            case 19:
                attribModule(env.tree.pos(), ((JCTree.JCModuleDecl) env.tree).sym);
                return;
            case 20:
                attribPackage(env.tree.pos(), ((JCTree.JCPackageDecl) env.tree).packge);
                return;
            default:
                attribClass(env.tree.pos(), env.enclClass.sym);
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void attribAnnotationTypes(List<JCTree.JCAnnotation> list, Env<AttrContext> env) {
        for (List<JCTree.JCAnnotation> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            attribType(list2.head.annotationType, env);
        }
    }

    public List<Type> attribAnyTypes(List<JCTree.JCExpression> list, Env<AttrContext> env) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<JCTree.JCExpression> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(attribType(list2.head, env));
        }
        return listBuffer.toList();
    }

    public Kinds.KindSelector attribArgs(Kinds.KindSelector kindSelector, List<JCTree.JCExpression> list, Env<AttrContext> env, ListBuffer<Type> listBuffer) {
        Iterator<JCTree.JCExpression> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCExpression next = it.next();
            Type checkNonVoid = this.chk.checkNonVoid(next, attribTree(next, env, this.allowPoly ? this.methodAttrInfo : this.unknownExprInfo));
            if (checkNonVoid.hasTag(TypeTag.DEFERRED)) {
                kindSelector = Kinds.KindSelector.of(Kinds.KindSelector.POLY, kindSelector);
            }
            listBuffer.append(checkNonVoid);
        }
        return kindSelector;
    }

    public Type attribBase(JCTree jCTree, Env<AttrContext> env, boolean z10, boolean z11, boolean z12) {
        Type type = jCTree.type;
        if (type == null) {
            type = attribType(jCTree, env);
        }
        return checkBase(type, jCTree, env, z10, z11, z12);
    }

    public void attribClass(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        try {
            this.annotate.flush();
            attribClass(classSymbol);
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(diagnosticPosition, e10);
        }
    }

    public Type attribExpr(JCTree jCTree, Env<AttrContext> env, Type type) {
        Kinds.KindSelector kindSelector = Kinds.KindSelector.VAL;
        if (type.hasTag(TypeTag.ERROR)) {
            type = Type.noType;
        }
        return attribTree(jCTree, env, new ResultInfo(this, kindSelector, type));
    }

    public Env<AttrContext> attribExprToTree(JCTree jCTree, Env<AttrContext> env, JCTree jCTree2) {
        Env<AttrContext> env2;
        this.breakTree = jCTree2;
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            try {
                attribExpr(jCTree, env);
                return env;
            } catch (AssertionError e10) {
                if (!(e10.getCause() instanceof BreakAttr)) {
                    throw e10;
                }
                env2 = ((BreakAttr) e10.getCause()).env;
                return env2;
            } catch (BreakAttr e11) {
                env2 = e11.env;
                return env2;
            }
        } finally {
            this.breakTree = null;
            this.log.useSource(useSource);
        }
    }

    public List<Type> attribExprs(List<JCTree.JCExpression> list, Env<AttrContext> env, Type type) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<JCTree.JCExpression> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(attribExpr(list2.head, env, type));
        }
        return listBuffer.toList();
    }

    public Symbol attribIdent(JCTree jCTree, JCTree.JCCompilationUnit jCCompilationUnit) {
        Env<AttrContext> env = this.enter.topLevelEnv(jCCompilationUnit);
        TreeMaker treeMaker = this.make;
        JCTree.JCClassDecl ClassDef = treeMaker.ClassDef(treeMaker.Modifiers(0L), this.syms.errSymbol.name, null, null, null, null);
        env.enclClass = ClassDef;
        ClassDef.sym = this.syms.errSymbol;
        return attribIdent(jCTree, env);
    }

    public Type attribIdentAsEnumType(Env<AttrContext> env, JCTree.JCIdent jCIdent) {
        Assert.check((env.enclClass.sym.flags() & 16384) != 0);
        jCIdent.type = env.info.scope.owner.enclClass().type;
        jCIdent.sym = env.info.scope.owner.enclClass();
        return jCIdent.type;
    }

    public Type attribImportQualifier(JCTree.JCImport jCImport, Env<AttrContext> env) {
        return attribTree(((JCTree.JCFieldAccess) jCImport.qualid).selected, env, new ResultInfo(this, jCImport.staticImport ? Kinds.KindSelector.TYP : Kinds.KindSelector.TYP_PCK, Type.noType));
    }

    public Object attribLazyConstantValue(Env<AttrContext> env, JCTree.JCVariableDecl jCVariableDecl, Type type) {
        JCDiagnostic.DiagnosticPosition pos = this.deferredLintHandler.setPos(jCVariableDecl.pos());
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            Type attribExpr = attribExpr(jCVariableDecl.init, env, type);
            if (attribExpr.constValue() != null) {
                return coerce(attribExpr, type).constValue();
            }
            this.log.useSource(useSource);
            this.deferredLintHandler.setPos(pos);
            return null;
        } finally {
            this.log.useSource(useSource);
            this.deferredLintHandler.setPos(pos);
        }
    }

    public void attribModule(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ModuleSymbol moduleSymbol) {
        try {
            this.annotate.flush();
            attribModule(moduleSymbol);
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(diagnosticPosition, e10);
        }
    }

    public void attribPackage(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.PackageSymbol packageSymbol) {
        try {
            this.annotate.flush();
            attribPackage(packageSymbol);
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(diagnosticPosition, e10);
        }
    }

    public Type attribStat(JCTree jCTree, Env<AttrContext> env) {
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCTree, attrContext.dup(attrContext.scope.dupUnshared(attrContext.scope.owner)));
        try {
            return attribTree(jCTree, env, this.statInfo);
        } finally {
            this.analyzer.analyzeIfNeeded(jCTree, dup);
        }
    }

    public Env<AttrContext> attribStatToTree(JCTree jCTree, Env<AttrContext> env, JCTree jCTree2) {
        Env<AttrContext> env2;
        this.breakTree = jCTree2;
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            try {
                attribStat(jCTree, env);
                return env;
            } catch (AssertionError e10) {
                if (!(e10.getCause() instanceof BreakAttr)) {
                    throw e10;
                }
                env2 = ((BreakAttr) e10.getCause()).env;
                return env2;
            } catch (BreakAttr e11) {
                env2 = e11.env;
                return env2;
            }
        } finally {
            this.breakTree = null;
            this.log.useSource(useSource);
        }
    }

    public <T extends JCTree> void attribStats(List<T> list, Env<AttrContext> env) {
        while (list.nonEmpty()) {
            attribStat(list.head, env);
            list = list.tail;
        }
    }

    public void attribTopLevel(Env<AttrContext> env) {
        JCTree.JCCompilationUnit jCCompilationUnit = env.toplevel;
        try {
            this.annotate.flush();
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(jCCompilationUnit.pos(), e10);
        }
    }

    public Type attribTree(JCTree jCTree, Env<AttrContext> env, ResultInfo resultInfo) {
        Type completionError;
        Env<AttrContext> env2 = this.env;
        ResultInfo resultInfo2 = this.resultInfo;
        try {
            try {
                this.env = env;
                this.resultInfo = resultInfo;
                if (resultInfo.needsArgumentAttr(jCTree)) {
                    this.result = this.argumentAttr.attribArg(jCTree, env);
                } else {
                    jCTree.accept(this);
                }
                if (jCTree == this.breakTree && resultInfo.checkContext.deferredAttrContext().mode == DeferredAttr.AttrMode.CHECK) {
                    throw new BreakAttr(copyEnv(env));
                }
                completionError = this.result;
            } catch (Symbol.CompletionFailure e10) {
                jCTree.type = this.syms.errType;
                completionError = this.chk.completionError(jCTree.pos(), e10);
            }
            this.env = env2;
            this.resultInfo = resultInfo2;
            return completionError;
        } catch (Throwable th2) {
            this.env = env2;
            this.resultInfo = resultInfo2;
            throw th2;
        }
    }

    public Type attribType(JCTree jCTree, Symbol.TypeSymbol typeSymbol) {
        Env<AttrContext> env = this.typeEnvs.get(typeSymbol);
        return attribTree(jCTree, env.dup(jCTree, env.info.dup()), this.unknownTypeInfo);
    }

    public void attribTypeVariables(List<JCTree.JCTypeParameter> list, Env<AttrContext> env) {
        Iterator<JCTree.JCTypeParameter> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCTypeParameter next = it.next();
            Type.TypeVar typeVar = (Type.TypeVar) next.type;
            typeVar.tsym.flags_field |= TagBits.HasUnresolvedMemberTypes;
            typeVar.bound = Type.noType;
            if (next.bounds.isEmpty()) {
                this.types.setBounds(typeVar, List.of(this.syms.objectType));
            } else {
                List of2 = List.of(attribType(next.bounds.head, env));
                Iterator<JCTree.JCExpression> it2 = next.bounds.tail.iterator();
                while (it2.hasNext()) {
                    of2 = of2.prepend(attribType(it2.next(), env));
                }
                this.types.setBounds(typeVar, of2.reverse());
            }
            typeVar.tsym.flags_field &= -268435457;
        }
        Iterator<JCTree.JCTypeParameter> it3 = list.iterator();
        while (it3.hasNext()) {
            JCTree.JCTypeParameter next2 = it3.next();
            this.chk.checkNonCyclic(next2.pos(), (Type.TypeVar) next2.type);
        }
    }

    public List<Type> attribTypes(List<JCTree.JCExpression> list, Env<AttrContext> env) {
        return this.chk.checkRefTypes(list, attribAnyTypes(list, env));
    }

    public Type check(final JCTree jCTree, final Type type, final Kinds.KindSelector kindSelector, final ResultInfo resultInfo) {
        final InferenceContext inferenceContext = resultInfo.checkContext.inferenceContext();
        boolean z10 = (type.hasTag(TypeTag.ERROR) || resultInfo.pt.hasTag(TypeTag.METHOD) || resultInfo.pt.hasTag(TypeTag.FORALL)) ? false : true;
        if (z10 && !kindSelector.subset(resultInfo.pkind)) {
            this.log.error(jCTree.pos(), "unexpected.type", resultInfo.pkind.kindNames(), kindSelector.kindNames());
            type = this.types.createErrorType(type);
        } else if (this.allowPoly && inferenceContext.free(type)) {
            Type type2 = z10 ? resultInfo.pt : type;
            if (resultInfo.checkMode.installPostInferenceHook()) {
                inferenceContext.addFreeTypeListener(List.of(type), new Infer.FreeTypeListener() {
                    @Override
                    public final void typesInferred(InferenceContext inferenceContext2) {
                        Attr.this.lambda$check$0(resultInfo, inferenceContext, jCTree, type, kindSelector, inferenceContext2);
                    }
                });
            }
            type = type2;
        } else if (z10) {
            type = resultInfo.check(jCTree, type);
        }
        if (resultInfo.checkMode.updateTreeType()) {
            jCTree.type = type;
        }
        return type;
    }

    public void checkAssignable(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol, JCTree jCTree, Env<AttrContext> env) {
        if (varSymbol.name == this.names._this) {
            this.log.error(diagnosticPosition, CompilerProperties.Errors.CantAssignValToThis);
            return;
        }
        if ((varSymbol.flags() & 16) != 0) {
            if ((varSymbol.flags() & TagBits.TypeVariablesAreConnected) == 0 && ((jCTree == null || (jCTree.hasTag(JCTree.Tag.IDENT) && TreeInfo.name(jCTree) == this.names._this)) && isAssignableAsBlankFinal(varSymbol, env))) {
                return;
            }
            if (varSymbol.isResourceVariable()) {
                this.log.error(diagnosticPosition, "try.resource.may.not.be.assigned", varSymbol);
            } else {
                this.log.error(diagnosticPosition, "cant.assign.val.to.final.var", varSymbol);
            }
        }
    }

    public void checkAutoCloseable(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env, Type type) {
        if (type.isErroneous() || this.types.asSuper(type, this.syms.autoCloseableType.tsym) == null || this.types.isSameType(type, this.syms.autoCloseableType)) {
            return;
        }
        Symbol.TypeSymbol typeSymbol = this.syms.noSymbol;
        Log.DiscardDiagnosticHandler discardDiagnosticHandler = new Log.DiscardDiagnosticHandler(this.log);
        try {
            Symbol resolveQualifiedMethod = this.rs.resolveQualifiedMethod(diagnosticPosition, env, this.types.skipTypeVars(type, false), this.names.close, List.nil(), List.nil());
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
            if (resolveQualifiedMethod.kind == Kinds.Kind.MTH && resolveQualifiedMethod.overrides(this.syms.autoCloseableClose, type.tsym, this.types, true) && this.chk.isHandled(this.syms.interruptedExceptionType, this.types.memberType(type, resolveQualifiedMethod).getThrownTypes())) {
                Lint lint = env.info.lint;
                Lint.LintCategory lintCategory = Lint.LintCategory.TRY;
                if (lint.isEnabled(lintCategory)) {
                    this.log.warning(lintCategory, diagnosticPosition, "try.resource.throws.interrupted.exc", type);
                }
            }
        } catch (Throwable th2) {
            this.log.popDiagnosticHandler(discardDiagnosticHandler);
            throw th2;
        }
    }

    public Type checkBase(Type type, JCTree jCTree, Env<AttrContext> env, boolean z10, boolean z11, boolean z12) {
        if (jCTree.hasTag(JCTree.Tag.TYPEAPPLY)) {
            jCTree = ((JCTree.JCTypeApply) jCTree).clazz;
        }
        JCDiagnostic.DiagnosticPosition pos = jCTree.pos();
        if (type.tsym.isAnonymous()) {
            this.log.error(pos, "cant.inherit.from.anon", new Object[0]);
            return this.types.createErrorType(type);
        }
        if (type.isErroneous()) {
            return type;
        }
        if (!type.hasTag(TypeTag.TYPEVAR) || z10 || z11) {
            type = this.chk.checkClassType(pos, type, z12);
        } else if (type.getUpperBound() == null) {
            this.log.error(pos, "illegal.forward.ref", new Object[0]);
            return this.types.createErrorType(type);
        }
        if (z11 && (type.tsym.flags() & 512) == 0) {
            this.log.error(pos, "intf.expected.here", new Object[0]);
            return this.types.createErrorType(type);
        }
        if (z12 && z10 && (type.tsym.flags() & 512) != 0) {
            this.log.error(pos, "no.intf.expected.here", new Object[0]);
            return this.types.createErrorType(type);
        }
        if (z12 && (type.tsym.flags() & 16) != 0) {
            this.log.error(pos, "cant.inherit.from.final", type.tsym);
        }
        this.chk.checkNonCyclic(pos, type);
        return type;
    }

    public boolean checkFirstConstructorStat(JCTree.JCMethodInvocation jCMethodInvocation, Env<AttrContext> env) {
        JCTree.JCMethodDecl jCMethodDecl = env.enclMethod;
        if (jCMethodDecl != null && jCMethodDecl.name == this.names.init) {
            JCTree.JCBlock jCBlock = jCMethodDecl.body;
            if (jCBlock.stats.head.hasTag(JCTree.Tag.EXEC) && ((JCTree.JCExpressionStatement) jCBlock.stats.head).expr == jCMethodInvocation) {
                return true;
            }
        }
        this.log.error(jCMethodInvocation.pos(), "call.must.be.first.stmt.in.ctor", TreeInfo.name(jCMethodInvocation.meth));
        return false;
    }

    public boolean checkForSerial(Symbol.ClassSymbol classSymbol) {
        if ((classSymbol.flags() & 1024) == 0) {
            return true;
        }
        return classSymbol.members().anyMatch(anyNonAbstractOrDefaultMethod);
    }

    public Type checkId(JCTree jCTree, Type type, Symbol symbol, Env<AttrContext> env, ResultInfo resultInfo) {
        return (resultInfo.pt.hasTag(TypeTag.FORALL) || resultInfo.pt.hasTag(TypeTag.METHOD)) ? checkMethodId(jCTree, type, symbol, env, resultInfo) : checkIdInternal(jCTree, type, symbol, resultInfo.pt, env, resultInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type checkIdInternal(JCTree jCTree, Type type, Symbol symbol, Type type2, Env<AttrContext> env, ResultInfo resultInfo) {
        Type type3;
        Type asOuterSuper;
        if (type2.isErroneous()) {
            return this.types.createErrorType(type);
        }
        switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()]) {
            case 8:
                Type type4 = symbol.type;
                TypeTag typeTag = TypeTag.CLASS;
                if (type4.hasTag(typeTag)) {
                    this.chk.checkForBadAuxiliaryClassAccess(jCTree.pos(), env, (Symbol.ClassSymbol) symbol);
                    Type enclosingType = type4.getEnclosingType();
                    if (!type4.tsym.type.getTypeArguments().nonEmpty()) {
                        if (enclosingType.hasTag(typeTag) && type != enclosingType) {
                            if (type.hasTag(typeTag)) {
                                type = this.types.asEnclosingSuper(type, enclosingType.tsym);
                            }
                            if (type == null) {
                                type = this.types.erasure(enclosingType);
                            }
                            if (type != enclosingType) {
                                type3 = new Type.ClassType(type, List.nil(), type4.tsym, type4.getMetadata());
                                break;
                            }
                        }
                    } else {
                        type3 = this.types.erasure(type4);
                        break;
                    }
                }
                type3 = type4;
                break;
            case 9:
                Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol;
                if (Kinds.KindSelector.ASG.subset(pkind()) && varSymbol.owner.kind == Kinds.Kind.TYP && (varSymbol.flags() & 8) == 0 && ((type.hasTag(TypeTag.CLASS) || type.hasTag(TypeTag.TYPEVAR)) && (asOuterSuper = this.types.asOuterSuper(type, varSymbol.owner)) != null && asOuterSuper.isRaw())) {
                    Types types = this.types;
                    if (!types.isSameType(varSymbol.type, varSymbol.erasure(types))) {
                        this.chk.warnUnchecked(jCTree.pos(), "unchecked.assign.to.var", varSymbol, asOuterSuper);
                    }
                }
                if (symbol.owner.kind == Kinds.Kind.TYP) {
                    Name name = symbol.name;
                    Names names = this.names;
                    if (name != names._this && name != names._super) {
                        type3 = this.types.memberType(type, symbol);
                        if (varSymbol.getConstValue() != null && isStaticReference(jCTree)) {
                            type3 = type3.constType(varSymbol.getConstValue());
                        }
                        if (resultInfo.pkind == Kinds.KindSelector.VAL) {
                            type3 = capture(type3);
                            break;
                        }
                    }
                }
                type3 = symbol.type;
                if (varSymbol.getConstValue() != null) {
                    type3 = type3.constType(varSymbol.getConstValue());
                }
                if (resultInfo.pkind == Kinds.KindSelector.VAL) {
                }
                break;
            case 10:
                type3 = checkMethod(type, symbol, new ResultInfo(resultInfo.pkind, resultInfo.pt.getReturnType(), resultInfo.checkContext, resultInfo.checkMode), env, TreeInfo.args(env.tree), resultInfo.pt.getParameterTypes(), resultInfo.pt.getTypeArguments());
                break;
            case 11:
            case 12:
                type3 = symbol.type;
                break;
            default:
                throw new AssertionError((Object) ("unexpected kind: " + ((Object) symbol.kind) + " in tree " + ((Object) jCTree)));
        }
        if (symbol.name != this.names.init || jCTree.hasTag(JCTree.Tag.REFERENCE)) {
            this.chk.checkDeprecated(jCTree.pos(), env.info.scope.owner, symbol);
            this.chk.checkSunAPI(jCTree.pos(), symbol);
            this.chk.checkProfile(jCTree.pos(), symbol);
        }
        return check(jCTree, type3, symbol.kind.toSelector(), resultInfo);
    }

    public Type checkIntersection(JCTree jCTree, List<JCTree.JCExpression> list) {
        JCTree.JCExpression jCExpression;
        List<JCTree.JCExpression> list2;
        HashSet hashSet = new HashSet();
        if (list.nonEmpty()) {
            JCTree.JCExpression jCExpression2 = list.head;
            jCExpression2.type = checkBase(jCExpression2.type, jCExpression2, this.env, false, false, false);
            hashSet.add(this.types.erasure(list.head.type));
            if (list.head.type.isErroneous()) {
                return list.head.type;
            }
            if (!list.head.type.hasTag(TypeTag.TYPEVAR)) {
                Iterator<JCTree.JCExpression> it = list.tail.iterator();
                while (it.hasNext()) {
                    JCTree.JCExpression next = it.next();
                    Type checkBase = checkBase(next.type, next, this.env, false, true, false);
                    next.type = checkBase;
                    if (checkBase.isErroneous()) {
                        list = List.of(next);
                    } else if (next.type.hasTag(TypeTag.CLASS)) {
                        this.chk.checkNotRepeated(next.pos(), this.types.erasure(next.type), hashSet);
                    }
                }
            } else if (list.tail.nonEmpty()) {
                this.log.error(list.tail.head.pos(), "type.var.may.not.be.followed.by.other.bounds", new Object[0]);
                return list.head.type;
            }
        }
        if (list.length() == 0) {
            return this.syms.objectType;
        }
        if (list.length() == 1) {
            return list.head.type;
        }
        Type.IntersectionClassType makeIntersectionType = this.types.makeIntersectionType(TreeInfo.types(list));
        if (list.head.type.isInterface()) {
            jCExpression = null;
            list2 = list;
        } else {
            jCExpression = list.head;
            list2 = list.tail;
        }
        JCTree.JCClassDecl ClassDef = this.make.at(jCTree).ClassDef(this.make.Modifiers(Flags.AnnotationTypeElementMask), this.names.empty, List.nil(), jCExpression, list2, List.nil());
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) makeIntersectionType.tsym;
        Assert.check((classSymbol.flags() & 16777216) != 0);
        ClassDef.sym = classSymbol;
        Env<AttrContext> env = this.env;
        classSymbol.sourcefile = env.toplevel.sourcefile;
        classSymbol.flags_field |= TagBits.HasUnresolvedMemberTypes;
        this.typeEnvs.put(classSymbol, this.enter.classEnv(ClassDef, env));
        attribClass(classSymbol);
        return makeIntersectionType;
    }

    public void checkLambdaCompatible(JCTree.JCLambda jCLambda, Type type, Check.CheckContext checkContext) {
        Type asUndetVar = checkContext.inferenceContext().asUndetVar(type.getReturnType());
        if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.STATEMENT && jCLambda.canCompleteNormally && !asUndetVar.hasTag(TypeTag.VOID) && asUndetVar != Type.recoveryType) {
            JCDiagnostic.Factory factory = this.diags;
            checkContext.report(jCLambda, factory.fragment("incompatible.ret.type.in.lambda", factory.fragment("missing.ret.val", asUndetVar)));
        }
        if (this.types.isSameTypes(checkContext.inferenceContext().asUndetVars(type.getParameterTypes()), TreeInfo.types(jCLambda.params))) {
            return;
        }
        checkContext.report(jCLambda, this.diags.fragment("incompatible.arg.types.in.lambda", new Object[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0220 A[Catch: InferenceException -> 0x01ca, InapplicableMethodException -> 0x0241, TRY_LEAVE, TryCatch #3 {InferenceException -> 0x01ca, blocks: (B:56:0x0144, B:59:0x016b, B:62:0x016f, B:91:0x0177, B:93:0x01b8, B:95:0x01c0, B:98:0x01cf, B:65:0x01f3, B:67:0x01fd, B:69:0x020f, B:70:0x0214, B:75:0x0220, B:78:0x0239, B:89:0x0212), top: B:55:0x0144 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type checkMethod(Type type, Symbol symbol, ResultInfo resultInfo, Env<AttrContext> env, List<JCTree.JCExpression> list, List<Type> list2, List<Type> list3) {
        List<Type> list4;
        List list5;
        Type methodType;
        Symbol.MethodSymbol methodSymbol;
        Type asOuterSuper;
        if ((symbol.flags() & 8) == 0 && ((type.hasTag(TypeTag.CLASS) || type.hasTag(TypeTag.TYPEVAR)) && (asOuterSuper = this.types.asOuterSuper(type, symbol.owner)) != null && asOuterSuper.isRaw() && !this.types.isSameTypes(symbol.type.getParameterTypes(), symbol.erasure(this.types).getParameterTypes()))) {
            this.chk.warnUnchecked(env.tree.pos(), "unchecked.call.mbr.of.raw.type", symbol, asOuterSuper);
        }
        if (env.info.defaultSuperCallSite != null) {
            Iterator<Type> it = this.types.interfaces(env.enclClass.type).prepend(this.types.supertype(env.enclClass.type)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Type next = it.next();
                if (next.tsym.isSubClass(symbol.enclClass(), this.types) && !this.types.isSameType(next, env.info.defaultSuperCallSite)) {
                    List<Symbol.MethodSymbol> interfaceCandidates = this.types.interfaceCandidates(next, (Symbol.MethodSymbol) symbol);
                    if (interfaceCandidates.nonEmpty() && (methodSymbol = interfaceCandidates.head) != symbol && methodSymbol.overrides(symbol, methodSymbol.enclClass(), this.types, true)) {
                        this.log.error(env.tree.pos(), "illegal.default.super.call", env.info.defaultSuperCallSite, this.diags.fragment("overridden.default", symbol, next));
                        break;
                    }
                }
            }
            env.info.defaultSuperCallSite = null;
        }
        if (symbol.isStatic() && type.isInterface() && env.tree.hasTag(JCTree.Tag.APPLY)) {
            JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) env.tree;
            if (jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT) && !TreeInfo.isStaticSelector(((JCTree.JCFieldAccess) jCMethodInvocation.meth).selected, this.names)) {
                this.log.error(env.tree.pos(), "illegal.static.intf.meth.call", type);
            }
        }
        Warner warner = new Warner();
        try {
            try {
                Type checkMethod = this.rs.checkMethod(env, type, symbol, resultInfo, list2, list3, warner);
                DeferredAttr deferredAttr = this.deferredAttr;
                deferredAttr.getClass();
                DeferredAttr.DeferredTypeMap deferredTypeMap = new DeferredAttr.DeferredTypeMap(DeferredAttr.AttrMode.CHECK, symbol, env.info.pendingResolutionPhase);
                list4 = list2;
                try {
                    list5 = list4.map(deferredTypeMap);
                    try {
                        if (warner.hasNonSilentLint(Lint.LintCategory.UNCHECKED)) {
                            try {
                                this.chk.warnUnchecked(env.tree.pos(), "unchecked.meth.invocation.applied", Kinds.kindName(symbol), symbol.name, this.rs.methodArguments(symbol.type.getParameterTypes()), this.rs.methodArguments(list5.map(deferredTypeMap)), Kinds.kindName(symbol.location()), symbol.location());
                                if (resultInfo.pt == Infer.anyPoly) {
                                    if (checkMethod.hasTag(TypeTag.METHOD)) {
                                        if (!checkMethod.isPartial()) {
                                        }
                                    }
                                }
                                methodType = new Type.MethodType(checkMethod.getParameterTypes(), this.types.erasure(checkMethod.getReturnType()), this.types.erasure(checkMethod.getThrownTypes()), this.syms.methodClass);
                                TreeInfo.setPolyKind(env.tree, (symbol.type.hasTag(TypeTag.FORALL) || !symbol.type.getReturnType().containsAny(((Type.ForAll) symbol.type).tvars)) ? JCTree.JCPolyExpression.PolyKind.STANDALONE : JCTree.JCPolyExpression.PolyKind.POLY);
                                if (resultInfo.pt != Infer.anyPoly) {
                                    return methodType;
                                }
                                try {
                                    return this.chk.checkMethod(methodType, symbol, env, list, list5, env.info.lastResolveVarargs(), resultInfo.checkContext.inferenceContext());
                                } catch (Resolve.InapplicableMethodException e10) {
                                    e = e10;
                                    list5 = list5;
                                    JCDiagnostic diagnostic = e.getDiagnostic();
                                    Resolve resolve = this.rs;
                                    resolve.getClass();
                                    Resolve.InapplicableSymbolError inapplicableSymbolError = new Resolve.InapplicableSymbolError(resolve, null, symbol, diagnostic) {
                                        final JCDiagnostic val$diag;
                                        final Symbol val$sym;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(resolve, r3);
                                            this.val$sym = symbol;
                                            this.val$diag = diagnostic;
                                            resolve.getClass();
                                        }

                                        @Override
                                        public Pair<Symbol, JCDiagnostic> errCandidate() {
                                            return new Pair<>(this.val$sym, this.val$diag);
                                        }
                                    };
                                    Resolve resolve2 = this.rs;
                                    resolve2.getClass();
                                    this.log.report(inapplicableSymbolError.getDiagnostic(JCDiagnostic.DiagnosticType.ERROR, env.tree, symbol, type, symbol.name, list5.map(new Resolve.ResolveDeferredRecoveryMap(DeferredAttr.AttrMode.CHECK, symbol, env.info.pendingResolutionPhase)), list3));
                                    return this.types.createErrorType(type);
                                }
                            } catch (Resolve.InapplicableMethodException e11) {
                                e = e11;
                                JCDiagnostic diagnostic2 = e.getDiagnostic();
                                Resolve resolve3 = this.rs;
                                resolve3.getClass();
                                Resolve.InapplicableSymbolError inapplicableSymbolError2 = new Resolve.InapplicableSymbolError(resolve3, null, symbol, diagnostic2) {
                                    final JCDiagnostic val$diag;
                                    final Symbol val$sym;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(resolve3, r3);
                                        this.val$sym = symbol;
                                        this.val$diag = diagnostic2;
                                        resolve3.getClass();
                                    }

                                    @Override
                                    public Pair<Symbol, JCDiagnostic> errCandidate() {
                                        return new Pair<>(this.val$sym, this.val$diag);
                                    }
                                };
                                Resolve resolve22 = this.rs;
                                resolve22.getClass();
                                this.log.report(inapplicableSymbolError2.getDiagnostic(JCDiagnostic.DiagnosticType.ERROR, env.tree, symbol, type, symbol.name, list5.map(new Resolve.ResolveDeferredRecoveryMap(DeferredAttr.AttrMode.CHECK, symbol, env.info.pendingResolutionPhase)), list3));
                                return this.types.createErrorType(type);
                            }
                        }
                        methodType = checkMethod;
                        TreeInfo.setPolyKind(env.tree, (symbol.type.hasTag(TypeTag.FORALL) || !symbol.type.getReturnType().containsAny(((Type.ForAll) symbol.type).tvars)) ? JCTree.JCPolyExpression.PolyKind.STANDALONE : JCTree.JCPolyExpression.PolyKind.POLY);
                        if (resultInfo.pt != Infer.anyPoly) {
                        }
                    } catch (Resolve.InapplicableMethodException e12) {
                        e = e12;
                    }
                } catch (Resolve.InapplicableMethodException e13) {
                    e = e13;
                    list5 = list4;
                    JCDiagnostic diagnostic22 = e.getDiagnostic();
                    Resolve resolve32 = this.rs;
                    resolve32.getClass();
                    Resolve.InapplicableSymbolError inapplicableSymbolError22 = new Resolve.InapplicableSymbolError(resolve32, null, symbol, diagnostic22) {
                        final JCDiagnostic val$diag;
                        final Symbol val$sym;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(resolve32, r3);
                            this.val$sym = symbol;
                            this.val$diag = diagnostic22;
                            resolve32.getClass();
                        }

                        @Override
                        public Pair<Symbol, JCDiagnostic> errCandidate() {
                            return new Pair<>(this.val$sym, this.val$diag);
                        }
                    };
                    Resolve resolve222 = this.rs;
                    resolve222.getClass();
                    this.log.report(inapplicableSymbolError22.getDiagnostic(JCDiagnostic.DiagnosticType.ERROR, env.tree, symbol, type, symbol.name, list5.map(new Resolve.ResolveDeferredRecoveryMap(DeferredAttr.AttrMode.CHECK, symbol, env.info.pendingResolutionPhase)), list3));
                    return this.types.createErrorType(type);
                }
            } catch (Resolve.InapplicableMethodException e14) {
                e = e14;
                list4 = list2;
            }
        } catch (Infer.InferenceException e15) {
            resultInfo.checkContext.report(env.tree.pos(), e15.getDiagnostic());
            return this.types.createErrorType(type);
        }
    }

    public Type checkMethodId(JCTree jCTree, Type type, Symbol symbol, Env<AttrContext> env, ResultInfo resultInfo) {
        return (symbol.baseSymbol().flags() & 70368744177664L) != 0 ? checkSigPolyMethodId(jCTree, type, symbol, env, resultInfo) : checkMethodIdInternal(jCTree, type, symbol, env, resultInfo);
    }

    public Type checkMethodIdInternal(JCTree jCTree, Type type, Symbol symbol, Env<AttrContext> env, ResultInfo resultInfo) {
        if (!resultInfo.pkind.contains(Kinds.KindSelector.POLY)) {
            return checkIdInternal(jCTree, type, symbol, resultInfo.pt, env, resultInfo);
        }
        Type type2 = resultInfo.pt;
        DeferredAttr deferredAttr = this.deferredAttr;
        deferredAttr.getClass();
        Type checkIdInternal = checkIdInternal(jCTree, type, symbol, type2.map(new DeferredAttr.RecoveryDeferredTypeMap(DeferredAttr.AttrMode.SPECULATIVE, symbol, env.info.pendingResolutionPhase)), env, resultInfo);
        Type type3 = resultInfo.pt;
        DeferredAttr deferredAttr2 = this.deferredAttr;
        deferredAttr2.getClass();
        type3.map(new DeferredAttr.RecoveryDeferredTypeMap(DeferredAttr.AttrMode.CHECK, symbol, env.info.pendingResolutionPhase));
        return checkIdInternal;
    }

    public void checkReferenceCompatible(final JCTree.JCMemberReference jCMemberReference, Type type, final Type type2, Check.CheckContext checkContext, boolean z10) {
        InferenceContext inferenceContext = checkContext.inferenceContext();
        Type asUndetVar = inferenceContext.asUndetVar(type.getReturnType());
        Type returnType = (AnonymousClass10.$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[jCMemberReference.getMode().ordinal()] == 1 && !jCMemberReference.expr.type.isRaw()) ? jCMemberReference.expr.type : type2.getReturnType();
        TypeTag typeTag = TypeTag.VOID;
        Type type3 = null;
        Type type4 = asUndetVar.hasTag(typeTag) ? null : returnType;
        if (asUndetVar.hasTag(typeTag) || returnType.hasTag(typeTag) || (!returnType.isErroneous() && !new FunctionalReturnContext(checkContext).compatible(returnType, asUndetVar, checkContext.checkWarner(jCMemberReference, returnType, asUndetVar)))) {
            type3 = type4;
        }
        if (type3 != null) {
            JCDiagnostic.Factory factory = this.diags;
            checkContext.report(jCMemberReference, factory.fragment("incompatible.ret.type.in.mref", factory.fragment("inconvertible.types", returnType, type.getReturnType())));
        } else if (inferenceContext.free(type2)) {
            inferenceContext.addFreeTypeListener(List.of(type2), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    Attr.lambda$checkReferenceCompatible$6(JCTree.JCMemberReference.this, type2, inferenceContext2);
                }
            });
        } else {
            jCMemberReference.referentType = type2;
        }
        if (z10) {
            return;
        }
        List<Type> asUndetVars = inferenceContext.asUndetVars(type.getThrownTypes());
        if (this.chk.unhandled(type2.getThrownTypes(), asUndetVars).nonEmpty()) {
            this.log.error(jCMemberReference, "incompatible.thrown.types.in.mref", type2.getThrownTypes());
        }
        asUndetVars.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$checkReferenceCompatible$7;
                lambda$checkReferenceCompatible$7 = Attr.lambda$checkReferenceCompatible$7((Type) obj);
                return lambda$checkReferenceCompatible$7;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Attr.lambda$checkReferenceCompatible$8((Type) obj);
            }
        });
    }

    public Type checkSigPolyMethodId(JCTree jCTree, Type type, Symbol symbol, Env<AttrContext> env, ResultInfo resultInfo) {
        checkMethodIdInternal(jCTree, type, symbol.baseSymbol(), env, resultInfo);
        env.info.pendingResolutionPhase = Resolve.MethodResolutionPhase.BASIC;
        return symbol.type;
    }

    public Type coerce(Type type, Type type2) {
        return this.cfolder.coerce(type, type2);
    }

    public Type condType(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Type type2) {
        if (this.types.isSameType(type, type2)) {
            return type.baseType();
        }
        Type unboxedType = type.isPrimitive() ? type : this.types.unboxedType(type);
        Type unboxedType2 = type2.isPrimitive() ? type2 : this.types.unboxedType(type2);
        if (unboxedType.isPrimitive() && unboxedType2.isPrimitive()) {
            TypeTag tag = unboxedType.getTag();
            TypeTag typeTag = TypeTag.INT;
            if (tag.isStrictSubRangeOf(typeTag) && unboxedType2.hasTag(typeTag) && this.types.isAssignable(unboxedType2, unboxedType)) {
                return unboxedType.baseType();
            }
            if (unboxedType2.getTag().isStrictSubRangeOf(typeTag) && unboxedType.hasTag(typeTag) && this.types.isAssignable(unboxedType, unboxedType2)) {
                return unboxedType2.baseType();
            }
            for (TypeTag typeTag2 : primitiveTags) {
                Type type3 = this.syms.typeOfTag[typeTag2.ordinal()];
                if (this.types.isSubtype(unboxedType, type3) && this.types.isSubtype(unboxedType2, type3)) {
                    return type3;
                }
            }
        }
        if (type.isPrimitive()) {
            type = this.types.boxedClass(type).type;
        }
        if (type2.isPrimitive()) {
            type2 = this.types.boxedClass(type2).type;
        }
        if (this.types.isSubtype(type, type2)) {
            return type2.baseType();
        }
        if (this.types.isSubtype(type2, type)) {
            return type.baseType();
        }
        TypeTag typeTag3 = TypeTag.VOID;
        if (!type.hasTag(typeTag3) && !type2.hasTag(typeTag3)) {
            return this.types.lub(type.baseType(), type2.baseType());
        }
        this.log.error(diagnosticPosition, "neither.conditional.subtype", type, type2);
        return type.baseType();
    }

    public Check.CheckContext conditionalContext(Check.CheckContext checkContext) {
        return new Check.NestedCheckContext(checkContext) {
            @Override
            public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                this.enclosingContext.report(diagnosticPosition, Attr.this.diags.fragment("incompatible.type.in.conditional", jCDiagnostic));
            }
        };
    }

    public Env<AttrContext> copyEnv(Env<AttrContext> env) {
        JCTree jCTree = env.tree;
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCTree, attrContext.dup(copyScope(attrContext.scope)));
        Env<AttrContext> env2 = dup.outer;
        if (env2 != null) {
            dup.outer = copyEnv(env2);
        }
        return dup;
    }

    public Scope.WriteableScope copyScope(Scope.WriteableScope writeableScope) {
        Scope.WriteableScope create = Scope.WriteableScope.create(writeableScope.owner);
        List nil = List.nil();
        Iterator<Symbol> it = writeableScope.getSymbols().iterator();
        while (it.hasNext()) {
            nil = nil.prepend(it.next());
        }
        Iterator it2 = nil.iterator();
        while (it2.hasNext()) {
            create.enter((Symbol) it2.next());
        }
        return create;
    }

    public Check.CheckContext diamondContext(final JCTree.JCNewClass jCNewClass, final Symbol.TypeSymbol typeSymbol, Check.CheckContext checkContext) {
        return new Check.NestedCheckContext(checkContext) {
            @Override
            public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                Check.CheckContext checkContext2 = this.enclosingContext;
                JCTree.JCExpression jCExpression = jCNewClass.clazz;
                JCDiagnostic.Factory factory = Attr.this.diags;
                checkContext2.report(jCExpression, factory.fragment("cant.apply.diamond.1", factory.fragment("diamond", typeSymbol), jCDiagnostic));
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Env<AttrContext> enclosingInitEnv(Env<AttrContext> env) {
        Env<AttrContext> env2;
        while (true) {
            switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[env2.tree.getTag().ordinal()]) {
                case 14:
                case 15:
                case 18:
                    return null;
                case 16:
                    if (((JCTree.JCVariableDecl) env2.tree).sym.owner.kind != Kinds.Kind.TYP) {
                        break;
                    } else {
                        return env2;
                    }
                case 17:
                    if (!env2.next.tree.hasTag(JCTree.Tag.CLASSDEF)) {
                        break;
                    } else {
                        return env2;
                    }
            }
            Assert.checkNonNull(env2.next);
            env2 = env2.next;
        }
    }

    public TargetInfo getTargetInfo(JCTree.JCPolyExpression jCPolyExpression, ResultInfo resultInfo, List<Type> list) {
        Type fallbackDescriptorType;
        Type type = resultInfo.pt;
        Type type2 = Type.recoveryType;
        if (type != type2) {
            Type visit = this.targetChecker.visit(type, jCPolyExpression);
            if (list != null) {
                visit = this.infer.instantiateFunctionalInterface(jCPolyExpression, visit, list, resultInfo.checkContext);
            }
            type2 = this.types.removeWildcards(visit);
            fallbackDescriptorType = this.types.findDescriptorType(type2);
        } else {
            fallbackDescriptorType = fallbackDescriptorType(jCPolyExpression);
        }
        if (jCPolyExpression.hasTag(JCTree.Tag.LAMBDA) && fallbackDescriptorType.hasTag(TypeTag.FORALL)) {
            resultInfo.checkContext.report(jCPolyExpression, this.diags.fragment("invalid.generic.lambda.target", fallbackDescriptorType, Kinds.kindName(type2.tsym), type2.tsym));
            type2 = this.types.createErrorType(pt());
        }
        return new TargetInfo(type2, fallbackDescriptorType);
    }

    public boolean isAssignableAsBlankFinal(Symbol.VarSymbol varSymbol, Env<AttrContext> env) {
        Symbol symbol = env.info.scope.owner;
        if (varSymbol.owner == symbol) {
            return true;
        }
        if ((symbol.name == this.names.init || symbol.kind == Kinds.Kind.VAR || (symbol.flags() & TagBits.HasNullTypeAnnotation) != 0) && varSymbol.owner == symbol.owner) {
            if (((varSymbol.flags() & 8) != 0) == Resolve.isStatic(env)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSerializable(Type type) {
        try {
            this.syms.serializableType.complete();
            return this.types.isSubtype(type, this.syms.serializableType);
        } catch (Symbol.CompletionFailure unused) {
            return false;
        }
    }

    public boolean isStaticReference(JCTree jCTree) {
        if (!jCTree.hasTag(JCTree.Tag.SELECT)) {
            return true;
        }
        Symbol symbol = TreeInfo.symbol(((JCTree.JCFieldAccess) jCTree).selected);
        return symbol != null && symbol.kind == Kinds.Kind.TYP;
    }

    public ResultInfo lambdaBodyResult(JCTree.JCLambda jCLambda, Type type, ResultInfo resultInfo) {
        return type.getReturnType() == Type.recoveryType ? this.recoveryInfo : new ResultInfo(this, Kinds.KindSelector.VAL, type.getReturnType(), jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION ? new ExpressionLambdaReturnContext((JCTree.JCExpression) jCLambda.getBody(), resultInfo.checkContext) : new FunctionalReturnContext(resultInfo.checkContext));
    }

    public Env<AttrContext> lambdaEnv(JCTree.JCLambda jCLambda, Env<AttrContext> env) {
        AttrContext attrContext = env.info;
        Symbol symbol = attrContext.scope.owner;
        if (symbol.kind != Kinds.Kind.VAR || symbol.owner.kind != Kinds.Kind.TYP) {
            return env.dup(jCLambda, attrContext.dup(attrContext.scope.dup()));
        }
        Symbol.ClassSymbol enclClass = symbol.enclClass();
        Symbol symbol2 = env.info.scope.owner;
        if ((symbol.flags() & 8) == 0) {
            Iterator<Symbol> it = enclClass.members_field.getSymbolsByName(this.names.init).iterator();
            if (it.hasNext()) {
                symbol2 = it.next();
            }
        } else {
            Symbol.MethodSymbol methodSymbol = this.clinits.get(enclClass);
            if (methodSymbol == null) {
                methodSymbol = new Symbol.MethodSymbol(4106L, this.names.clinit, new Type.MethodType(List.nil(), this.syms.voidType, List.nil(), this.syms.methodClass), enclClass);
                methodSymbol.params = List.nil();
                this.clinits.put(enclClass, methodSymbol);
            }
            symbol2 = methodSymbol;
        }
        AttrContext attrContext2 = env.info;
        return env.dup(jCLambda, attrContext2.dup(attrContext2.scope.dupUnshared(symbol2)));
    }

    public Type litType(TypeTag typeTag) {
        return typeTag == TypeTag.CLASS ? this.syms.stringType : this.syms.typeOfTag[typeTag.ordinal()];
    }

    public JCTree.JCExpression makeNullCheck(JCTree.JCExpression jCExpression) {
        if (jCExpression.getTag() == JCTree.Tag.NEWCLASS) {
            return jCExpression;
        }
        Name name = TreeInfo.name(jCExpression);
        Names names = this.names;
        if (name == names._this || name == names._super) {
            return jCExpression;
        }
        JCTree.Tag tag = JCTree.Tag.NULLCHK;
        JCTree.JCUnary Unary = this.make.at(jCExpression.pos).Unary(tag, jCExpression);
        Unary.operator = this.operators.resolveUnary(jCExpression, tag, jCExpression.type);
        Unary.type = jCExpression.type;
        return Unary;
    }

    public ResultInfo memberReferenceQualifierResult(JCTree.JCMemberReference jCMemberReference) {
        return new ResultInfo(this, jCMemberReference.getMode() == MemberReferenceTree.ReferenceMode.INVOKE ? Kinds.KindSelector.VAL_TYP : Kinds.KindSelector.TYP, Type.noType);
    }

    public Type newMethodTemplate(Type type, List<Type> list, List<Type> list2) {
        Type.MethodType methodType = new Type.MethodType(list, type, List.nil(), this.syms.methodClass);
        return list2 == null ? methodType : new Type.ForAll(list2, methodType);
    }

    public Kinds.KindSelector pkind() {
        return this.resultInfo.pkind;
    }

    public void postAttr(JCTree jCTree) {
        new PostAttrAnalyzer().scan(jCTree);
    }

    public void preFlow(JCTree.JCLambda jCLambda) {
        new PostAttrAnalyzer() {
            @Override
            public void scan(JCTree jCTree) {
                if (jCTree != null) {
                    Type type = jCTree.type;
                    if (type == null || type != Type.stuckType) {
                        super.scan(jCTree);
                    }
                }
            }
        }.scan(jCLambda);
    }

    public boolean primitiveOrBoxed(Type type) {
        return !type.hasTag(TypeTag.TYPEVAR) && this.types.unboxedTypeOrType(type).isPrimitive();
    }

    public Type pt() {
        return this.resultInfo.pt;
    }

    public Symbol.MethodSymbol removeClinit(Symbol.ClassSymbol classSymbol) {
        return this.clinits.remove(classSymbol);
    }

    public void setPackageSymbols(JCTree.JCExpression jCExpression, Symbol symbol) {
        new TreeScanner(symbol) {
            Symbol packge;
            final Symbol val$pkg;

            {
                this.val$pkg = symbol;
                this.packge = symbol;
            }

            @Override
            public void visitIdent(JCTree.JCIdent jCIdent) {
                jCIdent.sym = this.packge;
            }

            @Override
            public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
                Symbol symbol2 = this.packge;
                jCFieldAccess.sym = symbol2;
                this.packge = symbol2.owner;
                super.visitSelect(jCFieldAccess);
            }
        }.scan(jCExpression);
    }

    public Symbol thisSym(JCDiagnostic.DiagnosticPosition diagnosticPosition, Env<AttrContext> env) {
        return this.rs.resolveSelf(diagnosticPosition, env, env.enclClass.sym, this.names._this);
    }

    public void validateTypeAnnotations(JCTree jCTree, boolean z10) {
        jCTree.accept(new TypeAnnotationsValidator(z10));
    }

    @Override
    public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
        attribAnnotationTypes(jCAnnotatedType.annotations, this.env);
        Type annotatedType = attribType(jCAnnotatedType.underlyingType, this.env).annotatedType(TypeMetadata.Annotations.TO_BE_SET);
        if (!this.env.info.isNewClass) {
            this.annotate.annotateTypeSecondStage(jCAnnotatedType, jCAnnotatedType.annotations, annotatedType);
        }
        jCAnnotatedType.type = annotatedType;
        this.result = annotatedType;
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        Assert.error("should be handled in annotate");
    }

    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        Env<AttrContext> env = this.env;
        Env<AttrContext> dup = env.dup(jCMethodInvocation, env.info.dup());
        Name name = TreeInfo.name(jCMethodInvocation.meth);
        Names names = this.names;
        boolean z10 = name == names._this || name == names._super;
        ListBuffer<Type> listBuffer = new ListBuffer<>();
        if (z10) {
            if (checkFirstConstructorStat(jCMethodInvocation, this.env)) {
                dup.info.isSelfCall = true;
                Kinds.KindSelector attribArgs = attribArgs(Kinds.KindSelector.MTH, jCMethodInvocation.args, dup, listBuffer);
                List<Type> list = listBuffer.toList();
                List<Type> attribTypes = attribTypes(jCMethodInvocation.typeargs, dup);
                Type type = this.env.enclClass.sym.type;
                if (name == this.names._super) {
                    if (type == this.syms.objectType) {
                        this.log.error(jCMethodInvocation.meth.pos(), "no.superclass", type);
                        type = this.types.createErrorType(this.syms.objectType);
                    } else {
                        type = this.types.supertype(type);
                    }
                }
                Type type2 = type;
                if (type2.hasTag(TypeTag.CLASS)) {
                    Type enclosingType = type2.getEnclosingType();
                    while (enclosingType != null && enclosingType.hasTag(TypeTag.TYPEVAR)) {
                        enclosingType = enclosingType.getUpperBound();
                    }
                    if (enclosingType.hasTag(TypeTag.CLASS)) {
                        if (jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT)) {
                            JCTree.JCExpression jCExpression = ((JCTree.JCFieldAccess) jCMethodInvocation.meth).selected;
                            this.chk.checkRefType(jCExpression.pos(), attribExpr(jCExpression, dup, enclosingType));
                        } else if (name == this.names._super) {
                            this.rs.resolveImplicitThis(jCMethodInvocation.meth.pos(), dup, type2, true);
                        }
                    } else if (jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT)) {
                        this.log.error(jCMethodInvocation.meth.pos(), "illegal.qual.not.icls", type2.tsym);
                    }
                    Symbol.TypeSymbol typeSymbol = type2.tsym;
                    Symtab symtab = this.syms;
                    if (typeSymbol == symtab.enumSym) {
                        list = list.prepend(symtab.intType).prepend(this.syms.stringType);
                    }
                    List<Type> list2 = list;
                    AttrContext attrContext = dup.info;
                    boolean z11 = attrContext.selectSuper;
                    attrContext.selectSuper = true;
                    attrContext.pendingResolutionPhase = null;
                    Symbol resolveConstructor = this.rs.resolveConstructor(jCMethodInvocation.meth.pos(), dup, type2, list2, attribTypes);
                    dup.info.selectSuper = z11;
                    TreeInfo.setSymbol(jCMethodInvocation.meth, resolveConstructor);
                    checkId(jCMethodInvocation.meth, type2, resolveConstructor, dup, new ResultInfo(this, attribArgs, newMethodTemplate(this.resultInfo.pt, list2, attribTypes)));
                }
            }
            Type.JCVoidType jCVoidType = this.syms.voidType;
            jCMethodInvocation.type = jCVoidType;
            this.result = jCVoidType;
        } else {
            Kinds.KindSelector kindSelector = Kinds.KindSelector.VAL;
            Kinds.KindSelector attribArgs2 = attribArgs(kindSelector, jCMethodInvocation.args, dup, listBuffer);
            List<Type> list3 = listBuffer.toList();
            List<Type> attribAnyTypes = attribAnyTypes(jCMethodInvocation.typeargs, dup);
            Type newMethodTemplate = newMethodTemplate(this.resultInfo.pt, list3, attribAnyTypes);
            dup.info.pendingResolutionPhase = null;
            Type attribTree = attribTree(jCMethodInvocation.meth, dup, new ResultInfo(this, attribArgs2, newMethodTemplate, this.resultInfo.checkContext));
            Type returnType = attribTree.getReturnType();
            if (returnType.hasTag(TypeTag.WILDCARD)) {
                throw new AssertionError(attribTree);
            }
            Type adjustMethodReturnType = adjustMethodReturnType(TreeInfo.symbol(jCMethodInvocation.meth), jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT) ? ((JCTree.JCFieldAccess) jCMethodInvocation.meth).selected.type : this.env.enclClass.sym.type, name, list3, returnType);
            this.chk.checkRefTypes(jCMethodInvocation.typeargs, attribAnyTypes);
            this.result = check(jCMethodInvocation, this.resultInfo.checkContext.inferenceContext().cachedCapture(jCMethodInvocation, adjustMethodReturnType, true), kindSelector, this.resultInfo);
        }
        this.chk.validate(jCMethodInvocation.typeargs, dup);
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        attribExpr(jCAssert.cond, this.env, this.syms.booleanType);
        JCTree.JCExpression jCExpression = jCAssert.detail;
        if (jCExpression != null) {
            this.chk.checkNonVoid(jCExpression.pos(), attribExpr(jCAssert.detail, this.env));
        }
        this.result = null;
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        Type attribTree = attribTree(jCAssign.lhs, this.env.dup(jCAssign), this.varAssignmentInfo);
        Type capture = capture(attribTree);
        attribExpr(jCAssign.rhs, this.env, attribTree);
        this.result = check(jCAssign, capture, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        Type attribTree = attribTree(jCAssignOp.lhs, this.env, this.varAssignmentInfo);
        Type attribExpr = attribExpr(jCAssignOp.rhs, this.env);
        Symbol.OperatorSymbol resolveBinary = this.operators.resolveBinary(jCAssignOp, jCAssignOp.getTag().noAssignOp(), attribTree, attribExpr);
        jCAssignOp.operator = resolveBinary;
        if (resolveBinary != this.operators.noOpSymbol && !attribTree.isErroneous() && !attribExpr.isErroneous()) {
            this.chk.checkDivZero(jCAssignOp.rhs.pos(), resolveBinary, attribExpr);
            this.chk.checkCastable(jCAssignOp.rhs.pos(), resolveBinary.type.getReturnType(), attribTree);
        }
        this.result = check(jCAssignOp, attribTree, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        Type fold2;
        Type checkNonVoid = this.chk.checkNonVoid(jCBinary.lhs.pos(), attribExpr(jCBinary.lhs, this.env));
        Type checkNonVoid2 = this.chk.checkNonVoid(jCBinary.rhs.pos(), attribExpr(jCBinary.rhs, this.env));
        Symbol.OperatorSymbol resolveBinary = this.operators.resolveBinary(jCBinary, jCBinary.getTag(), checkNonVoid, checkNonVoid2);
        jCBinary.operator = resolveBinary;
        Type createErrorType = this.types.createErrorType(jCBinary.type);
        if (resolveBinary != this.operators.noOpSymbol && !checkNonVoid.isErroneous() && !checkNonVoid2.isErroneous()) {
            createErrorType = resolveBinary.type.getReturnType();
            int i10 = resolveBinary.opcode;
            if (checkNonVoid.constValue() != null && checkNonVoid2.constValue() != null && (fold2 = this.cfolder.fold2(i10, checkNonVoid, checkNonVoid2)) != null) {
                createErrorType = this.cfolder.coerce(fold2, createErrorType);
            }
            if ((i10 == 165 || i10 == 166) && !this.types.isCastable(checkNonVoid, checkNonVoid2, new Warner(jCBinary.pos()))) {
                this.log.error(jCBinary.pos(), "incomparable.types", checkNonVoid, checkNonVoid2);
            }
            this.chk.checkDivZero(jCBinary.rhs.pos(), resolveBinary, checkNonVoid2);
        }
        this.result = check(jCBinary, createErrorType, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        Env<AttrContext> env = this.env;
        AttrContext attrContext = env.info;
        if (attrContext.scope.owner.kind == Kinds.Kind.TYP) {
            Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(jCBlock.flags | TagBits.HasNullTypeAnnotation | (this.env.info.scope.owner.flags() & 2048), this.names.empty, null, this.env.info.scope.owner);
            Env<AttrContext> env2 = this.env;
            AttrContext attrContext2 = env2.info;
            Env<AttrContext> dup = env2.dup(jCBlock, attrContext2.dup(attrContext2.scope.dupUnshared(methodSymbol)));
            if ((jCBlock.flags & 8) != 0) {
                dup.info.staticLevel++;
            }
            this.annotate.queueScanTreeAndTypeAnnotate(jCBlock, dup, dup.info.scope.owner, null);
            this.annotate.flush();
            attribStats(jCBlock.stats, dup);
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) this.env.info.scope.owner;
            List<Attribute.TypeCompound> rawTypeAttributes = dup.info.scope.owner.getRawTypeAttributes();
            if ((jCBlock.flags & 8) != 0) {
                classSymbol.appendClassInitTypeAttributes(rawTypeAttributes);
            } else {
                classSymbol.appendInitTypeAttributes(rawTypeAttributes);
            }
        } else {
            Env<AttrContext> dup2 = env.dup(jCBlock, attrContext.dup(attrContext.scope.dup()));
            try {
                attribStats(jCBlock.stats, dup2);
            } finally {
                dup2.info.scope.leave();
            }
        }
        this.result = null;
    }

    @Override
    public void visitBreak(JCTree.JCBreak jCBreak) {
        jCBreak.target = findJumpTarget(jCBreak.pos(), jCBreak.getTag(), jCBreak.label, this.env);
        this.result = null;
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        Optional ofNullable = Optional.ofNullable(this.env.info.isSpeculative ? this.argumentAttr.withLocalCacheContext() : null);
        try {
            if (this.env.info.scope.owner.kind.matches(Kinds.KindSelector.VAL_MTH)) {
                this.enter.classEnter(jCClassDecl, this.env);
            } else if (this.env.tree.hasTag(JCTree.Tag.NEWCLASS) && TreeInfo.isInAnnotation(this.env, jCClassDecl)) {
                this.enter.classEnter(jCClassDecl, this.env);
            }
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            if (classSymbol == null) {
                this.result = null;
            } else {
                classSymbol.complete();
                Env<AttrContext> env = this.env;
                if (env.info.isSelfCall && env.tree.hasTag(JCTree.Tag.NEWCLASS)) {
                    classSymbol.flags_field |= TagBits.PassedBoundCheck;
                }
                attribClass(jCClassDecl.pos(), classSymbol);
                Type type = classSymbol.type;
                jCClassDecl.type = type;
                this.result = type;
            }
            ofNullable.ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((ArgumentAttr.LocalCacheContext) obj).leave();
                }
            });
        } catch (Throwable th2) {
            ofNullable.ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((ArgumentAttr.LocalCacheContext) obj).leave();
                }
            });
            throw th2;
        }
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        ResultInfo dup;
        Type attribExpr = attribExpr(jCConditional.cond, this.env, this.syms.booleanType);
        JCTree.JCPolyExpression.PolyKind polyKind = (!this.allowPoly || !(!pt().hasTag(TypeTag.NONE) || pt() == Type.recoveryType || pt() == Infer.anyPoly) || isBooleanOrNumeric(this.env, jCConditional)) ? JCTree.JCPolyExpression.PolyKind.STANDALONE : JCTree.JCPolyExpression.PolyKind.POLY;
        jCConditional.polyKind = polyKind;
        if (polyKind == JCTree.JCPolyExpression.PolyKind.POLY && this.resultInfo.pt.hasTag(TypeTag.VOID)) {
            this.resultInfo.checkContext.report(jCConditional, this.diags.fragment("conditional.target.cant.be.void", new Object[0]));
            Type createErrorType = this.types.createErrorType(this.resultInfo.pt);
            jCConditional.type = createErrorType;
            this.result = createErrorType;
            return;
        }
        JCTree.JCPolyExpression.PolyKind polyKind2 = jCConditional.polyKind;
        JCTree.JCPolyExpression.PolyKind polyKind3 = JCTree.JCPolyExpression.PolyKind.STANDALONE;
        if (polyKind2 == polyKind3) {
            dup = this.unknownExprInfo;
        } else {
            ResultInfo resultInfo = this.resultInfo;
            dup = resultInfo.dup(conditionalContext(resultInfo.checkContext));
        }
        Type attribTree = attribTree(jCConditional.truepart, this.env, dup);
        Type attribTree2 = attribTree(jCConditional.falsepart, this.env, dup);
        Type condType = jCConditional.polyKind == polyKind3 ? condType(jCConditional, attribTree, attribTree2) : pt();
        if (attribExpr.constValue() != null && attribTree.constValue() != null && attribTree2.constValue() != null && !condType.hasTag(TypeTag.NONE)) {
            ConstFold constFold = this.cfolder;
            if (!attribExpr.isTrue()) {
                attribTree = attribTree2;
            }
            condType = constFold.coerce(attribTree, condType);
        }
        this.result = check(jCConditional, condType, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitContinue(JCTree.JCContinue jCContinue) {
        jCContinue.target = findJumpTarget(jCContinue.pos(), jCContinue.getTag(), jCContinue.label, this.env);
        this.result = null;
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        attribStat(jCDoWhileLoop.body, this.env.dup(jCDoWhileLoop));
        attribExpr(jCDoWhileLoop.cond, this.env, this.syms.booleanType);
        this.result = null;
    }

    @Override
    public void visitErroneous(JCTree.JCErroneous jCErroneous) {
        List<? extends JCTree> list = jCErroneous.errs;
        if (list != null) {
            Iterator<? extends JCTree> it = list.iterator();
            while (it.hasNext()) {
                attribTree(it.next(), this.env, new ResultInfo(this, Kinds.KindSelector.ERR, pt()));
            }
        }
        Type type = this.syms.errType;
        jCErroneous.type = type;
        this.result = type;
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        attribExpr(jCExpressionStatement.expr, this.env.dup(jCExpressionStatement));
        this.result = null;
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        Env<AttrContext> env = this.env;
        JCTree jCTree = env.tree;
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCTree, attrContext.dup(attrContext.scope.dup()));
        try {
            attribStats(jCForLoop.init, dup);
            JCTree.JCExpression jCExpression = jCForLoop.cond;
            if (jCExpression != null) {
                attribExpr(jCExpression, dup, this.syms.booleanType);
            }
            dup.tree = jCForLoop;
            attribStats(jCForLoop.step, dup);
            attribStat(jCForLoop.body, dup);
            this.result = null;
            dup.info.scope.leave();
        } catch (Throwable th2) {
            dup.info.scope.leave();
            throw th2;
        }
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        Env<AttrContext> env = this.env;
        JCTree jCTree = env.tree;
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCTree, attrContext.dup(attrContext.scope.dup()));
        try {
            Type cvarUpperBound = this.types.cvarUpperBound(attribExpr(jCEnhancedForLoop.expr, dup));
            attribStat(jCEnhancedForLoop.var, dup);
            this.chk.checkNonVoid(jCEnhancedForLoop.pos(), cvarUpperBound);
            Type elemtype = this.types.elemtype(cvarUpperBound);
            if (elemtype == null) {
                Type asSuper = this.types.asSuper(cvarUpperBound, this.syms.iterableType.tsym);
                if (asSuper == null) {
                    this.log.error(jCEnhancedForLoop.expr.pos(), "foreach.not.applicable.to.type", cvarUpperBound, this.diags.fragment("type.req.array.or.iterable", new Object[0]));
                    elemtype = this.types.createErrorType(cvarUpperBound);
                } else {
                    List<Type> allparams = asSuper.allparams();
                    elemtype = allparams.isEmpty() ? this.syms.objectType : this.types.wildUpperBound(allparams.head);
                }
            }
            this.chk.checkType(jCEnhancedForLoop.expr.pos(), elemtype, jCEnhancedForLoop.var.sym.type);
            dup.tree = jCEnhancedForLoop;
            attribStat(jCEnhancedForLoop.body, dup);
            this.result = null;
            dup.info.scope.leave();
        } catch (Throwable th2) {
            dup.info.scope.leave();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        Symbol resolveMethod;
        Symbol symbol;
        if (pt().hasTag(TypeTag.METHOD) || pt().hasTag(TypeTag.FORALL)) {
            this.env.info.pendingResolutionPhase = null;
            resolveMethod = this.rs.resolveMethod(jCIdent.pos(), this.env, jCIdent.name, pt().getParameterTypes(), pt().getTypeArguments());
        } else {
            resolveMethod = jCIdent.sym;
            if (resolveMethod == null || resolveMethod.kind == Kinds.Kind.VAR) {
                resolveMethod = this.rs.resolveIdent(jCIdent.pos(), this.env, jCIdent.name, pkind());
            }
        }
        Symbol symbol2 = resolveMethod;
        jCIdent.sym = symbol2;
        Env env = this.env;
        if (env.enclClass.sym.owner.kind != Kinds.Kind.PCK && symbol2.kind.matches(Kinds.KindSelector.VAL_MTH) && symbol2.owner.kind == Kinds.Kind.TYP) {
            Name name = jCIdent.name;
            Names names = this.names;
            if (name != names._this && name != names._super) {
                while (env.outer != null && !symbol2.isMemberOf(env.enclClass.sym, this.types)) {
                    env.enclClass.sym.flags();
                    env = env.outer;
                }
            }
        }
        Kinds.Kind kind = symbol2.kind;
        Kinds.Kind kind2 = Kinds.Kind.VAR;
        if (kind == kind2) {
            Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol2;
            checkInit(jCIdent, this.env, varSymbol, false);
            if (Kinds.KindSelector.ASG.subset(pkind())) {
                checkAssignable(jCIdent.pos(), varSymbol, null, this.env);
            }
        }
        if (((AttrContext) env.info).isSelfCall && symbol2.kind.matches(Kinds.KindSelector.VAL_MTH) && symbol2.owner.kind == Kinds.Kind.TYP && (symbol2.flags() & 8) == 0) {
            this.chk.earlyRefError(jCIdent.pos(), symbol2.kind == kind2 ? symbol2 : thisSym(jCIdent.pos(), this.env));
        }
        Env env2 = this.env;
        Kinds.Kind kind3 = symbol2.kind;
        if (kind3 != Kinds.Kind.ERR && kind3 != Kinds.Kind.TYP && (symbol = symbol2.owner) != null && symbol != env2.enclClass.sym) {
            while (env2.outer != null && !this.rs.isAccessible(this.env, env2.enclClass.sym.type, symbol2)) {
                env2 = env2.outer;
            }
        }
        AttrContext attrContext = this.env.info;
        if (attrContext.isSerializable) {
            this.chk.checkAccessFromSerializableElement(jCIdent, attrContext.isLambda);
        }
        this.result = checkId(jCIdent, env2.enclClass.sym.type, symbol2, this.env, this.resultInfo);
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        attribExpr(jCIf.cond, this.env, this.syms.booleanType);
        attribStat(jCIf.thenpart, this.env);
        JCTree.JCStatement jCStatement = jCIf.elsepart;
        if (jCStatement != null) {
            attribStat(jCStatement, this.env);
        }
        this.chk.checkEmptyIf(jCIf);
        this.result = null;
    }

    @Override
    public void visitImport(JCTree.JCImport jCImport) {
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        Type createErrorType = this.types.createErrorType(jCArrayAccess.type);
        Type attribExpr = attribExpr(jCArrayAccess.indexed, this.env);
        attribExpr(jCArrayAccess.index, this.env, this.syms.intType);
        if (this.types.isArray(attribExpr)) {
            createErrorType = this.types.elemtype(attribExpr);
        } else if (!attribExpr.hasTag(TypeTag.ERROR)) {
            this.log.error(jCArrayAccess.pos(), "array.req.but.found", attribExpr);
        }
        if (!pkind().contains(Kinds.KindSelector.VAL)) {
            createErrorType = capture(createErrorType);
        }
        this.result = check(jCArrayAccess, createErrorType, Kinds.KindSelector.VAR, this.resultInfo);
    }

    @Override
    public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
        Env env = this.env;
        while (true) {
            if (env != null && !env.tree.hasTag(JCTree.Tag.CLASSDEF)) {
                if (env.tree.hasTag(JCTree.Tag.LABELLED) && ((JCTree.JCLabeledStatement) env.tree).label == jCLabeledStatement.label) {
                    this.log.error(jCLabeledStatement.pos(), "label.already.in.use", jCLabeledStatement.label);
                    break;
                }
                env = env.next;
            } else {
                break;
            }
        }
        attribStat(jCLabeledStatement.body, this.env.dup(jCLabeledStatement));
        this.result = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0263  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitLambda(JCTree.JCLambda jCLambda) {
        List<Type> list;
        boolean z10 = false;
        if (pt().isErroneous() || (pt().hasTag(TypeTag.NONE) && pt() != Type.recoveryType)) {
            if (pt().hasTag(TypeTag.NONE)) {
                this.log.error(jCLambda.pos(), "unexpected.lambda", new Object[0]);
            }
            Type createErrorType = this.types.createErrorType(pt());
            jCLambda.type = createErrorType;
            this.result = createErrorType;
            return;
        }
        Env<AttrContext> lambdaEnv = lambdaEnv(jCLambda, this.env);
        boolean z11 = true;
        boolean z12 = this.resultInfo.checkContext.deferredAttrContext().mode == DeferredAttr.AttrMode.CHECK;
        if (z12) {
            try {
                try {
                    if (isSerializable(pt())) {
                        AttrContext attrContext = lambdaEnv.info;
                        attrContext.isSerializable = true;
                        attrContext.isLambda = true;
                    }
                } finally {
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                        lambdaEnv.info.scope.leave();
                        if (z10) {
                        }
                        throw th;
                    }
                }
            } catch (Types.FunctionDescriptorLookupError e10) {
                e = e10;
                try {
                    this.resultInfo.checkContext.report(jCLambda, e.getDiagnostic());
                    Type createErrorType2 = this.types.createErrorType(pt());
                    jCLambda.type = createErrorType2;
                    this.result = createErrorType2;
                    lambdaEnv.info.scope.leave();
                    if (z12) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z10 = z12;
                    lambdaEnv.info.scope.leave();
                    if (z10) {
                        attribTree(jCLambda, this.env, this.recoveryInfo);
                    }
                    throw th;
                }
            }
        }
        if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.EXPLICIT) {
            attribStats(jCLambda.params, lambdaEnv);
            list = TreeInfo.types(jCLambda.params);
        } else {
            list = null;
        }
        TargetInfo targetInfo = getTargetInfo(jCLambda, this.resultInfo, list);
        Type type = targetInfo.target;
        Type type2 = targetInfo.descriptor;
        if (type.isErroneous()) {
            jCLambda.type = type;
            this.result = type;
            lambdaEnv.info.scope.leave();
            if (z12) {
                attribTree(jCLambda, this.env, this.recoveryInfo);
                return;
            }
            return;
        }
        setFunctionalInfo(lambdaEnv, jCLambda, pt(), type2, type, this.resultInfo.checkContext);
        if (type2.hasTag(TypeTag.FORALL)) {
            this.resultInfo.checkContext.report(jCLambda, this.diags.fragment("invalid.generic.lambda.target", type2, Kinds.kindName(type.tsym), type.tsym));
            Type createErrorType3 = this.types.createErrorType(pt());
            jCLambda.type = createErrorType3;
            this.result = createErrorType3;
            lambdaEnv.info.scope.leave();
            if (z12) {
                attribTree(jCLambda, this.env, this.recoveryInfo);
                return;
            }
            return;
        }
        if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.IMPLICIT) {
            List parameterTypes = type2.getParameterTypes();
            List list2 = jCLambda.params;
            boolean z13 = false;
            List list3 = parameterTypes;
            while (list2.nonEmpty()) {
                if (list3.isEmpty()) {
                    z13 = true;
                }
                Type type3 = z13 ? this.syms.errType : (Type) list3.head;
                Object obj = list2.head;
                ((JCTree.JCVariableDecl) obj).vartype = this.make.at((JCDiagnostic.DiagnosticPosition) obj).Type(type3);
                ((JCTree.JCVariableDecl) list2.head).sym = null;
                if (!list3.isEmpty()) {
                    list3 = list3.tail;
                }
                list2 = list2.tail;
                list3 = list3;
            }
            attribStats(jCLambda.params, lambdaEnv);
            if (z13) {
                this.resultInfo.checkContext.report(jCLambda, this.diags.fragment("incompatible.arg.types.in.lambda", new Object[0]));
                Type createErrorType4 = this.types.createErrorType(type);
                jCLambda.type = createErrorType4;
                this.result = createErrorType4;
                lambdaEnv.info.scope.leave();
                if (z12) {
                    attribTree(jCLambda, this.env, this.recoveryInfo);
                    return;
                }
                return;
            }
        }
        try {
            AttrContext attrContext2 = lambdaEnv.info;
            ResultInfo lambdaBodyResult = lambdaBodyResult(jCLambda, type2, this.resultInfo);
            attrContext2.returnResult = lambdaBodyResult;
            if (jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION) {
                attribTree(jCLambda.getBody(), lambdaEnv, lambdaBodyResult);
            } else {
                attribStats(((JCTree.JCBlock) jCLambda.body).stats, lambdaEnv);
            }
            Kinds.KindSelector kindSelector = Kinds.KindSelector.VAL;
            this.result = check(jCLambda, type, kindSelector, this.resultInfo);
            if (this.resultInfo.checkContext.deferredAttrContext().mode != DeferredAttr.AttrMode.SPECULATIVE) {
                z11 = false;
            }
            preFlow(jCLambda);
            this.flow.analyzeLambda(this.env, jCLambda, this.make, z11);
            jCLambda.type = type;
            checkLambdaCompatible(jCLambda, type2, this.resultInfo.checkContext);
            if (!z11) {
                if (this.resultInfo.checkContext.inferenceContext().free(type2.getThrownTypes())) {
                    List<Type> analyzeLambdaThrownTypes = this.flow.analyzeLambdaThrownTypes(this.env, jCLambda, this.make);
                    List<Type> asUndetVars = this.resultInfo.checkContext.inferenceContext().asUndetVars(type2.getThrownTypes());
                    this.chk.unhandled(analyzeLambdaThrownTypes, asUndetVars);
                    asUndetVars.stream().filter(new Predicate() {
                        @Override
                        public final boolean test(Object obj2) {
                            boolean lambda$visitLambda$3;
                            lambda$visitLambda$3 = Attr.lambda$visitLambda$3((Type) obj2);
                            return lambda$visitLambda$3;
                        }
                    }).forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            Attr.lambda$visitLambda$4((Type) obj2);
                        }
                    });
                }
                checkAccessibleTypes(jCLambda, lambdaEnv, this.resultInfo.checkContext.inferenceContext(), type2, type);
            }
            this.result = check(jCLambda, type, kindSelector, this.resultInfo);
            lambdaEnv.info.scope.leave();
        } catch (Types.FunctionDescriptorLookupError e11) {
            z12 = false;
            e = e11;
            this.resultInfo.checkContext.report(jCLambda, e.getDiagnostic());
            Type createErrorType22 = this.types.createErrorType(pt());
            jCLambda.type = createErrorType22;
            this.result = createErrorType22;
            lambdaEnv.info.scope.leave();
            if (z12) {
                return;
            }
            attribTree(jCLambda, this.env, this.recoveryInfo);
        }
    }

    @Override
    public void visitLiteral(JCTree.JCLiteral jCLiteral) {
        this.result = check(jCLiteral, litType(jCLiteral.typetag).constType(jCLiteral.value), Kinds.KindSelector.VAL, this.resultInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
        boolean z10 = (methodSymbol.flags() & 8796093022208L) != 0;
        Lint augment = this.env.info.lint.augment(methodSymbol);
        Lint lint = this.chk.setLint(augment);
        Symbol.MethodSymbol method = this.chk.setMethod(methodSymbol);
        try {
            this.deferredLintHandler.flush(jCMethodDecl.pos());
            this.chk.checkDeprecatedAnnotation(jCMethodDecl.pos(), methodSymbol);
            Env<AttrContext> methodEnv = this.memberEnter.methodEnv(jCMethodDecl, this.env);
            methodEnv.info.lint = augment;
            attribStats(jCMethodDecl.typarams, methodEnv);
            if (methodSymbol.isStatic()) {
                this.chk.checkHideClashes(jCMethodDecl.pos(), this.env.enclClass.type, methodSymbol);
            } else {
                this.chk.checkOverrideClashes(jCMethodDecl.pos(), this.env.enclClass.type, methodSymbol);
            }
            this.chk.checkOverride(this.env, jCMethodDecl, methodSymbol);
            if (z10 && this.types.overridesObjectMethod(methodSymbol.enclClass(), methodSymbol)) {
                this.log.error(jCMethodDecl, "default.overrides.object.member", methodSymbol.name, Kinds.kindName(methodSymbol.location()), methodSymbol.location());
            }
            for (List list = jCMethodDecl.typarams; list.nonEmpty(); list = list.tail) {
                methodEnv.info.scope.enterIfAbsent(((JCTree.JCTypeParameter) list.head).type.tsym);
            }
            Symbol.ClassSymbol classSymbol = this.env.enclClass.sym;
            if ((classSymbol.flags() & 8192) != 0 && (jCMethodDecl.params.nonEmpty() || jCMethodDecl.recvparam != null)) {
                this.log.error(jCMethodDecl.params.nonEmpty() ? jCMethodDecl.params.head.pos() : jCMethodDecl.recvparam.pos(), "intf.annotation.members.cant.have.params", new Object[0]);
            }
            for (List list2 = jCMethodDecl.params; list2.nonEmpty(); list2 = list2.tail) {
                attribStat((JCTree) list2.head, methodEnv);
            }
            this.chk.checkVarargsMethodDecl(methodEnv, jCMethodDecl);
            this.chk.validate(jCMethodDecl.typarams, methodEnv);
            JCTree.JCExpression jCExpression = jCMethodDecl.restype;
            if (jCExpression != null && !jCExpression.type.hasTag(TypeTag.VOID)) {
                this.chk.validate(jCMethodDecl.restype, methodEnv);
            }
            if (jCMethodDecl.recvparam != null) {
                Env<AttrContext> methodEnv2 = this.memberEnter.methodEnv(jCMethodDecl, this.env);
                attribType(jCMethodDecl.recvparam, methodEnv2);
                this.chk.validate(jCMethodDecl.recvparam, methodEnv2);
            }
            if ((classSymbol.flags() & 8192) != 0) {
                if (jCMethodDecl.thrown.nonEmpty()) {
                    this.log.error(jCMethodDecl.thrown.head.pos(), "throws.not.allowed.in.intf.annotation", new Object[0]);
                }
                if (jCMethodDecl.typarams.nonEmpty()) {
                    this.log.error(jCMethodDecl.typarams.head.pos(), "intf.annotation.members.cant.have.type.params", new Object[0]);
                }
                this.chk.validateAnnotationType(jCMethodDecl.restype);
                this.chk.validateAnnotationMethod(jCMethodDecl.pos(), methodSymbol);
            }
            for (List list3 = jCMethodDecl.thrown; list3.nonEmpty(); list3 = list3.tail) {
                this.chk.checkType(((JCTree.JCExpression) list3.head).pos(), ((JCTree.JCExpression) list3.head).type, this.syms.throwableType);
            }
            if (jCMethodDecl.body == null) {
                if (jCMethodDecl.defaultValue != null && (classSymbol.flags() & 8192) == 0) {
                    this.log.error(jCMethodDecl.pos(), "default.allowed.in.intf.annotation.member", new Object[0]);
                }
                if (z10 || (jCMethodDecl.sym.flags() & 1280) == 0) {
                    this.log.error(jCMethodDecl.pos(), "missing.meth.body.or.decl.abstract", new Object[0]);
                }
            } else if ((jCMethodDecl.sym.flags() & 8796093023234L) == 1024) {
                if ((classSymbol.flags() & 512) != 0) {
                    this.log.error(jCMethodDecl.body.pos(), "intf.meth.cant.have.body", new Object[0]);
                } else {
                    this.log.error(jCMethodDecl.pos(), "abstract.meth.cant.have.body", new Object[0]);
                }
            } else if ((jCMethodDecl.mods.flags & 256) != 0) {
                this.log.error(jCMethodDecl.pos(), "native.meth.cant.have.body", new Object[0]);
            } else {
                if (jCMethodDecl.name == this.names.init && classSymbol.type != this.syms.objectType) {
                    JCTree.JCBlock jCBlock = jCMethodDecl.body;
                    if (!jCBlock.stats.isEmpty() && TreeInfo.isSelfCall(jCBlock.stats.head)) {
                        if ((this.env.enclClass.sym.flags() & 16384) != 0 && (jCMethodDecl.mods.flags & 68719476736L) == 0 && TreeInfo.isSuperCall(jCBlock.stats.head)) {
                            this.log.error(jCMethodDecl.body.stats.head.pos(), "call.to.super.not.allowed.in.enum.ctor", this.env.enclClass.sym);
                        }
                    }
                    jCBlock.stats = jCBlock.stats.prepend(this.typeEnter.SuperCall(this.make.at(jCBlock.pos), List.nil(), List.nil(), false));
                }
                this.annotate.queueScanTreeAndTypeAnnotate(jCMethodDecl.body, methodEnv, methodSymbol, null);
                this.annotate.flush();
                attribStat(jCMethodDecl.body, methodEnv);
            }
            methodEnv.info.scope.leave();
            Type type = methodSymbol.type;
            jCMethodDecl.type = type;
            this.result = type;
            this.chk.setLint(lint);
            this.chk.setMethod(method);
        } catch (Throwable th2) {
            this.chk.setLint(lint);
            this.chk.setMethod(method);
            throw th2;
        }
    }

    @Override
    public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        jCModuleDecl.sym.completeUsesProvides();
        Symbol.ModuleSymbol moduleSymbol = jCModuleDecl.sym;
        AttrContext attrContext = this.env.outer.info;
        AttrContext attrContext2 = attrContext;
        Lint augment = attrContext.lint.augment(moduleSymbol);
        attrContext2.lint = augment;
        Lint lint = this.chk.setLint(augment);
        this.chk.checkModuleName(jCModuleDecl);
        this.chk.checkDeprecatedAnnotation(jCModuleDecl, moduleSymbol);
        try {
            this.deferredLintHandler.flush(jCModuleDecl.pos());
        } finally {
            this.chk.setLint(lint);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        Type createErrorType;
        Type type;
        Type type2;
        Type createErrorType2 = this.types.createErrorType(jCNewArray.type);
        Env<AttrContext> dup = this.env.dup(jCNewArray);
        JCTree.JCExpression jCExpression = jCNewArray.elemtype;
        if (jCExpression != null) {
            type2 = attribType(jCExpression, dup);
            this.chk.validate(jCNewArray.elemtype, dup);
            List list = jCNewArray.dims;
            type = type2;
            while (list.nonEmpty()) {
                attribExpr((JCTree) list.head, dup, this.syms.intType);
                Type.ArrayType arrayType = new Type.ArrayType(type, this.syms.arrayClass);
                list = list.tail;
                type = arrayType;
            }
        } else {
            if (pt().hasTag(TypeTag.ARRAY)) {
                createErrorType = this.types.elemtype(pt());
            } else {
                if (!pt().hasTag(TypeTag.ERROR)) {
                    this.log.error(jCNewArray.pos(), "illegal.initializer.for.type", pt());
                }
                createErrorType = this.types.createErrorType(pt());
            }
            Type type3 = createErrorType;
            type = createErrorType2;
            type2 = type3;
        }
        List<JCTree.JCExpression> list2 = jCNewArray.elems;
        if (list2 != null) {
            attribExprs(list2, dup, type2);
            type = new Type.ArrayType(type2, this.syms.arrayClass);
        }
        if (!this.types.isReifiable(type2)) {
            this.log.error(jCNewArray.pos(), "generic.array.creation", new Object[0]);
        }
        this.result = check(jCNewArray, type, Kinds.KindSelector.VAL, this.resultInfo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x01d5, code lost:
    
        if (((org.openjdk.tools.javac.tree.JCTree.JCVariableDecl) r3).init == r29) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitNewClass(final JCTree.JCNewClass jCNewClass) {
        JCTree.JCExpression jCExpression;
        JCTree.JCAnnotatedType jCAnnotatedType;
        JCTree.JCExpression jCExpression2;
        JCTree.JCAnnotatedType jCAnnotatedType2;
        JCTree.JCExpression jCExpression3;
        JCTree.JCExpression jCExpression4;
        Type type;
        Type type2;
        InferenceContext inferenceContext;
        Type type3;
        List<Type> list;
        List<Type> list2;
        boolean z10;
        Kinds.KindSelector kindSelector;
        Type type4;
        List<Type> list3;
        Type type5;
        Type createErrorType = this.types.createErrorType(jCNewClass.type);
        Env<AttrContext> env = this.env;
        Env<AttrContext> dup = env.dup(jCNewClass, env.info.dup());
        JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
        JCTree.JCExpression jCExpression5 = jCNewClass.clazz;
        JCTree.Tag tag = JCTree.Tag.TYPEAPPLY;
        if (jCExpression5.hasTag(tag)) {
            jCExpression = ((JCTree.JCTypeApply) jCExpression5).clazz;
            if (jCExpression.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                jCAnnotatedType = (JCTree.JCAnnotatedType) jCExpression;
                jCExpression2 = jCAnnotatedType.underlyingType;
                JCTree.JCExpression jCExpression6 = jCExpression2;
                jCAnnotatedType2 = jCAnnotatedType;
                jCExpression = jCExpression6;
            }
            jCAnnotatedType2 = null;
        } else if (jCExpression5.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
            jCAnnotatedType = (JCTree.JCAnnotatedType) jCExpression5;
            jCExpression2 = jCAnnotatedType.underlyingType;
            JCTree.JCExpression jCExpression62 = jCExpression2;
            jCAnnotatedType2 = jCAnnotatedType;
            jCExpression = jCExpression62;
        } else {
            jCExpression = jCExpression5;
            jCAnnotatedType2 = null;
        }
        JCTree.JCExpression jCExpression7 = jCNewClass.encl;
        if (jCExpression7 != null) {
            jCExpression4 = this.make.at(jCExpression5.pos).Select(this.make.Type(this.chk.checkRefType(jCExpression7.pos(), attribExpr(jCNewClass.encl, this.env))), ((JCTree.JCIdent) jCExpression).name);
            EndPosTable endPosTable = this.env.toplevel.endPositions;
            endPosTable.storeEnd(jCExpression4, jCNewClass.getEndPosition(endPosTable));
            if (jCExpression5.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                JCTree.JCAnnotatedType jCAnnotatedType3 = (JCTree.JCAnnotatedType) jCExpression5;
                List<JCTree.JCAnnotation> list4 = jCAnnotatedType3.annotations;
                if (jCAnnotatedType3.underlyingType.hasTag(tag)) {
                    jCExpression4 = this.make.at(jCNewClass.pos).TypeApply(jCExpression4, ((JCTree.JCTypeApply) jCExpression5).arguments);
                }
                jCExpression4 = this.make.at(jCNewClass.pos).AnnotatedType(list4, jCExpression4);
            } else if (jCExpression5.hasTag(tag)) {
                jCExpression4 = this.make.at(jCNewClass.pos).TypeApply(jCExpression4, ((JCTree.JCTypeApply) jCExpression5).arguments);
            }
            jCExpression3 = jCExpression4;
        } else {
            jCExpression3 = jCExpression5;
            jCExpression4 = jCExpression;
        }
        try {
            Env<AttrContext> env2 = this.env;
            env2.info.isNewClass = true;
            Type attribIdentAsEnumType = TreeInfo.isEnumInit(env2.tree) ? attribIdentAsEnumType(this.env, (JCTree.JCIdent) jCExpression3) : attribType(jCExpression3, this.env);
            this.env.info.isNewClass = false;
            Type checkDiamond = this.chk.checkDiamond(jCNewClass, attribIdentAsEnumType);
            this.chk.validate(jCExpression3, dup);
            if (jCNewClass.encl != null) {
                jCNewClass.clazz.type = checkDiamond;
                TreeInfo.setSymbol(jCExpression, TreeInfo.symbol(jCExpression4));
                Type type6 = ((JCTree.JCIdent) jCExpression).sym.type;
                jCExpression.type = type6;
                if (jCAnnotatedType2 != null) {
                    jCAnnotatedType2.type = type6;
                }
                if (!checkDiamond.isErroneous()) {
                    if (jCClassDecl != null && checkDiamond.tsym.isInterface()) {
                        this.log.error(jCNewClass.encl.pos(), "anon.class.impl.intf.no.qual.for.new", new Object[0]);
                    } else if (checkDiamond.tsym.isStatic()) {
                        this.log.error(jCNewClass.encl.pos(), "qualified.new.of.static.class", checkDiamond.tsym);
                    }
                }
            } else if (!checkDiamond.tsym.isInterface() && checkDiamond.getEnclosingType().hasTag(TypeTag.CLASS)) {
                this.rs.resolveImplicitThis(jCNewClass.pos(), this.env, checkDiamond);
            }
            ListBuffer<Type> listBuffer = new ListBuffer<>();
            Kinds.KindSelector kindSelector2 = Kinds.KindSelector.VAL;
            Kinds.KindSelector attribArgs = attribArgs(kindSelector2, jCNewClass.args, dup, listBuffer);
            List<Type> list5 = listBuffer.toList();
            List<Type> attribTypes = attribTypes(jCNewClass.typeargs, dup);
            if (checkDiamond.hasTag(TypeTag.CLASS)) {
                if ((checkDiamond.tsym.flags_field & 16384) != 0) {
                    if (this.env.tree.hasTag(JCTree.Tag.VARDEF)) {
                        JCTree jCTree = this.env.tree;
                        if ((((JCTree.JCVariableDecl) jCTree).mods.flags & 16384) != 0) {
                        }
                    }
                    this.log.error(jCNewClass.pos(), "enum.cant.be.instantiated", new Object[0]);
                }
                boolean z11 = TreeInfo.isDiamond(jCNewClass) && this.resultInfo.checkContext.deferredAttrContext().mode == DeferredAttr.AttrMode.SPECULATIVE;
                if (jCClassDecl == null && !z11 && (checkDiamond.tsym.flags() & 1536) != 0) {
                    this.log.error(jCNewClass.pos(), "abstract.cant.be.instantiated", checkDiamond.tsym);
                } else if (jCClassDecl == null || !checkDiamond.tsym.isInterface()) {
                    list = list5;
                    list2 = attribTypes;
                    z10 = false;
                    if (TreeInfo.isDiamond(jCNewClass)) {
                        type = createErrorType;
                        kindSelector = attribArgs;
                        if (z10) {
                            type4 = checkDiamond;
                            list3 = list2;
                            kindSelector2 = kindSelector2;
                        } else {
                            Env<AttrContext> dup2 = dup.dup(jCNewClass);
                            AttrContext attrContext = dup2.info;
                            attrContext.selectSuper = jCClassDecl != null;
                            attrContext.pendingResolutionPhase = null;
                            List<Type> list6 = list2;
                            type4 = checkDiamond;
                            Symbol resolveConstructor = this.rs.resolveConstructor(jCNewClass.pos(), dup2, type4, list, list6);
                            jCNewClass.constructor = resolveConstructor;
                            if (jCClassDecl == null) {
                                list3 = list6;
                                kindSelector2 = kindSelector2;
                                jCNewClass.constructorType = checkId(jCNewClass, type4, resolveConstructor, dup2, new ResultInfo(this, kindSelector, newMethodTemplate(this.syms.voidType, list, list6), CheckMode.NO_TREE_UPDATE));
                                if (dup2.info.lastResolveVarargs()) {
                                    Assert.check(jCNewClass.constructorType.isErroneous() || jCNewClass.varargsElement != null);
                                }
                            } else {
                                list3 = list6;
                                kindSelector2 = kindSelector2;
                            }
                        }
                        type5 = type4;
                    } else {
                        Type.ClassType classType = new Type.ClassType(checkDiamond.getEnclosingType(), checkDiamond.tsym.type.getTypeArguments(), checkDiamond.tsym, checkDiamond.getMetadata());
                        Env<AttrContext> dup3 = dup.dup(jCNewClass);
                        AttrContext attrContext2 = dup3.info;
                        attrContext2.selectSuper = jCClassDecl != null;
                        attrContext2.pendingResolutionPhase = null;
                        Symbol resolveDiamond = this.rs.resolveDiamond(jCNewClass.pos(), dup3, classType, list, list2);
                        jCNewClass.constructor = resolveDiamond.baseSymbol();
                        type = createErrorType;
                        kindSelector = attribArgs;
                        ResultInfo resultInfo = new ResultInfo(attribArgs, newMethodTemplate(this.resultInfo.pt, list, list2), diamondContext(jCNewClass, checkDiamond.tsym, this.resultInfo.checkContext), CheckMode.NO_TREE_UPDATE);
                        jCNewClass.constructorType = this.types.createErrorType(checkDiamond);
                        Type checkId = checkId(jCNewClass, classType, resolveDiamond, dup3, resultInfo);
                        jCNewClass.clazz.type = this.types.createErrorType(checkDiamond);
                        if (!checkId.isErroneous()) {
                            JCTree.JCExpression jCExpression8 = jCNewClass.clazz;
                            Type returnType = checkId.getReturnType();
                            jCExpression3.type = returnType;
                            jCExpression8.type = returnType;
                            jCNewClass.constructorType = this.types.createMethodTypeWithReturn(checkId, this.syms.voidType);
                        }
                        Check check = this.chk;
                        JCTree.JCExpression jCExpression9 = jCNewClass.clazz;
                        type5 = check.checkClassType(jCExpression9, jCExpression9.type, true);
                        list3 = list2;
                        kindSelector2 = kindSelector2;
                    }
                    if (jCClassDecl == null) {
                        visitAnonymousClassDefinition(jCNewClass, jCExpression3, type5, jCClassDecl, dup, list, list3, kindSelector);
                        return;
                    }
                    Symbol symbol = jCNewClass.constructor;
                    if (symbol != null && symbol.kind == Kinds.Kind.MTH) {
                        type2 = type5;
                        this.result = check(jCNewClass, type2, kindSelector2, this.resultInfo);
                        inferenceContext = this.resultInfo.checkContext.inferenceContext();
                        type3 = jCNewClass.constructorType;
                        if (type3 != null && inferenceContext.free(type3)) {
                            inferenceContext.addFreeTypeListener(List.of(jCNewClass.constructorType), new Infer.FreeTypeListener() {
                                @Override
                                public final void typesInferred(InferenceContext inferenceContext2) {
                                    Attr.lambda$visitNewClass$1(JCTree.JCNewClass.this, inferenceContext2);
                                }
                            });
                        }
                        this.chk.validate(jCNewClass.typeargs, dup);
                    }
                } else {
                    if (!list5.isEmpty()) {
                        this.log.error(jCNewClass.args.head.pos(), "anon.class.impl.intf.no.args", new Object[0]);
                    }
                    if (!attribTypes.isEmpty()) {
                        this.log.error(jCNewClass.typeargs.head.pos(), "anon.class.impl.intf.no.typeargs", new Object[0]);
                    }
                    list5 = List.nil();
                    attribTypes = List.nil();
                }
                list = list5;
                list2 = attribTypes;
                z10 = true;
                if (TreeInfo.isDiamond(jCNewClass)) {
                }
                if (jCClassDecl == null) {
                }
            } else {
                type = createErrorType;
            }
            type2 = type;
            this.result = check(jCNewClass, type2, kindSelector2, this.resultInfo);
            inferenceContext = this.resultInfo.checkContext.inferenceContext();
            type3 = jCNewClass.constructorType;
            if (type3 != null) {
                inferenceContext.addFreeTypeListener(List.of(jCNewClass.constructorType), new Infer.FreeTypeListener() {
                    @Override
                    public final void typesInferred(InferenceContext inferenceContext2) {
                        Attr.lambda$visitNewClass$1(JCTree.JCNewClass.this, inferenceContext2);
                    }
                });
            }
            this.chk.validate(jCNewClass.typeargs, dup);
        } catch (Throwable th2) {
            this.env.info.isNewClass = false;
            throw th2;
        }
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        this.result = check(jCParens, attribTree(jCParens.expr, this.env, this.resultInfo), pkind(), this.resultInfo);
        Symbol symbol = TreeInfo.symbol(jCParens);
        if (symbol == null || !symbol.kind.matches(Kinds.KindSelector.TYP_PCK)) {
            return;
        }
        this.log.error(jCParens.pos(), "illegal.start.of.type", new Object[0]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3, types: [org.openjdk.tools.javac.code.Type] */
    /* JADX WARN: Type inference failed for: r1v103, types: [org.openjdk.tools.javac.comp.Resolve] */
    /* JADX WARN: Type inference failed for: r1v75, types: [org.openjdk.tools.javac.code.Types] */
    /* JADX WARN: Type inference failed for: r25v0, types: [org.openjdk.tools.javac.comp.Attr] */
    /* JADX WARN: Type inference failed for: r9v10, types: [org.openjdk.tools.javac.comp.Resolve$ResolveError] */
    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        JCTree.JCMemberReference jCMemberReference2;
        boolean z10;
        boolean z11;
        Type enclosingType;
        boolean z12;
        Type type;
        if (pt().isErroneous() || (pt().hasTag(TypeTag.NONE) && pt() != Type.recoveryType)) {
            if (pt().hasTag(TypeTag.NONE)) {
                this.log.error(jCMemberReference.pos(), "unexpected.mref", new Object[0]);
            }
            Type createErrorType = this.types.createErrorType(pt());
            jCMemberReference.type = createErrorType;
            this.result = createErrorType;
            return;
        }
        Env<AttrContext> dup = this.env.dup(jCMemberReference);
        try {
            Type attribTree = attribTree(jCMemberReference.expr, this.env, memberReferenceQualifierResult(jCMemberReference));
            MemberReferenceTree.ReferenceMode mode = jCMemberReference.getMode();
            MemberReferenceTree.ReferenceMode referenceMode = MemberReferenceTree.ReferenceMode.NEW;
            if (mode == referenceMode) {
                attribTree = this.chk.checkConstructorRefType(jCMemberReference.expr, attribTree);
                if (!attribTree.isErroneous() && attribTree.isRaw() && jCMemberReference.typeargs != null) {
                    this.log.error(jCMemberReference.expr.pos(), "invalid.mref", Kinds.kindName(jCMemberReference.getMode()), this.diags.fragment("mref.infer.and.explicit.params", new Object[0]));
                    attribTree = this.types.createErrorType(attribTree);
                }
            }
            ?? r11 = attribTree;
            if (r11.isErroneous()) {
                jCMemberReference.type = r11;
                this.result = r11;
                return;
            }
            if (TreeInfo.isStaticSelector(jCMemberReference.expr, this.names)) {
                this.chk.validate(jCMemberReference.expr, this.env, false);
            } else {
                Symbol symbol = TreeInfo.symbol(jCMemberReference.expr);
                dup.info.selectSuper = symbol != null && symbol.name == this.names._super;
            }
            List<Type> nil = List.nil();
            List<JCTree.JCExpression> list = jCMemberReference.typeargs;
            if (list != null) {
                nil = attribTypes(list, dup);
            }
            List<Type> list2 = nil;
            DeferredAttr.AttrMode attrMode = this.resultInfo.checkContext.deferredAttrContext().mode;
            DeferredAttr.AttrMode attrMode2 = DeferredAttr.AttrMode.CHECK;
            boolean z13 = attrMode == attrMode2 && isSerializable(pt());
            TargetInfo targetInfo = getTargetInfo(jCMemberReference, this.resultInfo, null);
            Type type2 = targetInfo.target;
            Type type3 = targetInfo.descriptor;
            setFunctionalInfo(dup, jCMemberReference, pt(), type3, type2, this.resultInfo.checkContext);
            List<Type> parameterTypes = type3.getParameterTypes();
            Resolve.MethodCheck methodCheck = this.rs.resolveMethodCheck;
            if (this.resultInfo.checkContext.inferenceContext().free(parameterTypes)) {
                Resolve resolve = this.rs;
                resolve.getClass();
                methodCheck = new Resolve.MethodReferenceCheck(this.resultInfo.checkContext.inferenceContext());
            }
            try {
                Resolve.MethodCheck methodCheck2 = methodCheck;
                List<Type> save = this.resultInfo.checkContext.inferenceContext().save();
                try {
                    try {
                        Pair<Symbol, Resolve.ReferenceLookupHelper> resolveMemberReference = this.rs.resolveMemberReference(dup, jCMemberReference, jCMemberReference.expr.type, jCMemberReference.name, parameterTypes, list2, methodCheck2, this.resultInfo.checkContext.inferenceContext(), this.rs.basicReferenceChooser);
                        try {
                            this.resultInfo.checkContext.inferenceContext().rollback(save);
                            Symbol symbol2 = resolveMemberReference.fst;
                            Resolve.ReferenceLookupHelper referenceLookupHelper = resolveMemberReference.snd;
                            Kinds.Kind kind = symbol2.kind;
                            if (kind != Kinds.Kind.MTH) {
                                switch (AnonymousClass10.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[kind.ordinal()]) {
                                    case 1:
                                    case 2:
                                        z12 = false;
                                        break;
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                        z12 = true;
                                        break;
                                    default:
                                        Assert.error("unexpected result kind " + ((Object) symbol2.kind));
                                        z12 = false;
                                        break;
                                }
                                ?? r92 = (Resolve.ResolveError) symbol2.baseSymbol();
                                JCDiagnostic.DiagnosticType diagnosticType = JCDiagnostic.DiagnosticType.FRAGMENT;
                                JCDiagnostic diagnostic = r92.getDiagnostic(diagnosticType, jCMemberReference, r11.tsym, r11, jCMemberReference.name, parameterTypes, list2);
                                if (!z12) {
                                    diagnosticType = JCDiagnostic.DiagnosticType.ERROR;
                                }
                                JCDiagnostic create = this.diags.create(diagnosticType, this.log.currentSource(), jCMemberReference, "invalid.mref", Kinds.kindName(jCMemberReference.getMode()), diagnostic);
                                if (z12) {
                                    type = type2;
                                    if (type == Type.recoveryType) {
                                        jCMemberReference.type = type;
                                        this.result = type;
                                        return;
                                    }
                                } else {
                                    type = type2;
                                }
                                if (z12) {
                                    this.resultInfo.checkContext.report(jCMemberReference, create);
                                } else {
                                    this.log.report(create);
                                }
                                Type createErrorType2 = this.types.createErrorType(type);
                                jCMemberReference.type = createErrorType2;
                                this.result = createErrorType2;
                                return;
                            }
                            Symbol baseSymbol = symbol2.baseSymbol();
                            jCMemberReference.sym = baseSymbol;
                            jCMemberReference.kind = referenceLookupHelper.referenceKind(baseSymbol);
                            jCMemberReference.ownerAccessible = this.rs.isAccessible(dup, jCMemberReference.sym.enclClass());
                            if (type3.getReturnType() == Type.recoveryType) {
                                jCMemberReference.type = type2;
                                this.result = type2;
                                return;
                            }
                            if (!this.env.info.isSpeculative && jCMemberReference.getMode() == referenceMode && (enclosingType = r11.getEnclosingType()) != null && enclosingType.hasTag(TypeTag.CLASS)) {
                                this.rs.resolveImplicitThis(jCMemberReference.pos(), this.env, r11);
                            }
                            if (this.resultInfo.checkContext.deferredAttrContext().mode == attrMode2) {
                                if (jCMemberReference.getMode() == MemberReferenceTree.ReferenceMode.INVOKE && TreeInfo.isStaticSelector(jCMemberReference.expr, this.names) && jCMemberReference.kind.isUnbound() && !type3.getParameterTypes().head.isParameterized()) {
                                    this.chk.checkRaw(jCMemberReference.expr, dup);
                                }
                                if (jCMemberReference.sym.isStatic() && TreeInfo.isStaticSelector(jCMemberReference.expr, this.names) && r11.getTypeArguments().nonEmpty()) {
                                    this.log.error(jCMemberReference.expr.pos(), "invalid.mref", Kinds.kindName(jCMemberReference.getMode()), this.diags.fragment("static.mref.with.targs", new Object[0]));
                                    Type createErrorType3 = this.types.createErrorType(type2);
                                    jCMemberReference.type = createErrorType3;
                                    this.result = createErrorType3;
                                    return;
                                }
                                z11 = false;
                                if (!symbol2.isStatic() && jCMemberReference.kind == JCTree.JCMemberReference.ReferenceKind.SUPER) {
                                    this.rs.checkNonAbstract(jCMemberReference.pos(), jCMemberReference.sym);
                                }
                                if (z13) {
                                    z10 = true;
                                    this.chk.checkAccessFromSerializableElement(jCMemberReference, true);
                                } else {
                                    z10 = true;
                                }
                            } else {
                                z10 = true;
                                z11 = false;
                            }
                            ResultInfo dup2 = this.resultInfo.dup(newMethodTemplate(type3.getReturnType().hasTag(TypeTag.VOID) ? Type.noType : type3.getReturnType(), jCMemberReference.kind.isUnbound() ? parameterTypes.tail : parameterTypes, list2), new FunctionalReturnContext(this.resultInfo.checkContext), CheckMode.NO_TREE_UPDATE);
                            boolean z14 = z11;
                            Type checkId = checkId(jCMemberReference, referenceLookupHelper.site, symbol2, dup, dup2);
                            if (jCMemberReference.kind.isUnbound() && this.resultInfo.checkContext.inferenceContext().free(parameterTypes.head) && !this.types.isSubtype(this.resultInfo.checkContext.inferenceContext().asUndetVar(parameterTypes.head), r11)) {
                                Assert.error("Can't get here");
                            }
                            Type createMethodTypeWithReturn = !checkId.isErroneous() ? this.types.createMethodTypeWithReturn(checkId, adjustMethodReturnType(symbol2, referenceLookupHelper.site, jCMemberReference.name, dup2.pt.getParameterTypes(), checkId.getReturnType())) : checkId;
                            boolean z15 = this.resultInfo.checkContext.deferredAttrContext().mode == DeferredAttr.AttrMode.SPECULATIVE ? true : z14;
                            jCMemberReference.type = type2;
                            checkReferenceCompatible(jCMemberReference, type3, createMethodTypeWithReturn, this.resultInfo.checkContext, z15);
                            if (!z15) {
                                checkAccessibleTypes(jCMemberReference, dup, this.resultInfo.checkContext.inferenceContext(), type3, type2);
                            }
                            this.result = check(jCMemberReference, type2, Kinds.KindSelector.VAL, this.resultInfo);
                        } catch (Types.FunctionDescriptorLookupError e10) {
                            e = e10;
                            jCMemberReference2 = jCMemberReference;
                            this.resultInfo.checkContext.report(jCMemberReference2, e.getDiagnostic());
                            Type createErrorType4 = this.types.createErrorType(pt());
                            jCMemberReference2.type = createErrorType4;
                            this.result = createErrorType4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        this.resultInfo.checkContext.inferenceContext().rollback(save);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Types.FunctionDescriptorLookupError e11) {
                e = e11;
                jCMemberReference2 = r11;
            }
        } catch (Types.FunctionDescriptorLookupError e12) {
            e = e12;
            jCMemberReference2 = jCMemberReference;
        }
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        AttrContext attrContext = this.env.info;
        if (attrContext.returnResult == null) {
            this.log.error(jCReturn.pos(), "ret.outside.meth", new Object[0]);
        } else if (jCReturn.expr != null) {
            if (attrContext.returnResult.pt.hasTag(TypeTag.VOID)) {
                this.env.info.returnResult.checkContext.report(jCReturn.expr.pos(), this.diags.fragment("unexpected.ret.val", new Object[0]));
            }
            JCTree.JCExpression jCExpression = jCReturn.expr;
            Env<AttrContext> env = this.env;
            attribTree(jCExpression, env, env.info.returnResult);
        } else if (!attrContext.returnResult.pt.hasTag(TypeTag.VOID) && !this.env.info.returnResult.pt.hasTag(TypeTag.NONE)) {
            this.env.info.returnResult.checkContext.report(jCReturn.pos(), this.diags.fragment("missing.ret.val", new Object[0]));
        }
        this.result = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x02fc  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        Type type;
        AttrContext attrContext;
        Type asSuper;
        Kinds.Kind kind;
        Kinds.KindSelector kindSelector = Kinds.KindSelector.NIL;
        Name name = jCFieldAccess.name;
        Names names = this.names;
        if (name == names._this || name == names._super || name == names._class) {
            kindSelector = Kinds.KindSelector.TYP;
        } else {
            Kinds.KindSelector pkind = pkind();
            Kinds.KindSelector kindSelector2 = Kinds.KindSelector.PCK;
            if (pkind.contains(kindSelector2)) {
                kindSelector = Kinds.KindSelector.of(kindSelector, kindSelector2);
            }
            Kinds.KindSelector pkind2 = pkind();
            Kinds.KindSelector kindSelector3 = Kinds.KindSelector.TYP;
            if (pkind2.contains(kindSelector3)) {
                kindSelector = Kinds.KindSelector.of(kindSelector, kindSelector3, kindSelector2);
            }
            if (pkind().contains(Kinds.KindSelector.VAL_MTH)) {
                kindSelector = Kinds.KindSelector.of(kindSelector, Kinds.KindSelector.VAL, kindSelector3);
            }
        }
        Type attribTree = attribTree(jCFieldAccess.selected, this.env, new ResultInfo(this, kindSelector, Type.noType));
        if (!pkind().contains(Kinds.KindSelector.TYP_PCK)) {
            attribTree = capture(attribTree);
        }
        Type type2 = attribTree;
        if (kindSelector == Kinds.KindSelector.TYP) {
            Type type3 = type2;
            while (type3.hasTag(TypeTag.ARRAY)) {
                type3 = ((Type.ArrayType) type3).elemtype;
            }
            if (type3.hasTag(TypeTag.TYPEVAR)) {
                this.log.error(jCFieldAccess.pos(), "type.var.cant.be.deref", new Object[0]);
                Type createErrorType = this.types.createErrorType(jCFieldAccess.name, type2.tsym, type2);
                jCFieldAccess.type = createErrorType;
                this.result = createErrorType;
                jCFieldAccess.sym = createErrorType.tsym;
                return;
            }
        }
        Symbol symbol = TreeInfo.symbol(jCFieldAccess.selected);
        Env<AttrContext> env = this.env;
        AttrContext attrContext2 = env.info;
        boolean z10 = attrContext2.selectSuper;
        attrContext2.selectSuper = symbol != null && symbol.name == this.names._super;
        attrContext2.pendingResolutionPhase = null;
        Symbol selectSym = selectSym(jCFieldAccess, symbol, type2, env, this.resultInfo);
        Kinds.Kind kind2 = selectSym.kind;
        Kinds.Kind kind3 = Kinds.Kind.VAR;
        if (kind2 == kind3 && selectSym.name != this.names._super && this.env.info.defaultSuperCallSite != null) {
            this.log.error(jCFieldAccess.selected.pos(), "not.encl.class", type2.tsym);
            selectSym = this.syms.errSymbol;
        }
        if (selectSym.exists() && !isType(selectSym) && pkind().contains(Kinds.KindSelector.TYP_PCK)) {
            type2 = capture(type2);
            selectSym = selectSym(jCFieldAccess, symbol, type2, this.env, this.resultInfo);
        }
        Symbol.VarSymbol varSymbol = selectSym;
        this.env.info.lastResolveVarargs();
        jCFieldAccess.sym = varSymbol;
        if (type2.hasTag(TypeTag.TYPEVAR) && !isType(varSymbol) && varSymbol.kind != Kinds.Kind.ERR) {
            type2 = this.types.skipTypeVars(type2, true);
        }
        if (varSymbol.kind == kind3) {
            Symbol.VarSymbol varSymbol2 = varSymbol;
            checkInit(jCFieldAccess, this.env, varSymbol2, true);
            if (Kinds.KindSelector.ASG.subset(pkind())) {
                checkAssignable(jCFieldAccess.pos(), varSymbol2, jCFieldAccess.selected, this.env);
            }
        }
        if (symbol != null && symbol.kind == kind3 && ((Symbol.VarSymbol) symbol).isResourceVariable() && varSymbol.kind == Kinds.Kind.MTH && varSymbol.name.equals(this.names.close) && varSymbol.overrides(this.syms.autoCloseableClose, symbol.type.tsym, this.types, true)) {
            Lint lint = this.env.info.lint;
            Lint.LintCategory lintCategory = Lint.LintCategory.TRY;
            if (lint.isEnabled(lintCategory)) {
                this.log.warning(lintCategory, jCFieldAccess, "try.explicit.close.call", new Object[0]);
            }
        }
        if (isType(varSymbol) && (symbol == null || !symbol.kind.matches(Kinds.KindSelector.TYP_PCK))) {
            jCFieldAccess.type = check(jCFieldAccess.selected, pt(), symbol == null ? Kinds.KindSelector.VAL : symbol.kind.toSelector(), new ResultInfo(this, Kinds.KindSelector.TYP_PCK, pt()));
        }
        if (isType(symbol)) {
            if (varSymbol.name == this.names._this) {
                Env<AttrContext> env2 = this.env;
                if (env2.info.isSelfCall && type2.tsym == env2.enclClass.sym) {
                    this.chk.earlyRefError(jCFieldAccess.pos(), varSymbol);
                }
            } else if ((varSymbol.flags() & 8) == 0 && varSymbol.name != this.names._super && ((kind = varSymbol.kind) == kind3 || kind == Kinds.Kind.MTH)) {
                Resolve resolve = this.rs;
                resolve.getClass();
                resolve.accessBase(new Resolve.StaticError(varSymbol), jCFieldAccess.pos(), type2, varSymbol.name, true);
            }
            if (!this.allowStaticInterfaceMethods && symbol.isInterface() && varSymbol.isStatic() && varSymbol.kind == Kinds.Kind.MTH) {
                this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, jCFieldAccess.pos(), "static.intf.method.invoke.not.supported.in.source", this.sourceName);
            }
        } else if (varSymbol.kind != Kinds.Kind.ERR && (varSymbol.flags() & 8) != 0 && varSymbol.name != this.names._class) {
            this.chk.warnStatic(jCFieldAccess, "static.not.qualified.by.type", varSymbol.kind.kindName(), varSymbol.owner);
        }
        if (this.env.info.selectSuper && (8 & varSymbol.flags()) == 0) {
            this.rs.checkNonAbstract(jCFieldAccess.pos(), varSymbol);
            if (type2.isRaw() && (asSuper = this.types.asSuper(this.env.enclClass.sym.type, type2.tsym)) != null) {
                type = asSuper;
                attrContext = this.env.info;
                if (attrContext.isSerializable) {
                    this.chk.checkAccessFromSerializableElement(jCFieldAccess, attrContext.isLambda);
                }
                Env<AttrContext> env3 = this.env;
                env3.info.selectSuper = z10;
                this.result = checkId(jCFieldAccess, type, varSymbol, env3, this.resultInfo);
            }
        }
        type = type2;
        attrContext = this.env.info;
        if (attrContext.isSerializable) {
        }
        Env<AttrContext> env32 = this.env;
        env32.info.selectSuper = z10;
        this.result = checkId(jCFieldAccess, type, varSymbol, env32, this.resultInfo);
    }

    @Override
    public void visitSkip(JCTree.JCSkip jCSkip) {
        this.result = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        Type attribExpr = attribExpr(jCSwitch.selector, this.env);
        Env<AttrContext> env = this.env;
        AttrContext attrContext = env.info;
        Env<AttrContext> dup = env.dup(jCSwitch, attrContext.dup(attrContext.scope.dup()));
        try {
            boolean z10 = (attribExpr.tsym.flags() & 16384) != 0;
            boolean isSameType = this.types.isSameType(attribExpr, this.syms.stringType);
            if (isSameType && !this.allowStringsInSwitch) {
                this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, jCSwitch.selector.pos(), "string.switch.not.supported.in.source", this.sourceName);
            }
            if (!z10 && !isSameType) {
                attribExpr = this.chk.checkType(jCSwitch.selector.pos(), attribExpr, this.syms.intType);
            }
            HashSet hashSet = new HashSet();
            boolean z11 = false;
            for (List list = jCSwitch.cases; list.nonEmpty(); list = list.tail) {
                JCTree.JCCase jCCase = (JCTree.JCCase) list.head;
                JCTree.JCExpression jCExpression = jCCase.pat;
                if (jCExpression != null) {
                    if (z10) {
                        Symbol enumConstant = enumConstant(jCExpression, attribExpr);
                        if (enumConstant == null) {
                            this.log.error(jCCase.pat.pos(), "enum.label.must.be.unqualified.enum", new Object[0]);
                        } else if (!hashSet.add(enumConstant)) {
                            this.log.error(jCCase.pos(), "duplicate.case.label", new Object[0]);
                        }
                    } else {
                        Type attribExpr2 = attribExpr(jCExpression, dup, attribExpr);
                        if (!attribExpr2.hasTag(TypeTag.ERROR)) {
                            if (attribExpr2.constValue() == null) {
                                this.log.error(jCCase.pat.pos(), isSameType ? "string.const.req" : "const.expr.req", new Object[0]);
                            } else if (!hashSet.add(attribExpr2.constValue())) {
                                this.log.error(jCCase.pos(), "duplicate.case.label", new Object[0]);
                            }
                        }
                    }
                } else if (z11) {
                    this.log.error(jCCase.pos(), "duplicate.default.label", new Object[0]);
                } else {
                    z11 = true;
                }
                Env<AttrContext> dup2 = dup.dup(jCCase, this.env.info.dup(dup.info.scope.dup()));
                try {
                    attribStats(jCCase.stats, dup2);
                    dup2.info.scope.leave();
                    addVars(jCCase.stats, dup.info.scope);
                } catch (Throwable th2) {
                    dup2.info.scope.leave();
                    addVars(jCCase.stats, dup.info.scope);
                    throw th2;
                }
            }
            this.result = null;
            dup.info.scope.leave();
        } catch (Throwable th3) {
            dup.info.scope.leave();
            throw th3;
        }
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        this.chk.checkRefType(jCSynchronized.pos(), attribExpr(jCSynchronized.lock, this.env));
        attribStat(jCSynchronized.body, this.env);
        this.result = null;
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        Type attribExpr = attribExpr(jCThrow.expr, this.env, this.allowPoly ? Type.noType : this.syms.throwableType);
        if (this.allowPoly) {
            this.chk.checkType(jCThrow, attribExpr, this.syms.throwableType);
        }
        this.result = null;
    }

    @Override
    public void visitTree(JCTree jCTree) {
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        Env<AttrContext> env;
        Env<AttrContext> env2 = this.env;
        AttrContext attrContext = env2.info;
        Env<AttrContext> dup = env2.dup(jCTry, attrContext.dup(attrContext.scope.dup()));
        try {
            boolean nonEmpty = jCTry.resources.nonEmpty();
            if (nonEmpty) {
                Env<AttrContext> env3 = this.env;
                AttrContext attrContext2 = dup.info;
                env = env3.dup(jCTry, attrContext2.dup(attrContext2.scope.dup()));
            } else {
                env = dup;
            }
            try {
                Iterator<JCTree> it = jCTry.resources.iterator();
                while (it.hasNext()) {
                    JCTree next = it.next();
                    ResultInfo resultInfo = new ResultInfo(this, Kinds.KindSelector.VAR, this.syms.autoCloseableType, new Check.NestedCheckContext(this.resultInfo.checkContext) {
                        @Override
                        public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic jCDiagnostic) {
                            Attr attr = Attr.this;
                            attr.chk.basicHandler.report(diagnosticPosition, attr.diags.fragment("try.not.applicable.to.type", jCDiagnostic));
                        }
                    });
                    if (next.hasTag(JCTree.Tag.VARDEF)) {
                        attribStat(next, env);
                        resultInfo.check(next, next.type);
                        checkAutoCloseable(next.pos(), dup, next.type);
                        ((JCTree.JCVariableDecl) next).sym.setData(ElementKind.RESOURCE_VARIABLE);
                    } else {
                        attribTree(next, env, resultInfo);
                    }
                }
                attribStat(jCTry.body, env);
                if (nonEmpty) {
                    env.info.scope.leave();
                }
                for (List list = jCTry.catchers; list.nonEmpty(); list = list.tail) {
                    JCTree.JCCatch jCCatch = (JCTree.JCCatch) list.head;
                    AttrContext attrContext3 = dup.info;
                    Env<AttrContext> dup2 = dup.dup(jCCatch, attrContext3.dup(attrContext3.scope.dup()));
                    try {
                        Type attribStat = attribStat(jCCatch.param, dup2);
                        if (TreeInfo.isMultiCatch(jCCatch)) {
                            jCCatch.param.sym.flags_field |= 549755813904L;
                        }
                        Symbol.VarSymbol varSymbol = jCCatch.param.sym;
                        if (varSymbol.kind == Kinds.Kind.VAR) {
                            varSymbol.setData(ElementKind.EXCEPTION_PARAMETER);
                        }
                        this.chk.checkType(jCCatch.param.vartype.pos(), this.chk.checkClassType(jCCatch.param.vartype.pos(), attribStat), this.syms.throwableType);
                        attribStat(jCCatch.body, dup2);
                        dup2.info.scope.leave();
                    } finally {
                        dup2.info.scope.leave();
                    }
                }
                JCTree.JCBlock jCBlock = jCTry.finalizer;
                if (jCBlock != null) {
                    attribStat(jCBlock, dup);
                }
                this.result = null;
                dup.info.scope.leave();
            } finally {
                if (nonEmpty) {
                    env.info.scope.leave();
                }
            }
        } catch (Throwable th2) {
            dup.info.scope.leave();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v19, types: [A, org.openjdk.tools.javac.code.Type] */
    @Override
    public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
        Type type;
        Type createErrorType = this.types.createErrorType(jCTypeApply.type);
        Type checkClassType = this.chk.checkClassType(jCTypeApply.clazz.pos(), attribType(jCTypeApply.clazz, this.env));
        List<Type> attribTypes = attribTypes(jCTypeApply.arguments, this.env);
        if (checkClassType.hasTag(TypeTag.CLASS)) {
            List<Type> typeArguments = checkClassType.tsym.type.getTypeArguments();
            if (attribTypes.isEmpty()) {
                attribTypes = typeArguments;
            }
            if (attribTypes.length() == typeArguments.length()) {
                List list = attribTypes;
                List<Type> list2 = typeArguments;
                while (list.nonEmpty()) {
                    list.head = ((Type) list.head).withTypeVar(list2.head);
                    list = list.tail;
                    list2 = list2.tail;
                }
                Type enclosingType = checkClassType.getEnclosingType();
                TypeTag typeTag = TypeTag.CLASS;
                if (enclosingType.hasTag(typeTag)) {
                    JCTree.JCExpression typeIn = TreeInfo.typeIn(jCTypeApply.clazz);
                    if (typeIn.hasTag(JCTree.Tag.IDENT)) {
                        type = this.env.enclClass.sym.type;
                    } else {
                        if (!typeIn.hasTag(JCTree.Tag.SELECT)) {
                            throw new AssertionError((Object) ("" + ((Object) jCTypeApply)));
                        }
                        type = ((JCTree.JCFieldAccess) typeIn).selected.type;
                    }
                    if (enclosingType.hasTag(typeTag) && type != enclosingType) {
                        if (type.hasTag(typeTag)) {
                            type = this.types.asOuterSuper(type, enclosingType.tsym);
                        }
                        enclosingType = type == null ? this.types.erasure(enclosingType) : type;
                    }
                }
                createErrorType = new Type.ClassType(enclosingType, attribTypes, checkClassType.tsym, checkClassType.getMetadata());
            } else {
                if (typeArguments.length() != 0) {
                    this.log.error(jCTypeApply.pos(), "wrong.number.type.args", Integer.toString(typeArguments.length()));
                } else {
                    this.log.error(jCTypeApply.pos(), "type.doesnt.take.params", checkClassType.tsym);
                }
                createErrorType = this.types.createErrorType(jCTypeApply.type);
            }
        }
        this.result = check(jCTypeApply, createErrorType, Kinds.KindSelector.TYP, this.resultInfo);
    }

    @Override
    public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
        this.result = check(jCArrayTypeTree, new Type.ArrayType(attribType(jCArrayTypeTree.elemtype, this.env), this.syms.arrayClass), Kinds.KindSelector.TYP, this.resultInfo);
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        Type attribType = attribType(jCTypeCast.clazz, this.env);
        boolean z10 = false;
        this.chk.validate(jCTypeCast.clazz, this.env, false);
        Env<AttrContext> dup = this.env.dup(jCTypeCast);
        JCTree.JCExpression skipParens = TreeInfo.skipParens(jCTypeCast.expr);
        if (this.allowPoly && (skipParens.hasTag(JCTree.Tag.LAMBDA) || skipParens.hasTag(JCTree.Tag.REFERENCE))) {
            z10 = true;
        }
        Type attribTree = attribTree(jCTypeCast.expr, dup, z10 ? new ResultInfo(this, Kinds.KindSelector.VAL, attribType, new Check.NestedCheckContext(this.resultInfo.checkContext) {
            @Override
            public boolean compatible(Type type, Type type2, Warner warner) {
                return Attr.this.types.isCastable(type, type2, warner);
            }
        }) : this.unknownExprInfo);
        if (!z10) {
            attribType = this.chk.checkCastable(jCTypeCast.expr.pos(), attribTree, attribType);
        }
        if (attribTree.constValue() != null) {
            attribType = this.cfolder.coerce(attribTree, attribType);
        }
        this.result = check(jCTypeCast, capture(attribType), Kinds.KindSelector.VAL, this.resultInfo);
        if (z10) {
            return;
        }
        this.chk.checkRedundantCast(dup, jCTypeCast);
    }

    @Override
    public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
        this.result = check(jCPrimitiveTypeTree, this.syms.typeOfTag[jCPrimitiveTypeTree.typetag.ordinal()], Kinds.KindSelector.TYP, this.resultInfo);
    }

    @Override
    public void visitTypeIntersection(JCTree.JCTypeIntersection jCTypeIntersection) {
        attribTypes(jCTypeIntersection.bounds, this.env);
        Type checkIntersection = checkIntersection(jCTypeIntersection, jCTypeIntersection.bounds);
        this.result = checkIntersection;
        jCTypeIntersection.type = checkIntersection;
    }

    @Override
    public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
        Type.TypeVar typeVar = (Type.TypeVar) jCTypeParameter.type;
        List<JCTree.JCAnnotation> list = jCTypeParameter.annotations;
        if (list != null && list.nonEmpty()) {
            this.annotate.annotateTypeParameterSecondStage(jCTypeParameter, jCTypeParameter.annotations);
        }
        if (typeVar.bound.isErroneous()) {
            return;
        }
        typeVar.bound = checkIntersection(jCTypeParameter, jCTypeParameter.bounds);
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        Type checkNullOrRefType = this.chk.checkNullOrRefType(jCInstanceOf.expr.pos(), attribExpr(jCInstanceOf.expr, this.env));
        Type attribType = attribType(jCInstanceOf.clazz, this.env);
        if (!attribType.hasTag(TypeTag.TYPEVAR)) {
            attribType = this.chk.checkClassOrArrayType(jCInstanceOf.clazz.pos(), attribType);
        }
        if (!attribType.isErroneous() && !this.types.isReifiable(attribType)) {
            this.log.error(jCInstanceOf.clazz.pos(), "illegal.generic.type.for.instof", new Object[0]);
            attribType = this.types.createErrorType(attribType);
        }
        this.chk.validate(jCInstanceOf.clazz, this.env, false);
        this.chk.checkCastable(jCInstanceOf.expr.pos(), checkNullOrRefType, attribType);
        this.result = check(jCInstanceOf, this.syms.booleanType, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitTypeUnion(JCTree.JCTypeUnion jCTypeUnion) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<JCTree.JCExpression> it = jCTypeUnion.alternatives.iterator();
        ListBuffer listBuffer2 = null;
        while (it.hasNext()) {
            JCTree.JCExpression next = it.next();
            Type checkType = this.chk.checkType(next.pos(), this.chk.checkClassType(next.pos(), attribType(next, this.env)), this.syms.throwableType);
            if (checkType.isErroneous()) {
                if (listBuffer2 == null) {
                    listBuffer2 = new ListBuffer();
                    listBuffer2.appendList(listBuffer);
                }
                listBuffer2.append(checkType);
            } else {
                if (this.chk.intersects(checkType, listBuffer.toList())) {
                    Iterator it2 = listBuffer.iterator();
                    while (it2.hasNext()) {
                        Type type = (Type) it2.next();
                        boolean isSubtype = this.types.isSubtype(checkType, type);
                        boolean isSubtype2 = this.types.isSubtype(type, checkType);
                        if (isSubtype || isSubtype2) {
                            Type type2 = isSubtype ? checkType : type;
                            if (!isSubtype) {
                                type = checkType;
                            }
                            this.log.error(next.pos(), "multicatch.types.must.be.disjoint", type2, type);
                        }
                    }
                }
                listBuffer.append(checkType);
                if (listBuffer2 != null) {
                    listBuffer2.append(checkType);
                }
            }
        }
        Type check = check(jCTypeUnion, this.types.lub(listBuffer.toList()), Kinds.KindSelector.TYP, this.resultInfo.dup(CheckMode.NO_TREE_UPDATE));
        if (check.hasTag(TypeTag.CLASS)) {
            if (listBuffer2 != null) {
                listBuffer = listBuffer2;
            }
            check = new Type.UnionClassType((Type.ClassType) check, listBuffer.toList());
        }
        this.result = check;
        jCTypeUnion.type = check;
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        Type fold1;
        Type attribTree = jCUnary.getTag().isIncOrDecUnaryOp() ? attribTree(jCUnary.arg, this.env, this.varAssignmentInfo) : this.chk.checkNonVoid(jCUnary.arg.pos(), attribExpr(jCUnary.arg, this.env));
        Symbol.OperatorSymbol resolveUnary = this.operators.resolveUnary(jCUnary, jCUnary.getTag(), attribTree);
        jCUnary.operator = resolveUnary;
        Type createErrorType = this.types.createErrorType(jCUnary.type);
        if (resolveUnary != this.operators.noOpSymbol && !attribTree.isErroneous()) {
            createErrorType = jCUnary.getTag().isIncOrDecUnaryOp() ? jCUnary.arg.type : resolveUnary.type.getReturnType();
            int i10 = resolveUnary.opcode;
            if (attribTree.constValue() != null && (fold1 = this.cfolder.fold1(i10, attribTree)) != null) {
                createErrorType = this.cfolder.coerce(fold1, createErrorType);
            }
        }
        this.result = check(jCUnary, createErrorType, Kinds.KindSelector.VAL, this.resultInfo);
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        Env<AttrContext> env = this.env;
        AttrContext attrContext = env.info;
        if (attrContext.scope.owner.kind == Kinds.Kind.MTH) {
            Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
            if (varSymbol != null) {
                attrContext.scope.enter(varSymbol);
            } else {
                try {
                    this.annotate.blockAnnotations();
                    this.memberEnter.memberEnter(jCVariableDecl, this.env);
                } finally {
                    this.annotate.unblockAnnotations();
                }
            }
        } else {
            JCTree.JCExpression jCExpression = jCVariableDecl.init;
            if (jCExpression != null) {
                this.annotate.queueScanTreeAndTypeAnnotate(jCExpression, env, jCVariableDecl.sym, jCVariableDecl.pos());
                this.annotate.flush();
            }
        }
        Symbol.VarSymbol varSymbol2 = jCVariableDecl.sym;
        Lint augment = this.env.info.lint.augment(varSymbol2);
        Lint lint = this.chk.setLint(augment);
        this.chk.validate(jCVariableDecl.vartype, this.env, !(this.env.tree.hasTag(JCTree.Tag.LAMBDA) && ((JCTree.JCLambda) this.env.tree).paramKind == JCTree.JCLambda.ParameterKind.IMPLICIT && (jCVariableDecl.sym.flags() & 8589934592L) != 0));
        try {
            varSymbol2.getConstValue();
            this.deferredLintHandler.flush(jCVariableDecl.pos());
            this.chk.checkDeprecatedAnnotation(jCVariableDecl.pos(), varSymbol2);
            JCTree.JCExpression jCExpression2 = jCVariableDecl.init;
            if (jCExpression2 != null) {
                if ((varSymbol2.flags_field & 16) != 0) {
                    if (!this.memberEnter.needsLazyConstValue(jCExpression2)) {
                    }
                }
                Env<AttrContext> initEnv = this.memberEnter.initEnv(jCVariableDecl, this.env);
                AttrContext attrContext2 = initEnv.info;
                attrContext2.lint = augment;
                attrContext2.enclVar = varSymbol2;
                attribExpr(jCVariableDecl.init, initEnv, varSymbol2.type);
            }
            Type type = varSymbol2.type;
            jCVariableDecl.type = type;
            this.result = type;
            this.chk.setLint(lint);
        } catch (Throwable th2) {
            this.chk.setLint(lint);
            throw th2;
        }
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        attribExpr(jCWhileLoop.cond, this.env, this.syms.booleanType);
        attribStat(jCWhileLoop.body, this.env.dup(jCWhileLoop));
        this.result = null;
    }

    @Override
    public void visitWildcard(JCTree.JCWildcard jCWildcard) {
        this.result = check(jCWildcard, new Type.WildcardType(this.chk.checkRefType(jCWildcard.pos(), jCWildcard.kind.kind == BoundKind.UNBOUND ? this.syms.objectType : attribType(jCWildcard.inner, this.env)), jCWildcard.kind.kind, this.syms.boundClass), Kinds.KindSelector.TYP, this.resultInfo);
    }

    private void checkAccessibleTypes(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final Env<AttrContext> env, InferenceContext inferenceContext, final List<Type> list) {
        if (inferenceContext.free(list)) {
            inferenceContext.addFreeTypeListener(list, new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    Attr.this.lambda$checkAccessibleTypes$5(diagnosticPosition, env, list, inferenceContext2);
                }
            });
            return;
        }
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            this.rs.checkAccessibleType(env, it.next());
        }
    }

    public Type attribExpr(JCTree jCTree, Env<AttrContext> env) {
        return attribTree(jCTree, env, this.unknownExprInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void attribClass(Symbol.ClassSymbol classSymbol) throws Symbol.CompletionFailure {
        A a10;
        if (classSymbol.type.hasTag(TypeTag.ERROR)) {
            return;
        }
        this.chk.checkNonCyclic((JCDiagnostic.DiagnosticPosition) null, classSymbol.type);
        Type supertype = this.types.supertype(classSymbol.type);
        if ((classSymbol.flags_field & 16777216) == 0) {
            TypeTag typeTag = TypeTag.CLASS;
            if (supertype.hasTag(typeTag)) {
                attribClass((Symbol.ClassSymbol) supertype.tsym);
            }
            Symbol symbol = classSymbol.owner;
            if (symbol.kind == Kinds.Kind.TYP && symbol.type.hasTag(typeTag)) {
                attribClass((Symbol.ClassSymbol) classSymbol.owner);
            }
        }
        long j10 = classSymbol.flags_field;
        if ((TagBits.HasUnresolvedMemberTypes & j10) != 0) {
            classSymbol.flags_field = j10 & (-268435457);
            Env<AttrContext> env = this.typeEnvs.get(classSymbol);
            Env env2 = env;
            while (true) {
                a10 = env2.info;
                if (((AttrContext) a10).lint != null) {
                    break;
                } else {
                    env2 = env2.next;
                }
            }
            env.info.lint = ((AttrContext) a10).lint.augment(classSymbol);
            Lint lint = this.chk.setLint(env.info.lint);
            JavaFileObject useSource = this.log.useSource(classSymbol.sourcefile);
            ResultInfo resultInfo = env.info.returnResult;
            try {
                this.deferredLintHandler.flush(env.tree);
                env.info.returnResult = null;
                if (supertype.tsym == this.syms.enumSym && (classSymbol.flags_field & 16793600) == 0) {
                    this.log.error(env.tree.pos(), "enum.no.subclassing", new Object[0]);
                }
                Symbol.TypeSymbol typeSymbol = supertype.tsym;
                if (typeSymbol != null && (typeSymbol.flags_field & 16384) != 0 && (16793600 & classSymbol.flags_field) == 0) {
                    this.log.error(env.tree.pos(), "enum.types.not.extensible", new Object[0]);
                }
                if (isSerializable(classSymbol.type)) {
                    env.info.isSerializable = true;
                }
                attribClassBody(env, classSymbol);
                this.chk.checkDeprecatedAnnotation(env.tree.pos(), classSymbol);
                this.chk.checkClassOverrideEqualsAndHashIfNeeded(env.tree.pos(), classSymbol);
                this.chk.checkFunctionalInterface((JCTree.JCClassDecl) env.tree, classSymbol);
                this.chk.checkLeaksNotAccessible(env, (JCTree.JCClassDecl) env.tree);
                env.info.returnResult = resultInfo;
                this.log.useSource(useSource);
                this.chk.setLint(lint);
            } catch (Throwable th2) {
                env.info.returnResult = resultInfo;
                this.log.useSource(useSource);
                this.chk.setLint(lint);
                throw th2;
            }
        }
    }

    public void attribModule(Symbol.ModuleSymbol moduleSymbol) {
        Env<AttrContext> env = this.enter.typeEnvs.get(moduleSymbol);
        attribStat(env.tree, env);
    }

    public void attribPackage(Symbol.PackageSymbol packageSymbol) {
        this.chk.checkDeprecatedAnnotation(((JCTree.JCPackageDecl) this.typeEnvs.get(packageSymbol).tree).pid.pos(), packageSymbol);
    }

    public Type attribType(JCTree jCTree, Env<AttrContext> env) {
        return attribType(jCTree, env, Type.noType);
    }

    public Symbol attribIdent(JCTree jCTree, Env<AttrContext> env) {
        return (Symbol) jCTree.accept(this.identAttributer, env);
    }

    public Type attribType(JCTree jCTree, Env<AttrContext> env, Type type) {
        return attribTree(jCTree, env, new ResultInfo(this, Kinds.KindSelector.TYP, type));
    }

    public class PostAttrAnalyzer extends TreeScanner {
        public PostAttrAnalyzer() {
        }

        private Type dummyMethodType(JCTree.JCMethodDecl jCMethodDecl) {
            Type type = Attr.this.syms.unknownType;
            if (jCMethodDecl != null && jCMethodDecl.restype.hasTag(JCTree.Tag.TYPEIDENT) && ((JCTree.JCPrimitiveTypeTree) jCMethodDecl.restype).typetag == TypeTag.VOID) {
                type = Attr.this.syms.voidType;
            }
            return new Type.MethodType(List.nil(), type, List.nil(), Attr.this.syms.methodClass);
        }

        private void initTypeIfNeeded(JCTree jCTree) {
            if (jCTree.type == null) {
                if (jCTree.hasTag(JCTree.Tag.METHODDEF)) {
                    jCTree.type = dummyMethodType((JCTree.JCMethodDecl) jCTree);
                } else {
                    jCTree.type = Attr.this.syms.unknownType;
                }
            }
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree == null) {
                return;
            }
            if (jCTree instanceof JCTree.JCExpression) {
                initTypeIfNeeded(jCTree);
            }
            super.scan(jCTree);
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            if (jCAssignOp.operator == null) {
                jCAssignOp.operator = new Symbol.OperatorSymbol(Attr.this.names.empty, dummyMethodType(), -1, Attr.this.syms.noSymbol);
            }
            super.visitAssignop(jCAssignOp);
        }

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            if (jCBinary.operator == null) {
                jCBinary.operator = new Symbol.OperatorSymbol(Attr.this.names.empty, dummyMethodType(), -1, Attr.this.syms.noSymbol);
            }
            super.visitBinary(jCBinary);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            initTypeIfNeeded(jCClassDecl);
            if (jCClassDecl.sym == null) {
                jCClassDecl.sym = new Symbol.ClassSymbol(0L, jCClassDecl.name, jCClassDecl.type, Attr.this.syms.noSymbol);
            }
            super.visitClassDef(jCClassDecl);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            if (jCIdent.sym == null) {
                jCIdent.sym = Attr.this.syms.unknownSymbol;
            }
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            super.visitLambda(jCLambda);
            if (jCLambda.targets == null) {
                jCLambda.targets = List.nil();
            }
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            initTypeIfNeeded(jCMethodDecl);
            if (jCMethodDecl.sym == null) {
                jCMethodDecl.sym = new Symbol.MethodSymbol(0L, jCMethodDecl.name, jCMethodDecl.type, Attr.this.syms.noSymbol);
            }
            super.visitMethodDef(jCMethodDecl);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            if (jCNewClass.constructor == null) {
                jCNewClass.constructor = new Symbol.MethodSymbol(0L, Attr.this.names.init, dummyMethodType(), Attr.this.syms.noSymbol);
            }
            if (jCNewClass.constructorType == null) {
                jCNewClass.constructorType = Attr.this.syms.unknownType;
            }
            super.visitNewClass(jCNewClass);
        }

        @Override
        public void visitReference(JCTree.JCMemberReference jCMemberReference) {
            super.visitReference(jCMemberReference);
            if (jCMemberReference.sym == null) {
                jCMemberReference.sym = new Symbol.MethodSymbol(0L, Attr.this.names.empty, dummyMethodType(), Attr.this.syms.noSymbol);
            }
            if (jCMemberReference.targets == null) {
                jCMemberReference.targets = List.nil();
            }
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            if (jCFieldAccess.sym == null) {
                jCFieldAccess.sym = Attr.this.syms.unknownSymbol;
            }
            super.visitSelect(jCFieldAccess);
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            if (jCUnary.operator == null) {
                jCUnary.operator = new Symbol.OperatorSymbol(Attr.this.names.empty, dummyMethodType(), -1, Attr.this.syms.noSymbol);
            }
            super.visitUnary(jCUnary);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            initTypeIfNeeded(jCVariableDecl);
            if (jCVariableDecl.sym == null) {
                Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(0L, jCVariableDecl.name, jCVariableDecl.type, Attr.this.syms.noSymbol);
                jCVariableDecl.sym = varSymbol;
                varSymbol.adr = 0;
            }
            if (jCVariableDecl.vartype == null) {
                jCVariableDecl.vartype = Attr.this.make.Erroneous();
            }
            super.visitVarDef(jCVariableDecl);
        }

        private Type dummyMethodType() {
            return dummyMethodType(null);
        }
    }
}
