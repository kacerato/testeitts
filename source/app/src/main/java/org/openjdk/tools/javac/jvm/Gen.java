package org.openjdk.tools.javac.jvm;

import ag.a0;
import android.icu.text.PluralRules;
import java.util.Iterator;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.tools.javac.code.AnnoConstruct;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.TargetType;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.comp.Lower;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.jvm.Code;
import org.openjdk.tools.javac.jvm.Items;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.model.FilteredMemberList;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class Gen extends JCTree.Visitor {
    protected static final Context.Key<Gen> genKey = new Context.Key<>();
    private final Name accessDollar;
    private final boolean allowBetterNullChecks;
    private final Annotate annotate;
    private Env<AttrContext> attrEnv;
    private final Check chk;
    private Code code;
    private final StringConcat concat;
    private final boolean debugCode;
    EndPosTable endPosTable;
    Env<GenContext> env;
    private final boolean genCrt;
    private Items items;
    private int letExprDepth;
    private final boolean lineDebugInfo;
    private final Log log;
    private final Lower lower;
    private final TreeMaker make;
    private final Type methodType;
    private final Names names;
    private final Pool pool;
    Type pt;
    Items.Item result;
    private final Resolve rs;
    private final Code.StackMapFormat stackMap;
    private final Symtab syms;
    private final Target target;
    private JCTree.JCCompilationUnit toplevel;
    private final Types types;
    private final boolean varDebugInfo;
    private int nerrs = 0;
    private ClassReferenceVisitor classReferenceVisitor = new ClassReferenceVisitor();

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.METHODDEF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.COMPL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREINC.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NULLCHK.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.METHOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public class ClassReferenceVisitor extends JCTree.Visitor {
        public ClassReferenceVisitor() {
        }

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            jCBinary.lhs.accept(this);
            jCBinary.rhs.accept(this);
        }

        @Override
        public void visitConditional(JCTree.JCConditional jCConditional) {
            jCConditional.cond.accept(this);
            jCConditional.truepart.accept(this);
            jCConditional.falsepart.accept(this);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            if (jCIdent.sym.owner instanceof Symbol.ClassSymbol) {
                Gen.this.pool.put(jCIdent.sym.owner);
            }
        }

        @Override
        public void visitParens(JCTree.JCParens jCParens) {
            jCParens.expr.accept(this);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            if (jCFieldAccess.selected.type.hasTag(TypeTag.CLASS)) {
                Gen.this.makeRef(jCFieldAccess.selected.pos(), jCFieldAccess.selected.type);
            }
        }

        @Override
        public void visitTree(JCTree jCTree) {
        }

        @Override
        public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
            jCTypeCast.expr.accept(this);
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            jCUnary.arg.accept(this);
        }
    }

    public static class CodeSizeOverflow extends RuntimeException {
        private static final long serialVersionUID = 0;
    }

    public static class GenContext {
        Code.Chain exit = null;
        Code.Chain cont = null;
        GenFinalizer finalize = null;
        boolean isSwitch = false;
        ListBuffer<Integer> gaps = null;

        public void addCont(Code.Chain chain) {
            this.cont = Code.mergeChains(chain, this.cont);
        }

        public void addExit(Code.Chain chain) {
            this.exit = Code.mergeChains(chain, this.exit);
        }
    }

    public abstract class GenFinalizer {
        public GenFinalizer() {
        }

        public abstract void gen();

        public abstract void genLast();

        public boolean hasFinalizer() {
            return true;
        }
    }

    public Gen(Context context) {
        context.put((Context.Key<Context.Key<Gen>>) genKey, (Context.Key<Gen>) this);
        Names instance = Names.instance(context);
        this.names = instance;
        this.log = Log.instance(context);
        Symtab instance2 = Symtab.instance(context);
        this.syms = instance2;
        this.chk = Check.instance(context);
        this.rs = Resolve.instance(context);
        this.make = TreeMaker.instance(context);
        Target instance3 = Target.instance(context);
        this.target = instance3;
        Types instance4 = Types.instance(context);
        this.types = instance4;
        this.concat = StringConcat.instance(context);
        this.methodType = new Type.MethodType(null, null, null, instance2.methodClass);
        this.accessDollar = instance.fromString("access" + instance3.syntheticNameChar());
        this.lower = Lower.instance(context);
        Options instance5 = Options.instance(context);
        Option option = Option.G_CUSTOM;
        this.lineDebugInfo = instance5.isUnset(option) || instance5.isSet(option, "lines");
        this.varDebugInfo = instance5.isUnset(option) ? instance5.isSet(Option.f103256G) : instance5.isSet(option, "vars");
        this.genCrt = instance5.isSet(Option.XJCOV);
        this.debugCode = instance5.isSet("debug.code");
        this.allowBetterNullChecks = instance5.getBoolean("allowBetterNullChecks", instance3.hasObjects());
        this.pool = new Pool(instance4);
        this.stackMap = Code.StackMapFormat.JSR202;
        this.annotate = Annotate.instance(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkDimension(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 != 1) {
            if (i10 == 2 && this.types.dimensions(type) > 255) {
                this.log.error(diagnosticPosition, "limit.dimensions", new Object[0]);
                this.nerrs++;
                return;
            }
            return;
        }
        checkDimension(diagnosticPosition, type.getReturnType());
        for (List parameterTypes = type.getParameterTypes(); parameterTypes.nonEmpty(); parameterTypes = parameterTypes.tail) {
            checkDimension(diagnosticPosition, (Type) parameterTypes.head);
        }
    }

    private void checkStringConstant(JCDiagnostic.DiagnosticPosition diagnosticPosition, Object obj) {
        if (this.nerrs != 0 || obj == null || !(obj instanceof String) || ((String) obj).length() < 65535) {
            return;
        }
        this.log.error(diagnosticPosition, "limit.string", new Object[0]);
        this.nerrs++;
    }

    private void genLoop(JCTree.JCStatement jCStatement, JCTree.JCStatement jCStatement2, JCTree.JCExpression jCExpression, List<JCTree.JCExpressionStatement> list, boolean z10) {
        Items.CondItem makeCondItem;
        Items.CondItem makeCondItem2;
        Env<GenContext> dup = this.env.dup(jCStatement, new GenContext());
        int entryPoint = this.code.entryPoint();
        if (z10) {
            if (jCExpression != null) {
                this.code.statBegin(jCExpression.pos);
                Assert.check(this.code.state.stacksize == 0);
                makeCondItem2 = genCond(TreeInfo.skipParens(jCExpression), 8);
            } else {
                makeCondItem2 = this.items.makeCondItem(167);
            }
            Code.Chain jumpFalse = makeCondItem2.jumpFalse();
            this.code.resolve(makeCondItem2.trueJumps);
            Assert.check(this.code.state.stacksize == 0);
            genStat(jCStatement2, dup, 17);
            this.code.resolve(dup.info.cont);
            genStats(list, dup);
            Code code = this.code;
            code.resolve(code.branch(167), entryPoint);
            this.code.resolve(jumpFalse);
        } else {
            genStat(jCStatement2, dup, 17);
            this.code.resolve(dup.info.cont);
            genStats(list, dup);
            if (this.code.isAlive()) {
                if (jCExpression != null) {
                    this.code.statBegin(jCExpression.pos);
                    Assert.check(this.code.state.stacksize == 0);
                    makeCondItem = genCond(TreeInfo.skipParens(jCExpression), 8);
                } else {
                    makeCondItem = this.items.makeCondItem(167);
                }
                this.code.resolve(makeCondItem.jumpTrue(), entryPoint);
                Assert.check(this.code.state.stacksize == 0);
                this.code.resolve(makeCondItem.falseJumps);
            }
        }
        Code.Chain chain = dup.info.exit;
        if (chain != null) {
            this.code.resolve(chain);
            chain.state.defined.excludeFrom(this.code.nextreg);
        }
    }

    private void genNullCheck(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        if (this.allowBetterNullChecks) {
            Symtab symtab = this.syms;
            callMethod(diagnosticPosition, symtab.objectsType, this.names.requireNonNull, List.of(symtab.objectType), true);
        } else {
            callMethod(diagnosticPosition, this.syms.objectType, this.names.getClass, List.nil(), false);
        }
        this.code.emitop0(87);
    }

    private void generateReferencesToPrunedTree(Symbol.ClassSymbol classSymbol, Pool pool) {
        List<JCTree> list = this.lower.prunedTree.get(classSymbol);
        if (list != null) {
            Iterator<JCTree> it = list.iterator();
            while (it.hasNext()) {
                it.next().accept(this.classReferenceVisitor);
            }
        }
    }

    private List<Attribute.TypeCompound> getAndRemoveNonFieldTAs(Symbol.VarSymbol varSymbol) {
        List<Attribute.TypeCompound> rawTypeAttributes = varSymbol.getRawTypeAttributes();
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator<Attribute.TypeCompound> it = rawTypeAttributes.iterator();
        while (it.hasNext()) {
            Attribute.TypeCompound next = it.next();
            Assert.check(next.getPosition().type != TargetType.UNKNOWN);
            if (next.getPosition().type == TargetType.FIELD) {
                listBuffer.add(next);
            } else {
                listBuffer2.add(next);
            }
        }
        varSymbol.setTypeAttributes(listBuffer.toList());
        return listBuffer2.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int initCode(JCTree.JCMethodDecl jCMethodDecl, Env<GenContext> env, boolean z10) {
        Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
        Code code = new Code(methodSymbol, z10, this.lineDebugInfo ? this.toplevel.lineMap : null, this.varDebugInfo, this.stackMap, this.debugCode, this.genCrt ? new CRTable(jCMethodDecl, env.toplevel.endPositions) : null, this.syms, this.types, this.pool);
        this.code = code;
        methodSymbol.code = code;
        this.items = new Items(this.pool, code, this.syms, this.types);
        if (this.code.debugCode) {
            System.err.println(((Object) methodSymbol) + " for body " + ((Object) jCMethodDecl));
        }
        if ((jCMethodDecl.mods.flags & 8) == 0) {
            Type type = methodSymbol.owner.type;
            if (methodSymbol.isConstructor() && type != this.syms.objectType) {
                type = UninitializedType.uninitializedThis(type);
            }
            Type type2 = type;
            Code code2 = this.code;
            code2.setDefined(code2.newLocal(new Symbol.VarSymbol(16L, this.names._this, type2, methodSymbol.owner)));
        }
        for (List list = jCMethodDecl.params; list.nonEmpty(); list = list.tail) {
            checkDimension(((JCTree.JCVariableDecl) list.head).pos(), ((JCTree.JCVariableDecl) list.head).sym.type);
            Code code3 = this.code;
            code3.setDefined(code3.newLocal(((JCTree.JCVariableDecl) list.head).sym));
        }
        int curCP = this.genCrt ? this.code.curCP() : 0;
        this.code.entryPoint();
        this.code.pendingStackMap = false;
        return curCP;
    }

    public static Gen instance(Context context) {
        Gen gen = (Gen) context.get(genKey);
        return gen == null ? new Gen(context) : gen;
    }

    private boolean isAccessSuper(JCTree.JCMethodDecl jCMethodDecl) {
        return (jCMethodDecl.mods.flags & 4096) != 0 && isOddAccessName(jCMethodDecl.name);
    }

    private boolean isOddAccessName(Name name) {
        return name.startsWith(this.accessDollar) && (name.getByteAt(name.getByteLength() - 1) & 1) == 1;
    }

    public static int one(int i10) {
        return zero(i10) + 1;
    }

    public static void qsort2(int[] iArr, int[] iArr2, int i10, int i11) {
        int i12;
        int i13 = iArr[(i10 + i11) / 2];
        int i14 = i10;
        int i15 = i11;
        while (true) {
            if (iArr[i14] < i13) {
                i14++;
            } else {
                while (true) {
                    i12 = iArr[i15];
                    if (i13 >= i12) {
                        break;
                    } else {
                        i15--;
                    }
                }
                if (i14 <= i15) {
                    int i16 = iArr[i14];
                    iArr[i14] = i12;
                    iArr[i15] = i16;
                    int i17 = iArr2[i14];
                    iArr2[i14] = iArr2[i15];
                    iArr2[i15] = i17;
                    i14++;
                    i15--;
                }
                if (i14 > i15) {
                    break;
                }
            }
        }
        if (i10 < i15) {
            qsort2(iArr, iArr2, i10, i15);
        }
        if (i14 < i11) {
            qsort2(iArr, iArr2, i14, i11);
        }
    }

    private void setTypeAnnotationPositions(int i10) {
        Symbol.MethodSymbol methodSymbol = this.code.meth;
        boolean z10 = methodSymbol.getKind() == ElementKind.CONSTRUCTOR || this.code.meth.getKind() == ElementKind.STATIC_INIT;
        Iterator<Attribute.TypeCompound> it = methodSymbol.getRawTypeAttributes().iterator();
        while (it.hasNext()) {
            Attribute.TypeCompound next = it.next();
            if (next.hasUnknownPosition()) {
                next.tryFixPosition();
            }
            if (next.position.matchesPos(i10)) {
                next.position.updatePosOffset(this.code.cp);
            }
        }
        if (z10) {
            Iterator<Attribute.TypeCompound> it2 = methodSymbol.owner.getRawTypeAttributes().iterator();
            while (it2.hasNext()) {
                Attribute.TypeCompound next2 = it2.next();
                if (next2.hasUnknownPosition()) {
                    next2.tryFixPosition();
                }
                if (next2.position.matchesPos(i10)) {
                    next2.position.updatePosOffset(this.code.cp);
                }
            }
            Iterator<Symbol> it3 = new FilteredMemberList(methodSymbol.enclClass().members()).iterator();
            while (it3.hasNext()) {
                Symbol next3 = it3.next();
                if (next3.getKind().isField()) {
                    Iterator<Attribute.TypeCompound> it4 = next3.getRawTypeAttributes().iterator();
                    while (it4.hasNext()) {
                        Attribute.TypeCompound next4 = it4.next();
                        if (next4.hasUnknownPosition()) {
                            next4.tryFixPosition();
                        }
                        if (next4.position.matchesPos(i10)) {
                            next4.position.updatePosOffset(this.code.cp);
                        }
                    }
                }
            }
        }
    }

    public static int zero(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                return 9;
            }
            if (i10 == 2) {
                return 11;
            }
            if (i10 == 3) {
                return 14;
            }
            if (i10 != 5 && i10 != 6 && i10 != 7) {
                throw new AssertionError((Object) PluralRules.KEYWORD_ZERO);
            }
        }
        return 3;
    }

    public Symbol binaryQualifier(Symbol symbol, Type type) {
        if (!type.hasTag(TypeTag.ARRAY)) {
            return (symbol.owner == type.tsym || (symbol.flags() & 4104) == 4104 || symbol.owner == this.syms.objectType.tsym) ? symbol : symbol.clone(type.tsym);
        }
        Symtab symtab = this.syms;
        return (symbol == symtab.lengthVar || symbol.owner != symtab.arrayClass) ? symbol : symbol.clone(new Symbol.ClassSymbol(1L, type.tsym.name, type, symtab.noSymbol));
    }

    public void callMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Name name, List<Type> list, boolean z10) {
        Symbol.MethodSymbol resolveInternalMethod = this.rs.resolveInternalMethod(diagnosticPosition, this.attrEnv, type, name, list, null);
        if (z10) {
            this.items.makeStaticItem(resolveInternalMethod).invoke();
        } else {
            this.items.makeMemberItem(resolveInternalMethod, name == this.names.init).invoke();
        }
    }

    public List<Pair<List<Attribute.TypeCompound>, JCTree.JCExpression>> catchTypesWithAnnotations(JCTree.JCCatch jCCatch) {
        if (!TreeInfo.isMultiCatch(jCCatch)) {
            return List.of(new Pair(jCCatch.param.sym.getRawTypeAttributes(), jCCatch.param.vartype));
        }
        JCTree.JCVariableDecl jCVariableDecl = jCCatch.param;
        return catchTypesWithAnnotationsFromMulticatch((JCTree.JCTypeUnion) jCVariableDecl.vartype, jCVariableDecl.sym.getRawTypeAttributes());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Pair<List<Attribute.TypeCompound>, JCTree.JCExpression>> catchTypesWithAnnotationsFromMulticatch(JCTree.JCTypeUnion jCTypeUnion, List<Attribute.TypeCompound> list) {
        List<JCTree.JCExpression> list2 = jCTypeUnion.alternatives;
        List of2 = List.of(new Pair(list, list2.head));
        for (List list3 = list2.tail; list3 != null; list3 = list3.tail) {
            A a10 = list3.head;
            if (a10 == 0) {
                break;
            }
            JCTree.JCExpression jCExpression = (JCTree.JCExpression) a10;
            of2 = jCExpression instanceof JCTree.JCAnnotatedType ? of2.prepend(new Pair(this.annotate.fromAnnotations(((JCTree.JCAnnotatedType) jCExpression).annotations), jCExpression)) : of2.prepend(new Pair(List.nil(), jCExpression));
        }
        return of2.reverse();
    }

    public Items.Item completeBinop(JCTree jCTree, JCTree jCTree2, Symbol.OperatorSymbol operatorSymbol) {
        Type.MethodType methodType = (Type.MethodType) operatorSymbol.type;
        int i10 = operatorSymbol.opcode;
        if (i10 >= 159 && i10 <= 164 && (jCTree2.type.constValue() instanceof Number) && ((Number) jCTree2.type.constValue()).intValue() == 0) {
            i10 -= 6;
        } else if (i10 < 165 || i10 > 166 || !TreeInfo.isNull(jCTree2)) {
            Type type = operatorSymbol.erasure(this.types).getParameterTypes().tail.head;
            if (i10 >= 270 && i10 <= 275) {
                i10 -= 150;
                type = this.syms.intType;
            }
            genExpr(jCTree2, type).load();
            if (i10 >= 512) {
                this.code.emitop0(i10 >> 9);
                i10 &= 255;
            }
        } else {
            i10 += 33;
        }
        if ((i10 >= 153 && i10 <= 166) || i10 == 198 || i10 == 199) {
            return this.items.makeCondItem(i10);
        }
        this.code.emitop0(i10);
        return this.items.makeStackItem(methodType.restype);
    }

    public void emitMinusOne(int i10) {
        if (i10 == 1) {
            this.items.makeImmediateItem(this.syms.longType, -1L).load();
        } else {
            this.code.emitop0(2);
        }
    }

    public void endFinalizerGap(Env<GenContext> env) {
        GenContext genContext = env.info;
        if (genContext.gaps == null || genContext.gaps.length() % 2 != 1) {
            return;
        }
        env.info.gaps.append(Integer.valueOf(this.code.curCP()));
    }

    public void endFinalizerGaps(Env<GenContext> env, Env<GenContext> env2) {
        Env<GenContext> env3 = null;
        while (env3 != env2) {
            endFinalizerGap(env);
            env3 = env;
            env = env.next;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void genArgs(List<JCTree.JCExpression> list, List<Type> list2) {
        List<Type> list3;
        List<JCTree.JCExpression> list4;
        while (list4.nonEmpty()) {
            genExpr(list4.head, list3.head).load();
            List<Type> list5 = list3.tail;
            list4 = list4.tail;
            list3 = list5;
        }
        Assert.check(list3.isEmpty());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void genCatch(JCTree.JCCatch jCCatch, Env<GenContext> env, int i10, int i11, List<Integer> list) {
        if (i10 != i11) {
            List<Pair<List<Attribute.TypeCompound>, JCTree.JCExpression>> catchTypesWithAnnotations = catchTypesWithAnnotations(jCCatch);
            List list2 = list;
            int i12 = i10;
            while (list2.nonEmpty()) {
                Iterator<Pair<List<Attribute.TypeCompound>, JCTree.JCExpression>> it = catchTypesWithAnnotations.iterator();
                while (it.hasNext()) {
                    Pair<List<Attribute.TypeCompound>, JCTree.JCExpression> next = it.next();
                    int makeRef = makeRef(jCCatch.pos(), next.snd.type);
                    int i13 = i12;
                    registerCatch(jCCatch.pos(), i13, ((Integer) list2.head).intValue(), this.code.curCP(), makeRef);
                    Iterator<Attribute.TypeCompound> it2 = next.fst.iterator();
                    while (it2.hasNext()) {
                        it2.next().position.setCatchInfo(makeRef, i12);
                    }
                }
                List<A> list3 = list2.tail;
                i12 = ((Integer) list3.head).intValue();
                list2 = list3.tail;
            }
            if (i12 < i11) {
                Iterator<Pair<List<Attribute.TypeCompound>, JCTree.JCExpression>> it3 = catchTypesWithAnnotations.iterator();
                while (it3.hasNext()) {
                    Pair<List<Attribute.TypeCompound>, JCTree.JCExpression> next2 = it3.next();
                    int makeRef2 = makeRef(jCCatch.pos(), next2.snd.type);
                    registerCatch(jCCatch.pos(), i12, i11, this.code.curCP(), makeRef2);
                    Iterator<Attribute.TypeCompound> it4 = next2.fst.iterator();
                    while (it4.hasNext()) {
                        it4.next().position.setCatchInfo(makeRef2, i12);
                    }
                }
            }
            Symbol.VarSymbol varSymbol = jCCatch.param.sym;
            this.code.statBegin(jCCatch.pos);
            this.code.markStatBegin();
            Code code = this.code;
            int i14 = code.nextreg;
            code.newLocal(varSymbol);
            this.items.makeLocalItem(varSymbol).store();
            this.code.statBegin(TreeInfo.firstStatPos(jCCatch.body));
            genStat(jCCatch.body, env, 2);
            this.code.endScopes(i14);
            this.code.statBegin(TreeInfo.endPos(jCCatch.body));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean genClass(Env<AttrContext> env, JCTree.JCClassDecl jCClassDecl) {
        try {
            this.attrEnv = env;
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            JCTree.JCCompilationUnit jCCompilationUnit = env.toplevel;
            this.toplevel = jCCompilationUnit;
            this.endPosTable = jCCompilationUnit.endPositions;
            Pool pool = this.pool;
            classSymbol.pool = pool;
            pool.reset();
            jCClassDecl.defs = normalizeDefs(jCClassDecl.defs, classSymbol);
            generateReferencesToPrunedTree(classSymbol, this.pool);
            Env<GenContext> env2 = new Env<>(jCClassDecl, new GenContext());
            env2.toplevel = env.toplevel;
            env2.enclClass = jCClassDecl;
            for (List list = jCClassDecl.defs; list.nonEmpty(); list = list.tail) {
                genDef((JCTree) list.head, env2);
            }
            if (this.pool.numEntries() > 65535) {
                this.log.error(jCClassDecl.pos(), "limit.pool", new Object[0]);
                this.nerrs++;
            }
            if (this.nerrs != 0) {
                for (List list2 = jCClassDecl.defs; list2.nonEmpty(); list2 = list2.tail) {
                    if (((JCTree) list2.head).hasTag(JCTree.Tag.METHODDEF)) {
                        ((JCTree.JCMethodDecl) list2.head).sym.code = null;
                    }
                }
            }
            jCClassDecl.defs = List.nil();
            boolean z10 = this.nerrs == 0;
            this.attrEnv = null;
            this.env = null;
            this.toplevel = null;
            this.endPosTable = null;
            this.nerrs = 0;
            return z10;
        } catch (Throwable th2) {
            this.attrEnv = null;
            this.env = null;
            this.toplevel = null;
            this.endPosTable = null;
            this.nerrs = 0;
            throw th2;
        }
    }

    public Items.CondItem genCond(JCTree jCTree, int i10) {
        if (!this.genCrt) {
            return genCond(jCTree, false);
        }
        int curCP = this.code.curCP();
        Items.CondItem genCond = genCond(jCTree, (i10 & 8) != 0);
        Code code = this.code;
        code.crt.put(jCTree, i10, curCP, code.curCP());
        return genCond;
    }

    public void genDef(JCTree jCTree, Env<GenContext> env) {
        Env<GenContext> env2 = this.env;
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

    public Items.Item genExpr(JCTree jCTree, Type type) {
        Type type2 = this.pt;
        try {
            try {
                if (jCTree.type.constValue() != null) {
                    jCTree.accept(this.classReferenceVisitor);
                    checkStringConstant(jCTree.pos(), jCTree.type.constValue());
                    Items items = this.items;
                    Type type3 = jCTree.type;
                    this.result = items.makeImmediateItem(type3, type3.constValue());
                } else {
                    this.pt = type;
                    jCTree.accept(this);
                }
                Items.Item coerce = this.result.coerce(type);
                this.pt = type2;
                return coerce;
            } catch (Symbol.CompletionFailure e10) {
                this.chk.completionError(jCTree.pos(), e10);
                this.code.state.stacksize = 1;
                Items.Item makeStackItem = this.items.makeStackItem(type);
                this.pt = type2;
                return makeStackItem;
            }
        } catch (Throwable th2) {
            this.pt = type2;
            throw th2;
        }
    }

    public void genFinalizer(Env<GenContext> env) {
        if (this.code.isAlive()) {
            GenContext genContext = env.info;
            if (genContext.finalize != null) {
                genContext.finalize.gen();
            }
        }
    }

    public void genMethod(JCTree.JCMethodDecl jCMethodDecl, Env<GenContext> env, boolean z10) {
        int i10;
        Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
        if (methodSymbol.isConstructor()) {
            if (methodSymbol.enclClass().isInner() && !methodSymbol.enclClass().isStatic()) {
                i10 = 2;
            }
            i10 = 1;
        } else {
            if ((jCMethodDecl.mods.flags & 8) != 0) {
                i10 = 0;
            }
            i10 = 1;
        }
        if (Code.width(this.types.erasure(env.enclMethod.sym.type).getParameterTypes()) + i10 > 255) {
            this.log.error(jCMethodDecl.pos(), "limit.parameters", new Object[0]);
            this.nerrs++;
            return;
        }
        if (jCMethodDecl.body != null) {
            int initCode = initCode(jCMethodDecl, env, z10);
            try {
                genStat(jCMethodDecl.body, env);
            } catch (CodeSizeOverflow unused) {
                initCode = initCode(jCMethodDecl, env, z10);
                genStat(jCMethodDecl.body, env);
            }
            Code code = this.code;
            if (code.state.stacksize != 0) {
                this.log.error(jCMethodDecl.body.pos(), "stack.sim.error", jCMethodDecl);
                throw new AssertionError();
            }
            if (code.isAlive()) {
                this.code.statBegin(TreeInfo.endPos(jCMethodDecl.body));
                JCTree.JCMethodDecl jCMethodDecl2 = env.enclMethod;
                if (jCMethodDecl2 == null || jCMethodDecl2.sym.type.getReturnType().hasTag(TypeTag.VOID)) {
                    this.code.emitop0(177);
                } else {
                    this.code.resolve(this.items.makeCondItem(167).jumpTrue(), this.code.entryPoint());
                }
            }
            if (this.genCrt) {
                Code code2 = this.code;
                code2.crt.put(jCMethodDecl.body, 2, initCode, code2.curCP());
            }
            this.code.endScopes(0);
            if (this.code.checkLimits(jCMethodDecl.pos(), this.log)) {
                this.nerrs++;
                return;
            }
            if (!z10 && this.code.fatcode) {
                genMethod(jCMethodDecl, env, true);
            }
            if (this.stackMap == Code.StackMapFormat.JSR202) {
                Code code3 = this.code;
                code3.lastFrame = null;
                code3.frameBeforeLast = null;
            }
            this.code.compressCatchTable();
            this.code.fillExceptionParameterPositions();
        }
    }

    public void genStat(JCTree jCTree, Env<GenContext> env, int i10) {
        if (!this.genCrt) {
            genStat(jCTree, env);
            return;
        }
        int curCP = this.code.curCP();
        genStat(jCTree, env);
        if (jCTree.hasTag(JCTree.Tag.BLOCK)) {
            i10 |= 2;
        }
        Code code = this.code;
        code.crt.put(jCTree, i10, curCP, code.curCP());
    }

    public void genStats(List<JCTree.JCStatement> list, Env<GenContext> env, int i10) {
        if (!this.genCrt) {
            genStats(list, env);
            return;
        }
        if (list.length() == 1) {
            genStat(list.head, env, i10 | 1);
            return;
        }
        int curCP = this.code.curCP();
        genStats(list, env);
        Code code = this.code;
        code.crt.put(list, i10, curCP, code.curCP());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void genTry(JCTree jCTree, List<JCTree.JCCatch> list, Env<GenContext> env) {
        Code.Chain chain;
        char c10;
        Code code = this.code;
        int i10 = code.nextreg;
        int curCP = code.curCP();
        Code.State dup = this.code.state.dup();
        genStat(jCTree, env, 2);
        int curCP2 = this.code.curCP();
        GenContext genContext = env.info;
        boolean z10 = genContext.finalize != null && genContext.finalize.hasFinalizer();
        List<Integer> list2 = env.info.gaps.toList();
        this.code.statBegin(TreeInfo.endPos(jCTree));
        genFinalizer(env);
        this.code.statBegin(TreeInfo.endPos(env.tree));
        Code.Chain branch = this.code.branch(167);
        endFinalizerGap(env);
        if (curCP != curCP2) {
            List list3 = list;
            Code.Chain chain2 = branch;
            while (list3.nonEmpty()) {
                this.code.entryPoint(dup, ((JCTree.JCCatch) list3.head).param.sym.type);
                Code.Chain chain3 = chain2;
                List list4 = list3;
                genCatch((JCTree.JCCatch) list3.head, env, curCP, curCP2, list2);
                genFinalizer(env);
                if (z10 || list4.tail.nonEmpty()) {
                    this.code.statBegin(TreeInfo.endPos(env.tree));
                    Code code2 = this.code;
                    c10 = a0.f32069k;
                    chain2 = Code.mergeChains(chain3, code2.branch(167));
                } else {
                    chain2 = chain3;
                    c10 = a0.f32069k;
                }
                endFinalizerGap(env);
                list3 = list4.tail;
            }
            chain = chain2;
        } else {
            chain = branch;
        }
        if (z10) {
            this.code.newRegSegment();
            int entryPoint = this.code.entryPoint(dup, this.syms.throwableType);
            int i11 = curCP;
            while (env.info.gaps.nonEmpty()) {
                registerCatch(jCTree.pos(), i11, env.info.gaps.next().intValue(), entryPoint, 0);
                i11 = env.info.gaps.next().intValue();
            }
            this.code.statBegin(TreeInfo.finalizerPos(env.tree));
            this.code.markStatBegin();
            Items.LocalItem makeTemp = makeTemp(this.syms.throwableType);
            makeTemp.store();
            genFinalizer(env);
            makeTemp.load();
            registerCatch(jCTree.pos(), i11, env.info.gaps.next().intValue(), entryPoint, 0);
            this.code.emitop0(191);
            this.code.markDead();
            GenContext genContext2 = env.info;
            if (genContext2.cont != null) {
                this.code.resolve(genContext2.cont);
                this.code.statBegin(TreeInfo.finalizerPos(env.tree));
                this.code.markStatBegin();
                Items.LocalItem makeTemp2 = makeTemp(this.syms.throwableType);
                makeTemp2.store();
                env.info.finalize.genLast();
                this.code.emitop1w(169, makeTemp2.reg);
                this.code.markDead();
            }
        }
        this.code.resolve(chain);
        this.code.endScopes(i10);
    }

    public Env<AttrContext> getAttrEnv() {
        return this.attrEnv;
    }

    public Code getCode() {
        return this.code;
    }

    public Items getItems() {
        return this.items;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean hasFinally(JCTree jCTree, Env<GenContext> env) {
        Env<GenContext> env2;
        while (true) {
            JCTree jCTree2 = env2.tree;
            if (jCTree2 == jCTree) {
                return false;
            }
            if (jCTree2.hasTag(JCTree.Tag.TRY) && env2.info.finalize.hasFinalizer()) {
                return true;
            }
            env2 = env2.next;
        }
    }

    public boolean isInvokeDynamic(Symbol symbol) {
        return symbol.kind == Kinds.Kind.MTH && ((Symbol.MethodSymbol) symbol).isDynamic();
    }

    public void loadIntConst(int i10) {
        this.items.makeImmediateItem(this.syms.intType, Integer.valueOf(i10)).load();
    }

    public Items.Item makeNewArray(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, int i10) {
        Type elemtype = this.types.elemtype(type);
        if (this.types.dimensions(type) > 255) {
            this.log.error(diagnosticPosition, "limit.dimensions", new Object[0]);
            this.nerrs++;
        }
        int arraycode = Code.arraycode(elemtype);
        if (arraycode == 0 || (arraycode == 1 && i10 == 1)) {
            this.code.emitAnewarray(makeRef(diagnosticPosition, elemtype), type);
        } else if (arraycode == 1) {
            this.code.emitMultianewarray(i10, makeRef(diagnosticPosition, type), type);
        } else {
            this.code.emitNewarray(arraycode, type);
        }
        return this.items.makeStackItem(type);
    }

    public int makeRef(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type) {
        checkDimension(diagnosticPosition, type);
        if (type.isAnnotated()) {
            return this.pool.put(type);
        }
        Pool pool = this.pool;
        boolean hasTag = type.hasTag(TypeTag.CLASS);
        AnnoConstruct annoConstruct = type;
        if (hasTag) {
            annoConstruct = type.tsym;
        }
        return pool.put(annoConstruct);
    }

    public Items.LocalItem makeTemp(Type type) {
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4096L, this.names.empty, type, this.env.enclMethod.sym);
        this.code.newLocal(varSymbol);
        return this.items.makeLocalItem(varSymbol);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<JCTree> normalizeDefs(List<JCTree> list, Symbol.ClassSymbol classSymbol) {
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        ListBuffer listBuffer3 = new ListBuffer();
        ListBuffer listBuffer4 = new ListBuffer();
        ListBuffer listBuffer5 = new ListBuffer();
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            JCTree jCTree = (JCTree) list2.head;
            int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
            if (i10 == 1) {
                JCTree.JCBlock jCBlock = (JCTree.JCBlock) jCTree;
                long j10 = jCBlock.flags;
                if ((8 & j10) != 0) {
                    listBuffer3.append(jCBlock);
                } else if ((4096 & j10) == 0) {
                    listBuffer.append(jCBlock);
                }
            } else if (i10 == 2) {
                listBuffer5.append(jCTree);
            } else if (i10 != 3) {
                Assert.error();
            } else {
                JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) jCTree;
                Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
                checkDimension(jCVariableDecl.pos(), varSymbol.type);
                if (jCVariableDecl.init != null) {
                    if ((8 & varSymbol.flags()) == 0) {
                        JCTree.JCStatement Assignment = this.make.at(jCVariableDecl.pos()).Assignment(varSymbol, jCVariableDecl.init);
                        listBuffer.append(Assignment);
                        this.endPosTable.replaceTree(jCVariableDecl, Assignment);
                        listBuffer2.addAll(getAndRemoveNonFieldTAs(varSymbol));
                    } else if (varSymbol.getConstValue() == null) {
                        JCTree.JCStatement Assignment2 = this.make.at(jCVariableDecl.pos).Assignment(varSymbol, jCVariableDecl.init);
                        listBuffer3.append(Assignment2);
                        this.endPosTable.replaceTree(jCVariableDecl, Assignment2);
                        listBuffer4.addAll(getAndRemoveNonFieldTAs(varSymbol));
                    } else {
                        checkStringConstant(jCVariableDecl.init.pos(), varSymbol.getConstValue());
                        jCVariableDecl.init.accept(this.classReferenceVisitor);
                    }
                }
            }
        }
        if (listBuffer.length() != 0) {
            List<JCTree.JCStatement> list3 = listBuffer.toList();
            listBuffer2.addAll(classSymbol.getInitTypeAttributes());
            List<Attribute.TypeCompound> list4 = listBuffer2.toList();
            Iterator it = listBuffer5.iterator();
            while (it.hasNext()) {
                normalizeMethod((JCTree.JCMethodDecl) ((JCTree) it.next()), list3, list4);
            }
        }
        if (listBuffer3.length() != 0) {
            Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol((classSymbol.flags() & 2048) | 8, this.names.clinit, new Type.MethodType(List.nil(), this.syms.voidType, List.nil(), this.syms.methodClass), classSymbol);
            classSymbol.members().enter(methodSymbol);
            List<JCTree.JCStatement> list5 = listBuffer3.toList();
            JCTree.JCBlock Block = this.make.at(list5.head.pos()).Block(0L, list5);
            Block.endpos = TreeInfo.endPos(list5.last());
            listBuffer5.append(this.make.MethodDef(methodSymbol, Block));
            if (!listBuffer4.isEmpty()) {
                methodSymbol.appendUniqueTypeAttributes(listBuffer4.toList());
            }
            if (!classSymbol.getClassInitTypeAttributes().isEmpty()) {
                methodSymbol.appendUniqueTypeAttributes(classSymbol.getClassInitTypeAttributes());
            }
        }
        return listBuffer5.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void normalizeMethod(JCTree.JCMethodDecl jCMethodDecl, List<JCTree.JCStatement> list, List<Attribute.TypeCompound> list2) {
        if (jCMethodDecl.name == this.names.init && TreeInfo.isInitialConstructor(jCMethodDecl)) {
            List list3 = jCMethodDecl.body.stats;
            ListBuffer listBuffer = new ListBuffer();
            if (list3.nonEmpty()) {
                while (TreeInfo.isSyntheticInit((JCTree) list3.head)) {
                    listBuffer.append(list3.head);
                    list3 = list3.tail;
                }
                listBuffer.append(list3.head);
                List list4 = list3.tail;
                while (list4.nonEmpty() && TreeInfo.isSyntheticInit((JCTree) list4.head)) {
                    listBuffer.append(list4.head);
                    list4 = list4.tail;
                }
                listBuffer.appendList(list);
                while (list4.nonEmpty()) {
                    listBuffer.append(list4.head);
                    list4 = list4.tail;
                }
            }
            jCMethodDecl.body.stats = listBuffer.toList();
            JCTree.JCBlock jCBlock = jCMethodDecl.body;
            if (jCBlock.endpos == -1) {
                jCBlock.endpos = TreeInfo.endPos(jCBlock.stats.last());
            }
            jCMethodDecl.sym.appendUniqueTypeAttributes(list2);
        }
    }

    public void registerCatch(JCDiagnostic.DiagnosticPosition diagnosticPosition, int i10, int i11, int i12, int i13) {
        char c10 = (char) i10;
        char c11 = (char) i11;
        char c12 = (char) i12;
        if (c10 == i10 && c11 == i11 && c12 == i12) {
            this.code.addCatch(c10, c11, c12, (char) i13);
        } else {
            this.log.error(diagnosticPosition, "limit.code.too.large.for.try.stmt", new Object[0]);
            this.nerrs++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Env<GenContext> unwind(JCTree jCTree, Env<GenContext> env) {
        Env<GenContext> env2;
        while (true) {
            genFinalizer(env2);
            if (env2.tree == jCTree) {
                return env2;
            }
            env2 = env2.next;
        }
    }

    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        setTypeAnnotationPositions(jCMethodInvocation.pos);
        Items.Item genExpr = genExpr(jCMethodInvocation.meth, this.methodType);
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) TreeInfo.symbol(jCMethodInvocation.meth);
        genArgs(jCMethodInvocation.args, methodSymbol.externalType(this.types).getParameterTypes());
        if (!methodSymbol.isDynamic()) {
            this.code.statBegin(jCMethodInvocation.pos);
        }
        this.result = genExpr.invoke();
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        JCTree.JCExpression jCExpression = jCAssign.lhs;
        Items.Item genExpr = genExpr(jCExpression, jCExpression.type);
        genExpr(jCAssign.rhs, jCAssign.lhs.type).load();
        if (jCAssign.rhs.type.hasTag(TypeTag.BOT)) {
            this.code.state.forceStackTop(jCAssign.lhs.type);
        }
        this.result = this.items.makeAssignItem(genExpr);
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        Items.Item item;
        Symbol.OperatorSymbol operatorSymbol = jCAssignOp.operator;
        if (operatorSymbol.opcode == 256) {
            item = this.concat.makeConcat(jCAssignOp);
        } else {
            JCTree.JCExpression jCExpression = jCAssignOp.lhs;
            Items.Item genExpr = genExpr(jCExpression, jCExpression.type);
            if ((jCAssignOp.hasTag(JCTree.Tag.PLUS_ASG) || jCAssignOp.hasTag(JCTree.Tag.MINUS_ASG)) && (genExpr instanceof Items.LocalItem)) {
                TypeTag tag = jCAssignOp.lhs.type.getTag();
                TypeTag typeTag = TypeTag.INT;
                if (tag.isSubRangeOf(typeTag) && jCAssignOp.rhs.type.getTag().isSubRangeOf(typeTag) && jCAssignOp.rhs.type.constValue() != null) {
                    int intValue = ((Number) jCAssignOp.rhs.type.constValue()).intValue();
                    if (jCAssignOp.hasTag(JCTree.Tag.MINUS_ASG)) {
                        intValue = -intValue;
                    }
                    ((Items.LocalItem) genExpr).incr(intValue);
                    this.result = genExpr;
                    return;
                }
            }
            genExpr.duplicate();
            genExpr.coerce(operatorSymbol.type.getParameterTypes().head).load();
            completeBinop(jCAssignOp.lhs, jCAssignOp.rhs, operatorSymbol).coerce(jCAssignOp.lhs.type);
            item = genExpr;
        }
        this.result = this.items.makeAssignItem(item);
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        Symbol.OperatorSymbol operatorSymbol = jCBinary.operator;
        if (operatorSymbol.opcode == 256) {
            this.result = this.concat.makeConcat(jCBinary);
            return;
        }
        if (jCBinary.hasTag(JCTree.Tag.AND)) {
            Items.CondItem genCond = genCond(jCBinary.lhs, 8);
            if (genCond.isFalse()) {
                this.result = genCond;
                return;
            }
            Code.Chain jumpFalse = genCond.jumpFalse();
            this.code.resolve(genCond.trueJumps);
            Items.CondItem genCond2 = genCond(jCBinary.rhs, 16);
            this.result = this.items.makeCondItem(genCond2.opcode, genCond2.trueJumps, Code.mergeChains(jumpFalse, genCond2.falseJumps));
            return;
        }
        if (!jCBinary.hasTag(JCTree.Tag.OR)) {
            genExpr(jCBinary.lhs, operatorSymbol.type.getParameterTypes().head).load();
            this.result = completeBinop(jCBinary.lhs, jCBinary.rhs, operatorSymbol);
            return;
        }
        Items.CondItem genCond3 = genCond(jCBinary.lhs, 8);
        if (genCond3.isTrue()) {
            this.result = genCond3;
            return;
        }
        Code.Chain jumpTrue = genCond3.jumpTrue();
        this.code.resolve(genCond3.falseJumps);
        Items.CondItem genCond4 = genCond(jCBinary.rhs, 16);
        this.result = this.items.makeCondItem(genCond4.opcode, Code.mergeChains(jumpTrue, genCond4.trueJumps), genCond4.falseJumps);
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        int i10 = this.code.nextreg;
        genStats(jCBlock.stats, this.env.dup(jCBlock, new GenContext()));
        if (this.env.tree.hasTag(JCTree.Tag.METHODDEF)) {
            return;
        }
        this.code.statBegin(jCBlock.endpos);
        this.code.endScopes(i10);
        this.code.pendingStatPos = -1;
    }

    @Override
    public void visitBreak(JCTree.JCBreak jCBreak) {
        Env<GenContext> unwind = unwind(jCBreak.target, this.env);
        Assert.check(this.code.state.stacksize == 0);
        unwind.info.addExit(this.code.branch(167));
        endFinalizerGaps(this.env, unwind);
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        Code.Chain chain;
        this.code.statBegin(jCConditional.cond.pos);
        Items.CondItem genCond = genCond(jCConditional.cond, 8);
        Code.Chain jumpFalse = genCond.jumpFalse();
        if (genCond.isFalse()) {
            chain = null;
        } else {
            this.code.resolve(genCond.trueJumps);
            int curCP = this.genCrt ? this.code.curCP() : 0;
            this.code.statBegin(jCConditional.truepart.pos);
            genExpr(jCConditional.truepart, this.pt).load();
            this.code.state.forceStackTop(jCConditional.type);
            if (this.genCrt) {
                Code code = this.code;
                code.crt.put(jCConditional.truepart, 16, curCP, code.curCP());
            }
            chain = this.code.branch(167);
        }
        if (jumpFalse != null) {
            this.code.resolve(jumpFalse);
            int curCP2 = this.genCrt ? this.code.curCP() : 0;
            this.code.statBegin(jCConditional.falsepart.pos);
            genExpr(jCConditional.falsepart, this.pt).load();
            this.code.state.forceStackTop(jCConditional.type);
            if (this.genCrt) {
                Code code2 = this.code;
                code2.crt.put(jCConditional.falsepart, 16, curCP2, code2.curCP());
            }
        }
        this.code.resolve(chain);
        this.result = this.items.makeStackItem(this.pt);
    }

    @Override
    public void visitContinue(JCTree.JCContinue jCContinue) {
        Env<GenContext> unwind = unwind(jCContinue.target, this.env);
        Assert.check(this.code.state.stacksize == 0);
        unwind.info.addCont(this.code.branch(167));
        endFinalizerGaps(this.env, unwind);
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        genLoop(jCDoWhileLoop, jCDoWhileLoop.body, jCDoWhileLoop.cond, List.nil(), false);
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        JCTree.JCExpression jCExpression = jCExpressionStatement.expr;
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()];
        if (i10 == 4) {
            ((JCTree.JCUnary) jCExpression).setTag(JCTree.Tag.PREINC);
        } else if (i10 == 5) {
            ((JCTree.JCUnary) jCExpression).setTag(JCTree.Tag.PREDEC);
        }
        Assert.check(this.code.state.stacksize == 0);
        JCTree.JCExpression jCExpression2 = jCExpressionStatement.expr;
        genExpr(jCExpression2, jCExpression2.type).drop();
        Assert.check(this.code.state.stacksize == 0);
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        int i10 = this.code.nextreg;
        genStats(jCForLoop.init, this.env);
        genLoop(jCForLoop, jCForLoop.body, jCForLoop.cond, jCForLoop.step, true);
        this.code.endScopes(i10);
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        throw new AssertionError();
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        Symbol symbol = jCIdent.sym;
        Name name = jCIdent.name;
        Names names = this.names;
        Name name2 = names._this;
        if (name == name2 || name == names._super) {
            Items.Item makeThisItem = name == name2 ? this.items.makeThisItem() : this.items.makeSuperItem();
            if (symbol.kind == Kinds.Kind.MTH) {
                makeThisItem.load();
                makeThisItem = this.items.makeMemberItem(symbol, true);
            }
            this.result = makeThisItem;
            return;
        }
        if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH) {
            this.result = this.items.makeLocalItem((Symbol.VarSymbol) symbol);
            return;
        }
        if (isInvokeDynamic(symbol)) {
            this.result = this.items.makeDynamicItem(symbol);
            return;
        }
        if ((symbol.flags() & 8) != 0) {
            if (!isAccessSuper(this.env.enclMethod)) {
                symbol = binaryQualifier(symbol, this.env.enclClass.type);
            }
            this.result = this.items.makeStaticItem(symbol);
        } else {
            this.items.makeThisItem().load();
            Symbol binaryQualifier = binaryQualifier(symbol, this.env.enclClass.type);
            this.result = this.items.makeMemberItem(binaryQualifier, (binaryQualifier.flags() & 2) != 0);
        }
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        Code.Chain chain;
        Code code = this.code;
        int i10 = code.nextreg;
        Assert.check(code.state.stacksize == 0);
        Items.CondItem genCond = genCond(TreeInfo.skipParens(jCIf.cond), 8);
        Code.Chain jumpFalse = genCond.jumpFalse();
        Assert.check(this.code.state.stacksize == 0);
        if (genCond.isFalse()) {
            chain = null;
        } else {
            this.code.resolve(genCond.trueJumps);
            genStat(jCIf.thenpart, this.env, 17);
            chain = this.code.branch(167);
        }
        if (jumpFalse != null) {
            this.code.resolve(jumpFalse);
            JCTree.JCStatement jCStatement = jCIf.elsepart;
            if (jCStatement != null) {
                genStat(jCStatement, this.env, 17);
            }
        }
        this.code.resolve(chain);
        this.code.endScopes(i10);
        Assert.check(this.code.state.stacksize == 0);
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        JCTree.JCExpression jCExpression = jCArrayAccess.indexed;
        genExpr(jCExpression, jCExpression.type).load();
        genExpr(jCArrayAccess.index, this.syms.intType).load();
        this.result = this.items.makeIndexedItem(jCArrayAccess.type);
    }

    @Override
    public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
        Env<GenContext> dup = this.env.dup(jCLabeledStatement, new GenContext());
        genStat(jCLabeledStatement.body, dup, 1);
        Code.Chain chain = dup.info.exit;
        if (chain != null) {
            this.code.resolve(chain);
            chain.state.defined.excludeFrom(this.code.nextreg);
        }
    }

    @Override
    public void visitLetExpr(JCTree.LetExpr letExpr) {
        this.letExprDepth++;
        int i10 = this.code.nextreg;
        genStats(letExpr.defs, this.env);
        JCTree.JCExpression jCExpression = letExpr.expr;
        this.result = genExpr(jCExpression, jCExpression.type).load();
        this.code.endScopes(i10);
        this.letExprDepth--;
    }

    @Override
    public void visitLiteral(JCTree.JCLiteral jCLiteral) {
        if (!jCLiteral.type.hasTag(TypeTag.BOT)) {
            this.result = this.items.makeImmediateItem(jCLiteral.type, jCLiteral.value);
        } else {
            this.code.emitop0(1);
            this.result = this.items.makeStackItem(jCLiteral.type);
        }
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        Env<GenContext> dup = this.env.dup(jCMethodDecl);
        dup.enclMethod = jCMethodDecl;
        this.pt = jCMethodDecl.sym.erasure(this.types).getReturnType();
        checkDimension(jCMethodDecl.pos(), jCMethodDecl.sym.erasure(this.types));
        genMethod(jCMethodDecl, dup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        setTypeAnnotationPositions(jCNewArray.pos);
        if (jCNewArray.elems == null) {
            for (List list = jCNewArray.dims; list.nonEmpty(); list = list.tail) {
                genExpr((JCTree) list.head, this.syms.intType).load();
            }
            this.result = makeNewArray(jCNewArray.pos(), jCNewArray.type, jCNewArray.dims.length());
            return;
        }
        Type elemtype = this.types.elemtype(jCNewArray.type);
        loadIntConst(jCNewArray.elems.length());
        Items.Item makeNewArray = makeNewArray(jCNewArray.pos(), jCNewArray.type, 1);
        int i10 = 0;
        for (List list2 = jCNewArray.elems; list2.nonEmpty(); list2 = list2.tail) {
            makeNewArray.duplicate();
            loadIntConst(i10);
            i10++;
            genExpr((JCTree) list2.head, elemtype).load();
            this.items.makeIndexedItem(elemtype).store();
        }
        this.result = makeNewArray;
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        Assert.check(jCNewClass.encl == null && jCNewClass.def == null);
        setTypeAnnotationPositions(jCNewClass.pos);
        this.code.emitop2(187, makeRef(jCNewClass.pos(), jCNewClass.type));
        this.code.emitop0(89);
        genArgs(jCNewClass.args, jCNewClass.constructor.externalType(this.types).getParameterTypes());
        this.items.makeMemberItem(jCNewClass.constructor, true).invoke();
        this.result = this.items.makeStackItem(jCNewClass.type);
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        JCTree.JCExpression jCExpression = jCParens.expr;
        this.result = genExpr(jCExpression, jCExpression.type);
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        Env<GenContext> unwind;
        Code code = this.code;
        int i10 = code.nextreg;
        int i11 = code.pendingStatPos;
        if (jCReturn.expr != null) {
            Assert.check(code.state.stacksize == 0);
            Items.Item load = genExpr(jCReturn.expr, this.pt).load();
            Env<GenContext> env = this.env;
            if (hasFinally(env.enclMethod, env)) {
                load = makeTemp(this.pt);
                load.store();
            }
            Env<GenContext> env2 = this.env;
            unwind = unwind(env2.enclMethod, env2);
            this.code.pendingStatPos = i11;
            load.load();
            this.code.emitop0(Code.truncate(Code.typecode(this.pt)) + 172);
        } else {
            Env<GenContext> env3 = this.env;
            unwind = unwind(env3.enclMethod, env3);
            Code code2 = this.code;
            code2.pendingStatPos = i11;
            code2.emitop0(177);
        }
        endFinalizerGaps(this.env, unwind);
        this.code.endScopes(i10);
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        Items.Item genExpr;
        Symbol symbol = jCFieldAccess.sym;
        if (jCFieldAccess.name == this.names._class) {
            this.code.emitLdc(makeRef(jCFieldAccess.pos(), jCFieldAccess.selected.type));
            this.result = this.items.makeStackItem(this.pt);
            return;
        }
        Symbol symbol2 = TreeInfo.symbol(jCFieldAccess.selected);
        boolean z10 = symbol2 != null && (symbol2.kind == Kinds.Kind.TYP || symbol2.name == this.names._super);
        boolean isAccessSuper = isAccessSuper(this.env.enclMethod);
        if (z10) {
            genExpr = this.items.makeSuperItem();
        } else {
            JCTree.JCExpression jCExpression = jCFieldAccess.selected;
            genExpr = genExpr(jCExpression, jCExpression.type);
        }
        if (symbol.kind == Kinds.Kind.VAR) {
            Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol;
            if (varSymbol.getConstValue() != null) {
                if ((symbol.flags() & 8) != 0) {
                    if (!z10 && (symbol2 == null || symbol2.kind != Kinds.Kind.TYP)) {
                        genExpr = genExpr.load();
                    }
                    genExpr.drop();
                } else {
                    genExpr.load();
                    genNullCheck(jCFieldAccess.selected.pos());
                }
                this.result = this.items.makeImmediateItem(symbol.type, varSymbol.getConstValue());
                return;
            }
        }
        if (isInvokeDynamic(symbol)) {
            this.result = this.items.makeDynamicItem(symbol);
            return;
        }
        Symbol binaryQualifier = binaryQualifier(symbol, jCFieldAccess.selected.type);
        if ((binaryQualifier.flags() & 8) != 0) {
            if (!z10 && (symbol2 == null || symbol2.kind != Kinds.Kind.TYP)) {
                genExpr = genExpr.load();
            }
            genExpr.drop();
            this.result = this.items.makeStaticItem(binaryQualifier);
            return;
        }
        genExpr.load();
        if (binaryQualifier != this.syms.lengthVar) {
            this.result = this.items.makeMemberItem(binaryQualifier, (binaryQualifier.flags() & 2) != 0 || z10 || isAccessSuper);
        } else {
            this.code.emitop0(190);
            this.result = this.items.makeStackItem(this.syms.intType);
        }
    }

    @Override
    public void visitSkip(JCTree.JCSkip jCSkip) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        int i10;
        long j10;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16 = this.code.nextreg;
        Assert.check(!jCSwitch.selector.type.hasTag(TypeTag.CLASS));
        int curCP = this.genCrt ? this.code.curCP() : 0;
        Assert.check(this.code.state.stacksize == 0);
        Items.Item genExpr = genExpr(jCSwitch.selector, this.syms.intType);
        List<JCTree.JCCase> list = jCSwitch.cases;
        if (list.isEmpty()) {
            genExpr.load().drop();
            if (this.genCrt) {
                this.code.crt.put(TreeInfo.skipParens(jCSwitch.selector), 8, curCP, this.code.curCP());
            }
            i10 = i16;
        } else {
            genExpr.load();
            if (this.genCrt) {
                this.code.crt.put(TreeInfo.skipParens(jCSwitch.selector), 8, curCP, this.code.curCP());
            }
            Env<GenContext> dup = this.env.dup(jCSwitch, new GenContext());
            dup.info.isSwitch = true;
            int length = list.length();
            int[] iArr2 = new int[length];
            int i17 = Integer.MAX_VALUE;
            int i18 = Integer.MIN_VALUE;
            List list2 = list;
            int i19 = -1;
            int i20 = 0;
            for (int i21 = 0; i21 < length; i21++) {
                A a10 = list2.head;
                if (((JCTree.JCCase) a10).pat != null) {
                    int intValue = ((Number) ((JCTree.JCCase) a10).pat.type.constValue()).intValue();
                    iArr2[i21] = intValue;
                    if (intValue < i17) {
                        i17 = intValue;
                    }
                    if (i18 < intValue) {
                        i18 = intValue;
                    }
                    i20++;
                } else {
                    Assert.check(i19 == -1);
                    i19 = i21;
                }
                list2 = list2.tail;
            }
            long j11 = i18;
            i10 = i16;
            long j12 = i17;
            int i22 = i17;
            long j13 = i20;
            int i23 = (i20 <= 0 || (j11 - j12) + 14 > ((2 * j13) + 3) + (j13 * 3)) ? 171 : 170;
            int curCP2 = this.code.curCP();
            this.code.emitop0(i23);
            this.code.align(4);
            int curCP3 = this.code.curCP();
            this.code.emit4(-1);
            if (i23 == 170) {
                i11 = i22;
                this.code.emit4(i11);
                this.code.emit4(i18);
                long j14 = j12;
                while (j14 <= j11) {
                    this.code.emit4(-1);
                    j14++;
                    curCP3 = curCP3;
                    j12 = j12;
                }
                j10 = j12;
                iArr = null;
                i12 = curCP3;
            } else {
                j10 = j12;
                int i24 = -1;
                i11 = i22;
                this.code.emit4(i20);
                int i25 = 0;
                while (i25 < i20) {
                    this.code.emit4(i24);
                    this.code.emit4(i24);
                    i25++;
                    i24 = -1;
                }
                i12 = curCP3;
                iArr = new int[length];
            }
            Code.State dup2 = this.code.state.dup();
            this.code.markDead();
            List<JCTree.JCCase> list3 = list;
            int i26 = 0;
            while (i26 < length) {
                int i27 = i20;
                JCTree.JCCase jCCase = list3.head;
                List<JCTree.JCCase> list4 = list3.tail;
                int entryPoint = this.code.entryPoint(dup2);
                if (i26 != i19) {
                    i14 = length;
                    if (i23 == 170) {
                        i15 = i11;
                        this.code.put4(i12 + (((iArr2[i26] - i11) + 3) * 4), entryPoint - curCP2);
                    } else {
                        i15 = i11;
                        iArr[i26] = entryPoint - curCP2;
                    }
                } else {
                    i14 = length;
                    i15 = i11;
                    this.code.put4(i12, entryPoint - curCP2);
                }
                genStats(jCCase.stats, dup, 16);
                i26++;
                i20 = i27;
                list3 = list4;
                length = i14;
                i11 = i15;
            }
            int i28 = length;
            int i29 = i20;
            Code.Chain chain = dup.info.exit;
            if (chain != null) {
                this.code.resolve(chain);
                chain.state.defined.excludeFrom(i10);
            }
            if (this.code.get4(i12) == -1) {
                Code code = this.code;
                code.put4(i12, code.entryPoint(dup2) - curCP2);
            }
            if (i23 == 170) {
                int i30 = this.code.get4(i12);
                for (long j15 = j10; j15 <= j11; j15++) {
                    int i31 = (int) (i12 + (((j15 - j10) + 3) * 4));
                    if (this.code.get4(i31) == -1) {
                        this.code.put4(i31, i30);
                    }
                }
            } else {
                if (i19 >= 0) {
                    while (i19 < i28 - 1) {
                        int i32 = i19 + 1;
                        iArr2[i19] = iArr2[i32];
                        iArr[i19] = iArr[i32];
                        i19 = i32;
                    }
                }
                if (i29 > 0) {
                    i13 = 0;
                    qsort2(iArr2, iArr, 0, i29 - 1);
                } else {
                    i13 = 0;
                }
                int i33 = i13;
                while (i33 < i29) {
                    int i34 = i33 + 1;
                    int i35 = i12 + (i34 * 8);
                    this.code.put4(i35, iArr2[i33]);
                    this.code.put4(i35 + 4, iArr[i33]);
                    i33 = i34;
                }
            }
        }
        this.code.endScopes(i10);
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        int i10 = this.code.nextreg;
        final Items.LocalItem makeTemp = makeTemp(this.syms.objectType);
        Assert.check(this.code.state.stacksize == 0);
        JCTree.JCExpression jCExpression = jCSynchronized.lock;
        genExpr(jCExpression, jCExpression.type).load().duplicate();
        makeTemp.store();
        this.code.emitop0(194);
        this.code.state.lock(makeTemp.reg);
        final Env<GenContext> dup = this.env.dup(jCSynchronized, new GenContext());
        dup.info.finalize = new GenFinalizer() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void gen() {
                genLast();
                Assert.check(((GenContext) dup.info).gaps.length() % 2 == 0);
                ((GenContext) dup.info).gaps.append(Integer.valueOf(Gen.this.code.curCP()));
            }

            @Override
            public void genLast() {
                if (Gen.this.code.isAlive()) {
                    makeTemp.load();
                    Gen.this.code.emitop0(195);
                    Gen.this.code.state.unlock(makeTemp.reg);
                }
            }
        };
        dup.info.gaps = new ListBuffer<>();
        genTry(jCSynchronized.body, List.nil(), dup);
        this.code.endScopes(i10);
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        Assert.check(this.code.state.stacksize == 0);
        JCTree.JCExpression jCExpression = jCThrow.expr;
        genExpr(jCExpression, jCExpression.type).load();
        this.code.emitop0(191);
        Assert.check(this.code.state.stacksize == 0);
    }

    @Override
    public void visitTry(final JCTree.JCTry jCTry) {
        final Env<GenContext> dup = this.env.dup(jCTry, new GenContext());
        final Env<GenContext> env = this.env;
        dup.info.finalize = new GenFinalizer() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void gen() {
                Assert.check(((GenContext) dup.info).gaps.length() % 2 == 0);
                ((GenContext) dup.info).gaps.append(Integer.valueOf(Gen.this.code.curCP()));
                genLast();
            }

            @Override
            public void genLast() {
                JCTree.JCBlock jCBlock = jCTry.finalizer;
                if (jCBlock != null) {
                    Gen.this.genStat(jCBlock, env, 2);
                }
            }

            @Override
            public boolean hasFinalizer() {
                return jCTry.finalizer != null;
            }
        };
        dup.info.gaps = new ListBuffer<>();
        genTry(jCTry.body, jCTry.catchers, dup);
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        this.result = genExpr(jCTypeCast.expr, jCTypeCast.clazz.type).load();
        setTypeAnnotationPositions(jCTypeCast.pos);
        if (jCTypeCast.clazz.type.isPrimitive() || this.types.isSameType(jCTypeCast.expr.type, jCTypeCast.clazz.type) || this.types.asSuper(jCTypeCast.expr.type, jCTypeCast.clazz.type.tsym) != null) {
            return;
        }
        this.code.emitop2(192, makeRef(jCTypeCast.pos(), jCTypeCast.clazz.type));
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        JCTree.JCExpression jCExpression = jCInstanceOf.expr;
        genExpr(jCExpression, jCExpression.type).load();
        setTypeAnnotationPositions(jCInstanceOf.pos);
        this.code.emitop2(193, makeRef(jCInstanceOf.pos(), jCInstanceOf.clazz.type));
        this.result = this.items.makeStackItem(this.syms.booleanType);
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        int i10;
        int i11;
        Symbol.OperatorSymbol operatorSymbol = jCUnary.operator;
        if (jCUnary.hasTag(JCTree.Tag.NOT)) {
            this.result = genCond((JCTree) jCUnary.arg, false).negate();
            return;
        }
        Items.Item genExpr = genExpr(jCUnary.arg, operatorSymbol.type.getParameterTypes().head);
        switch (AnonymousClass3.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCUnary.getTag().ordinal()]) {
            case 4:
            case 5:
                genExpr.duplicate();
                if ((genExpr instanceof Items.LocalItem) && ((i10 = operatorSymbol.opcode) == 96 || i10 == 100)) {
                    Items.Item load = genExpr.load();
                    ((Items.LocalItem) genExpr).incr(jCUnary.hasTag(JCTree.Tag.POSTINC) ? 1 : -1);
                    this.result = load;
                    return;
                }
                Items.Item load2 = genExpr.load();
                genExpr.stash(genExpr.typecode);
                this.code.emitop0(one(genExpr.typecode));
                this.code.emitop0(operatorSymbol.opcode);
                int i12 = genExpr.typecode;
                if (i12 != 0 && Code.truncate(i12) == 0) {
                    this.code.emitop0(genExpr.typecode + 140);
                }
                genExpr.store();
                this.result = load2;
                return;
            case 6:
                this.result = genExpr.load();
                return;
            case 7:
                this.result = genExpr.load();
                this.code.emitop0(operatorSymbol.opcode);
                return;
            case 8:
                this.result = genExpr.load();
                emitMinusOne(genExpr.typecode);
                this.code.emitop0(operatorSymbol.opcode);
                return;
            case 9:
            case 10:
                genExpr.duplicate();
                if ((genExpr instanceof Items.LocalItem) && ((i11 = operatorSymbol.opcode) == 96 || i11 == 100)) {
                    ((Items.LocalItem) genExpr).incr(jCUnary.hasTag(JCTree.Tag.PREINC) ? 1 : -1);
                    this.result = genExpr;
                    return;
                }
                genExpr.load();
                this.code.emitop0(one(genExpr.typecode));
                this.code.emitop0(operatorSymbol.opcode);
                int i13 = genExpr.typecode;
                if (i13 != 0 && Code.truncate(i13) == 0) {
                    this.code.emitop0(genExpr.typecode + 140);
                }
                this.result = this.items.makeAssignItem(genExpr);
                return;
            case 11:
                this.result = genExpr.load();
                this.code.emitop0(89);
                genNullCheck(jCUnary.pos());
                return;
            default:
                Assert.error();
                return;
        }
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
        this.code.newLocal(varSymbol);
        JCTree.JCExpression jCExpression = jCVariableDecl.init;
        if (jCExpression != null) {
            checkStringConstant(jCExpression.pos(), varSymbol.getConstValue());
            if (varSymbol.getConstValue() == null || this.varDebugInfo) {
                boolean z10 = true;
                Assert.check(this.letExprDepth != 0 || this.code.state.stacksize == 0);
                genExpr(jCVariableDecl.init, varSymbol.erasure(this.types)).load();
                this.items.makeLocalItem(varSymbol).store();
                if (this.letExprDepth == 0 && this.code.state.stacksize != 0) {
                    z10 = false;
                }
                Assert.check(z10);
            }
        }
        checkDimension(jCVariableDecl.pos(), varSymbol.type);
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        genLoop(jCWhileLoop, jCWhileLoop.body, jCWhileLoop.cond, List.nil(), true);
    }

    @Override
    public void visitWildcard(JCTree.JCWildcard jCWildcard) {
        throw new AssertionError((Object) getClass().getName());
    }

    public Items.CondItem genCond(JCTree jCTree, boolean z10) {
        JCTree skipParens = TreeInfo.skipParens(jCTree);
        if (skipParens.hasTag(JCTree.Tag.CONDEXPR)) {
            JCTree.JCConditional jCConditional = (JCTree.JCConditional) skipParens;
            Items.CondItem genCond = genCond(jCConditional.cond, 8);
            if (genCond.isTrue()) {
                this.code.resolve(genCond.trueJumps);
                Items.CondItem genCond2 = genCond(jCConditional.truepart, 16);
                if (z10) {
                    genCond2.tree = jCConditional.truepart;
                }
                return genCond2;
            }
            if (genCond.isFalse()) {
                this.code.resolve(genCond.falseJumps);
                Items.CondItem genCond3 = genCond(jCConditional.falsepart, 16);
                if (z10) {
                    genCond3.tree = jCConditional.falsepart;
                }
                return genCond3;
            }
            Code.Chain jumpFalse = genCond.jumpFalse();
            this.code.resolve(genCond.trueJumps);
            Items.CondItem genCond4 = genCond(jCConditional.truepart, 16);
            if (z10) {
                genCond4.tree = jCConditional.truepart;
            }
            Code.Chain jumpFalse2 = genCond4.jumpFalse();
            this.code.resolve(genCond4.trueJumps);
            Code.Chain branch = this.code.branch(167);
            this.code.resolve(jumpFalse);
            Items.CondItem genCond5 = genCond(jCConditional.falsepart, 16);
            Items.CondItem makeCondItem = this.items.makeCondItem(genCond5.opcode, Code.mergeChains(branch, genCond5.trueJumps), Code.mergeChains(jumpFalse2, genCond5.falseJumps));
            if (z10) {
                makeCondItem.tree = jCConditional.falsepart;
            }
            return makeCondItem;
        }
        Items.CondItem mkCond = genExpr(jCTree, this.syms.booleanType).mkCond();
        if (z10) {
            mkCond.tree = jCTree;
        }
        return mkCond;
    }

    public void genStat(JCTree jCTree, Env<GenContext> env) {
        if (this.code.isAlive()) {
            this.code.statBegin(jCTree.pos);
            genDef(jCTree, env);
        } else if (env.info.isSwitch && jCTree.hasTag(JCTree.Tag.VARDEF)) {
            this.code.newLocal(((JCTree.JCVariableDecl) jCTree).sym);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void genStats(List<? extends JCTree> list, Env<GenContext> env) {
        for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            genStat((JCTree) list2.head, env, 1);
        }
    }
}
