package org.openjdk.tools.javac.comp;

import android.provider.CallLog;
import java.lang.constant.ConstantDescs;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Lower;
import org.openjdk.tools.javac.jvm.Pool;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeTranslator;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class LambdaToMethod extends TreeTranslator {
    public static final int FLAG_BRIDGES = 4;
    public static final int FLAG_MARKERS = 2;
    public static final int FLAG_SERIALIZABLE = 1;
    protected static final Context.Key<LambdaToMethod> unlambdaKey = new Context.Key<>();
    private LambdaAnalyzerPreprocessor analyzer;
    private Attr attr;
    private Env<AttrContext> attrEnv;
    private LambdaAnalyzerPreprocessor.TranslationContext<?> context;
    private Map<JCTree, LambdaAnalyzerPreprocessor.TranslationContext<?>> contextMap;
    private JCDiagnostic.Factory diags;
    private final boolean dumpLambdaToMethodStats;
    private final boolean forceSerializable;
    private KlassInfo kInfo;
    private Log log;
    private Lower lower;
    private TreeMaker make;
    private Names names;
    private Operators operators;
    private Resolve rs;
    private Symtab syms;
    private TransTypes transTypes;
    private Types types;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[LambdaSymbolKind.values().length];
            $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind = iArr;
            try {
                iArr[LambdaSymbolKind.CAPTURED_THIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[LambdaSymbolKind.TYPE_VAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[LambdaSymbolKind.CAPTURED_VAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[LambdaSymbolKind.CAPTURED_OUTER_THIS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[LambdaSymbolKind.LOCAL_VAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[LambdaSymbolKind.PARAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr2;
            try {
                iArr2[JCTree.Tag.APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEWCLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPECAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CLASSDEF.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BLOCK.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.METHODDEF.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LAMBDA.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.ASSIGN.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[JCTree.JCMemberReference.ReferenceKind.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind = iArr3;
            try {
                iArr3[JCTree.JCMemberReference.ReferenceKind.IMPLICIT_INNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.SUPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.BOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.UNBOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.STATIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.TOPLEVEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[JCTree.JCMemberReference.ReferenceKind.ARRAY_CTOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public class KlassInfo {
        private ListBuffer<JCTree> appendedMethodList;
        private final JCTree.JCClassDecl clazz;
        private final Symbol.MethodSymbol deserMethodSym;
        private final Symbol.VarSymbol deserParamSym;
        private final Map<String, ListBuffer<JCTree.JCStatement>> deserializeCases;

        public KlassInfo(LambdaToMethod lambdaToMethod, JCTree.JCClassDecl jCClassDecl, AnonymousClass1 anonymousClass1) {
            this(jCClassDecl);
        }

        public void addMethod(JCTree jCTree) {
            this.appendedMethodList = this.appendedMethodList.prepend(jCTree);
        }

        private KlassInfo(JCTree.JCClassDecl jCClassDecl) {
            this.clazz = jCClassDecl;
            this.appendedMethodList = new ListBuffer<>();
            this.deserializeCases = new HashMap();
            Symbol.MethodSymbol makePrivateSyntheticMethod = LambdaToMethod.this.makePrivateSyntheticMethod(8L, LambdaToMethod.this.names.deserializeLambda, new Type.MethodType(List.of(LambdaToMethod.this.syms.serializedLambdaType), LambdaToMethod.this.syms.objectType, List.nil(), LambdaToMethod.this.syms.methodClass), jCClassDecl.sym);
            this.deserMethodSym = makePrivateSyntheticMethod;
            this.deserParamSym = new Symbol.VarSymbol(16L, LambdaToMethod.this.names.fromString("lambda"), LambdaToMethod.this.syms.serializedLambdaType, makePrivateSyntheticMethod);
        }
    }

    public class L2MSignatureGenerator extends Types.SignatureGenerator {

        StringBuilder f103042sb;

        public L2MSignatureGenerator() {
            super(LambdaToMethod.this.types);
            this.f103042sb = new StringBuilder();
        }

        @Override
        public void append(char c10) {
            this.f103042sb.append(c10);
        }

        public String toString() {
            return this.f103042sb.toString();
        }

        @Override
        public void append(byte[] bArr) {
            this.f103042sb.append(new String(bArr));
        }

        @Override
        public void append(Name name) {
            this.f103042sb.append(name.toString());
        }
    }

    public class LambdaAnalyzerPreprocessor extends TreeTranslator {
        private List<Frame> frameStack;
        private Map<Symbol, JCTree.JCClassDecl> localClassDefs;
        private List<Symbol.ClassSymbol> typesUnderConstruction;
        private int lambdaCount = 0;
        private SyntheticMethodNameCounter syntheticMethodNameCounts = new SyntheticMethodNameCounter(this, null);
        private Map<Symbol.ClassSymbol, Symbol> clinits = new HashMap();

        public class Frame {
            List<Symbol> locals;
            final JCTree tree;

            public Frame(JCTree jCTree) {
                this.tree = jCTree;
            }

            public void addLocal(Symbol symbol) {
                if (this.locals == null) {
                    this.locals = List.nil();
                }
                this.locals = this.locals.prepend(symbol);
            }
        }

        public final class ReferenceTranslationContext extends TranslationContext<JCTree.JCMemberReference> {
            final boolean isSuper;
            final Symbol sigPolySym;

            public ReferenceTranslationContext(JCTree.JCMemberReference jCMemberReference) {
                super(jCMemberReference);
                this.isSuper = jCMemberReference.hasKind(JCTree.JCMemberReference.ReferenceKind.SUPER);
                this.sigPolySym = isSignaturePolymorphic() ? LambdaToMethod.this.makePrivateSyntheticMethod(jCMemberReference.sym.flags(), jCMemberReference.sym.name, bridgedRefSig(), jCMemberReference.sym.enclClass()) : null;
            }

            public Type bridgedRefSig() {
                return LambdaToMethod.this.types.erasure(LambdaToMethod.this.types.findDescriptorSymbol(((JCTree.JCMemberReference) this.tree).targets.head.tsym).type);
            }

            public Type generatedRefSig() {
                return LambdaToMethod.this.types.erasure(((JCTree.JCMemberReference) this.tree).sym.type);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public boolean interfaceParameterIsIntersectionType() {
                for (List parameterTypes = ((JCTree.JCMemberReference) this.tree).getDescriptorType(LambdaToMethod.this.types).getParameterTypes(); parameterTypes.nonEmpty(); parameterTypes = parameterTypes.tail) {
                    Type type = (Type) parameterTypes.head;
                    if (type.getKind() == TypeKind.TYPEVAR && ((Type.TypeVar) type).bound.getKind() == TypeKind.INTERSECTION) {
                        return true;
                    }
                }
                return false;
            }

            public boolean isArrayOp() {
                return ((JCTree.JCMemberReference) this.tree).sym.owner == LambdaToMethod.this.syms.arrayClass;
            }

            public boolean isPrivateInOtherClass() {
                return ((((JCTree.JCMemberReference) this.tree).sym.flags() & 2) == 0 || LambdaToMethod.this.types.isSameType(LambdaToMethod.this.types.erasure(((JCTree.JCMemberReference) this.tree).sym.enclClass().asType()), LambdaToMethod.this.types.erasure(this.owner.enclClass().asType()))) ? false : true;
            }

            public boolean isProtectedInSuperClassOfEnclosingClassInOtherPackage() {
                return ((((JCTree.JCMemberReference) this.tree).sym.flags() & 4) == 0 || ((JCTree.JCMemberReference) this.tree).sym.packge() == this.owner.packge() || this.owner.enclClass().isSubClass(((JCTree.JCMemberReference) this.tree).sym.owner, LambdaToMethod.this.types)) ? false : true;
            }

            public final boolean isSignaturePolymorphic() {
                return ((JCTree.JCMemberReference) this.tree).sym.kind == Kinds.Kind.MTH && LambdaToMethod.this.types.isSignaturePolymorphic((Symbol.MethodSymbol) ((JCTree.JCMemberReference) this.tree).sym);
            }

            public final boolean needsConversionToLambda() {
                if (!interfaceParameterIsIntersectionType() && !this.isSuper && !needsVarArgsConversion() && !isArrayOp() && !isPrivateInOtherClass() && !isProtectedInSuperClassOfEnclosingClassInOtherPackage() && receiverAccessible()) {
                    if (((JCTree.JCMemberReference) this.tree).getMode() == MemberReferenceTree.ReferenceMode.NEW) {
                        T t10 = this.tree;
                        if (((JCTree.JCMemberReference) t10).kind == JCTree.JCMemberReference.ReferenceKind.ARRAY_CTOR || (!((JCTree.JCMemberReference) t10).sym.owner.isLocal() && !((JCTree.JCMemberReference) this.tree).sym.owner.isInner())) {
                        }
                    }
                    return false;
                }
                return true;
            }

            public boolean needsVarArgsConversion() {
                return ((JCTree.JCMemberReference) this.tree).varargsElement != null;
            }

            public boolean receiverAccessible() {
                return ((JCTree.JCMemberReference) this.tree).ownerAccessible;
            }

            public int referenceKind() {
                return LambdaToMethod.this.referenceKind(((JCTree.JCMemberReference) this.tree).sym);
            }
        }

        public abstract class TranslationContext<T extends JCTree.JCFunctionalExpression> {
            final List<Symbol> bridges;
            final int depth;
            final Symbol owner;
            final TranslationContext<?> prev;
            final T tree;

            public TranslationContext(T t10) {
                this.tree = t10;
                this.owner = LambdaAnalyzerPreprocessor.this.owner(true);
                this.depth = LambdaAnalyzerPreprocessor.this.frameStack.size() - 1;
                this.prev = LambdaAnalyzerPreprocessor.this.context();
                this.bridges = LambdaToMethod.this.types.functionalInterfaceBridges(LambdaToMethod.this.types.makeFunctionalInterfaceClass(LambdaToMethod.this.attrEnv, LambdaToMethod.this.names.empty, t10.targets, 1536L));
            }

            public String enclosingMethodName() {
                return syntheticMethodNameComponent(this.owner.name);
            }

            public boolean isSerializable() {
                if (LambdaToMethod.this.forceSerializable) {
                    return true;
                }
                Iterator<Type> it = this.tree.targets.iterator();
                while (it.hasNext()) {
                    if (LambdaToMethod.this.types.asSuper(it.next(), LambdaToMethod.this.syms.serializableType.tsym) != null) {
                        return true;
                    }
                }
                return false;
            }

            public boolean needsAltMetafactory() {
                return this.tree.targets.length() > 1 || isSerializable() || this.bridges.length() > 1;
            }

            public String syntheticMethodNameComponent(Name name) {
                if (name == null) {
                    return "null";
                }
                String name2 = name.toString();
                return name2.equals(ConstantDescs.CLASS_INIT_NAME) ? "static" : name2.equals(ConstantDescs.INIT_NAME) ? CallLog.Calls.NEW : name2;
            }
        }

        public LambdaAnalyzerPreprocessor() {
        }

        public static int access$3408(LambdaAnalyzerPreprocessor lambdaAnalyzerPreprocessor) {
            int i10 = lambdaAnalyzerPreprocessor.lambdaCount;
            lambdaAnalyzerPreprocessor.lambdaCount = i10 + 1;
            return i10;
        }

        public JCTree.JCClassDecl analyzeAndPreprocessClass(JCTree.JCClassDecl jCClassDecl) {
            this.frameStack = List.nil();
            this.typesUnderConstruction = List.nil();
            this.localClassDefs = new HashMap();
            return (JCTree.JCClassDecl) translate((LambdaAnalyzerPreprocessor) jCClassDecl);
        }

        private void analyzeLambda(JCTree.JCLambda jCLambda, JCTree.JCExpression jCExpression) {
            JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) translate((LambdaAnalyzerPreprocessor) jCExpression);
            LambdaTranslationContext analyzeLambda = analyzeLambda(jCLambda, "mref.stat.1");
            if (jCExpression2 != null) {
                analyzeLambda.methodReferenceReceiver = jCExpression2;
            }
        }

        public JCTree capturedDecl(int i10, Symbol symbol) {
            int size = this.frameStack.size() - 1;
            Iterator<Frame> it = this.frameStack.iterator();
            while (it.hasNext()) {
                Frame next = it.next();
                switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[next.tree.getTag().ordinal()]) {
                    case 4:
                        Symbol.ClassSymbol classSymbol = ((JCTree.JCClassDecl) next.tree).sym;
                        if (!classSymbol.isSubClass(symbol, LambdaToMethod.this.types) && !symbol.isMemberOf(classSymbol, LambdaToMethod.this.types)) {
                            break;
                        } else {
                            if (size > i10) {
                                return null;
                            }
                            return next.tree;
                        }
                    case 5:
                        JCTree jCTree = next.tree;
                        if (((JCTree.JCVariableDecl) jCTree).sym == symbol && symbol.owner.kind == Kinds.Kind.MTH) {
                            if (size > i10) {
                                return null;
                            }
                            return jCTree;
                        }
                        break;
                    case 6:
                    case 7:
                    case 8:
                        List<Symbol> list = next.locals;
                        if (list != null && list.contains(symbol)) {
                            if (size > i10) {
                                return null;
                            }
                            return next.tree;
                        }
                        break;
                    default:
                        Assert.error("bad decl kind " + ((Object) next.tree.getTag()));
                        break;
                }
                size--;
            }
            return null;
        }

        public TranslationContext<?> context() {
            Iterator<Frame> it = this.frameStack.iterator();
            while (it.hasNext()) {
                TranslationContext<?> translationContext = (TranslationContext) LambdaToMethod.this.contextMap.get(it.next().tree);
                if (translationContext != null) {
                    return translationContext;
                }
            }
            return null;
        }

        public Symbol.ClassSymbol currentClass() {
            Iterator<Frame> it = this.frameStack.iterator();
            while (it.hasNext()) {
                Frame next = it.next();
                if (next.tree.hasTag(JCTree.Tag.CLASSDEF)) {
                    return ((JCTree.JCClassDecl) next.tree).sym;
                }
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public JCTree directlyEnclosingLambda() {
            if (this.frameStack.isEmpty()) {
                return null;
            }
            for (List list = this.frameStack; list.nonEmpty(); list = list.tail) {
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[((Frame) list.head).tree.getTag().ordinal()];
                if (i10 == 4 || i10 == 7) {
                    return null;
                }
                if (i10 == 8) {
                    return ((Frame) list.head).tree;
                }
            }
            Assert.error();
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private boolean inClassWithinLambda() {
            if (this.frameStack.isEmpty()) {
                return false;
            }
            List list = this.frameStack;
            boolean z10 = false;
            while (list.nonEmpty()) {
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[((Frame) list.head).tree.getTag().ordinal()];
                if (i10 == 4) {
                    list = list.tail;
                    z10 = true;
                } else {
                    if (i10 == 8) {
                        return z10;
                    }
                    list = list.tail;
                }
            }
            return false;
        }

        private Symbol initSym(Symbol.ClassSymbol classSymbol, long j10) {
            if ((j10 & 8) == 0) {
                Iterator<Symbol> it = classSymbol.members_field.getSymbolsByName(LambdaToMethod.this.names.init).iterator();
                if (it.hasNext()) {
                    return it.next();
                }
                Assert.error("init not found");
                return null;
            }
            Symbol.MethodSymbol removeClinit = LambdaToMethod.this.attr.removeClinit(classSymbol);
            if (removeClinit != null) {
                this.clinits.put(classSymbol, removeClinit);
                return removeClinit;
            }
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) this.clinits.get(classSymbol);
            if (methodSymbol != null) {
                return methodSymbol;
            }
            LambdaToMethod lambdaToMethod = LambdaToMethod.this;
            Symbol.MethodSymbol makePrivateSyntheticMethod = lambdaToMethod.makePrivateSyntheticMethod(8L, lambdaToMethod.names.clinit, new Type.MethodType(List.nil(), LambdaToMethod.this.syms.voidType, List.nil(), LambdaToMethod.this.syms.methodClass), classSymbol);
            this.clinits.put(classSymbol, makePrivateSyntheticMethod);
            return makePrivateSyntheticMethod;
        }

        public boolean lambdaFieldAccessFilter(JCTree.JCFieldAccess jCFieldAccess) {
            LambdaTranslationContext lambdaTranslationContext = LambdaToMethod.this.context instanceof LambdaTranslationContext ? (LambdaTranslationContext) LambdaToMethod.this.context : null;
            return (lambdaTranslationContext == null || jCFieldAccess.sym.isStatic() || jCFieldAccess.name != LambdaToMethod.this.names._this || jCFieldAccess.sym.owner.kind != Kinds.Kind.TYP || lambdaTranslationContext.translatedSymbols.get(LambdaSymbolKind.CAPTURED_OUTER_THIS).isEmpty()) ? false : true;
        }

        public boolean lambdaIdentSymbolFilter(Symbol symbol) {
            Kinds.Kind kind = symbol.kind;
            return ((kind != Kinds.Kind.VAR && kind != Kinds.Kind.MTH) || symbol.isStatic() || symbol.name == LambdaToMethod.this.names.init) ? false : true;
        }

        private boolean lambdaNewClassFilter(TranslationContext<?> translationContext, JCTree.JCNewClass jCNewClass) {
            if (translationContext != null && jCNewClass.encl == null && jCNewClass.def == null && !jCNewClass.type.getEnclosingType().hasTag(TypeTag.NONE)) {
                Type enclosingType = jCNewClass.type.getEnclosingType();
                for (Type type = translationContext.owner.enclClass().type; !type.hasTag(TypeTag.NONE); type = type.getEnclosingType()) {
                    if (type.tsym.isSubClass(enclosingType.tsym, LambdaToMethod.this.types)) {
                        return true;
                    }
                }
            }
            return false;
        }

        private Symbol owner() {
            return owner(false);
        }

        public void captureLocalClassDefs(Symbol symbol, LambdaTranslationContext lambdaTranslationContext) {
            JCTree.JCClassDecl jCClassDecl = this.localClassDefs.get(symbol);
            if (jCClassDecl == null || !lambdaTranslationContext.freeVarProcessedLocalClasses.add(symbol)) {
                return;
            }
            Lower lower = LambdaToMethod.this.lower;
            lower.getClass();
            new Lower.BasicFreeVarCollector(lower, lambdaTranslationContext) {
                final LambdaTranslationContext val$lambdaContext;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    this.val$lambdaContext = lambdaTranslationContext;
                    lower.getClass();
                }

                @Override
                public void addFreeVars(Symbol.ClassSymbol classSymbol) {
                    LambdaAnalyzerPreprocessor.this.captureLocalClassDefs(classSymbol, this.val$lambdaContext);
                }

                @Override
                public void visitSymbol(Symbol symbol2) {
                    if (symbol2.kind == Kinds.Kind.VAR && symbol2.owner.kind == Kinds.Kind.MTH && ((Symbol.VarSymbol) symbol2).getConstValue() == null) {
                        for (TranslationContext<?> context = LambdaAnalyzerPreprocessor.this.context(); context != null; context = context.prev) {
                            if (context.tree.getTag() == JCTree.Tag.LAMBDA) {
                                if (LambdaAnalyzerPreprocessor.this.capturedDecl(context.depth, symbol2) == null) {
                                    return;
                                } else {
                                    ((LambdaTranslationContext) context).addSymbol(symbol2, LambdaSymbolKind.CAPTURED_VAR);
                                }
                            }
                        }
                    }
                }
            }.scan(jCClassDecl);
        }

        public boolean currentlyInClass(Symbol symbol) {
            Iterator<Frame> it = this.frameStack.iterator();
            while (it.hasNext()) {
                Frame next = it.next();
                if (next.tree.hasTag(JCTree.Tag.CLASSDEF) && ((JCTree.JCClassDecl) next.tree).sym == symbol) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            List<Symbol.ClassSymbol> list = this.typesUnderConstruction;
            try {
                Name name = TreeInfo.name(jCMethodInvocation.meth);
                if (name != LambdaToMethod.this.names._this) {
                    if (name == LambdaToMethod.this.names._super) {
                    }
                    super.visitApply(jCMethodInvocation);
                    this.typesUnderConstruction = list;
                }
                this.typesUnderConstruction = this.typesUnderConstruction.prepend(currentClass());
                super.visitApply(jCMethodInvocation);
                this.typesUnderConstruction = list;
            } catch (Throwable th2) {
                this.typesUnderConstruction = list;
                throw th2;
            }
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            List<Frame> list = this.frameStack;
            try {
                if (list.nonEmpty() && this.frameStack.head.tree.hasTag(JCTree.Tag.CLASSDEF)) {
                    this.frameStack = this.frameStack.prepend(new Frame(jCBlock));
                }
                super.visitBlock(jCBlock);
                this.frameStack = list;
            } catch (Throwable th2) {
                this.frameStack = list;
                throw th2;
            }
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            HashMap hashMap;
            List<Frame> list = this.frameStack;
            int i10 = this.lambdaCount;
            SyntheticMethodNameCounter syntheticMethodNameCounter = this.syntheticMethodNameCounts;
            Map<Symbol.ClassSymbol, Symbol> map = this.clinits;
            DiagnosticSource currentSource = LambdaToMethod.this.log.currentSource();
            try {
                LambdaToMethod.this.log.useSource(jCClassDecl.sym.sourcefile);
                this.lambdaCount = 0;
                this.syntheticMethodNameCounts = new SyntheticMethodNameCounter(this, null);
                hashMap = new HashMap();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
                if (classSymbol.owner.kind == Kinds.Kind.MTH) {
                    this.localClassDefs.put(classSymbol, jCClassDecl);
                }
                if (directlyEnclosingLambda() != null) {
                    jCClassDecl.sym.owner = owner();
                    if (jCClassDecl.sym.hasOuterInstance()) {
                        Symbol.TypeSymbol typeSymbol = jCClassDecl.sym.type.getEnclosingType().tsym;
                        for (TranslationContext<?> context = context(); context != null && !context.owner.isStatic(); context = context.prev) {
                            if (context.tree.hasTag(JCTree.Tag.LAMBDA)) {
                                if (capturedDecl(context.depth, typeSymbol) == null) {
                                    break;
                                } else {
                                    ((LambdaTranslationContext) context).addSymbol(typeSymbol, LambdaSymbolKind.CAPTURED_THIS);
                                }
                            }
                        }
                    }
                }
                this.frameStack = this.frameStack.prepend(new Frame(jCClassDecl));
                super.visitClassDef(jCClassDecl);
                LambdaToMethod.this.log.useSource(currentSource.getFile());
                this.frameStack = list;
                this.lambdaCount = i10;
                this.syntheticMethodNameCounts = syntheticMethodNameCounter;
                this.clinits = hashMap;
            } catch (Throwable th3) {
                th = th3;
                map = hashMap;
                LambdaToMethod.this.log.useSource(currentSource.getFile());
                this.frameStack = list;
                this.lambdaCount = i10;
                this.syntheticMethodNameCounts = syntheticMethodNameCounter;
                this.clinits = map;
                throw th;
            }
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            if (context() != null && lambdaIdentSymbolFilter(jCIdent.sym)) {
                Symbol symbol = jCIdent.sym;
                if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH && jCIdent.type.constValue() == null) {
                    for (TranslationContext<?> context = context(); context != null; context = context.prev) {
                        if (context.tree.getTag() == JCTree.Tag.LAMBDA) {
                            if (capturedDecl(context.depth, jCIdent.sym) == null) {
                                break;
                            } else {
                                ((LambdaTranslationContext) context).addSymbol(jCIdent.sym, LambdaSymbolKind.CAPTURED_VAR);
                            }
                        }
                    }
                } else if (jCIdent.sym.owner.kind == Kinds.Kind.TYP) {
                    for (TranslationContext<?> context2 = context(); context2 != null && !context2.owner.isStatic(); context2 = context2.prev) {
                        if (context2.tree.hasTag(JCTree.Tag.LAMBDA)) {
                            JCTree capturedDecl = capturedDecl(context2.depth, jCIdent.sym);
                            if (capturedDecl == null) {
                                break;
                            } else if (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[capturedDecl.getTag().ordinal()] != 4) {
                                Assert.error("bad block kind");
                            } else {
                                ((LambdaTranslationContext) context2).addSymbol(((JCTree.JCClassDecl) capturedDecl).sym, LambdaSymbolKind.CAPTURED_THIS);
                            }
                        }
                    }
                }
            }
            super.visitIdent(jCIdent);
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            analyzeLambda(jCLambda, "lambda.stat");
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            List<Frame> list = this.frameStack;
            try {
                this.frameStack = list.prepend(new Frame(jCMethodDecl));
                super.visitMethodDef(jCMethodDecl);
            } finally {
                this.frameStack = list;
            }
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            Symbol.TypeSymbol typeSymbol = jCNewClass.type.tsym;
            boolean currentlyInClass = currentlyInClass(typeSymbol);
            boolean isLocal = typeSymbol.isLocal();
            if ((currentlyInClass && isLocal) || lambdaNewClassFilter(context(), jCNewClass)) {
                Symbol.TypeSymbol typeSymbol2 = jCNewClass.type.getEnclosingType().tsym;
                for (TranslationContext<?> context = context(); context != null && !context.owner.isStatic(); context = context.prev) {
                    if (context.tree.hasTag(JCTree.Tag.LAMBDA)) {
                        if (typeSymbol2 != null && capturedDecl(context.depth, typeSymbol2) == null) {
                            break;
                        } else {
                            ((LambdaTranslationContext) context).addSymbol(typeSymbol2, LambdaSymbolKind.CAPTURED_THIS);
                        }
                    }
                }
            }
            if (context() != null && !currentlyInClass && isLocal) {
                captureLocalClassDefs(typeSymbol, (LambdaTranslationContext) context());
            }
            super.visitNewClass(jCNewClass);
        }

        @Override
        public void visitReference(JCTree.JCMemberReference jCMemberReference) {
            ReferenceTranslationContext referenceTranslationContext = new ReferenceTranslationContext(jCMemberReference);
            LambdaToMethod.this.contextMap.put(jCMemberReference, referenceTranslationContext);
            if (referenceTranslationContext.needsConversionToLambda()) {
                MemberReferenceToLambda memberReferenceToLambda = new MemberReferenceToLambda(jCMemberReference, referenceTranslationContext, owner());
                analyzeLambda(memberReferenceToLambda.lambda(), memberReferenceToLambda.getReceiverExpression());
            } else {
                super.visitReference(jCMemberReference);
                if (LambdaToMethod.this.dumpLambdaToMethodStats) {
                    LambdaToMethod.this.log.note(jCMemberReference, "mref.stat", Boolean.valueOf(referenceTranslationContext.needsAltMetafactory()), null);
                }
            }
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            if (context() != null) {
                Symbol symbol = jCFieldAccess.sym;
                if (symbol.kind == Kinds.Kind.VAR && (symbol.name == LambdaToMethod.this.names._this || jCFieldAccess.sym.name == LambdaToMethod.this.names._super)) {
                    for (TranslationContext<?> context = context(); context != null && !context.owner.isStatic(); context = context.prev) {
                        if (context.tree.hasTag(JCTree.Tag.LAMBDA)) {
                            JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) capturedDecl(context.depth, jCFieldAccess.sym);
                            if (jCClassDecl == null) {
                                break;
                            } else {
                                ((LambdaTranslationContext) context).addSymbol(jCClassDecl.sym, LambdaSymbolKind.CAPTURED_THIS);
                            }
                        }
                    }
                }
            }
            super.visitSelect(jCFieldAccess);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            TranslationContext<?> context = context();
            LambdaTranslationContext lambdaTranslationContext = (context == null || !(context instanceof LambdaTranslationContext)) ? null : (LambdaTranslationContext) context;
            if (lambdaTranslationContext != null) {
                if (this.frameStack.head.tree.hasTag(JCTree.Tag.LAMBDA)) {
                    lambdaTranslationContext.addSymbol(jCVariableDecl.sym, LambdaSymbolKind.LOCAL_VAR);
                }
                Type asType = jCVariableDecl.sym.asType();
                if (inClassWithinLambda() && !LambdaToMethod.this.types.isSameType(LambdaToMethod.this.types.erasure(asType), asType)) {
                    lambdaTranslationContext.addSymbol(jCVariableDecl.sym, LambdaSymbolKind.TYPE_VAR);
                }
            }
            List<Frame> list = this.frameStack;
            try {
                Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
                if (varSymbol.owner.kind == Kinds.Kind.MTH) {
                    list.head.addLocal(varSymbol);
                }
                this.frameStack = this.frameStack.prepend(new Frame(jCVariableDecl));
                super.visitVarDef(jCVariableDecl);
                this.frameStack = list;
            } catch (Throwable th2) {
                this.frameStack = list;
                throw th2;
            }
        }

        public class SyntheticMethodNameCounter {
            private Map<String, Integer> map;

            private SyntheticMethodNameCounter() {
                this.map = new HashMap();
            }

            public int getIndex(StringBuilder sb2) {
                String sb3 = sb2.toString();
                Integer num = this.map.get(sb3);
                if (num == null) {
                    num = 0;
                }
                int intValue = num.intValue() + 1;
                this.map.put(sb3, Integer.valueOf(intValue));
                return intValue;
            }

            public SyntheticMethodNameCounter(LambdaAnalyzerPreprocessor lambdaAnalyzerPreprocessor, AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        public Symbol owner(boolean z10) {
            List list = this.frameStack;
            while (list.nonEmpty()) {
                switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[((Frame) list.head).tree.getTag().ordinal()]) {
                    case 4:
                        return ((JCTree.JCClassDecl) ((Frame) list.head).tree).sym;
                    case 5:
                        if (((JCTree.JCVariableDecl) ((Frame) list.head).tree).sym.isLocal()) {
                            list = list.tail;
                        } else {
                            return initSym(((JCTree.JCClassDecl) ((Frame) list.tail.head).tree).sym, ((JCTree.JCVariableDecl) ((Frame) list.head).tree).sym.flags() & 8);
                        }
                    case 6:
                        return initSym(((JCTree.JCClassDecl) ((Frame) list.tail.head).tree).sym, ((JCTree.JCBlock) ((Frame) list.head).tree).flags & 8);
                    case 7:
                        return ((JCTree.JCMethodDecl) ((Frame) list.head).tree).sym;
                    case 8:
                        if (!z10) {
                            return ((LambdaTranslationContext) LambdaToMethod.this.contextMap.get(((Frame) list.head).tree)).translatedSym;
                        }
                        list = list.tail;
                    default:
                        list = list.tail;
                }
            }
            Assert.error();
            return null;
        }

        private LambdaTranslationContext analyzeLambda(JCTree.JCLambda jCLambda, String str) {
            List<Frame> list = this.frameStack;
            try {
                LambdaTranslationContext lambdaTranslationContext = new LambdaTranslationContext(jCLambda);
                this.frameStack = this.frameStack.prepend(new Frame(jCLambda));
                Iterator<JCTree.JCVariableDecl> it = jCLambda.params.iterator();
                while (it.hasNext()) {
                    JCTree.JCVariableDecl next = it.next();
                    lambdaTranslationContext.addSymbol(next.sym, LambdaSymbolKind.PARAM);
                    this.frameStack.head.addLocal(next.sym);
                }
                LambdaToMethod.this.contextMap.put(jCLambda, lambdaTranslationContext);
                super.visitLambda(jCLambda);
                lambdaTranslationContext.complete();
                if (LambdaToMethod.this.dumpLambdaToMethodStats) {
                    LambdaToMethod.this.log.note(jCLambda, str, Boolean.valueOf(lambdaTranslationContext.needsAltMetafactory()), lambdaTranslationContext.translatedSym);
                }
                this.frameStack = list;
                return lambdaTranslationContext;
            } catch (Throwable th2) {
                this.frameStack = list;
                throw th2;
            }
        }

        public class LambdaTranslationContext extends TranslationContext<JCTree.JCLambda> {
            final Symbol assignedTo;
            final Set<Symbol> freeVarProcessedLocalClasses;
            JCTree.JCExpression methodReferenceReceiver;
            final Symbol self;
            List<JCTree.JCVariableDecl> syntheticParams;
            Symbol.MethodSymbol translatedSym;
            Map<LambdaSymbolKind, Map<Symbol, Symbol>> translatedSymbols;

            /* JADX WARN: Multi-variable type inference failed */
            public LambdaTranslationContext(JCTree.JCLambda jCLambda) {
                super(jCLambda);
                Frame frame = (Frame) LambdaAnalyzerPreprocessor.this.frameStack.head;
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[frame.tree.getTag().ordinal()];
                if (i10 == 5) {
                    Symbol.VarSymbol varSymbol = ((JCTree.JCVariableDecl) frame.tree).sym;
                    this.self = varSymbol;
                    this.assignedTo = varSymbol;
                } else if (i10 != 9) {
                    this.self = null;
                    this.assignedTo = null;
                } else {
                    this.self = null;
                    this.assignedTo = TreeInfo.symbol(((JCTree.JCAssign) frame.tree).getVariable());
                }
                this.translatedSym = LambdaToMethod.this.makePrivateSyntheticMethod(0L, null, null, this.owner.enclClass());
                EnumMap enumMap = new EnumMap(LambdaSymbolKind.class);
                this.translatedSymbols = enumMap;
                enumMap.put((EnumMap) LambdaSymbolKind.PARAM, (LambdaSymbolKind) new LinkedHashMap());
                this.translatedSymbols.put(LambdaSymbolKind.LOCAL_VAR, new LinkedHashMap());
                this.translatedSymbols.put(LambdaSymbolKind.CAPTURED_VAR, new LinkedHashMap());
                this.translatedSymbols.put(LambdaSymbolKind.CAPTURED_THIS, new LinkedHashMap());
                this.translatedSymbols.put(LambdaSymbolKind.CAPTURED_OUTER_THIS, new LinkedHashMap());
                this.translatedSymbols.put(LambdaSymbolKind.TYPE_VAR, new LinkedHashMap());
                this.freeVarProcessedLocalClasses = new HashSet();
            }

            private Name lambdaName() {
                return LambdaToMethod.this.names.lambda.append(LambdaToMethod.this.names.fromString(enclosingMethodName() + "$" + LambdaAnalyzerPreprocessor.access$3408(LambdaAnalyzerPreprocessor.this)));
            }

            private String serializedLambdaDisambiguation() {
                StringBuilder sb2 = new StringBuilder();
                Assert.check((this.owner.type == null && LambdaAnalyzerPreprocessor.this.directlyEnclosingLambda() == null) ? false : true);
                Type type = this.owner.type;
                if (type != null) {
                    sb2.append(LambdaToMethod.this.typeSig(type));
                    sb2.append(b3.s.f32937c);
                }
                sb2.append((CharSequence) LambdaToMethod.this.types.findDescriptorSymbol(((JCTree.JCLambda) this.tree).type.tsym).owner.flatName());
                sb2.append(" ");
                Symbol symbol = this.assignedTo;
                if (symbol != null) {
                    sb2.append((CharSequence) symbol.flatName());
                    sb2.append("=");
                }
                for (Symbol symbol2 : getSymbolMap(LambdaSymbolKind.CAPTURED_VAR).o()) {
                    if (symbol2 != this.self) {
                        sb2.append(LambdaToMethod.this.typeSig(symbol2.type));
                        sb2.append(" ");
                        sb2.append((CharSequence) symbol2.flatName());
                        sb2.append(DocLint.SEPARATOR);
                    }
                }
                return sb2.toString();
            }

            private Name serializedLambdaName() {
                StringBuilder sb2 = new StringBuilder();
                sb2.append((CharSequence) LambdaToMethod.this.names.lambda);
                sb2.append(enclosingMethodName());
                sb2.append('$');
                sb2.append(Integer.toHexString(serializedLambdaDisambiguation().hashCode()));
                sb2.append('$');
                sb2.append(LambdaAnalyzerPreprocessor.this.syntheticMethodNameCounts.getIndex(sb2));
                return LambdaToMethod.this.names.fromString(sb2.toString());
            }

            public void addSymbol(Symbol symbol, LambdaSymbolKind lambdaSymbolKind) {
                Symbol.ClassSymbol currentClass;
                if (lambdaSymbolKind == LambdaSymbolKind.CAPTURED_THIS && symbol != null && symbol.kind == Kinds.Kind.TYP && !LambdaAnalyzerPreprocessor.this.typesUnderConstruction.isEmpty() && (currentClass = LambdaAnalyzerPreprocessor.this.currentClass()) != null && LambdaAnalyzerPreprocessor.this.typesUnderConstruction.contains(currentClass)) {
                    Assert.check(symbol != currentClass);
                    lambdaSymbolKind = LambdaSymbolKind.CAPTURED_OUTER_THIS;
                }
                Map<Symbol, Symbol> symbolMap = getSymbolMap(lambdaSymbolKind);
                if (symbolMap.containsKey(symbol)) {
                    return;
                }
                symbolMap.put(symbol, translate(symbol, lambdaSymbolKind));
            }

            public void complete() {
                if (this.syntheticParams != null) {
                    return;
                }
                boolean isInterface = this.translatedSym.owner.isInterface();
                boolean isEmpty = getSymbolMap(LambdaSymbolKind.CAPTURED_THIS).isEmpty();
                Symbol.MethodSymbol methodSymbol = this.translatedSym;
                Symbol symbol = this.owner;
                methodSymbol.flags_field = (!isEmpty ? isInterface ? 8796093022208L : 0L : 8L) | (symbol.flags_field & 2048) | 562949953425408L | (2048 & symbol.owner.flags_field) | 2;
                ListBuffer listBuffer = new ListBuffer();
                ListBuffer listBuffer2 = new ListBuffer();
                Iterator<Symbol> it = getSymbolMap(LambdaSymbolKind.CAPTURED_VAR).values().iterator();
                while (it.hasNext()) {
                    Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) it.next();
                    listBuffer.append(LambdaToMethod.this.make.VarDef(varSymbol, null));
                    listBuffer2.append(varSymbol);
                }
                Iterator<Symbol> it2 = getSymbolMap(LambdaSymbolKind.CAPTURED_OUTER_THIS).values().iterator();
                while (it2.hasNext()) {
                    Symbol.VarSymbol varSymbol2 = (Symbol.VarSymbol) it2.next();
                    listBuffer.append(LambdaToMethod.this.make.VarDef(varSymbol2, null));
                    listBuffer2.append(varSymbol2);
                }
                Iterator<Symbol> it3 = getSymbolMap(LambdaSymbolKind.PARAM).values().iterator();
                while (it3.hasNext()) {
                    Symbol.VarSymbol varSymbol3 = (Symbol.VarSymbol) it3.next();
                    listBuffer.append(LambdaToMethod.this.make.VarDef(varSymbol3, null));
                    listBuffer2.append(varSymbol3);
                }
                this.syntheticParams = listBuffer.toList();
                this.translatedSym.params = listBuffer2.toList();
                this.translatedSym.name = isSerializable() ? serializedLambdaName() : lambdaName();
                this.translatedSym.type = LambdaToMethod.this.types.createMethodTypeWithParameters(generatedLambdaSig(), TreeInfo.types(this.syntheticParams));
            }

            public Type generatedLambdaSig() {
                return LambdaToMethod.this.types.erasure(((JCTree.JCLambda) this.tree).getDescriptorType(LambdaToMethod.this.types));
            }

            public Map<Symbol, Symbol> getSymbolMap(LambdaSymbolKind lambdaSymbolKind) {
                Map<Symbol, Symbol> map = this.translatedSymbols.get(lambdaSymbolKind);
                Assert.checkNonNull(map);
                return map;
            }

            public Symbol translate(final Symbol symbol, LambdaSymbolKind lambdaSymbolKind) {
                Symbol symbol2;
                switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[lambdaSymbolKind.ordinal()]) {
                    case 1:
                        symbol2 = symbol;
                        break;
                    case 2:
                        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(symbol.flags(), symbol.name, LambdaToMethod.this.types.erasure(symbol.type), symbol.owner);
                        varSymbol.pos = ((Symbol.VarSymbol) symbol).pos;
                        symbol2 = varSymbol;
                        break;
                    case 3:
                        symbol2 = new Symbol.VarSymbol(8589938704L, symbol.name, LambdaToMethod.this.types.erasure(symbol.type), this.translatedSym) {
                            @Override
                            public Symbol baseSymbol() {
                                return symbol;
                            }
                        };
                        break;
                    case 4:
                        symbol2 = new Symbol.VarSymbol(8589938704L, LambdaToMethod.this.names.fromString(new String(symbol.flatName().toString().replace('.', '$') + ((Object) LambdaToMethod.this.names.dollarThis))), LambdaToMethod.this.types.erasure(symbol.type), this.translatedSym) {
                            @Override
                            public Symbol baseSymbol() {
                                return symbol;
                            }
                        };
                        break;
                    case 5:
                        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(symbol.flags() & 16, symbol.name, symbol.type, this.translatedSym);
                        varSymbol2.pos = ((Symbol.VarSymbol) symbol).pos;
                        symbol2 = varSymbol2;
                        break;
                    case 6:
                        Symbol.VarSymbol varSymbol3 = new Symbol.VarSymbol((16 & symbol.flags()) | 8589934592L, symbol.name, LambdaToMethod.this.types.erasure(symbol.type), this.translatedSym);
                        varSymbol3.pos = ((Symbol.VarSymbol) symbol).pos;
                        symbol2 = varSymbol3;
                        break;
                    default:
                        Assert.error(lambdaSymbolKind.name());
                        throw new AssertionError();
                }
                if (symbol2 != symbol && lambdaSymbolKind.propagateAnnotations()) {
                    symbol2.setDeclarationAttributes(symbol.getRawAttributes());
                    symbol2.setTypeAttributes(symbol.getRawTypeAttributes());
                }
                return symbol2;
            }

            public JCTree translate(JCTree.JCIdent jCIdent) {
                for (LambdaSymbolKind lambdaSymbolKind : LambdaSymbolKind.values()) {
                    Map<Symbol, Symbol> symbolMap = getSymbolMap(lambdaSymbolKind);
                    if (AnonymousClass1.$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[lambdaSymbolKind.ordinal()] != 4) {
                        if (symbolMap.containsKey(jCIdent.sym)) {
                            return LambdaToMethod.this.make.Ident(symbolMap.get(jCIdent.sym)).setType(jCIdent.type);
                        }
                    } else {
                        Symbol symbol = jCIdent.sym.owner;
                        if (symbol.kind == Kinds.Kind.TYP && symbolMap.containsKey(symbol)) {
                            JCTree.JCFieldAccess Select = LambdaToMethod.this.make.Select(LambdaToMethod.this.make.Ident(symbolMap.get(jCIdent.sym.owner)).setType(jCIdent.sym.owner.type), jCIdent.name);
                            Select.setType(jCIdent.type);
                            TreeInfo.setSymbol(Select, jCIdent.sym);
                            return Select;
                        }
                    }
                }
                return null;
            }

            public JCTree translate(JCTree.JCFieldAccess jCFieldAccess) {
                Assert.check(jCFieldAccess.name == LambdaToMethod.this.names._this);
                Map<Symbol, Symbol> map = this.translatedSymbols.get(LambdaSymbolKind.CAPTURED_OUTER_THIS);
                if (map.containsKey(jCFieldAccess.sym.owner)) {
                    return LambdaToMethod.this.make.Ident(map.get(jCFieldAccess.sym.owner)).setType(jCFieldAccess.sym.owner.type);
                }
                return null;
            }
        }
    }

    public enum LambdaSymbolKind {
        PARAM,
        LOCAL_VAR,
        CAPTURED_VAR,
        CAPTURED_THIS,
        CAPTURED_OUTER_THIS,
        TYPE_VAR;

        public boolean propagateAnnotations() {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind[ordinal()];
            return (i10 == 1 || i10 == 3 || i10 == 4) ? false : true;
        }
    }

    public class MemberReferenceToLambda {
        private final LambdaAnalyzerPreprocessor.ReferenceTranslationContext localContext;
        private final Symbol owner;
        private final JCTree.JCMemberReference tree;
        private final ListBuffer<JCTree.JCExpression> args = new ListBuffer<>();
        private final ListBuffer<JCTree.JCVariableDecl> params = new ListBuffer<>();
        private JCTree.JCExpression receiverExpression = null;

        public MemberReferenceToLambda(JCTree.JCMemberReference jCMemberReference, LambdaAnalyzerPreprocessor.ReferenceTranslationContext referenceTranslationContext, Symbol symbol) {
            this.tree = jCMemberReference;
            this.localContext = referenceTranslationContext;
            this.owner = symbol;
        }

        private Symbol.VarSymbol addParameter(String str, Type type, boolean z10) {
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(8589938688L, LambdaToMethod.this.names.fromString(str), type, this.owner);
            varSymbol.pos = this.tree.pos;
            this.params.append(LambdaToMethod.this.make.VarDef(varSymbol, null));
            if (z10) {
                this.args.append(LambdaToMethod.this.make.Ident(varSymbol));
            }
            return varSymbol;
        }

        private JCTree.JCExpression expressionInvoke(Symbol.VarSymbol varSymbol) {
            JCTree.JCFieldAccess Select = LambdaToMethod.this.make.Select(varSymbol != null ? makeReceiver(varSymbol) : this.tree.getQualifierExpression(), this.tree.sym.name);
            Symbol symbol = this.tree.sym;
            Select.sym = symbol;
            Select.type = symbol.erasure(LambdaToMethod.this.types);
            JCTree.JCExpression coerce = LambdaToMethod.this.transTypes.coerce(LambdaToMethod.this.attrEnv, LambdaToMethod.this.make.Apply(List.nil(), Select, LambdaToMethod.this.convertArgs(this.tree.sym, this.args.toList(), this.tree.varargsElement)).setType(this.tree.sym.erasure(LambdaToMethod.this.types).getReturnType()), LambdaToMethod.this.types.erasure(((JCTree.JCMemberReference) this.localContext.tree).referentType.getReturnType()));
            LambdaToMethod.this.setVarargsIfNeeded(coerce, this.tree.varargsElement);
            return coerce;
        }

        private JCTree.JCExpression expressionNew() {
            if (this.tree.kind == JCTree.JCMemberReference.ReferenceKind.ARRAY_CTOR) {
                JCTree.JCNewArray NewArray = LambdaToMethod.this.make.NewArray(LambdaToMethod.this.make.Type(LambdaToMethod.this.types.elemtype(this.tree.getQualifierExpression().type)), List.of(LambdaToMethod.this.make.Ident(this.params.first())), null);
                NewArray.type = this.tree.getQualifierExpression().type;
                return NewArray;
            }
            JCTree.JCNewClass NewClass = LambdaToMethod.this.make.NewClass(null, List.nil(), LambdaToMethod.this.make.Type(this.tree.getQualifierExpression().type), LambdaToMethod.this.convertArgs(this.tree.sym, this.args.toList(), this.tree.varargsElement), null);
            Symbol symbol = this.tree.sym;
            NewClass.constructor = symbol;
            NewClass.constructorType = symbol.erasure(LambdaToMethod.this.types);
            NewClass.type = this.tree.getQualifierExpression().type;
            LambdaToMethod.this.setVarargsIfNeeded(NewClass, this.tree.varargsElement);
            return NewClass;
        }

        private JCTree.JCExpression makeReceiver(Symbol.VarSymbol varSymbol) {
            if (varSymbol == null) {
                return null;
            }
            JCTree.JCIdent Ident = LambdaToMethod.this.make.Ident(varSymbol);
            JCTree.JCMemberReference jCMemberReference = this.tree;
            Type type = jCMemberReference.ownerAccessible ? jCMemberReference.sym.enclClass().type : jCMemberReference.expr.type;
            if (type == LambdaToMethod.this.syms.arrayClass.type) {
                type = this.tree.getQualifierExpression().type;
            }
            return !varSymbol.type.tsym.isSubClass(type.tsym, LambdaToMethod.this.types) ? LambdaToMethod.this.make.TypeCast(LambdaToMethod.this.make.Type(type), Ident).setType(type) : Ident;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Symbol.VarSymbol addParametersReturnReceiver() {
            Symbol.VarSymbol addParameter;
            Type bridgedRefSig = this.localContext.bridgedRefSig();
            List parameterTypes = bridgedRefSig.getParameterTypes();
            List parameterTypes2 = this.tree.getDescriptorType(LambdaToMethod.this.types).getParameterTypes();
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[this.tree.kind.ordinal()];
            if (i10 == 3) {
                addParameter = addParameter("rec$", this.tree.getQualifierExpression().type, false);
                this.receiverExpression = LambdaToMethod.this.attr.makeNullCheck(this.tree.getQualifierExpression());
            } else if (i10 != 4) {
                addParameter = null;
            } else {
                addParameter = addParameter("rec$", bridgedRefSig.getParameterTypes().head, false);
                parameterTypes = parameterTypes.tail;
                parameterTypes2 = parameterTypes2.tail;
            }
            List parameterTypes3 = this.tree.sym.type.getParameterTypes();
            int size = parameterTypes3.size();
            int size2 = parameterTypes.size();
            int i11 = this.localContext.needsVarArgsConversion() ? size - 1 : size;
            boolean z10 = this.tree.varargsElement != null || size == parameterTypes2.size();
            for (int i12 = 0; parameterTypes3.nonEmpty() && i12 < i11; i12++) {
                Type type = (Type) parameterTypes3.head;
                if (z10 && ((Type) parameterTypes2.head).getKind() == TypeKind.TYPEVAR && ((Type.TypeVar) parameterTypes2.head).bound.getKind() == TypeKind.INTERSECTION) {
                    type = (Type) parameterTypes.head;
                }
                addParameter("x$" + i12, type, true);
                parameterTypes3 = parameterTypes3.tail;
                parameterTypes = parameterTypes.tail;
                parameterTypes2 = parameterTypes2.tail;
            }
            while (i11 < size2) {
                addParameter("xva$" + i11, this.tree.varargsElement, true);
                i11++;
            }
            return addParameter;
        }

        public JCTree.JCExpression getReceiverExpression() {
            return this.receiverExpression;
        }

        public JCTree.JCLambda lambda() {
            int i10 = LambdaToMethod.this.make.pos;
            try {
                LambdaToMethod.this.make.at(this.tree);
                JCTree.JCLambda Lambda = LambdaToMethod.this.make.Lambda(this.params.toList(), this.tree.getMode() == MemberReferenceTree.ReferenceMode.INVOKE ? expressionInvoke(addParametersReturnReceiver()) : expressionNew());
                JCTree.JCMemberReference jCMemberReference = this.tree;
                Lambda.targets = jCMemberReference.targets;
                Lambda.type = jCMemberReference.type;
                Lambda.pos = jCMemberReference.pos;
                LambdaToMethod.this.make.at(i10);
                return Lambda;
            } catch (Throwable th2) {
                LambdaToMethod.this.make.at(i10);
                throw th2;
            }
        }
    }

    private LambdaToMethod(Context context) {
        context.put((Context.Key<Context.Key<LambdaToMethod>>) unlambdaKey, (Context.Key<LambdaToMethod>) this);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.log = Log.instance(context);
        this.lower = Lower.instance(context);
        this.names = Names.instance(context);
        this.syms = Symtab.instance(context);
        this.rs = Resolve.instance(context);
        this.operators = Operators.instance(context);
        this.make = TreeMaker.instance(context);
        this.types = Types.instance(context);
        this.transTypes = TransTypes.instance(context);
        this.analyzer = new LambdaAnalyzerPreprocessor();
        Options instance = Options.instance(context);
        this.dumpLambdaToMethodStats = instance.isSet("debug.dumpLambdaToMethodStats");
        this.attr = Attr.instance(context);
        this.forceSerializable = instance.isSet("forceSerializable");
    }

    private void addDeserializationCase(int i10, Symbol symbol, Type type, Symbol.MethodSymbol methodSymbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, List<Object> list, Type.MethodType methodType) {
        String classSig = classSig(type);
        String name = methodSymbol.getSimpleName().toString();
        String typeSig = typeSig(this.types.erasure(methodSymbol.type));
        String classSig2 = classSig(this.types.erasure(symbol.owner.type));
        String name2 = symbol.getQualifiedName().toString();
        String typeSig2 = typeSig(this.types.erasure(symbol.type));
        Type.JCPrimitiveType jCPrimitiveType = this.syms.intType;
        JCTree.JCExpression eqTest = eqTest(jCPrimitiveType, deserGetter("getImplMethodKind", jCPrimitiveType), this.make.Literal(Integer.valueOf(i10)));
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = methodType.getParameterTypes().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Type next = it.next();
            List<JCTree.JCExpression> list2 = new ListBuffer().append(this.make.Literal(Integer.valueOf(i11))).toList();
            listBuffer.add(this.make.TypeCast(this.types.erasure(next), deserGetter("getCapturedArg", this.syms.objectType, new ListBuffer().append(this.syms.intType).toList(), list2)));
            i11++;
            it = it;
            name2 = name2;
        }
        String str = name2;
        JCTree.JCIf If2 = this.make.If(deserTest(deserTest(deserTest(deserTest(deserTest(eqTest, "getFunctionalInterfaceClass", classSig), "getFunctionalInterfaceMethodName", name), "getFunctionalInterfaceMethodSignature", typeSig), "getImplClass", classSig2), "getImplMethodSignature", typeSig2), this.make.Return(makeIndyCall(diagnosticPosition, this.syms.lambdaMetafactory, this.names.altMetafactory, list, methodType, listBuffer.toList(), methodSymbol.name)), null);
        ListBuffer listBuffer2 = (ListBuffer) this.kInfo.deserializeCases.get(str);
        if (listBuffer2 == null) {
            listBuffer2 = new ListBuffer();
            this.kInfo.deserializeCases.put(str, listBuffer2);
        }
        listBuffer2.append(If2);
    }

    private void apportionTypeAnnotations(JCTree.JCLambda jCLambda, Supplier<List<Attribute.TypeCompound>> supplier, Consumer<List<Attribute.TypeCompound>> consumer, Consumer<List<Attribute.TypeCompound>> consumer2) {
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator<Attribute.TypeCompound> it = supplier.get().iterator();
        while (it.hasNext()) {
            Attribute.TypeCompound next = it.next();
            if (next.position.onLambda == jCLambda) {
                listBuffer2.append(next);
            } else {
                listBuffer.append(next);
            }
        }
        if (listBuffer2.nonEmpty()) {
            consumer.accept(listBuffer.toList());
            consumer2.accept(listBuffer2.toList());
        }
    }

    private Type bsmStaticArgToType(Object obj) {
        Assert.checkNonNull(obj);
        if (obj instanceof Symbol.ClassSymbol) {
            return this.syms.classType;
        }
        if (obj instanceof Integer) {
            return this.syms.intType;
        }
        if (obj instanceof Long) {
            return this.syms.longType;
        }
        if (obj instanceof Float) {
            return this.syms.floatType;
        }
        if (obj instanceof Double) {
            return this.syms.doubleType;
        }
        if (obj instanceof String) {
            return this.syms.stringType;
        }
        if (obj instanceof Pool.MethodHandle) {
            return this.syms.methodHandleType;
        }
        if (obj instanceof Type.MethodType) {
            return this.syms.methodTypeType;
        }
        Assert.error("bad static arg " + ((Object) obj.getClass()));
        return null;
    }

    private List<Type> bsmStaticArgToTypes(List<Object> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(bsmStaticArgToType(it.next()));
        }
        return listBuffer.toList();
    }

    private String classSig(Type type) {
        L2MSignatureGenerator l2MSignatureGenerator = new L2MSignatureGenerator();
        l2MSignatureGenerator.assembleClassSig(type);
        return l2MSignatureGenerator.toString();
    }

    public List<JCTree.JCExpression> convertArgs(Symbol symbol, List<JCTree.JCExpression> list, Type type) {
        Assert.check(symbol.kind == Kinds.Kind.MTH);
        List<Type> parameterTypes = this.types.erasure(symbol.type).getParameterTypes();
        if (type != null) {
            Assert.check((symbol.flags() & 17179869184L) != 0);
        }
        return this.transTypes.translateArgs(list, parameterTypes, type, this.attrEnv);
    }

    private JCTree.JCExpression deserGetter(String str, Type type) {
        return deserGetter(str, type, List.nil(), List.nil());
    }

    private JCTree.JCExpression deserTest(JCTree.JCExpression jCExpression, String str, String str2) {
        Type.MethodType methodType = new Type.MethodType(List.of(this.syms.objectType), this.syms.booleanType, List.nil(), this.syms.methodClass);
        Resolve resolve = this.rs;
        Env<AttrContext> env = this.attrEnv;
        Type type = this.syms.objectType;
        JCTree.JCMethodInvocation Apply = this.make.Apply(List.nil(), this.make.Select(deserGetter(str, this.syms.stringType), resolve.resolveQualifiedMethod(null, env, type, this.names.equals, List.of(type), List.nil())).setType((Type) methodType), List.of(this.make.Literal(str2)));
        Apply.setType((Type) this.syms.booleanType);
        TreeMaker treeMaker = this.make;
        JCTree.Tag tag = JCTree.Tag.AND;
        JCTree.JCBinary Binary = treeMaker.Binary(tag, jCExpression, Apply);
        Operators operators = this.operators;
        Type.JCPrimitiveType jCPrimitiveType = this.syms.booleanType;
        Binary.operator = operators.resolveBinary(Binary, tag, jCPrimitiveType, jCPrimitiveType);
        Binary.setType((Type) this.syms.booleanType);
        return Binary;
    }

    private JCTree.JCExpression eqTest(Type type, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        TreeMaker treeMaker = this.make;
        JCTree.Tag tag = JCTree.Tag.EQ;
        JCTree.JCBinary Binary = treeMaker.Binary(tag, jCExpression, jCExpression2);
        Binary.operator = this.operators.resolveBinary(Binary, tag, type, type);
        Binary.setType((Type) this.syms.booleanType);
        return Binary;
    }

    public static LambdaToMethod instance(Context context) {
        LambdaToMethod lambdaToMethod = (LambdaToMethod) context.get(unlambdaKey);
        return lambdaToMethod == null ? new LambdaToMethod(context) : lambdaToMethod;
    }

    private JCTree.JCMethodDecl makeDeserializeMethod(Symbol symbol) {
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        for (Map.Entry entry : this.kInfo.deserializeCases.entrySet()) {
            JCTree.JCBreak Break = this.make.Break(null);
            listBuffer2.add(Break);
            List<JCTree.JCStatement> list = ((ListBuffer) entry.getValue()).append(Break).toList();
            TreeMaker treeMaker = this.make;
            listBuffer.add(treeMaker.Case(treeMaker.Literal(entry.getKey()), list));
        }
        JCTree.JCSwitch Switch = this.make.Switch(deserGetter("getImplMethodName", this.syms.stringType), listBuffer.toList());
        Iterator it = listBuffer2.iterator();
        while (it.hasNext()) {
            ((JCTree.JCBreak) it.next()).target = Switch;
        }
        TreeMaker treeMaker2 = this.make;
        JCTree.JCBlock Block = treeMaker2.Block(0L, List.of(Switch, treeMaker2.Throw(makeNewClass(this.syms.illegalArgumentExceptionType, List.of(treeMaker2.Literal("Invalid lambda deserialization"))))));
        TreeMaker treeMaker3 = this.make;
        JCTree.JCMethodDecl MethodDef = treeMaker3.MethodDef(treeMaker3.Modifiers(this.kInfo.deserMethodSym.flags()), this.names.deserializeLambda, this.make.QualIdent(this.kInfo.deserMethodSym.getReturnType().tsym), List.nil(), List.of(this.make.VarDef(this.kInfo.deserParamSym, null)), List.nil(), Block, null);
        MethodDef.sym = this.kInfo.deserMethodSym;
        MethodDef.type = this.kInfo.deserMethodSym.type;
        return MethodDef;
    }

    private JCTree.JCExpression makeIndyCall(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Name name, List<Object> list, Type.MethodType methodType, List<JCTree.JCExpression> list2, Name name2) {
        TreeMaker treeMaker = this.make;
        int i10 = treeMaker.pos;
        try {
            treeMaker.at(diagnosticPosition);
            Symtab symtab = this.syms;
            Symbol.MethodSymbol resolveInternalMethod = this.rs.resolveInternalMethod(diagnosticPosition, this.attrEnv, type, name, List.of(symtab.methodHandleLookupType, symtab.stringType, symtab.methodTypeType).appendList(bsmStaticArgToTypes(list)), List.nil());
            Symbol.DynamicMethodSymbol dynamicMethodSymbol = new Symbol.DynamicMethodSymbol(name2, this.syms.noSymbol, resolveInternalMethod.isStatic() ? 6 : 5, resolveInternalMethod, methodType, list.toArray());
            TreeMaker treeMaker2 = this.make;
            JCTree.JCFieldAccess Select = treeMaker2.Select(treeMaker2.QualIdent(type.tsym), name);
            Select.sym = dynamicMethodSymbol;
            Select.type = methodType.getReturnType();
            JCTree.JCMethodInvocation Apply = this.make.Apply(List.nil(), Select, list2);
            Apply.type = methodType.getReturnType();
            return Apply;
        } finally {
            this.make.at(i10);
        }
    }

    private JCTree.JCBlock makeLambdaBody(JCTree.JCLambda jCLambda, JCTree.JCMethodDecl jCMethodDecl) {
        return jCLambda.getBodyKind() == LambdaExpressionTree.BodyKind.EXPRESSION ? makeLambdaExpressionBody((JCTree.JCExpression) jCLambda.body, jCMethodDecl) : makeLambdaStatementBody((JCTree.JCBlock) jCLambda.body, jCMethodDecl, jCLambda.canCompleteNormally);
    }

    private JCTree.JCBlock makeLambdaExpressionBody(JCTree.JCExpression jCExpression, JCTree.JCMethodDecl jCMethodDecl) {
        JCTree.JCBlock Block;
        Type returnType = jCMethodDecl.type.getReturnType();
        Type type = jCExpression.type;
        TypeTag typeTag = TypeTag.VOID;
        boolean hasTag = type.hasTag(typeTag);
        boolean hasTag2 = returnType.hasTag(typeTag);
        Types types = this.types;
        boolean isSameType = types.isSameType(returnType, types.boxedClass(this.syms.voidType).type);
        TreeMaker treeMaker = this.make;
        int i10 = treeMaker.pos;
        try {
            if (hasTag2) {
                Block = this.make.Block(0L, List.of(treeMaker.at(jCExpression).Exec(jCExpression)));
            } else if (hasTag && isSameType) {
                ListBuffer listBuffer = new ListBuffer();
                listBuffer.append(this.make.at(jCExpression).Exec(jCExpression));
                TreeMaker treeMaker2 = this.make;
                listBuffer.append(treeMaker2.Return(treeMaker2.Literal(TypeTag.BOT, null).setType(this.syms.botType)));
                Block = this.make.Block(0L, listBuffer.toList());
            } else {
                JCTree.JCExpression coerce = this.transTypes.coerce(this.attrEnv, jCExpression, returnType);
                Block = this.make.at(coerce).Block(0L, List.of(this.make.Return(coerce)));
            }
            return Block;
        } finally {
            this.make.at(i10);
        }
    }

    private JCTree.JCBlock makeLambdaStatementBody(JCTree.JCBlock jCBlock, final JCTree.JCMethodDecl jCMethodDecl, boolean z10) {
        final Type returnType = jCMethodDecl.type.getReturnType();
        final boolean hasTag = returnType.hasTag(TypeTag.VOID);
        Types types = this.types;
        boolean isSameType = types.isSameType(returnType, types.boxedClass(this.syms.voidType).type);
        JCTree.JCBlock jCBlock2 = (JCTree.JCBlock) new TreeTranslator() {
            @Override
            public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
                this.result = jCClassDecl;
            }

            @Override
            public void visitLambda(JCTree.JCLambda jCLambda) {
                this.result = jCLambda;
            }

            @Override
            public void visitReturn(JCTree.JCReturn jCReturn) {
                boolean z11 = jCReturn.expr == null;
                boolean z12 = hasTag;
                if (z12 && !z11) {
                    LambdaToMethod lambdaToMethod = LambdaToMethod.this;
                    this.result = LambdaToMethod.this.make.Block(0L, List.of(LambdaToMethod.this.make.VarDef(lambdaToMethod.makeSyntheticVar(0L, lambdaToMethod.names.fromString("$loc"), jCReturn.expr.type, jCMethodDecl.sym), jCReturn.expr), LambdaToMethod.this.make.Return(null)));
                } else if (z12 && z11) {
                    this.result = jCReturn;
                } else {
                    jCReturn.expr = LambdaToMethod.this.transTypes.coerce(LambdaToMethod.this.attrEnv, jCReturn.expr, returnType);
                    this.result = jCReturn;
                }
            }
        }.translate((TreeTranslator) jCBlock);
        if (z10 && isSameType) {
            List<JCTree.JCStatement> list = jCBlock2.stats;
            TreeMaker treeMaker = this.make;
            jCBlock2.stats = list.append(treeMaker.Return(treeMaker.Literal(TypeTag.BOT, null).setType(this.syms.botType)));
        }
        return jCBlock2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private JCTree.JCExpression makeMetafactoryIndyCall(LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext, int i10, Symbol symbol, List<JCTree.JCExpression> list) {
        List<Object> list2;
        T t10 = translationContext.tree;
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) this.types.findDescriptorSymbol(t10.type.tsym);
        List<Object> of2 = List.of(typeToMethodType(methodSymbol.type), new Pool.MethodHandle(i10, symbol, this.types), typeToMethodType(t10.getDescriptorType(this.types)));
        ListBuffer listBuffer = new ListBuffer();
        Iterator<JCTree.JCExpression> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(it.next().type);
        }
        Type.MethodType methodType = new Type.MethodType(listBuffer.toList(), t10.type, List.nil(), this.syms.methodClass);
        Name name = translationContext.needsAltMetafactory() ? this.names.altMetafactory : this.names.metafactory;
        if (translationContext.needsAltMetafactory()) {
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<Type> it2 = t10.targets.tail.iterator();
            while (it2.hasNext()) {
                Symbol.TypeSymbol typeSymbol = it2.next().tsym;
                if (typeSymbol != this.syms.serializableType.tsym) {
                    listBuffer2.append(typeSymbol);
                }
            }
            boolean isSerializable = translationContext.isSerializable();
            boolean nonEmpty = listBuffer2.nonEmpty();
            boolean nonEmpty2 = translationContext.bridges.nonEmpty();
            int i11 = isSerializable;
            if (nonEmpty) {
                i11 = (isSerializable ? 1 : 0) | 2;
            }
            if (nonEmpty2) {
                i11 = (i11 == true ? 1 : 0) | 4;
            }
            List<Object> append = of2.append(Integer.valueOf(i11));
            if (nonEmpty) {
                append = append.append(Integer.valueOf(listBuffer2.length())).appendList(listBuffer2.toList());
            }
            if (nonEmpty2) {
                append = append.append(Integer.valueOf(translationContext.bridges.length() - 1));
                Iterator<Symbol> it3 = translationContext.bridges.iterator();
                while (it3.hasNext()) {
                    Symbol next = it3.next();
                    Type erasure = next.erasure(this.types);
                    Types types = this.types;
                    if (!types.isSameType(erasure, methodSymbol.erasure(types))) {
                        append = append.append(next.erasure(this.types));
                    }
                }
            }
            List<Object> list3 = append;
            if (translationContext.isSerializable()) {
                TreeMaker treeMaker = this.make;
                int i12 = treeMaker.pos;
                try {
                    treeMaker.at(this.kInfo.clazz);
                    addDeserializationCase(i10, symbol, t10.type, methodSymbol, t10, list3, methodType);
                } finally {
                    this.make.at(i12);
                }
            }
            list2 = list3;
        } else {
            list2 = of2;
        }
        return makeIndyCall(t10, this.syms.lambdaMetafactory, name, list2, methodType, list, methodSymbol.name);
    }

    public Symbol.MethodSymbol makePrivateSyntheticMethod(long j10, Name name, Type type, Symbol symbol) {
        return new Symbol.MethodSymbol(j10 | 4098, name, type, symbol);
    }

    private Symbol.VarSymbol makeSyntheticVar(long j10, String str, Type type, Symbol symbol) {
        return makeSyntheticVar(j10, this.names.fromString(str), type, symbol);
    }

    private JCTree.JCIdent makeThis(Type type, Symbol symbol) {
        return this.make.Ident(new Symbol.VarSymbol(8589938704L, this.names._this, type, symbol));
    }

    public int referenceKind(Symbol symbol) {
        if (symbol.isConstructor()) {
            return 8;
        }
        if (symbol.isStatic()) {
            return 6;
        }
        if ((symbol.flags() & 2) != 0) {
            return 7;
        }
        return symbol.enclClass().isInterface() ? 9 : 5;
    }

    public void setVarargsIfNeeded(JCTree jCTree, Type type) {
        if (type != null) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
            if (i10 == 1) {
                ((JCTree.JCMethodInvocation) jCTree).varargsElement = type;
            } else if (i10 == 2) {
                ((JCTree.JCNewClass) jCTree).varargsElement = type;
            } else {
                if (i10 != 3) {
                    throw new AssertionError();
                }
                setVarargsIfNeeded(((JCTree.JCTypeCast) jCTree).expr, type);
            }
        }
    }

    public String typeSig(Type type) {
        L2MSignatureGenerator l2MSignatureGenerator = new L2MSignatureGenerator();
        l2MSignatureGenerator.assembleSig(type);
        return l2MSignatureGenerator.toString();
    }

    private Type.MethodType typeToMethodType(Type type) {
        Type erasure = this.types.erasure(type);
        return new Type.MethodType(erasure.getParameterTypes(), erasure.getReturnType(), erasure.getThrownTypes(), this.syms.methodClass);
    }

    public JCTree.JCNewClass makeNewClass(Type type, List<JCTree.JCExpression> list, Symbol symbol) {
        TreeMaker treeMaker = this.make;
        JCTree.JCNewClass NewClass = treeMaker.NewClass(null, null, treeMaker.QualIdent(type.tsym), list, null);
        NewClass.constructor = symbol;
        NewClass.type = type;
        return NewClass;
    }

    @Override
    public <T extends JCTree> T translate(T t10) {
        LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext = this.contextMap.get(t10);
        if (translationContext == null) {
            translationContext = this.context;
        }
        return (T) translate((LambdaToMethod) t10, translationContext);
    }

    public JCTree translateTopLevelClass(Env<AttrContext> env, JCTree jCTree, TreeMaker treeMaker) {
        this.make = treeMaker;
        this.attrEnv = env;
        this.context = null;
        this.contextMap = new HashMap();
        return translate((LambdaToMethod) jCTree);
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        if (jCClassDecl.sym.owner.kind == Kinds.Kind.PCK) {
            jCClassDecl = this.analyzer.analyzeAndPreprocessClass(jCClassDecl);
        }
        KlassInfo klassInfo = this.kInfo;
        try {
            this.kInfo = new KlassInfo(this, jCClassDecl, null);
            super.visitClassDef(jCClassDecl);
            if (!this.kInfo.deserializeCases.isEmpty()) {
                TreeMaker treeMaker = this.make;
                int i10 = treeMaker.pos;
                try {
                    treeMaker.at(jCClassDecl);
                    this.kInfo.addMethod(makeDeserializeMethod(jCClassDecl.sym));
                    this.make.at(i10);
                } catch (Throwable th2) {
                    this.make.at(i10);
                    throw th2;
                }
            }
            List<JCTree> list = this.kInfo.appendedMethodList.toList();
            jCClassDecl.defs = jCClassDecl.defs.appendList(list);
            Iterator<JCTree> it = list.iterator();
            while (it.hasNext()) {
                jCClassDecl.sym.members().enter(((JCTree.JCMethodDecl) it.next()).sym);
            }
            this.result = jCClassDecl;
            this.kInfo = klassInfo;
        } catch (Throwable th3) {
            this.kInfo = klassInfo;
            throw th3;
        }
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        if (this.context == null || !this.analyzer.lambdaIdentSymbolFilter(jCIdent.sym)) {
            super.visitIdent(jCIdent);
            return;
        }
        TreeMaker treeMaker = this.make;
        int i10 = treeMaker.pos;
        try {
            treeMaker.at(jCIdent);
            JCTree translate = ((LambdaAnalyzerPreprocessor.LambdaTranslationContext) this.context).translate(jCIdent);
            if (translate != null) {
                this.result = translate;
            } else {
                super.visitIdent(jCIdent);
            }
            this.make.at(i10);
        } catch (Throwable th2) {
            this.make.at(i10);
            throw th2;
        }
    }

    @Override
    public void visitLambda(JCTree.JCLambda jCLambda) {
        LambdaAnalyzerPreprocessor.LambdaTranslationContext lambdaTranslationContext = (LambdaAnalyzerPreprocessor.LambdaTranslationContext) this.context;
        final Symbol.MethodSymbol methodSymbol = lambdaTranslationContext.translatedSym;
        Type.MethodType methodType = (Type.MethodType) methodSymbol.type;
        final Symbol symbol = lambdaTranslationContext.owner;
        symbol.getClass();
        apportionTypeAnnotations(jCLambda, new Supplier() {
            @Override
            public final Object get() {
                return Symbol.this.getRawTypeAttributes();
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Symbol.this.setTypeAttributes((List) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Symbol.MethodSymbol.this.setTypeAttributes((List) obj);
            }
        });
        Name name = symbol.name;
        Names names = this.names;
        boolean z10 = name == names.init;
        if (z10 || name == names.clinit) {
            final Symbol symbol2 = symbol.owner;
            symbol2.getClass();
            Supplier<List<Attribute.TypeCompound>> supplier = z10 ? new Supplier() {
                @Override
                public final Object get() {
                    return Symbol.this.getInitTypeAttributes();
                }
            } : new Supplier() {
                @Override
                public final Object get() {
                    return Symbol.this.getClassInitTypeAttributes();
                }
            };
            symbol2.getClass();
            apportionTypeAnnotations(jCLambda, supplier, z10 ? new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Symbol.this.setInitTypeAttributes((List) obj);
                }
            } : new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Symbol.this.setClassInitTypeAttributes((List) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Symbol.MethodSymbol.this.appendUniqueTypeAttributes((List) obj);
                }
            });
        }
        Symbol symbol3 = lambdaTranslationContext.self;
        if (symbol3 != null && symbol3.getKind() == ElementKind.FIELD) {
            final Symbol symbol4 = lambdaTranslationContext.self;
            symbol4.getClass();
            apportionTypeAnnotations(jCLambda, new Supplier() {
                @Override
                public final Object get() {
                    return Symbol.this.getRawTypeAttributes();
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Symbol.this.setTypeAttributes((List) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Symbol.MethodSymbol.this.appendUniqueTypeAttributes((List) obj);
                }
            });
        }
        TreeMaker treeMaker = this.make;
        JCTree.JCMethodDecl MethodDef = treeMaker.MethodDef(treeMaker.Modifiers(methodSymbol.flags_field), methodSymbol.name, this.make.QualIdent(methodType.getReturnType().tsym), List.nil(), lambdaTranslationContext.syntheticParams, methodType.getThrownTypes() == null ? List.nil() : this.make.Types(methodType.getThrownTypes()), null, null);
        MethodDef.sym = methodSymbol;
        MethodDef.type = methodType;
        MethodDef.body = (JCTree.JCBlock) translate((LambdaToMethod) makeLambdaBody(jCLambda, MethodDef));
        this.kInfo.addMethod(MethodDef);
        ListBuffer listBuffer = new ListBuffer();
        JCTree.JCExpression jCExpression = lambdaTranslationContext.methodReferenceReceiver;
        if (jCExpression != null) {
            listBuffer.append(jCExpression);
        } else if (!methodSymbol.isStatic()) {
            listBuffer.append(makeThis(methodSymbol.owner.enclClass().asType(), lambdaTranslationContext.owner.enclClass()));
        }
        for (Symbol symbol5 : lambdaTranslationContext.getSymbolMap(LambdaSymbolKind.CAPTURED_VAR).o()) {
            if (symbol5 != lambdaTranslationContext.self) {
                listBuffer.append(this.make.Ident(symbol5).setType(symbol5.type));
            }
        }
        Iterator<Symbol> it = lambdaTranslationContext.getSymbolMap(LambdaSymbolKind.CAPTURED_OUTER_THIS).o().iterator();
        while (it.hasNext()) {
            listBuffer.append(this.make.QualThis(it.next().type));
        }
        this.result = makeMetafactoryIndyCall(this.context, referenceKind(methodSymbol), methodSymbol, translate(listBuffer.toList(), lambdaTranslationContext.prev));
    }

    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        JCTree.JCExpression makeThis;
        LambdaAnalyzerPreprocessor.ReferenceTranslationContext referenceTranslationContext = (LambdaAnalyzerPreprocessor.ReferenceTranslationContext) this.context;
        Symbol symbol = referenceTranslationContext.isSignaturePolymorphic() ? referenceTranslationContext.sigPolySym : jCMemberReference.sym;
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind[jCMemberReference.kind.ordinal()]) {
            case 1:
            case 2:
                makeThis = makeThis(referenceTranslationContext.owner.enclClass().asType(), referenceTranslationContext.owner.enclClass());
                break;
            case 3:
                makeThis = this.attr.makeNullCheck(jCMemberReference.getQualifierExpression());
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                makeThis = null;
                break;
            default:
                throw new InternalError("Should not have an invalid kind");
        }
        this.result = makeMetafactoryIndyCall(referenceTranslationContext, referenceTranslationContext.referenceKind(), symbol, makeThis == null ? List.nil() : translate(List.of(makeThis), referenceTranslationContext.prev));
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        if (this.context == null || !this.analyzer.lambdaFieldAccessFilter(jCFieldAccess)) {
            super.visitSelect(jCFieldAccess);
            return;
        }
        TreeMaker treeMaker = this.make;
        int i10 = treeMaker.pos;
        try {
            treeMaker.at(jCFieldAccess);
            JCTree translate = ((LambdaAnalyzerPreprocessor.LambdaTranslationContext) this.context).translate(jCFieldAccess);
            if (translate != null) {
                this.result = translate;
            } else {
                super.visitSelect(jCFieldAccess);
            }
            this.make.at(i10);
        } catch (Throwable th2) {
            this.make.at(i10);
            throw th2;
        }
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext = this.context;
        LambdaAnalyzerPreprocessor.LambdaTranslationContext lambdaTranslationContext = (LambdaAnalyzerPreprocessor.LambdaTranslationContext) translationContext;
        if (translationContext != null) {
            LambdaSymbolKind lambdaSymbolKind = LambdaSymbolKind.LOCAL_VAR;
            if (lambdaTranslationContext.getSymbolMap(lambdaSymbolKind).containsKey(jCVariableDecl.sym)) {
                jCVariableDecl.init = (JCTree.JCExpression) translate((LambdaToMethod) jCVariableDecl.init);
                jCVariableDecl.sym = (Symbol.VarSymbol) lambdaTranslationContext.getSymbolMap(lambdaSymbolKind).get(jCVariableDecl.sym);
                this.result = jCVariableDecl;
                return;
            }
        }
        if (this.context != null) {
            LambdaSymbolKind lambdaSymbolKind2 = LambdaSymbolKind.TYPE_VAR;
            if (lambdaTranslationContext.getSymbolMap(lambdaSymbolKind2).containsKey(jCVariableDecl.sym)) {
                JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((LambdaToMethod) jCVariableDecl.init);
                Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) lambdaTranslationContext.getSymbolMap(lambdaSymbolKind2).get(jCVariableDecl.sym);
                TreeMaker treeMaker = this.make;
                int i10 = treeMaker.pos;
                try {
                    this.result = treeMaker.at(jCVariableDecl).VarDef(varSymbol, jCExpression);
                    this.make.at(i10);
                    Scope.WriteableScope members = jCVariableDecl.sym.owner.members();
                    if (members != null) {
                        members.remove(jCVariableDecl.sym);
                        members.enter(varSymbol);
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    this.make.at(i10);
                    throw th2;
                }
            }
        }
        super.visitVarDef(jCVariableDecl);
    }

    private JCTree.JCExpression deserGetter(String str, Type type, List<Type> list, List<JCTree.JCExpression> list2) {
        Type.MethodType methodType = new Type.MethodType(list, type, List.nil(), this.syms.methodClass);
        Symbol resolveQualifiedMethod = this.rs.resolveQualifiedMethod(null, this.attrEnv, this.syms.serializedLambdaType, this.names.fromString(str), list, List.nil());
        TreeMaker treeMaker = this.make;
        List<JCTree.JCExpression> nil = List.nil();
        TreeMaker treeMaker2 = this.make;
        return treeMaker.Apply(nil, treeMaker2.Select(treeMaker2.Ident(this.kInfo.deserParamSym).setType(this.syms.serializedLambdaType), resolveQualifiedMethod).setType((Type) methodType), list2).setType(type);
    }

    public Symbol.VarSymbol makeSyntheticVar(long j10, Name name, Type type, Symbol symbol) {
        return new Symbol.VarSymbol(j10 | 4096, name, type, symbol);
    }

    public <T extends JCTree> T translate(T t10, LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext) {
        LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext2 = this.context;
        try {
            this.context = translationContext;
            return (T) super.translate((LambdaToMethod) t10);
        } finally {
            this.context = translationContext2;
        }
    }

    public JCTree.JCNewClass makeNewClass(Type type, List<JCTree.JCExpression> list) {
        return makeNewClass(type, list, this.rs.resolveConstructor(null, this.attrEnv, type, TreeInfo.types(list), List.nil()));
    }

    public <T extends JCTree> List<T> translate(List<T> list, LambdaAnalyzerPreprocessor.TranslationContext<?> translationContext) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(translate((LambdaToMethod) it.next(), translationContext));
        }
        return listBuffer.toList();
    }
}
