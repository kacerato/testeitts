package org.openjdk.tools.javac.comp;

import android.provider.Telephony;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.jvm.ClassWriter;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.tree.TreeTranslator;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class Lower extends TreeTranslator {
    public static final int USE_CLOSE_RESOURCE_METHOD_THRESHOLD = 4;
    protected static final Context.Key<Lower> lowerKey = new Context.Key<>();
    private List<Symbol.ClassSymbol> accessConstrTags;
    private Map<Symbol, Symbol.MethodSymbol> accessConstrs;
    private Map<Symbol, Integer> accessNums;
    private Map<Symbol, Symbol.MethodSymbol[]> accessSyms;
    private ListBuffer<Symbol> accessed;
    Map<Symbol, Symbol> actualSymbols;
    private Symbol.ClassSymbol assertionsDisabledClassCache;
    private final Attr attr;
    Env<AttrContext> attrEnv;
    private final ConstFold cfolder;
    private final Check chk;
    private final Name classDollar;
    Map<Symbol.ClassSymbol, JCTree.JCClassDecl> classdefs;
    Symbol.ClassSymbol currentClass;
    JCTree.JCMethodDecl currentMethodDef;
    Symbol.MethodSymbol currentMethodSym;
    private final boolean debugLower;
    private final Name dollarAssertionsDisabled;
    private final Name dollarCloseResource;
    private JCTree.JCExpression enclOp;
    EndPosTable endPosTable;
    Map<Symbol.ClassSymbol, List<Symbol.VarSymbol>> freevarCache;
    private final Log log;
    private TreeMaker make;
    private JCDiagnostic.DiagnosticPosition make_pos;
    private final Names names;
    private final Operators operators;
    List<Symbol.VarSymbol> outerThisStack;
    JCTree.JCClassDecl outermostClassDef;
    JCTree outermostMemberDef;
    private final Option.PkgInfo pkginfoOpt;
    Scope.WriteableScope proxies;
    private final Resolve rs;
    private final Source source;
    private final Symtab syms;
    private Symbol.MethodSymbol systemArraycopyMethod;
    private final Target target;
    ListBuffer<JCTree> translated;
    Scope.WriteableScope twrVars;
    private final TypeEnvs typeEnvs;
    private final Types types;
    private final ClassWriter writer;
    public Map<Symbol.ClassSymbol, List<JCTree>> prunedTree = new WeakHashMap();
    Map<Symbol, Symbol> lambdaTranslationMap = null;
    ClassMap classMap = new ClassMap();
    Map<Symbol.TypeSymbol, EnumMapping> enumSwitchMap = new LinkedHashMap();
    JCTree.Visitor conflictsChecker = new TreeScanner() {
        Symbol.TypeSymbol currentClass;

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            Symbol.TypeSymbol typeSymbol = this.currentClass;
            this.currentClass = jCClassDecl.sym;
            try {
                super.visitClassDef(jCClassDecl);
            } finally {
                this.currentClass = typeSymbol;
            }
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            Lower.this.chk.checkConflicts(jCMethodDecl.pos(), jCMethodDecl.sym, this.currentClass);
            super.visitMethodDef(jCMethodDecl);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if (jCVariableDecl.sym.owner.kind == Kinds.Kind.TYP) {
                Lower.this.chk.checkConflicts(jCVariableDecl.pos(), jCVariableDecl.sym, this.currentClass);
            }
            super.visitVarDef(jCVariableDecl);
        }
    };

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$main$Option$PkgInfo;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[Option.PkgInfo.values().length];
            $SwitchMap$com$sun$tools$javac$main$Option$PkgInfo = iArr;
            try {
                iArr[Option.PkgInfo.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Option$PkgInfo[Option.PkgInfo.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Option$PkgInfo[Option.PkgInfo.NONEMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr2;
            try {
                iArr2[JCTree.Tag.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.IDENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SELECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.INDEXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPECAST.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREINC.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.OR.ordinal()] = 12;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.AND.ordinal()] = 13;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr3 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr3;
            try {
                iArr3[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr4 = new int[Symbol.OperatorSymbol.AccessCode.values().length];
            $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode = iArr4;
            try {
                iArr4[Symbol.OperatorSymbol.AccessCode.DEREF.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[Symbol.OperatorSymbol.AccessCode.ASSIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[Symbol.OperatorSymbol.AccessCode.PREINC.ordinal()] = 3;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[Symbol.OperatorSymbol.AccessCode.POSTINC.ordinal()] = 4;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[Symbol.OperatorSymbol.AccessCode.PREDEC.ordinal()] = 5;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[Symbol.OperatorSymbol.AccessCode.POSTDEC.ordinal()] = 6;
            } catch (NoSuchFieldError unused33) {
            }
            int[] iArr5 = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr5;
            try {
                iArr5[Kinds.Kind.VAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.TYP.ordinal()] = 3;
            } catch (NoSuchFieldError unused36) {
            }
        }
    }

    public class AssignopDependencyScanner extends TreeScanner {
        boolean dependencyFound = false;
        Symbol sym;

        public AssignopDependencyScanner(JCTree.JCAssignOp jCAssignOp) {
            this.sym = TreeInfo.symbol(jCAssignOp.lhs);
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree == null || this.sym == null) {
                return;
            }
            jCTree.accept(this);
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            if (TreeInfo.symbol(jCAssignOp.lhs) == this.sym) {
                this.dependencyFound = true;
            } else {
                super.visitAssignop(jCAssignOp);
            }
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            if (TreeInfo.symbol(jCUnary.arg) == this.sym) {
                this.dependencyFound = true;
            } else {
                super.visitUnary(jCUnary);
            }
        }
    }

    public abstract class BasicFreeVarCollector extends TreeScanner {
        public BasicFreeVarCollector() {
        }

        public abstract void addFreeVars(Symbol.ClassSymbol classSymbol);

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            if (TreeInfo.name(jCMethodInvocation.meth) == Lower.this.names._super) {
                addFreeVars((Symbol.ClassSymbol) TreeInfo.symbol(jCMethodInvocation.meth).owner);
            }
            super.visitApply(jCMethodInvocation);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            visitSymbol(jCIdent.sym);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            addFreeVars((Symbol.ClassSymbol) jCNewClass.constructor.owner);
            super.visitNewClass(jCNewClass);
        }

        public abstract void visitSymbol(Symbol symbol);
    }

    public class ClassMap extends TreeScanner {
        public ClassMap() {
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            Lower.this.classdefs.put(jCClassDecl.sym, jCClassDecl);
            super.visitClassDef(jCClassDecl);
        }
    }

    public class EnumMapping {
        final Symbol.TypeSymbol forEnum;
        final Symbol.VarSymbol mapVar;
        JCDiagnostic.DiagnosticPosition pos;
        int next = 1;
        final Map<Symbol.VarSymbol, Integer> values = new LinkedHashMap();

        public EnumMapping(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
            this.pos = null;
            this.forEnum = typeSymbol;
            this.pos = diagnosticPosition;
            Name fromString = Lower.this.names.fromString(Lower.this.target.syntheticNameChar() + "SwitchMap" + Lower.this.target.syntheticNameChar() + Lower.this.writer.xClassName(typeSymbol.type).toString().replace('/', '.').replace('.', Lower.this.target.syntheticNameChar()));
            Symbol.ClassSymbol outerCacheClass = Lower.this.outerCacheClass();
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4120L, fromString, new Type.ArrayType(Lower.this.syms.intType, Lower.this.syms.arrayClass), outerCacheClass);
            this.mapVar = varSymbol;
            Lower.this.enterSynthetic(diagnosticPosition, varSymbol, outerCacheClass.members());
        }

        public JCTree.JCLiteral forConstant(Symbol.VarSymbol varSymbol) {
            Integer num = this.values.get(varSymbol);
            if (num == null) {
                Map<Symbol.VarSymbol, Integer> map = this.values;
                int i10 = this.next;
                this.next = i10 + 1;
                Integer valueOf = Integer.valueOf(i10);
                map.put(varSymbol, valueOf);
                num = valueOf;
            }
            return Lower.this.make.Literal(num);
        }

        public void translate() {
            Lower.this.make.at(this.pos.getStartPosition());
            JCTree.JCClassDecl classDef = Lower.this.classDef((Symbol.ClassSymbol) this.mapVar.owner);
            Lower lower = Lower.this;
            JCTree.JCExpression type = Lower.this.make.NewArray(Lower.this.make.Type(Lower.this.syms.intType), List.of(Lower.this.make.Select(Lower.this.make.App(Lower.this.make.QualIdent(lower.lookupMethod(this.pos, lower.names.values, this.forEnum.type, List.nil()))), Lower.this.syms.lengthVar)), null).setType((Type) new Type.ArrayType(Lower.this.syms.intType, Lower.this.syms.arrayClass));
            ListBuffer listBuffer = new ListBuffer();
            Lower lower2 = Lower.this;
            Symbol.MethodSymbol lookupMethod = lower2.lookupMethod(this.pos, lower2.names.ordinal, this.forEnum.type, List.nil());
            List<JCTree.JCCatch> prepend = List.nil().prepend(Lower.this.make.Catch(Lower.this.make.VarDef(new Symbol.VarSymbol(8589934592L, Lower.this.names.ex, Lower.this.syms.noSuchFieldErrorType, Lower.this.syms.noSymbol), null), Lower.this.make.Block(0L, List.nil())));
            for (Map.Entry<Symbol.VarSymbol, Integer> entry : this.values.entrySet()) {
                listBuffer.append(Lower.this.make.Try(Lower.this.make.Block(0L, List.of(Lower.this.make.Exec(Lower.this.make.Assign(Lower.this.make.Indexed(this.mapVar, Lower.this.make.App(Lower.this.make.Select(Lower.this.make.QualIdent(entry.getKey()), lookupMethod))), Lower.this.make.Literal(entry.getValue())).setType((Type) Lower.this.syms.intType)))), prepend, null));
            }
            classDef.defs = classDef.defs.prepend(Lower.this.make.Block(8L, listBuffer.toList())).prepend(Lower.this.make.VarDef(this.mapVar, type));
        }
    }

    public class FreeVarCollector extends BasicFreeVarCollector {
        Symbol.ClassSymbol clazz;
        List<Symbol.VarSymbol> fvs;
        Symbol owner;

        public FreeVarCollector(Symbol.ClassSymbol classSymbol) {
            super();
            this.clazz = classSymbol;
            this.owner = classSymbol.owner;
            this.fvs = List.nil();
        }

        private void addFreeVar(Symbol.VarSymbol varSymbol) {
            for (List list = this.fvs; list.nonEmpty(); list = list.tail) {
                if (list.head == varSymbol) {
                    return;
                }
            }
            this.fvs = this.fvs.prepend(varSymbol);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void addFreeVars(Symbol.ClassSymbol classSymbol) {
            List list = Lower.this.freevarCache.get(classSymbol);
            if (list != null) {
                while (list.nonEmpty()) {
                    addFreeVar((Symbol.VarSymbol) list.head);
                    list = list.tail;
                }
            }
        }

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            Symbol.VarSymbol varSymbol;
            if (TreeInfo.name(jCMethodInvocation.meth) == Lower.this.names._super && ((Symbol.ClassSymbol) TreeInfo.symbol(jCMethodInvocation.meth).owner).hasOuterInstance() && !jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT) && (varSymbol = Lower.this.outerThisStack.head) != null) {
                visitSymbol(varSymbol);
            }
            super.visitApply(jCMethodInvocation);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            Symbol.VarSymbol varSymbol;
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) jCNewClass.constructor.owner;
            if (jCNewClass.encl == null && classSymbol.hasOuterInstance() && (varSymbol = Lower.this.outerThisStack.head) != null) {
                visitSymbol(varSymbol);
            }
            super.visitNewClass(jCNewClass);
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            Symbol.VarSymbol varSymbol;
            if ((jCFieldAccess.name == Lower.this.names._this || jCFieldAccess.name == Lower.this.names._super) && jCFieldAccess.selected.type.tsym != this.clazz && (varSymbol = Lower.this.outerThisStack.head) != null) {
                visitSymbol(varSymbol);
            }
            super.visitSelect(jCFieldAccess);
        }

        @Override
        public void visitSymbol(Symbol symbol) {
            Kinds.Kind kind = symbol.kind;
            if (kind == Kinds.Kind.VAR || kind == Kinds.Kind.MTH) {
                Symbol symbol2 = symbol;
                while (symbol2 != null && symbol2.owner != this.owner) {
                    Lower lower = Lower.this;
                    symbol2 = lower.proxies.findFirst(lower.proxyName(symbol2.name));
                }
                if (symbol2 != null && symbol2.owner == this.owner) {
                    Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol2;
                    if (varSymbol.getConstValue() == null) {
                        addFreeVar(varSymbol);
                        return;
                    }
                    return;
                }
                Symbol.VarSymbol varSymbol2 = Lower.this.outerThisStack.head;
                if (varSymbol2 == null || varSymbol2 == symbol) {
                    return;
                }
                visitSymbol(varSymbol2);
            }
        }
    }

    public interface TreeBuilder {
        JCTree.JCExpression build(JCTree.JCExpression jCExpression);
    }

    public Lower(Context context) {
        context.put((Context.Key<Context.Key<Lower>>) lowerKey, (Context.Key<Lower>) this);
        Names instance = Names.instance(context);
        this.names = instance;
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        this.rs = Resolve.instance(context);
        this.operators = Operators.instance(context);
        this.chk = Check.instance(context);
        this.attr = Attr.instance(context);
        this.make = TreeMaker.instance(context);
        this.writer = ClassWriter.instance(context);
        this.cfolder = ConstFold.instance(context);
        Target instance2 = Target.instance(context);
        this.target = instance2;
        this.source = Source.instance(context);
        this.typeEnvs = TypeEnvs.instance(context);
        this.dollarAssertionsDisabled = instance.fromString(instance2.syntheticNameChar() + "assertionsDisabled");
        this.classDollar = instance.fromString("class" + instance2.syntheticNameChar());
        this.dollarCloseResource = instance.fromString(instance2.syntheticNameChar() + "closeResource");
        this.types = Types.instance(context);
        Options instance3 = Options.instance(context);
        this.debugLower = instance3.isSet("debuglower");
        this.pkginfoOpt = Option.PkgInfo.get(instance3);
    }

    private static int accessCode(JCTree jCTree, JCTree jCTree2) {
        if (jCTree2 == null) {
            return Symbol.OperatorSymbol.AccessCode.DEREF.code;
        }
        if (jCTree2.hasTag(JCTree.Tag.ASSIGN) && jCTree == TreeInfo.skipParens(((JCTree.JCAssign) jCTree2).lhs)) {
            return Symbol.OperatorSymbol.AccessCode.ASSIGN.code;
        }
        if (jCTree2.getTag().isIncOrDecUnaryOp() || jCTree2.getTag().isAssignop()) {
            JCTree.JCOperatorExpression jCOperatorExpression = (JCTree.JCOperatorExpression) jCTree2;
            if (jCTree == TreeInfo.skipParens(jCOperatorExpression.getOperand(JCTree.JCOperatorExpression.OperandPos.LEFT))) {
                return jCOperatorExpression.operator.getAccessCode(jCTree2.getTag());
            }
        }
        return Symbol.OperatorSymbol.AccessCode.DEREF.code;
    }

    private void addPrunedInfo(JCTree jCTree) {
        List<JCTree> list = this.prunedTree.get(this.currentClass);
        this.prunedTree.put(this.currentClass, list == null ? List.of(jCTree) : list.prepend(jCTree));
    }

    private JCTree.JCExpression assertFlagTest(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Symbol.ClassSymbol classSymbol = this.outermostClassDef.sym;
        Symbol.ClassSymbol assertionsDisabledClass = !this.currentClass.isInterface() ? this.currentClass : assertionsDisabledClass();
        Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) lookupSynthetic(this.dollarAssertionsDisabled, assertionsDisabledClass.members());
        if (varSymbol == null) {
            Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4120L, this.dollarAssertionsDisabled, this.syms.booleanType, assertionsDisabledClass);
            enterSynthetic(diagnosticPosition, varSymbol2, assertionsDisabledClass.members());
            Symbol.MethodSymbol lookupMethod = lookupMethod(diagnosticPosition, this.names.desiredAssertionStatus, this.types.erasure(this.syms.classType), List.nil());
            JCTree.JCClassDecl classDef = classDef(assertionsDisabledClass);
            make_at(classDef.pos());
            JCTree.Tag tag = JCTree.Tag.NOT;
            TreeMaker treeMaker = this.make;
            classDef.defs = classDef.defs.prepend(this.make.VarDef(varSymbol2, makeUnary(tag, treeMaker.App(treeMaker.Select(classOfType(this.types.erasure(classSymbol.type), classDef.pos()), lookupMethod)))));
            if (this.currentClass.isInterface()) {
                JCTree.JCClassDecl classDef2 = classDef(this.currentClass);
                make_at(classDef2.pos());
                TreeMaker treeMaker2 = this.make;
                classDef2.defs = classDef2.defs.prepend(this.make.Block(8L, List.of(treeMaker2.If(treeMaker2.QualIdent(varSymbol2), this.make.Skip(), null))));
            }
            varSymbol = varSymbol2;
        }
        make_at(diagnosticPosition);
        return makeUnary(JCTree.Tag.NOT, this.make.Ident(varSymbol));
    }

    private Symbol.ClassSymbol assertionsDisabledClass() {
        Symbol.ClassSymbol classSymbol = this.assertionsDisabledClassCache;
        if (classSymbol != null) {
            return classSymbol;
        }
        Symbol.ClassSymbol classSymbol2 = makeEmptyClass(4104L, this.outermostClassDef.sym).sym;
        this.assertionsDisabledClassCache = classSymbol2;
        return classSymbol2;
    }

    private Symbol.OperatorSymbol binaryAccessOperator(final int i10, final JCTree.Tag tag) {
        return this.operators.lookupBinaryOp(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$binaryAccessOperator$0;
                lambda$binaryAccessOperator$0 = Lower.lambda$binaryAccessOperator$0(JCTree.Tag.this, i10, (Symbol.OperatorSymbol) obj);
                return lambda$binaryAccessOperator$0;
            }
        });
    }

    private Name cacheName(String str) {
        StringBuilder sb2 = new StringBuilder();
        if (str.startsWith("[")) {
            sb2.append("array");
            while (str.startsWith("[")) {
                sb2.append(this.target.syntheticNameChar());
                str = str.substring(1);
            }
            if (str.startsWith("L")) {
                str = str.substring(0, str.length() - 1);
            }
        } else {
            sb2.append("class" + this.target.syntheticNameChar());
        }
        sb2.append(str.replace('.', this.target.syntheticNameChar()));
        return this.names.fromString(sb2.toString());
    }

    private Symbol.VarSymbol cacheSym(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str) {
        Symbol.ClassSymbol outerCacheClass = outerCacheClass();
        Name cacheName = cacheName(str);
        Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) lookupSynthetic(cacheName, outerCacheClass.members());
        if (varSymbol != null) {
            return varSymbol;
        }
        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4104L, cacheName, this.types.erasure(this.syms.classType), outerCacheClass);
        enterSynthetic(diagnosticPosition, varSymbol2, outerCacheClass.members());
        JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol2, null);
        JCTree.JCClassDecl classDef = classDef(outerCacheClass);
        classDef.defs = classDef.defs.prepend(VarDef);
        return varSymbol2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkAccessConstructorTags() {
        for (List list = this.accessConstrTags; list.nonEmpty(); list = list.tail) {
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) list.head;
            if (!isTranslatedClassAvailable(classSymbol)) {
                JCTree.JCClassDecl makeEmptyClass = makeEmptyClass(4104L, classSymbol.outermostClass(), classSymbol.flatname, false);
                swapAccessConstructorTag(classSymbol, makeEmptyClass.sym);
                this.translated.append(makeEmptyClass);
            }
        }
    }

    private Symbol.MethodSymbol classDollarSym(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Symbol.ClassSymbol outerCacheClass = outerCacheClass();
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) lookupSynthetic(this.classDollar, outerCacheClass.members());
        if (methodSymbol != null) {
            return methodSymbol;
        }
        Symbol.MethodSymbol methodSymbol2 = new Symbol.MethodSymbol(4104L, this.classDollar, new Type.MethodType(List.of(this.syms.stringType), this.types.erasure(this.syms.classType), List.nil(), this.syms.methodClass), outerCacheClass);
        enterSynthetic(diagnosticPosition, methodSymbol2, outerCacheClass.members());
        JCTree.JCMethodDecl MethodDef = this.make.MethodDef(methodSymbol2, null);
        try {
            MethodDef.body = classDollarSymBody(diagnosticPosition, MethodDef);
        } catch (Symbol.CompletionFailure e10) {
            MethodDef.body = this.make.Block(0L, List.nil());
            this.chk.completionError(diagnosticPosition, e10);
        }
        JCTree.JCClassDecl classDef = classDef(outerCacheClass);
        classDef.defs = classDef.defs.prepend(MethodDef);
        return methodSymbol2;
    }

    private JCTree.JCExpression classOf(JCTree jCTree) {
        return classOfType(jCTree.type, jCTree.pos());
    }

    private JCTree.JCExpression classOfType(Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        switch (AnonymousClass2.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                Symbol.ClassSymbol boxedClass = this.types.boxedClass(type);
                Resolve resolve = this.rs;
                Symbol accessBase = resolve.accessBase(resolve.findIdentInType(this.attrEnv, boxedClass.type, this.names.TYPE, Kinds.KindSelector.VAR), diagnosticPosition, boxedClass.type, this.names.TYPE, true);
                if (accessBase.kind == Kinds.Kind.VAR) {
                    ((Symbol.VarSymbol) accessBase).getConstValue();
                }
                return this.make.QualIdent(accessBase);
            case 10:
            case 11:
                return make_at(diagnosticPosition).Select(this.make.Type(type), new Symbol.VarSymbol(25L, this.names._class, this.syms.classType, type.tsym));
            default:
                throw new AssertionError();
        }
    }

    private JCTree.JCExpression convert(JCTree.JCExpression jCExpression, Type type) {
        Type type2 = jCExpression.type;
        if (type2 == type || type2.hasTag(TypeTag.BOT)) {
            return jCExpression;
        }
        JCTree.JCTypeCast TypeCast = make_at(jCExpression.pos()).TypeCast(this.make.Type(type), jCExpression);
        if (jCExpression.type.constValue() != null) {
            type = this.cfolder.coerce(jCExpression.type, type);
        }
        TypeCast.type = type;
        return TypeCast;
    }

    private void createInfoClass(List<JCTree.JCAnnotation> list, Symbol.ClassSymbol classSymbol) {
        TreeMaker treeMaker = this.make;
        JCTree.JCClassDecl ClassDef = treeMaker.ClassDef(treeMaker.Modifiers(1536L, list), classSymbol.name, List.nil(), null, List.nil(), List.nil());
        ClassDef.sym = classSymbol;
        this.translated.append(ClassDef);
    }

    public void enterSynthetic(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Scope.WriteableScope writeableScope) {
        writeableScope.enter(symbol);
    }

    private Boolean expValue(JCTree jCTree) {
        boolean z10;
        while (jCTree.hasTag(JCTree.Tag.PARENS)) {
            jCTree = ((JCTree.JCParens) jCTree).expr;
        }
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 6) {
            z10 = true;
        } else {
            if (i10 != 7) {
                return null;
            }
            z10 = false;
        }
        JCTree.JCBinary jCBinary = (JCTree.JCBinary) jCTree;
        Type type = jCBinary.lhs.type;
        TypeTag typeTag = TypeTag.BOT;
        if (type.hasTag(typeTag)) {
            return expValueIsNull(z10, jCBinary.rhs);
        }
        if (jCBinary.rhs.type.hasTag(typeTag)) {
            return expValueIsNull(z10, jCBinary.lhs);
        }
        return null;
    }

    private Boolean expValueIsNull(boolean z10, JCTree jCTree) {
        if (jCTree.type.hasTag(TypeTag.BOT)) {
            return Boolean.valueOf(z10);
        }
        if (jCTree.hasTag(JCTree.Tag.LITERAL)) {
            return Boolean.valueOf(!z10);
        }
        return null;
    }

    public static Lower instance(Context context) {
        Lower lower = (Lower) context.get(lowerKey);
        return lower == null ? new Lower(context) : lower;
    }

    private boolean isFalse(JCTree jCTree) {
        if (jCTree.type.isFalse()) {
            return true;
        }
        Boolean expValue = expValue(jCTree);
        return (expValue == null || expValue.booleanValue()) ? false : true;
    }

    private boolean isTranslatedClassAvailable(Symbol.ClassSymbol classSymbol) {
        Iterator<JCTree> it = this.translated.iterator();
        while (it.hasNext()) {
            JCTree next = it.next();
            if (next.hasTag(JCTree.Tag.CLASSDEF) && ((JCTree.JCClassDecl) next).sym == classSymbol) {
                return true;
            }
        }
        return false;
    }

    private boolean isTrue(JCTree jCTree) {
        if (jCTree.type.isTrue()) {
            return true;
        }
        Boolean expValue = expValue(jCTree);
        if (expValue == null) {
            return false;
        }
        return expValue.booleanValue();
    }

    public JCTree.JCExpression lambda$abstractLval$1(TreeBuilder treeBuilder, JCTree.JCFieldAccess jCFieldAccess, JCTree.JCExpression jCExpression) {
        return treeBuilder.build(this.make.Select(jCExpression, jCFieldAccess.sym));
    }

    public JCTree.JCExpression lambda$abstractLval$3(final JCTree.JCArrayAccess jCArrayAccess, final TreeBuilder treeBuilder, final JCTree.JCExpression jCExpression) {
        return abstractRval(jCArrayAccess.index, this.syms.intType, new TreeBuilder() {
            @Override
            public final JCTree.JCExpression build(JCTree.JCExpression jCExpression2) {
                JCTree.JCExpression lambda$null$2;
                lambda$null$2 = Lower.this.lambda$null$2(jCExpression, jCArrayAccess, treeBuilder, jCExpression2);
                return lambda$null$2;
            }
        });
    }

    public static boolean lambda$binaryAccessOperator$0(JCTree.Tag tag, int i10, Symbol.OperatorSymbol operatorSymbol) {
        return operatorSymbol.getAccessCode(tag) == i10;
    }

    public JCTree.JCExpression lambda$lowerBoxedPostop$7(final JCTree.JCUnary jCUnary, final boolean z10, final JCTree.JCExpression jCExpression) {
        return abstractRval(jCExpression, jCUnary.arg.type, new TreeBuilder() {
            @Override
            public final JCTree.JCExpression build(JCTree.JCExpression jCExpression2) {
                JCTree.JCExpression lambda$null$6;
                lambda$null$6 = Lower.this.lambda$null$6(jCUnary, jCExpression, z10, jCExpression2);
                return lambda$null$6;
            }
        });
    }

    public static JCTree.JCExpression lambda$makeComma$4(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        return jCExpression;
    }

    public JCTree.JCExpression lambda$null$2(JCTree.JCExpression jCExpression, JCTree.JCArrayAccess jCArrayAccess, TreeBuilder treeBuilder, JCTree.JCExpression jCExpression2) {
        JCTree.JCArrayAccess Indexed = this.make.Indexed(jCExpression, jCExpression2);
        Indexed.setType(jCArrayAccess.type);
        return treeBuilder.build(Indexed);
    }

    public JCTree.JCExpression lambda$null$6(JCTree.JCUnary jCUnary, JCTree.JCExpression jCExpression, boolean z10, JCTree.JCExpression jCExpression2) {
        JCTree.Tag tag = jCUnary.hasTag(JCTree.Tag.POSTINC) ? JCTree.Tag.PLUS_ASG : JCTree.Tag.MINUS_ASG;
        JCTree.JCExpression jCExpression3 = (JCTree.JCExpression) jCExpression.clone();
        if (z10) {
            jCExpression3 = this.make.TypeCast(jCUnary.arg.type, jCExpression3);
        }
        return makeComma(makeAssignop(tag, jCExpression3, this.make.Literal(1)), jCExpression2);
    }

    public JCTree.JCExpression lambda$visitAssignop$5(JCTree.JCAssignOp jCAssignOp, boolean z10, JCTree.JCExpression jCExpression) {
        JCTree.Tag noAssignOp = jCAssignOp.getTag().noAssignOp();
        Symbol.OperatorSymbol resolveBinary = this.operators.resolveBinary(jCAssignOp, noAssignOp, jCAssignOp.type, jCAssignOp.rhs.type);
        JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) jCExpression.clone();
        Type type = jCExpression2.type;
        Type type2 = jCAssignOp.type;
        if (type != type2) {
            jCExpression2 = this.make.TypeCast(type2, jCExpression2);
        }
        JCTree.JCBinary Binary = this.make.Binary(noAssignOp, jCExpression2, jCAssignOp.rhs);
        Binary.operator = resolveBinary;
        Binary.type = resolveBinary.type.getReturnType();
        JCTree.JCExpression jCExpression3 = Binary;
        if (z10) {
            jCExpression3 = this.make.TypeCast(this.types.unboxedType(jCAssignOp.type), Binary);
        }
        return this.make.Assign(jCExpression, jCExpression3).setType(jCAssignOp.type);
    }

    private Symbol.MethodSymbol lookupConstructor(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, List<Type> list) {
        return this.rs.resolveInternalConstructor(diagnosticPosition, this.attrEnv, type, list, null);
    }

    private Symbol.VarSymbol lookupField(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, Name name) {
        return this.rs.resolveInternalField(diagnosticPosition, this.attrEnv, type, name);
    }

    public Symbol.MethodSymbol lookupMethod(JCDiagnostic.DiagnosticPosition diagnosticPosition, Name name, Type type, List<Type> list) {
        return this.rs.resolveInternalMethod(diagnosticPosition, this.attrEnv, type, name, list, List.nil());
    }

    private Symbol lookupSynthetic(Name name, Scope scope) {
        Symbol findFirst = scope.findFirst(name);
        if (findFirst == null || (findFirst.flags() & 4096) == 0) {
            return null;
        }
        return findFirst;
    }

    private JCTree.JCMethodInvocation makeCall(JCTree.JCExpression jCExpression, Name name, List<JCTree.JCExpression> list) {
        Assert.checkNonNull(jCExpression.type);
        Symbol.MethodSymbol lookupMethod = lookupMethod(this.make_pos, name, jCExpression.type, TreeInfo.types(list));
        TreeMaker treeMaker = this.make;
        return treeMaker.App(treeMaker.Select(jCExpression, lookupMethod), list);
    }

    private JCTree.JCExpression makeNonNullCheck(JCTree.JCExpression jCExpression) {
        return makeBinary(JCTree.Tag.NE, jCExpression, makeNull());
    }

    private JCTree.JCVariableDecl makeOuterThisVarDecl(int i10, Symbol.VarSymbol varSymbol) {
        JCTree.JCVariableDecl VarDef = this.make.at(i10).VarDef(varSymbol, null);
        VarDef.vartype = access(VarDef.vartype);
        return VarDef;
    }

    private Symbol.VarSymbol makeOuterThisVarSymbol(Symbol symbol, long j10) {
        Type erasure = this.types.erasure(symbol.enclClass().type.getEnclosingType());
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(j10, outerThisName(erasure, symbol), erasure, symbol);
        this.outerThisStack = this.outerThisStack.prepend(varSymbol);
        return varSymbol;
    }

    private JCTree.JCStatement makeResourceCloseInvocation(JCTree.JCExpression jCExpression) {
        if (this.types.asSuper(jCExpression.type, this.syms.autoCloseableType.tsym) == null) {
            jCExpression = convert(jCExpression, this.syms.autoCloseableType);
        }
        return this.make.Exec(makeCall(jCExpression, this.names.close, List.nil()));
    }

    private Name makeSyntheticName(Name name, Scope scope) {
        do {
            name = name.append(this.target.syntheticNameChar(), this.names.empty);
        } while (lookupSynthetic(name, scope) != null);
        return name;
    }

    private Map<Symbol, Symbol> makeTranslationMap(JCTree.JCMethodDecl jCMethodDecl) {
        HashMap hashMap = new HashMap();
        Iterator<JCTree.JCVariableDecl> it = jCMethodDecl.params.iterator();
        while (it.hasNext()) {
            Symbol symbol = it.next().sym;
            if (symbol != symbol.baseSymbol()) {
                hashMap.put(symbol.baseSymbol(), symbol);
            }
        }
        return hashMap;
    }

    private JCTree.JCBlock makeTwrBlock(List<JCTree> list, JCTree.JCBlock jCBlock, boolean z10, int i10) {
        boolean z11;
        JCTree.JCExpression jCExpression;
        if (list.isEmpty()) {
            return jCBlock;
        }
        ListBuffer listBuffer = new ListBuffer();
        JCTree jCTree = list.head;
        if (jCTree instanceof JCTree.JCVariableDecl) {
            JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) jCTree;
            jCExpression = this.make.Ident(jCVariableDecl.sym).setType(jCTree.type);
            JCTree.JCExpression jCExpression2 = jCVariableDecl.init;
            z11 = jCExpression2 != null && TreeInfo.skipParens(jCExpression2).hasTag(JCTree.Tag.NEWCLASS);
            listBuffer.add(jCVariableDecl);
        } else {
            Assert.check(jCTree instanceof JCTree.JCExpression);
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4112L, makeSyntheticName(this.names.fromString("twrVar" + i10), this.twrVars), jCTree.type.hasTag(TypeTag.BOT) ? this.syms.autoCloseableType : jCTree.type, this.currentMethodSym);
            this.twrVars.enter(varSymbol);
            JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol, (JCTree.JCExpression) jCTree);
            JCTree.JCExpression Ident = this.make.Ident(varSymbol);
            boolean hasTag = TreeInfo.skipParens(jCTree).hasTag(JCTree.Tag.NEWCLASS);
            listBuffer.add(VarDef);
            z11 = hasTag;
            jCExpression = Ident;
        }
        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4096L, makeSyntheticName(this.names.fromString("primaryException" + i10), this.twrVars), this.syms.throwableType, this.currentMethodSym);
        this.twrVars.enter(varSymbol2);
        listBuffer.add(this.make.VarDef(varSymbol2, makeNull()));
        Symbol.VarSymbol varSymbol3 = new Symbol.VarSymbol(4112L, this.names.fromString("t" + this.target.syntheticNameChar()), this.syms.throwableType, this.currentMethodSym);
        JCTree.JCVariableDecl VarDef2 = this.make.VarDef(varSymbol3, null);
        TreeMaker treeMaker = this.make;
        JCTree.JCStatement Assignment = treeMaker.Assignment(varSymbol2, treeMaker.Ident(varSymbol3));
        TreeMaker treeMaker2 = this.make;
        JCTree.JCCatch Catch = this.make.Catch(VarDef2, this.make.Block(0L, List.of(Assignment, treeMaker2.Throw(treeMaker2.Ident(varSymbol3)))));
        TreeMaker treeMaker3 = this.make;
        int i11 = treeMaker3.pos;
        treeMaker3.at(TreeInfo.endPos(jCBlock));
        JCTree.JCBlock makeTwrFinallyClause = makeTwrFinallyClause(varSymbol2, jCExpression, z11);
        this.make.at(i11);
        JCTree.JCTry Try = this.make.Try(makeTwrBlock(list.tail, jCBlock, z10, i10 + 1), List.of(Catch), makeTwrFinallyClause);
        Try.finallyCanCompleteNormally = z10;
        listBuffer.add(Try);
        return this.make.Block(0L, listBuffer.toList());
    }

    private JCTree.JCStatement makeTwrCloseStatement(Symbol symbol, JCTree.JCExpression jCExpression) {
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4096L, this.make.paramName(2), this.syms.throwableType, this.currentMethodSym);
        TreeMaker treeMaker = this.make;
        JCTree.JCExpressionStatement Exec = treeMaker.Exec(makeCall(treeMaker.Ident(symbol), this.names.addSuppressed, List.of(this.make.Ident(varSymbol))));
        JCTree.JCTry Try = this.make.Try(this.make.Block(0L, List.of(makeResourceCloseInvocation(jCExpression))), List.of(this.make.Catch(this.make.VarDef(varSymbol, null), this.make.Block(0L, List.of(Exec)))), null);
        Try.finallyCanCompleteNormally = true;
        TreeMaker treeMaker2 = this.make;
        return treeMaker2.If(makeNonNullCheck(treeMaker2.Ident(symbol)), Try, makeResourceCloseInvocation(jCExpression));
    }

    private JCTree.JCBlock makeTwrFinallyClause(Symbol symbol, JCTree.JCExpression jCExpression, boolean z10) {
        JCTree.JCStatement makeTwrCloseStatement;
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) lookupSynthetic(this.dollarCloseResource, this.currentClass.members());
        if (methodSymbol == null && shouldUseCloseResourceMethod()) {
            Name name = this.dollarCloseResource;
            Symtab symtab = this.syms;
            methodSymbol = new Symbol.MethodSymbol(4106L, name, new Type.MethodType(List.of(symtab.throwableType, symtab.autoCloseableType), this.syms.voidType, List.nil(), this.syms.methodClass), this.currentClass);
            enterSynthetic(jCExpression.pos(), methodSymbol, this.currentClass.members());
            JCTree.JCMethodDecl MethodDef = this.make.MethodDef(methodSymbol, null);
            List<JCTree.JCVariableDecl> parameters = MethodDef.getParameters();
            MethodDef.body = this.make.Block(0L, List.of(makeTwrCloseStatement(parameters.get(0).sym, this.make.Ident(parameters.get(1)))));
            JCTree.JCClassDecl classDef = classDef(this.currentClass);
            classDef.defs = classDef.defs.prepend(MethodDef);
        }
        if (methodSymbol != null) {
            TreeMaker treeMaker = this.make;
            makeTwrCloseStatement = treeMaker.Exec(treeMaker.Apply(List.nil(), this.make.Ident(methodSymbol), List.of(this.make.Ident(symbol), jCExpression)).setType((Type) this.syms.voidType));
        } else {
            makeTwrCloseStatement = makeTwrCloseStatement(symbol, jCExpression);
        }
        if (!z10) {
            makeTwrCloseStatement = this.make.If(makeNonNullCheck(jCExpression), makeTwrCloseStatement, null);
        }
        return this.make.Block(0L, List.of(makeTwrCloseStatement));
    }

    private boolean needPackageInfoClass(JCTree.JCPackageDecl jCPackageDecl) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$main$Option$PkgInfo[this.pkginfoOpt.ordinal()];
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return jCPackageDecl.getAnnotations().nonEmpty();
        }
        if (i10 != 3) {
            throw new AssertionError();
        }
        Iterator<Attribute.Compound> it = jCPackageDecl.packge.getDeclarationAttributes().iterator();
        while (it.hasNext()) {
            if (this.types.getRetention(it.next()) != Attribute.RetentionPolicy.SOURCE) {
                return true;
            }
        }
        return false;
    }

    public Symbol.ClassSymbol outerCacheClass() {
        Symbol.ClassSymbol classSymbol = this.outermostClassDef.sym;
        for (Symbol symbol : classSymbol.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol.kind == Kinds.Kind.TYP && symbol.name == this.names.empty && (symbol.flags() & 512) == 0) {
                return (Symbol.ClassSymbol) symbol;
            }
        }
        return makeEmptyClass(4104L, classSymbol).sym;
    }

    private void patchTargets(JCTree jCTree, final JCTree jCTree2, final JCTree jCTree3) {
        new TreeScanner() {
            @Override
            public void visitBreak(JCTree.JCBreak jCBreak) {
                if (jCBreak.target == jCTree2) {
                    jCBreak.target = jCTree3;
                }
            }

            @Override
            public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            }

            @Override
            public void visitContinue(JCTree.JCContinue jCContinue) {
                if (jCContinue.target == jCTree2) {
                    jCContinue.target = jCTree3;
                }
            }
        }.scan(jCTree);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.openjdk.tools.javac.comp.Lower$1TryFinder] */
    private boolean shouldUseCloseResourceMethod() {
        ?? r02 = new TreeScanner() {
            int closeCount;

            @Override
            public void scan(JCTree jCTree) {
                if (useCloseResourceMethod()) {
                    return;
                }
                super.scan(jCTree);
            }

            public boolean useCloseResourceMethod() {
                return this.closeCount >= 4;
            }

            @Override
            public void visitTry(JCTree.JCTry jCTry) {
                boolean isEmpty = jCTry.body.stats.isEmpty();
                Iterator<JCTree> it = jCTry.resources.iterator();
                while (it.hasNext()) {
                    it.next();
                    this.closeCount += isEmpty ? 1 : 2;
                    isEmpty = false;
                }
                super.visitTry(jCTry);
            }
        };
        r02.scan(classDef(this.currentClass));
        return r02.useCloseResourceMethod();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static JCTree.Tag treeTag(Symbol.OperatorSymbol operatorSymbol) {
        int i10 = operatorSymbol.opcode;
        if (i10 != 256) {
            switch (i10) {
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                case 100:
                case 101:
                case 102:
                case 103:
                    return JCTree.Tag.MINUS_ASG;
                case 104:
                case 105:
                case 106:
                case 107:
                    return JCTree.Tag.MUL_ASG;
                case 108:
                case 109:
                case 110:
                case 111:
                    return JCTree.Tag.DIV_ASG;
                case 112:
                case 113:
                case 114:
                case 115:
                    return JCTree.Tag.MOD_ASG;
                default:
                    switch (i10) {
                        case 120:
                        case 121:
                            return JCTree.Tag.SL_ASG;
                        case 122:
                        case 123:
                            return JCTree.Tag.SR_ASG;
                        case 124:
                        case 125:
                            return JCTree.Tag.USR_ASG;
                        case 126:
                        case 127:
                            return JCTree.Tag.BITAND_ASG;
                        case 128:
                        case 129:
                            return JCTree.Tag.BITOR_ASG;
                        case 130:
                        case 131:
                            return JCTree.Tag.BITXOR_ASG;
                        default:
                            switch (i10) {
                                case 270:
                                case 271:
                                    break;
                                case 272:
                                case 273:
                                    break;
                                case 274:
                                case 275:
                                    break;
                                default:
                                    throw new AssertionError();
                            }
                    }
            }
        }
        return JCTree.Tag.PLUS_ASG;
    }

    private boolean useClone() {
        try {
            return this.syms.objectType.tsym.members().findFirst(this.names.clone) != null;
        } catch (Symbol.CompletionFailure unused) {
            return false;
        }
    }

    private void visitArrayForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        make_at(jCEnhancedForLoop.expr.pos());
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4096L, this.names.fromString("arr" + this.target.syntheticNameChar()), jCEnhancedForLoop.expr.type, this.currentMethodSym);
        JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol, jCEnhancedForLoop.expr);
        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4096L, this.names.fromString("len" + this.target.syntheticNameChar()), this.syms.intType, this.currentMethodSym);
        TreeMaker treeMaker = this.make;
        JCTree.JCVariableDecl VarDef2 = treeMaker.VarDef(varSymbol2, treeMaker.Select(treeMaker.Ident(varSymbol), this.syms.lengthVar));
        Symbol.VarSymbol varSymbol3 = new Symbol.VarSymbol(4096L, this.names.fromString("i" + this.target.syntheticNameChar()), this.syms.intType, this.currentMethodSym);
        TreeMaker treeMaker2 = this.make;
        JCTree.JCVariableDecl VarDef3 = treeMaker2.VarDef(varSymbol3, treeMaker2.Literal(TypeTag.INT, 0));
        JCTree.JCExpression jCExpression = VarDef3.init;
        Type constType = this.syms.intType.constType(0);
        VarDef3.type = constType;
        jCExpression.type = constType;
        List<JCTree.JCStatement> of2 = List.of(VarDef, VarDef2, VarDef3);
        JCTree.JCBinary makeBinary = makeBinary(JCTree.Tag.LT, this.make.Ident(varSymbol3), this.make.Ident(varSymbol2));
        TreeMaker treeMaker3 = this.make;
        JCTree.JCExpressionStatement Exec = treeMaker3.Exec(makeUnary(JCTree.Tag.PREINC, treeMaker3.Ident(varSymbol3)));
        Type elemtype = this.types.elemtype(jCEnhancedForLoop.expr.type);
        TreeMaker treeMaker4 = this.make;
        JCTree.JCExpression type = treeMaker4.Indexed(treeMaker4.Ident(varSymbol), this.make.Ident(varSymbol3)).setType(elemtype);
        TreeMaker treeMaker5 = this.make;
        JCTree.JCVariableDecl jCVariableDecl = jCEnhancedForLoop.var;
        JCTree.JCVariableDecl jCVariableDecl2 = (JCTree.JCVariableDecl) treeMaker5.VarDef(jCVariableDecl.mods, jCVariableDecl.name, jCVariableDecl.vartype, type).setType(jCEnhancedForLoop.var.type);
        jCVariableDecl2.sym = jCEnhancedForLoop.var.sym;
        JCTree.JCBlock Block = this.make.Block(0L, List.of(jCVariableDecl2, jCEnhancedForLoop.body));
        JCTree translate = translate((Lower) this.make.ForLoop(of2, makeBinary, List.of(Exec), Block));
        this.result = translate;
        patchTargets(Block, jCEnhancedForLoop, translate);
    }

    private void visitEnumConstantDef(JCTree.JCVariableDecl jCVariableDecl, int i10) {
        JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) jCVariableDecl.init;
        jCNewClass.args = jCNewClass.args.prepend(makeLit(this.syms.intType, Integer.valueOf(i10))).prepend(makeLit(this.syms.stringType, jCVariableDecl.name.toString()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void visitEnumDef(JCTree.JCClassDecl jCClassDecl) {
        ListBuffer listBuffer;
        boolean z10;
        boolean z11;
        List<JCTree.JCStatement> of2;
        make_at(jCClassDecl.pos());
        if (jCClassDecl.extending == null) {
            jCClassDecl.extending = this.make.Type(this.types.supertype(jCClassDecl.type));
        }
        JCTree.JCExpression type = classOfType(jCClassDecl.sym.type, jCClassDecl.pos()).setType(this.types.erasure(this.syms.classType));
        ListBuffer listBuffer2 = new ListBuffer();
        ListBuffer listBuffer3 = new ListBuffer();
        ListBuffer listBuffer4 = new ListBuffer();
        int i10 = 0;
        for (List list = jCClassDecl.defs; list.nonEmpty(); list = list.tail) {
            if (((JCTree) list.head).hasTag(JCTree.Tag.VARDEF)) {
                A a10 = list.head;
                if ((((JCTree.JCVariableDecl) a10).mods.flags & 16384) != 0) {
                    JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) a10;
                    visitEnumConstantDef(jCVariableDecl, i10);
                    listBuffer2.append(this.make.QualIdent(jCVariableDecl.sym));
                    listBuffer3.append(jCVariableDecl);
                    i10++;
                }
            }
            listBuffer4.append(list.head);
        }
        Name fromString = this.names.fromString(this.target.syntheticNameChar() + "VALUES");
        while (jCClassDecl.sym.members().findFirst(fromString) != null) {
            fromString = this.names.fromString(((Object) fromString) + "" + this.target.syntheticNameChar());
        }
        Type.ArrayType arrayType = new Type.ArrayType(this.types.erasure(jCClassDecl.type), this.syms.arrayClass);
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4122L, fromString, arrayType, jCClassDecl.type.tsym);
        TreeMaker treeMaker = this.make;
        JCTree.JCNewArray NewArray = treeMaker.NewArray(treeMaker.Type(this.types.erasure(jCClassDecl.type)), List.nil(), listBuffer2.toList());
        NewArray.type = arrayType;
        listBuffer3.append(this.make.VarDef(varSymbol, NewArray));
        jCClassDecl.sym.members().enter(varSymbol);
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCClassDecl.pos(), this.names.values, jCClassDecl.type, List.nil());
        if (useClone()) {
            TreeMaker treeMaker2 = this.make;
            Type returnType = lookupMethod.type.getReturnType();
            TreeMaker treeMaker3 = this.make;
            of2 = List.of(this.make.Return(treeMaker2.TypeCast(returnType, treeMaker3.App(treeMaker3.Select(treeMaker3.Ident(varSymbol), this.syms.arrayCloneMethod)))));
            z10 = false;
            listBuffer = listBuffer4;
            z11 = true;
        } else {
            Name fromString2 = this.names.fromString(this.target.syntheticNameChar() + "result");
            while (jCClassDecl.sym.members().findFirst(fromString2) != null) {
                fromString2 = this.names.fromString(((Object) fromString2) + "" + this.target.syntheticNameChar());
            }
            Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4112L, fromString2, arrayType, lookupMethod);
            TreeMaker treeMaker4 = this.make;
            JCTree.JCExpression Type = treeMaker4.Type(this.types.erasure(jCClassDecl.type));
            TreeMaker treeMaker5 = this.make;
            JCTree.JCNewArray NewArray2 = treeMaker4.NewArray(Type, List.of(treeMaker5.Select(treeMaker5.Ident(varSymbol), this.syms.lengthVar)), null);
            NewArray2.type = arrayType;
            JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol2, NewArray2);
            if (this.systemArraycopyMethod == null) {
                Name fromString3 = this.names.fromString("arraycopy");
                Symtab symtab = this.syms;
                Type type2 = symtab.objectType;
                Type.JCPrimitiveType jCPrimitiveType = symtab.intType;
                this.systemArraycopyMethod = new Symbol.MethodSymbol(9L, fromString3, new Type.MethodType(List.of(type2, jCPrimitiveType, type2, jCPrimitiveType, jCPrimitiveType), this.syms.voidType, List.nil(), this.syms.methodClass), this.syms.systemType.tsym);
            }
            TreeMaker treeMaker6 = this.make;
            JCTree.JCExpression Select = treeMaker6.Select(treeMaker6.Ident(this.syms.systemType.tsym), this.systemArraycopyMethod);
            JCTree.JCIdent Ident = this.make.Ident(varSymbol);
            JCTree.JCLiteral Literal = this.make.Literal(0);
            JCTree.JCIdent Ident2 = this.make.Ident(varSymbol2);
            listBuffer = listBuffer4;
            JCTree.JCLiteral Literal2 = this.make.Literal(0);
            TreeMaker treeMaker7 = this.make;
            JCTree.JCExpression Select2 = treeMaker7.Select(treeMaker7.Ident(varSymbol), this.syms.lengthVar);
            z10 = false;
            z11 = true;
            JCTree.JCExpressionStatement Exec = treeMaker6.Exec(treeMaker6.App(Select, List.of(Ident, Literal, Ident2, Literal2, Select2)));
            TreeMaker treeMaker8 = this.make;
            of2 = List.of(VarDef, Exec, treeMaker8.Return(treeMaker8.Ident(varSymbol2)));
        }
        TreeMaker treeMaker9 = this.make;
        JCTree.JCMethodDecl MethodDef = treeMaker9.MethodDef(lookupMethod, treeMaker9.Block(0L, of2));
        listBuffer3.append(MethodDef);
        if (this.debugLower) {
            System.err.println(((Object) jCClassDecl.sym) + ".valuesDef = " + ((Object) MethodDef));
        }
        Symbol.MethodSymbol lookupMethod2 = lookupMethod(jCClassDecl.pos(), this.names.valueOf, jCClassDecl.sym.type, List.of(this.syms.stringType));
        Assert.check((lookupMethod2.flags() & 8) != 0 ? z11 : z10);
        JCTree.JCIdent Ident3 = this.make.Ident(lookupMethod2.params.head);
        TreeMaker treeMaker10 = this.make;
        JCTree.JCReturn Return = treeMaker10.Return(treeMaker10.TypeCast(jCClassDecl.sym.type, makeCall(treeMaker10.Ident(this.syms.enumSym), this.names.valueOf, List.of(type, Ident3))));
        TreeMaker treeMaker11 = this.make;
        JCTree.JCMethodDecl MethodDef2 = treeMaker11.MethodDef(lookupMethod2, treeMaker11.Block(0L, List.of(Return)));
        Ident3.sym = MethodDef2.params.head.sym;
        if (this.debugLower) {
            System.err.println(((Object) jCClassDecl.sym) + ".valueOf = " + ((Object) MethodDef2));
        }
        listBuffer3.append(MethodDef2);
        listBuffer3.appendList(listBuffer.toList());
        jCClassDecl.defs = listBuffer3.toList();
    }

    private void visitIterableForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        make_at(jCEnhancedForLoop.expr.pos());
        Type type = this.syms.objectType;
        Types types = this.types;
        Type asSuper = types.asSuper(types.cvarUpperBound(jCEnhancedForLoop.expr.type), this.syms.iterableType.tsym);
        if (asSuper.getTypeArguments().nonEmpty()) {
            type = this.types.erasure(asSuper.getTypeArguments().head);
        }
        Type skipTypeVars = this.types.skipTypeVars(jCEnhancedForLoop.expr.type, false);
        jCEnhancedForLoop.expr.type = this.types.erasure(skipTypeVars);
        if (skipTypeVars.isCompound()) {
            jCEnhancedForLoop.expr = this.make.TypeCast(this.types.erasure(asSuper), jCEnhancedForLoop.expr);
        }
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCEnhancedForLoop.expr.pos(), this.names.iterator, skipTypeVars, List.nil());
        Name fromString = this.names.fromString("i" + this.target.syntheticNameChar());
        Types types2 = this.types;
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4096L, fromString, types2.erasure(types2.asSuper(lookupMethod.type.getReturnType(), this.syms.iteratorType.tsym)), this.currentMethodSym);
        TreeMaker treeMaker = this.make;
        JCTree.JCVariableDecl VarDef = treeMaker.VarDef(varSymbol, treeMaker.App(treeMaker.Select(jCEnhancedForLoop.expr, lookupMethod).setType(this.types.erasure(lookupMethod.type))));
        Symbol.MethodSymbol lookupMethod2 = lookupMethod(jCEnhancedForLoop.expr.pos(), this.names.hasNext, varSymbol.type, List.nil());
        TreeMaker treeMaker2 = this.make;
        JCTree.JCMethodInvocation App = treeMaker2.App(treeMaker2.Select(treeMaker2.Ident(varSymbol), lookupMethod2));
        Symbol.MethodSymbol lookupMethod3 = lookupMethod(jCEnhancedForLoop.expr.pos(), this.names.next, varSymbol.type, List.nil());
        TreeMaker treeMaker3 = this.make;
        JCTree.JCMethodInvocation App2 = treeMaker3.App(treeMaker3.Select(treeMaker3.Ident(varSymbol), lookupMethod3));
        JCTree.JCTypeCast TypeCast = jCEnhancedForLoop.var.type.isPrimitive() ? this.make.TypeCast(this.types.cvarUpperBound(type), App2) : this.make.TypeCast(jCEnhancedForLoop.var.type, App2);
        TreeMaker treeMaker4 = this.make;
        JCTree.JCVariableDecl jCVariableDecl = jCEnhancedForLoop.var;
        JCTree.JCVariableDecl jCVariableDecl2 = (JCTree.JCVariableDecl) treeMaker4.VarDef(jCVariableDecl.mods, jCVariableDecl.name, jCVariableDecl.vartype, TypeCast).setType(jCEnhancedForLoop.var.type);
        jCVariableDecl2.sym = jCEnhancedForLoop.var.sym;
        JCTree.JCBlock Block = this.make.Block(0L, List.of(jCVariableDecl2, jCEnhancedForLoop.body));
        Block.endpos = TreeInfo.endPos(jCEnhancedForLoop.body);
        JCTree translate = translate((Lower) this.make.ForLoop(List.of(VarDef), App, List.nil(), Block));
        this.result = translate;
        patchTargets(Block, jCEnhancedForLoop, translate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void visitMethodDefInternal(JCTree.JCMethodDecl jCMethodDecl) {
        Map<Symbol, Symbol> map = null;
        map = null;
        if (jCMethodDecl.name == this.names.init && (this.currentClass.isInner() || this.currentClass.isLocal())) {
            Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
            this.proxies = this.proxies.dup(methodSymbol);
            List<Symbol.VarSymbol> list = this.outerThisStack;
            List freevars = freevars(this.currentClass);
            JCTree.JCVariableDecl outerThisDef = this.currentClass.hasOuterInstance() ? outerThisDef(jCMethodDecl.pos, methodSymbol) : null;
            List<JCTree.JCVariableDecl> freevarDefs = freevarDefs(jCMethodDecl.pos, freevars, methodSymbol, 8589934592L);
            jCMethodDecl.restype = (JCTree.JCExpression) translate((Lower) jCMethodDecl.restype);
            jCMethodDecl.params = translateVarDefs(jCMethodDecl.params);
            jCMethodDecl.thrown = translate(jCMethodDecl.thrown);
            if (jCMethodDecl.body == null) {
                this.result = jCMethodDecl;
                return;
            }
            jCMethodDecl.params = jCMethodDecl.params.appendList(freevarDefs);
            if (this.currentClass.hasOuterInstance()) {
                jCMethodDecl.params = jCMethodDecl.params.prepend(outerThisDef);
            }
            JCTree.JCStatement jCStatement = (JCTree.JCStatement) translate((Lower) jCMethodDecl.body.stats.head);
            List nil = List.nil();
            if (freevars.nonEmpty()) {
                List<Type> nil2 = List.nil();
                while (freevars.nonEmpty()) {
                    Name proxyName = proxyName(((Symbol.VarSymbol) freevars.head).name);
                    methodSymbol.capturedLocals = methodSymbol.capturedLocals.prepend((Symbol.VarSymbol) this.proxies.findFirst(proxyName));
                    if (TreeInfo.isInitialConstructor(jCMethodDecl)) {
                        nil = nil.prepend(initField(jCMethodDecl.body.pos, proxyName));
                    }
                    nil2 = nil2.prepend(((Symbol.VarSymbol) freevars.head).erasure(this.types));
                    freevars = freevars.tail;
                }
                Type erasure = methodSymbol.erasure(this.types);
                methodSymbol.erasure_field = new Type.MethodType(erasure.getParameterTypes().appendList(nil2), erasure.getReturnType(), erasure.getThrownTypes(), this.syms.methodClass);
            }
            if (this.currentClass.hasOuterInstance() && TreeInfo.isInitialConstructor(jCMethodDecl)) {
                nil = nil.prepend(initOuterThis(jCMethodDecl.body.pos));
            }
            this.proxies = this.proxies.leave();
            jCMethodDecl.body.stats = translate(jCMethodDecl.body.stats.tail).prepend(jCStatement).prependList(nil);
            this.outerThisStack = list;
        } else {
            Map<Symbol, Symbol> map2 = this.lambdaTranslationMap;
            try {
                if ((jCMethodDecl.sym.flags() & 4096) != 0 && jCMethodDecl.sym.name.startsWith(this.names.lambda)) {
                    map = makeTranslationMap(jCMethodDecl);
                }
                this.lambdaTranslationMap = map;
                super.visitMethodDef(jCMethodDecl);
                this.lambdaTranslationMap = map2;
            } catch (Throwable th2) {
                this.lambdaTranslationMap = map2;
                throw th2;
            }
        }
        this.result = jCMethodDecl;
    }

    public JCTree.JCExpression abstractLval(JCTree.JCExpression jCExpression, final TreeBuilder treeBuilder) {
        JCTree.JCExpression skipParens = TreeInfo.skipParens(jCExpression);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 == 2) {
            return treeBuilder.build(skipParens);
        }
        if (i10 == 3) {
            final JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) skipParens;
            Symbol symbol = TreeInfo.symbol(jCFieldAccess.selected);
            return (symbol == null || symbol.kind != Kinds.Kind.TYP) ? abstractRval(jCFieldAccess.selected, new TreeBuilder() {
                @Override
                public final JCTree.JCExpression build(JCTree.JCExpression jCExpression2) {
                    JCTree.JCExpression lambda$abstractLval$1;
                    lambda$abstractLval$1 = Lower.this.lambda$abstractLval$1(treeBuilder, jCFieldAccess, jCExpression2);
                    return lambda$abstractLval$1;
                }
            }) : treeBuilder.build(skipParens);
        }
        if (i10 == 4) {
            final JCTree.JCArrayAccess jCArrayAccess = (JCTree.JCArrayAccess) skipParens;
            return abstractRval(jCArrayAccess.indexed, new TreeBuilder() {
                @Override
                public final JCTree.JCExpression build(JCTree.JCExpression jCExpression2) {
                    JCTree.JCExpression lambda$abstractLval$3;
                    lambda$abstractLval$3 = Lower.this.lambda$abstractLval$3(jCArrayAccess, treeBuilder, jCExpression2);
                    return lambda$abstractLval$3;
                }
            });
        }
        if (i10 == 5) {
            return abstractLval(((JCTree.JCTypeCast) skipParens).expr, treeBuilder);
        }
        throw new AssertionError(skipParens);
    }

    public JCTree.JCExpression abstractRval(JCTree.JCExpression jCExpression, Type type, TreeBuilder treeBuilder) {
        JCTree.JCExpression skipParens = TreeInfo.skipParens(jCExpression);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                JCTree.JCIdent jCIdent = (JCTree.JCIdent) skipParens;
                if ((jCIdent.sym.flags() & 16) != 0 && jCIdent.sym.owner.kind == Kinds.Kind.MTH) {
                    return treeBuilder.build(skipParens);
                }
            }
            Name name = TreeInfo.name(skipParens);
            Names names = this.names;
            if (name != names._super && name != names._this) {
                Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4112L, names.fromString(this.target.syntheticNameChar() + "" + skipParens.hashCode()), type, this.currentMethodSym);
                JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol, convert(skipParens, type));
                JCTree.JCExpression build = treeBuilder.build(this.make.Ident(varSymbol));
                JCTree.LetExpr LetExpr = this.make.LetExpr(VarDef, build);
                LetExpr.type = build.type;
                return LetExpr;
            }
            return treeBuilder.build(skipParens);
        }
        return treeBuilder.build(skipParens);
    }

    public JCTree.JCExpression access(Symbol symbol, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2, boolean z10) {
        Kinds.Kind kind;
        boolean z11;
        Map<Symbol, Symbol> map;
        Symbol symbol2;
        Object constValue;
        Symbol symbol3 = symbol;
        JCTree.JCExpression jCExpression3 = jCExpression;
        while (true) {
            Kinds.Kind kind2 = symbol3.kind;
            kind = Kinds.Kind.VAR;
            z11 = false;
            if (kind2 != kind) {
                break;
            }
            Symbol symbol4 = symbol3.owner;
            if (symbol4.kind != Kinds.Kind.MTH || symbol4.enclClass() == this.currentClass) {
                break;
            }
            Object constValue2 = ((Symbol.VarSymbol) symbol3).getConstValue();
            if (constValue2 != null) {
                this.make.at(jCExpression3.pos);
                return makeLit(symbol3.type, constValue2);
            }
            symbol3 = this.proxies.findFirst(proxyName(symbol3.name));
            if (symbol3 != null && (symbol3.flags_field & 16) != 0) {
                z11 = true;
            }
            Assert.check(z11);
            jCExpression3 = this.make.at(jCExpression3.pos).Ident(symbol3);
        }
        JCTree.JCExpression jCExpression4 = null;
        JCTree.JCExpression jCExpression5 = jCExpression3.hasTag(JCTree.Tag.SELECT) ? ((JCTree.JCFieldAccess) jCExpression3).selected : null;
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol3.kind.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3 || symbol3.owner.kind == Kinds.Kind.PCK) {
                return jCExpression3;
            }
            Name shortName = Convert.shortName(symbol3.flatName());
            while (jCExpression5 != null && TreeInfo.symbol(jCExpression5) != null && TreeInfo.symbol(jCExpression5).kind != Kinds.Kind.PCK) {
                jCExpression5 = jCExpression5.hasTag(JCTree.Tag.SELECT) ? ((JCTree.JCFieldAccess) jCExpression5).selected : null;
            }
            if (jCExpression3.hasTag(JCTree.Tag.IDENT)) {
                ((JCTree.JCIdent) jCExpression3).name = shortName;
                return jCExpression3;
            }
            if (jCExpression5 == null) {
                JCTree.JCIdent Ident = this.make.at(jCExpression3.pos).Ident(symbol3);
                Ident.name = shortName;
                return Ident;
            }
            JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCExpression3;
            jCFieldAccess.selected = jCExpression5;
            jCFieldAccess.name = shortName;
            return jCExpression3;
        }
        Kinds.Kind kind3 = symbol3.owner.kind;
        if (kind3 != Kinds.Kind.TYP) {
            return (kind3 != Kinds.Kind.MTH || (map = this.lambdaTranslationMap) == null || (symbol2 = map.get(symbol3)) == null) ? jCExpression3 : this.make.at(jCExpression3.pos).Ident(symbol2);
        }
        boolean z12 = (z10 && !needsPrivateAccess(symbol3)) || needsProtectedAccess(symbol3, jCExpression3);
        boolean z13 = z12 || needsPrivateAccess(symbol3);
        if (jCExpression5 == null && symbol3.owner != this.syms.predefClass && !symbol3.isMemberOf(this.currentClass, this.types)) {
            z11 = true;
        }
        if (!z13 && !z11) {
            return jCExpression3;
        }
        this.make.at(jCExpression3.pos);
        if (symbol3.kind == kind && (constValue = ((Symbol.VarSymbol) symbol3).getConstValue()) != null) {
            addPrunedInfo(jCExpression3);
            return makeLit(symbol3.type, constValue);
        }
        if (!z13) {
            return z11 ? this.make.at(jCExpression3.pos).Select(accessBase(jCExpression3.pos(), symbol3), symbol3).setType(jCExpression3.type) : jCExpression3;
        }
        List<JCTree.JCExpression> nil = List.nil();
        if ((symbol3.flags() & 8) == 0) {
            if (jCExpression5 == null) {
                jCExpression5 = makeOwnerThis(jCExpression3.pos(), symbol3, true);
            }
            nil = nil.prepend(jCExpression5);
        } else {
            jCExpression4 = jCExpression5;
        }
        List<JCTree.JCExpression> list = nil;
        Symbol.MethodSymbol accessSymbol = accessSymbol(symbol3, jCExpression3, jCExpression2, z12, z10);
        TreeMaker treeMaker = this.make;
        if (jCExpression4 == null) {
            jCExpression4 = treeMaker.QualIdent(accessSymbol.owner);
        }
        return this.make.App(treeMaker.Select(jCExpression4, accessSymbol), list);
    }

    public JCTree.JCExpression accessBase(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        return (symbol.flags() & 8) != 0 ? access(this.make.at(diagnosticPosition.getStartPosition()).QualIdent(symbol.owner)) : makeOwnerThis(diagnosticPosition, symbol, true);
    }

    public Symbol.ClassSymbol accessClass(Symbol symbol, boolean z10, JCTree jCTree) {
        if (!z10) {
            return symbol.owner.enclClass();
        }
        Symbol.ClassSymbol classSymbol = this.currentClass;
        if (!jCTree.hasTag(JCTree.Tag.SELECT) || (symbol.flags() & 8) != 0) {
            while (!classSymbol.isSubClass(symbol.owner, this.types)) {
                classSymbol = classSymbol.owner.enclClass();
            }
            return classSymbol;
        }
        Symbol.TypeSymbol typeSymbol = ((JCTree.JCFieldAccess) jCTree).selected.type.tsym;
        while (!typeSymbol.isSubClass(classSymbol, this.types)) {
            classSymbol = classSymbol.owner.enclClass();
        }
        return classSymbol;
    }

    public Symbol accessConstructor(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol) {
        if (!needsPrivateAccess(symbol)) {
            return symbol;
        }
        Symbol.ClassSymbol enclClass = symbol.owner.enclClass();
        Symbol.MethodSymbol methodSymbol = this.accessConstrs.get(symbol);
        if (methodSymbol != null) {
            return methodSymbol;
        }
        List<Type> parameterTypes = symbol.type.getParameterTypes();
        if ((enclClass.flags_field & 16384) != 0) {
            parameterTypes = parameterTypes.prepend(this.syms.intType).prepend(this.syms.stringType);
        }
        Symbol.MethodSymbol methodSymbol2 = new Symbol.MethodSymbol(4096L, this.names.init, new Type.MethodType(parameterTypes.append(accessConstructorTag().erasure(this.types)), symbol.type.getReturnType(), symbol.type.getThrownTypes(), this.syms.methodClass), enclClass);
        enterSynthetic(diagnosticPosition, methodSymbol2, enclClass.members());
        this.accessConstrs.put(symbol, methodSymbol2);
        this.accessed.append(symbol);
        return methodSymbol2;
    }

    public JCTree accessConstructorDef(int i10, Symbol symbol, Symbol.MethodSymbol methodSymbol) {
        this.make.at(i10);
        JCTree.JCMethodDecl MethodDef = this.make.MethodDef(methodSymbol, methodSymbol.externalType(this.types), null);
        JCTree.JCIdent Ident = this.make.Ident(this.names._this);
        Ident.sym = symbol;
        Ident.type = symbol.type;
        TreeMaker treeMaker = this.make;
        MethodDef.body = treeMaker.Block(0L, List.of(treeMaker.Call(treeMaker.App(Ident, treeMaker.Idents(MethodDef.params.reverse().tail.reverse())))));
        return MethodDef;
    }

    public Symbol.ClassSymbol accessConstructorTag() {
        Symbol.ClassSymbol outermostClass = this.currentClass.outermostClass();
        Symbol.ClassSymbol compiled = this.chk.getCompiled(outermostClass.packge().modle, this.names.fromString("" + ((Object) outermostClass.getQualifiedName()) + this.target.syntheticNameChar() + "1"));
        if (compiled == null) {
            compiled = makeEmptyClass(4104L, outermostClass).sym;
        }
        this.accessConstrTags = this.accessConstrTags.prepend(compiled);
        return compiled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v11, types: [A, org.openjdk.tools.javac.tree.JCTree$JCExpression] */
    public JCTree accessDef(int i10, Symbol symbol, Symbol.MethodSymbol methodSymbol, int i11) {
        List<JCTree.JCExpression> Idents;
        JCTree.JCExpression jCExpression;
        JCTree.JCStatement Call;
        this.currentClass = symbol.owner.enclClass();
        this.make.at(i10);
        JCTree.JCMethodDecl MethodDef = this.make.MethodDef(methodSymbol, null);
        Symbol symbol2 = this.actualSymbols.get(symbol);
        if (symbol2 == null) {
            symbol2 = symbol;
        }
        if ((symbol2.flags() & 8) != 0) {
            JCTree.JCExpression Ident = this.make.Ident(symbol2);
            Idents = this.make.Idents(MethodDef.params);
            jCExpression = Ident;
        } else {
            JCTree.JCExpression Ident2 = this.make.Ident(MethodDef.params.head);
            if (i11 % 2 != 0) {
                Types types = this.types;
                Ident2.setType(types.erasure(types.supertype(symbol.owner.enclClass().type)));
            }
            JCTree.JCExpression Select = this.make.Select(Ident2, symbol2);
            Idents = this.make.Idents(MethodDef.params.tail);
            jCExpression = Select;
        }
        if (symbol2.kind == Kinds.Kind.VAR) {
            int i12 = i11 - (i11 & 1);
            Symbol.OperatorSymbol.AccessCode fromCode = Symbol.OperatorSymbol.AccessCode.getFromCode(i12);
            JCTree.JCExpression jCExpression2 = jCExpression;
            switch (AnonymousClass2.$SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode[fromCode.ordinal()]) {
                case 1:
                    break;
                case 2:
                    jCExpression2 = this.make.Assign(jCExpression, Idents.head);
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                    jCExpression2 = makeUnary(fromCode.tag, jCExpression);
                    break;
                default:
                    TreeMaker treeMaker = this.make;
                    JCTree.Tag tag = JCTree.Tag.NO_TAG;
                    JCTree.JCAssignOp Assignop = treeMaker.Assignop(treeTag(binaryAccessOperator(i12, tag)), jCExpression, Idents.head);
                    Assignop.operator = binaryAccessOperator(i12, tag);
                    jCExpression2 = Assignop;
                    break;
            }
            Call = this.make.Return(jCExpression2.setType(symbol2.type));
        } else {
            TreeMaker treeMaker2 = this.make;
            Call = treeMaker2.Call(treeMaker2.App(jCExpression, Idents));
        }
        MethodDef.body = this.make.Block(0L, List.of(Call));
        for (List list = MethodDef.params; list.nonEmpty(); list = list.tail) {
            A a10 = list.head;
            ((JCTree.JCVariableDecl) a10).vartype = access(((JCTree.JCVariableDecl) a10).vartype);
        }
        MethodDef.restype = access(MethodDef.restype);
        for (List list2 = MethodDef.thrown; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = access((JCTree.JCExpression) list2.head);
        }
        return MethodDef;
    }

    public Name accessName(int i10, int i11) {
        return this.names.fromString("access" + this.target.syntheticNameChar() + i10 + (i11 / 10) + (i11 % 10));
    }

    public Symbol.MethodSymbol accessSymbol(Symbol symbol, JCTree jCTree, JCTree jCTree2, boolean z10, boolean z11) {
        List<Type> of2;
        Type erasure;
        List<Type> nil;
        List<Type> list;
        int i10;
        Symbol.ClassSymbol accessClass = (z11 && z10) ? (Symbol.ClassSymbol) ((JCTree.JCFieldAccess) jCTree).selected.type.tsym : accessClass(symbol, z10, jCTree);
        if (symbol.owner != accessClass) {
            Symbol clone = symbol.clone(accessClass);
            this.actualSymbols.put(clone, symbol);
            symbol = clone;
        }
        Integer num = this.accessNums.get(symbol);
        if (num == null) {
            num = Integer.valueOf(this.accessed.length());
            this.accessNums.put(symbol, num);
            this.accessSyms.put(symbol, new Symbol.MethodSymbol[Symbol.OperatorSymbol.AccessCode.numberOfAccessCodes]);
            this.accessed.append(symbol);
        }
        int i11 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()];
        if (i11 == 1) {
            int accessCode = accessCode(jCTree, jCTree2);
            if (accessCode >= Symbol.OperatorSymbol.AccessCode.FIRSTASGOP.code) {
                Symbol.OperatorSymbol binaryAccessOperator = binaryAccessOperator(accessCode, jCTree2.getTag());
                of2 = binaryAccessOperator.opcode == 256 ? List.of(this.syms.objectType) : binaryAccessOperator.type.getParameterTypes().tail;
            } else {
                of2 = accessCode == Symbol.OperatorSymbol.AccessCode.ASSIGN.code ? List.of(symbol.erasure(this.types)) : List.nil();
            }
            erasure = symbol.erasure(this.types);
            nil = List.nil();
            list = of2;
            i10 = accessCode;
        } else {
            if (i11 != 2) {
                throw new AssertionError();
            }
            i10 = Symbol.OperatorSymbol.AccessCode.DEREF.code;
            list = symbol.erasure(this.types).getParameterTypes();
            erasure = symbol.erasure(this.types).getReturnType();
            nil = symbol.type.getThrownTypes();
        }
        if (z10 && z11) {
            i10++;
        }
        if ((symbol.flags() & 8) == 0) {
            list = list.prepend(symbol.owner.erasure(this.types));
        }
        Symbol.MethodSymbol[] methodSymbolArr = this.accessSyms.get(symbol);
        Symbol.MethodSymbol methodSymbol = methodSymbolArr[i10];
        if (methodSymbol != null) {
            return methodSymbol;
        }
        Symbol.MethodSymbol methodSymbol2 = new Symbol.MethodSymbol((accessClass.isInterface() ? 1 : 0) | 4104, accessName(num.intValue(), i10), new Type.MethodType(list, erasure, nil, this.syms.methodClass), accessClass);
        enterSynthetic(jCTree.pos(), methodSymbol2, accessClass.members());
        methodSymbolArr[i10] = methodSymbol2;
        return methodSymbol2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<JCTree.JCExpression> boxArgs(List<Type> list, List<JCTree.JCExpression> list2, Type type) {
        if (list.isEmpty()) {
            return list2;
        }
        ListBuffer listBuffer = new ListBuffer();
        List list3 = list2;
        boolean z10 = false;
        List<Type> list4 = list;
        while (true) {
            boolean z11 = true;
            if (!list4.tail.nonEmpty()) {
                break;
            }
            JCTree.JCExpression translate = translate((Lower) list3.head, list4.head);
            if (translate == list3.head) {
                z11 = false;
            }
            z10 |= z11;
            listBuffer.append(translate);
            list3 = list3.tail;
            list4 = list4.tail;
        }
        Type type2 = list4.head;
        if (type != null) {
            ListBuffer listBuffer2 = new ListBuffer();
            while (list3.nonEmpty()) {
                listBuffer2.append(translate((Lower) list3.head, type));
                list3 = list3.tail;
            }
            TreeMaker treeMaker = this.make;
            JCTree.JCNewArray NewArray = treeMaker.NewArray(treeMaker.Type(type), List.nil(), listBuffer2.toList());
            NewArray.type = new Type.ArrayType(type, this.syms.arrayClass);
            listBuffer.append(NewArray);
        } else {
            if (list3.length() != 1) {
                throw new AssertionError(list3);
            }
            JCTree.JCExpression translate2 = translate((Lower) list3.head, type2);
            boolean z12 = z10 | (translate2 != list3.head);
            listBuffer.append(translate2);
            if (!z12) {
                return list2;
            }
        }
        return listBuffer.toList();
    }

    public <T extends JCTree.JCExpression> T boxIfNeeded(T t10, Type type) {
        boolean isPrimitive = t10.type.isPrimitive();
        if (isPrimitive == type.isPrimitive()) {
            return t10;
        }
        if (!isPrimitive) {
            return (T) unbox(t10, type);
        }
        Type unboxedType = this.types.unboxedType(type);
        if (unboxedType.hasTag(TypeTag.NONE)) {
            return (T) boxPrimitive(t10);
        }
        if (!this.types.isSubtype(t10.type, unboxedType)) {
            t10.type = unboxedType.constType(t10.type.constValue());
        }
        return (T) boxPrimitive(t10, this.types.erasure(type));
    }

    public JCTree.JCExpression boxPrimitive(JCTree.JCExpression jCExpression) {
        return boxPrimitive(jCExpression, this.types.boxedClass(jCExpression.type).type);
    }

    public void checkConflicts(List<JCTree> list) {
        Iterator<JCTree> it = list.iterator();
        while (it.hasNext()) {
            it.next().accept(this.conflictsChecker);
        }
    }

    public JCTree.JCClassDecl classDef(Symbol.ClassSymbol classSymbol) {
        JCTree jCTree;
        JCTree.JCClassDecl jCClassDecl = this.classdefs.get(classSymbol);
        if (jCClassDecl == null && (jCTree = this.outermostMemberDef) != null) {
            this.classMap.scan(jCTree);
            jCClassDecl = this.classdefs.get(classSymbol);
        }
        if (jCClassDecl != null) {
            return jCClassDecl;
        }
        this.classMap.scan(this.outermostClassDef);
        return this.classdefs.get(classSymbol);
    }

    public JCTree.JCBlock classDollarSymBody(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.JCMethodDecl jCMethodDecl) {
        Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) methodSymbol.owner;
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4104L, this.names.fromString(Telephony.Mms.Part.CONTENT_LOCATION + this.target.syntheticNameChar()), this.syms.classLoaderType, classSymbol);
        enterSynthetic(diagnosticPosition, varSymbol, classSymbol.members());
        JCTree.JCVariableDecl VarDef = this.make.VarDef(varSymbol, null);
        JCTree.JCClassDecl classDef = classDef(classSymbol);
        classDef.defs = classDef.defs.prepend(VarDef);
        TreeMaker treeMaker = this.make;
        JCTree.JCExpression NewArray = treeMaker.NewArray(treeMaker.Type(classSymbol.type), List.of(this.make.Literal(TypeTag.INT, 0).setType((Type) this.syms.intType)), null);
        NewArray.type = new Type.ArrayType(this.types.erasure(classSymbol.type), this.syms.arrayClass);
        JCDiagnostic.DiagnosticPosition diagnosticPosition2 = this.make_pos;
        Name name = this.names.forName;
        Type erasure = this.types.erasure(this.syms.classType);
        Symtab symtab = this.syms;
        Symbol.MethodSymbol lookupMethod = lookupMethod(diagnosticPosition2, name, erasure, List.of(symtab.stringType, symtab.booleanType, symtab.classLoaderType));
        TreeMaker treeMaker2 = this.make;
        JCTree.JCBinary makeBinary = makeBinary(JCTree.Tag.EQ, treeMaker2.Ident(varSymbol), makeNull());
        TreeMaker treeMaker3 = this.make;
        List<JCTree.JCExpression> of2 = List.of(this.make.Ident(jCMethodDecl.params.head.sym), makeLit(this.syms.booleanType, 0), treeMaker2.Conditional(makeBinary, treeMaker3.Assign(treeMaker3.Ident(varSymbol), makeCall(makeCall(makeCall(NewArray, this.names.getClass, List.nil()), this.names.getComponentType, List.nil()), this.names.getClassLoader, List.nil())).setType(this.syms.classLoaderType), this.make.Ident(varSymbol)).setType(this.syms.classLoaderType));
        TreeMaker treeMaker4 = this.make;
        JCTree.JCBlock Block = treeMaker4.Block(0L, List.of(treeMaker4.Call(treeMaker4.App(treeMaker4.Ident(lookupMethod), of2))));
        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4096L, this.make.paramName(1), this.syms.classNotFoundExceptionType, methodSymbol);
        JCTree.JCBlock Block2 = this.make.Block(0L, List.of(this.make.Throw(makeCall(makeNewClass(this.syms.noClassDefFoundErrorType, List.nil()), this.names.initCause, List.of(this.make.Ident(varSymbol2))))));
        TreeMaker treeMaker5 = this.make;
        return this.make.Block(0L, List.of(this.make.Try(Block, List.of(treeMaker5.Catch(treeMaker5.VarDef(varSymbol2, null), Block2)), null)));
    }

    public List<JCTree.JCVariableDecl> freevarDefs(int i10, List<Symbol.VarSymbol> list, Symbol symbol) {
        return freevarDefs(i10, list, symbol, 0L);
    }

    public List<Symbol.VarSymbol> freevars(Symbol.ClassSymbol classSymbol) {
        List<Symbol.VarSymbol> list = this.freevarCache.get(classSymbol);
        if (list != null) {
            return list;
        }
        if (classSymbol.owner.kind.matches(Kinds.KindSelector.VAL_MTH)) {
            FreeVarCollector freeVarCollector = new FreeVarCollector(classSymbol);
            freeVarCollector.scan(classDef(classSymbol));
            List<Symbol.VarSymbol> list2 = freeVarCollector.fvs;
            this.freevarCache.put(classSymbol, list2);
            return list2;
        }
        Symbol.ClassSymbol ownerToCopyFreeVarsFrom = ownerToCopyFreeVarsFrom(classSymbol);
        if (ownerToCopyFreeVarsFrom == null) {
            return List.nil();
        }
        List<Symbol.VarSymbol> list3 = this.freevarCache.get(ownerToCopyFreeVarsFrom);
        this.freevarCache.put(classSymbol, list3);
        return list3;
    }

    public JCTree.JCStatement initField(int i10, Name name) {
        Iterator<Symbol> it = this.proxies.getSymbolsByName(name).iterator();
        Symbol next = it.next();
        Assert.check(next.owner.kind == Kinds.Kind.MTH);
        Symbol next2 = it.next();
        Assert.check(next.owner.owner == next2.owner);
        this.make.at(i10);
        TreeMaker treeMaker = this.make;
        return treeMaker.Exec(treeMaker.Assign(treeMaker.Select(treeMaker.This(next2.owner.erasure(this.types)), next2), this.make.Ident(next)).setType(next2.erasure(this.types)));
    }

    public JCTree.JCStatement initOuterThis(int i10) {
        Symbol.VarSymbol varSymbol = this.outerThisStack.head;
        Assert.check(varSymbol.owner.kind == Kinds.Kind.MTH);
        Symbol.VarSymbol varSymbol2 = this.outerThisStack.tail.head;
        Assert.check(varSymbol.owner.owner == varSymbol2.owner);
        this.make.at(i10);
        TreeMaker treeMaker = this.make;
        return treeMaker.Exec(treeMaker.Assign(treeMaker.Select(treeMaker.This(varSymbol2.owner.erasure(this.types)), varSymbol2), this.make.Ident(varSymbol)).setType(varSymbol2.erasure(this.types)));
    }

    public JCTree.JCExpression loadFreevar(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.VarSymbol varSymbol) {
        return access(varSymbol, this.make.at(diagnosticPosition).Ident(varSymbol), null, false);
    }

    public List<JCTree.JCExpression> loadFreevars(JCDiagnostic.DiagnosticPosition diagnosticPosition, List<Symbol.VarSymbol> list) {
        List<JCTree.JCExpression> nil = List.nil();
        for (List<Symbol.VarSymbol> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            nil = nil.prepend(loadFreevar(diagnosticPosition, list2.head));
        }
        return nil;
    }

    public JCTree.JCExpression lowerBoxedPostop(final JCTree.JCUnary jCUnary) {
        final boolean hasTag = TreeInfo.skipParens(jCUnary.arg).hasTag(JCTree.Tag.TYPECAST);
        return abstractLval(jCUnary.arg, new TreeBuilder() {
            @Override
            public final JCTree.JCExpression build(JCTree.JCExpression jCExpression) {
                JCTree.JCExpression lambda$lowerBoxedPostop$7;
                lambda$lowerBoxedPostop$7 = Lower.this.lambda$lowerBoxedPostop$7(jCUnary, hasTag, jCExpression);
                return lambda$lowerBoxedPostop$7;
            }
        });
    }

    public void makeAccessible(Symbol symbol) {
        JCTree.JCClassDecl classDef = classDef(symbol.owner.enclClass());
        if (classDef == null) {
            Assert.error("class def not found: " + ((Object) symbol) + " in " + ((Object) symbol.owner));
        }
        if (symbol.name == this.names.init) {
            classDef.defs = classDef.defs.prepend(accessConstructorDef(classDef.pos, symbol, this.accessConstrs.get(symbol)));
            return;
        }
        Symbol.MethodSymbol[] methodSymbolArr = this.accessSyms.get(symbol);
        for (int i10 = 0; i10 < Symbol.OperatorSymbol.AccessCode.numberOfAccessCodes; i10++) {
            Symbol.MethodSymbol methodSymbol = methodSymbolArr[i10];
            if (methodSymbol != null) {
                classDef.defs = classDef.defs.prepend(accessDef(classDef.pos, symbol, methodSymbol, i10));
            }
        }
    }

    public JCTree.JCAssignOp makeAssignop(JCTree.Tag tag, JCTree jCTree, JCTree jCTree2) {
        JCTree.JCAssignOp Assignop = this.make.Assignop(tag, jCTree, jCTree2);
        Assignop.operator = this.operators.resolveBinary(Assignop, Assignop.getTag().noAssignOp(), jCTree.type, jCTree2.type);
        Assignop.type = jCTree.type;
        return Assignop;
    }

    public JCTree.JCBinary makeBinary(JCTree.Tag tag, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCBinary Binary = this.make.Binary(tag, jCExpression, jCExpression2);
        Symbol.OperatorSymbol resolveBinary = this.operators.resolveBinary(Binary, tag, jCExpression.type, jCExpression2.type);
        Binary.operator = resolveBinary;
        Binary.type = resolveBinary.type.getReturnType();
        return Binary;
    }

    public JCTree.JCExpression makeComma(JCTree.JCExpression jCExpression, final JCTree.JCExpression jCExpression2) {
        return abstractRval(jCExpression, new TreeBuilder() {
            @Override
            public final JCTree.JCExpression build(JCTree.JCExpression jCExpression3) {
                JCTree.JCExpression lambda$makeComma$4;
                lambda$makeComma$4 = Lower.lambda$makeComma$4(JCTree.JCExpression.this, jCExpression3);
                return lambda$makeComma$4;
            }
        });
    }

    public JCTree.JCClassDecl makeEmptyClass(long j10, Symbol.ClassSymbol classSymbol) {
        return makeEmptyClass(j10, classSymbol, null, true);
    }

    public JCTree.JCExpression makeLit(Type type, Object obj) {
        return this.make.Literal(type.getTag(), obj).setType(type.constType(obj));
    }

    public JCTree.JCNewClass makeNewClass(Type type, List<JCTree.JCExpression> list) {
        TreeMaker treeMaker = this.make;
        JCTree.JCNewClass NewClass = treeMaker.NewClass(null, null, treeMaker.QualIdent(type.tsym), list, null);
        NewClass.constructor = this.rs.resolveConstructor(this.make_pos, this.attrEnv, type, TreeInfo.types(list), List.nil());
        NewClass.type = type;
        return NewClass;
    }

    public JCTree.JCExpression makeNull() {
        return makeLit(this.syms.botType, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JCTree.JCExpression makeOuterThis(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
        Symbol.VarSymbol varSymbol;
        List list = this.outerThisStack;
        if (list.isEmpty()) {
            this.log.error(diagnosticPosition, "no.encl.instance.of.type.in.scope", typeSymbol);
            Assert.error();
            return makeNull();
        }
        Symbol.VarSymbol varSymbol2 = (Symbol.VarSymbol) list.head;
        JCTree.JCExpression access = access(this.make.at(diagnosticPosition).Ident(varSymbol2));
        Symbol.TypeSymbol typeSymbol2 = varSymbol2.type.tsym;
        while (typeSymbol2 != typeSymbol) {
            do {
                list = list.tail;
                if (list.isEmpty()) {
                    this.log.error(diagnosticPosition, "no.encl.instance.of.type.in.scope", typeSymbol);
                    Assert.error();
                    return access;
                }
                varSymbol = (Symbol.VarSymbol) list.head;
            } while (varSymbol.owner != typeSymbol2);
            if (typeSymbol2.owner.kind != Kinds.Kind.PCK && !typeSymbol2.hasOuterInstance()) {
                this.chk.earlyRefError(diagnosticPosition, typeSymbol);
                Assert.error();
                return makeNull();
            }
            access = access(this.make.at(diagnosticPosition).Select(access, varSymbol));
            typeSymbol2 = varSymbol.type.tsym;
        }
        return access;
    }

    public JCTree.JCExpression makeOwnerThis(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, boolean z10) {
        Symbol symbol2 = symbol.owner;
        Symbol.ClassSymbol classSymbol = this.currentClass;
        Types types = this.types;
        return (!z10 ? classSymbol.isSubClass(symbol2, types) : symbol.isMemberOf(classSymbol, types)) ? makeOwnerThisN(diagnosticPosition, symbol, z10) : this.make.at(diagnosticPosition).This(symbol2.erasure(this.types));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JCTree.JCExpression makeOwnerThisN(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, boolean z10) {
        Symbol.VarSymbol varSymbol;
        Symbol symbol2 = symbol.owner;
        List list = this.outerThisStack;
        if (list.isEmpty()) {
            this.log.error(diagnosticPosition, "no.encl.instance.of.type.in.scope", symbol2);
            Assert.error();
            return makeNull();
        }
        Symbol.VarSymbol varSymbol2 = (Symbol.VarSymbol) list.head;
        JCTree.JCExpression access = access(this.make.at(diagnosticPosition).Ident(varSymbol2));
        Symbol.TypeSymbol typeSymbol = varSymbol2.type.tsym;
        while (true) {
            if (z10) {
                if (symbol.isMemberOf(typeSymbol, this.types)) {
                    break;
                }
                do {
                    list = list.tail;
                    if (!list.isEmpty()) {
                        this.log.error(diagnosticPosition, "no.encl.instance.of.type.in.scope", symbol2);
                        Assert.error();
                        return access;
                    }
                    varSymbol = (Symbol.VarSymbol) list.head;
                } while (varSymbol.owner != typeSymbol);
                access = access(this.make.at(diagnosticPosition).Select(access, varSymbol));
                typeSymbol = varSymbol.type.tsym;
            } else {
                if (typeSymbol.isSubClass(symbol.owner, this.types)) {
                    break;
                }
                do {
                    list = list.tail;
                    if (!list.isEmpty()) {
                    }
                } while (varSymbol.owner != typeSymbol);
                access = access(this.make.at(diagnosticPosition).Select(access, varSymbol));
                typeSymbol = varSymbol.type.tsym;
            }
        }
        return access;
    }

    public JCTree.JCExpression makeString(JCTree.JCExpression jCExpression) {
        if (!jCExpression.type.isPrimitiveOrVoid()) {
            return jCExpression;
        }
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCExpression.pos(), this.names.valueOf, this.syms.stringType, List.of(jCExpression.type));
        TreeMaker treeMaker = this.make;
        return treeMaker.App(treeMaker.QualIdent(lookupMethod), List.of(jCExpression));
    }

    public JCTree.JCExpression makeThis(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
        return this.currentClass == typeSymbol ? this.make.at(diagnosticPosition).This(typeSymbol.erasure(this.types)) : makeOuterThis(diagnosticPosition, typeSymbol);
    }

    public JCTree makeTwrTry(JCTree.JCTry jCTry) {
        make_at(jCTry.pos());
        this.twrVars = this.twrVars.dup();
        JCTree.JCBlock makeTwrBlock = makeTwrBlock(jCTry.resources, jCTry.body, jCTry.finallyCanCompleteNormally, 0);
        if (jCTry.catchers.isEmpty() && jCTry.finalizer == null) {
            this.result = translate((Lower) makeTwrBlock);
        } else {
            this.result = translate((Lower) this.make.Try(makeTwrBlock, jCTry.catchers, jCTry.finalizer));
        }
        this.twrVars = this.twrVars.leave();
        return this.result;
    }

    public JCTree.JCUnary makeUnary(JCTree.Tag tag, JCTree.JCExpression jCExpression) {
        JCTree.JCUnary Unary = this.make.Unary(tag, jCExpression);
        Symbol.OperatorSymbol resolveUnary = this.operators.resolveUnary(Unary, tag, jCExpression.type);
        Unary.operator = resolveUnary;
        Unary.type = resolveUnary.type.getReturnType();
        return Unary;
    }

    public TreeMaker make_at(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        this.make_pos = diagnosticPosition;
        return this.make.at(diagnosticPosition);
    }

    public EnumMapping mapForEnum(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
        EnumMapping enumMapping = this.enumSwitchMap.get(typeSymbol);
        if (enumMapping != null) {
            return enumMapping;
        }
        Map<Symbol.TypeSymbol, EnumMapping> map = this.enumSwitchMap;
        EnumMapping enumMapping2 = new EnumMapping(diagnosticPosition, typeSymbol);
        map.put(typeSymbol, enumMapping2);
        return enumMapping2;
    }

    public boolean needsPrivateAccess(Symbol symbol) {
        Symbol symbol2;
        if ((symbol.flags() & 2) == 0 || (symbol2 = symbol.owner) == this.currentClass) {
            return false;
        }
        if (symbol.name != this.names.init || !symbol2.isLocal()) {
            return true;
        }
        symbol.flags_field &= -3;
        return false;
    }

    public boolean needsProtectedAccess(Symbol symbol, JCTree jCTree) {
        if ((symbol.flags() & 4) != 0 && symbol.owner.owner != this.currentClass.owner && symbol.packge() != this.currentClass.packge()) {
            if (!this.currentClass.isSubClass(symbol.owner, this.types)) {
                return true;
            }
            if ((symbol.flags() & 8) == 0 && jCTree.hasTag(JCTree.Tag.SELECT)) {
                if (TreeInfo.name(((JCTree.JCFieldAccess) jCTree).selected) != this.names._super) {
                    return !r11.selected.type.tsym.isSubClass(this.currentClass, this.types);
                }
            }
        }
        return false;
    }

    public JCTree.JCVariableDecl outerThisDef(int i10, Symbol.MethodSymbol methodSymbol) {
        Symbol.ClassSymbol enclClass = methodSymbol.enclClass();
        Symbol.VarSymbol makeOuterThisVarSymbol = makeOuterThisVarSymbol(methodSymbol, ((methodSymbol.isConstructor() && methodSymbol.isAnonymous()) || (methodSymbol.isConstructor() && enclClass.isInner() && !enclClass.isPrivate() && !enclClass.isStatic()) ? 32768 : 4096) | 16 | 8589934592L);
        methodSymbol.extraParams = methodSymbol.extraParams.prepend(makeOuterThisVarSymbol);
        return makeOuterThisVarDecl(i10, makeOuterThisVarSymbol);
    }

    public Name outerThisName(Type type, Symbol symbol) {
        Type enclosingType = type.getEnclosingType();
        int i10 = 0;
        while (enclosingType.hasTag(TypeTag.CLASS)) {
            enclosingType = enclosingType.getEnclosingType();
            i10++;
        }
        Name fromString = this.names.fromString("this" + this.target.syntheticNameChar() + i10);
        while (symbol.kind == Kinds.Kind.TYP && ((Symbol.ClassSymbol) symbol).members().findFirst(fromString) != null) {
            fromString = this.names.fromString(fromString.toString() + this.target.syntheticNameChar());
        }
        return fromString;
    }

    public Symbol.ClassSymbol ownerToCopyFreeVarsFrom(Symbol.ClassSymbol classSymbol) {
        if (!classSymbol.isLocal()) {
            return null;
        }
        Symbol symbol = classSymbol.owner;
        while (symbol.owner.kind.matches(Kinds.KindSelector.TYP) && symbol.isLocal()) {
            symbol = symbol.owner;
        }
        if (symbol.owner.kind.matches(Kinds.KindSelector.VAL_MTH) && classSymbol.isSubClass(symbol, this.types)) {
            return (Symbol.ClassSymbol) symbol;
        }
        return null;
    }

    public Name proxyName(Name name) {
        return this.names.fromString("val" + this.target.syntheticNameChar() + ((Object) name));
    }

    public void swapAccessConstructorTag(Symbol.ClassSymbol classSymbol, Symbol.ClassSymbol classSymbol2) {
        for (Symbol.MethodSymbol methodSymbol : this.accessConstrs.values()) {
            Assert.check(methodSymbol.type.hasTag(TypeTag.METHOD));
            Type.MethodType methodType = (Type.MethodType) methodSymbol.type;
            if (methodType.argtypes.head.tsym == classSymbol) {
                methodSymbol.type = this.types.createMethodTypeWithParameters(methodType, methodType.getParameterTypes().tail.prepend(classSymbol2.erasure(this.types)));
            }
        }
    }

    @Override
    public <T extends JCTree> T translate(T t10) {
        if (t10 == null) {
            return null;
        }
        make_at(t10.pos());
        T t11 = (T) super.translate((Lower) t10);
        EndPosTable endPosTable = this.endPosTable;
        if (endPosTable != null && t11 != t10) {
            endPosTable.replaceTree(t10, t11);
        }
        return t11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<JCTree> translateTopLevelClass(Env<AttrContext> env, JCTree jCTree, TreeMaker treeMaker) {
        try {
            this.attrEnv = env;
            this.make = treeMaker;
            this.endPosTable = env.toplevel.endPositions;
            this.currentClass = null;
            this.currentMethodDef = null;
            this.outermostClassDef = jCTree.hasTag(JCTree.Tag.CLASSDEF) ? (JCTree.JCClassDecl) jCTree : null;
            this.outermostMemberDef = null;
            this.translated = new ListBuffer<>();
            this.classdefs = new HashMap();
            this.actualSymbols = new HashMap();
            this.freevarCache = new HashMap();
            this.proxies = Scope.WriteableScope.create(this.syms.noSymbol);
            this.twrVars = Scope.WriteableScope.create(this.syms.noSymbol);
            this.outerThisStack = List.nil();
            this.accessNums = new HashMap();
            this.accessSyms = new HashMap();
            this.accessConstrs = new HashMap();
            this.accessConstrTags = List.nil();
            this.accessed = new ListBuffer<>();
            translate((Lower) jCTree, (JCTree.JCExpression) null);
            for (List list = this.accessed.toList(); list.nonEmpty(); list = list.tail) {
                makeAccessible((Symbol) list.head);
            }
            Iterator<EnumMapping> it = this.enumSwitchMap.values().iterator();
            while (it.hasNext()) {
                it.next().translate();
            }
            checkConflicts(this.translated.toList());
            checkAccessConstructorTags();
            ListBuffer<JCTree> listBuffer = this.translated;
            this.attrEnv = null;
            this.make = null;
            this.endPosTable = null;
            this.currentClass = null;
            this.currentMethodDef = null;
            this.outermostClassDef = null;
            this.outermostMemberDef = null;
            this.translated = null;
            this.classdefs = null;
            this.actualSymbols = null;
            this.freevarCache = null;
            this.proxies = null;
            this.outerThisStack = null;
            this.accessNums = null;
            this.accessSyms = null;
            this.accessConstrs = null;
            this.accessConstrTags = null;
            this.accessed = null;
            this.enumSwitchMap.clear();
            this.assertionsDisabledClassCache = null;
            return listBuffer.toList();
        } catch (Throwable th2) {
            this.attrEnv = null;
            this.make = null;
            this.endPosTable = null;
            this.currentClass = null;
            this.currentMethodDef = null;
            this.outermostClassDef = null;
            this.outermostMemberDef = null;
            this.translated = null;
            this.classdefs = null;
            this.actualSymbols = null;
            this.freevarCache = null;
            this.proxies = null;
            this.outerThisStack = null;
            this.accessNums = null;
            this.accessSyms = null;
            this.accessConstrs = null;
            this.accessConstrTags = null;
            this.accessed = null;
            this.enumSwitchMap.clear();
            this.assertionsDisabledClassCache = null;
            throw th2;
        }
    }

    public JCTree.JCExpression unbox(JCTree.JCExpression jCExpression, Type type) {
        Type unboxedType = this.types.unboxedType(jCExpression.type);
        if (unboxedType.hasTag(TypeTag.NONE)) {
            if (!type.isPrimitive()) {
                throw new AssertionError(type);
            }
            make_at(jCExpression.pos());
            jCExpression = this.make.TypeCast(this.types.boxedClass(type).type, jCExpression);
        } else {
            if (!this.types.isSubtype(unboxedType, type)) {
                throw new AssertionError(jCExpression);
            }
            type = unboxedType;
        }
        make_at(jCExpression.pos());
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCExpression.pos(), type.tsym.name.append(this.names.Value), jCExpression.type, List.nil());
        TreeMaker treeMaker = this.make;
        return treeMaker.App(treeMaker.Select(jCExpression, lookupMethod));
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        this.result = jCAnnotation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        JCTree.JCExpression makeThis;
        Symbol symbol = TreeInfo.symbol(jCMethodInvocation.meth);
        List parameterTypes = symbol.type.getParameterTypes();
        if (symbol.name == this.names.init && symbol.owner == this.syms.enumSym) {
            parameterTypes = parameterTypes.tail.tail;
        }
        jCMethodInvocation.args = boxArgs(parameterTypes, jCMethodInvocation.args, jCMethodInvocation.varargsElement);
        jCMethodInvocation.varargsElement = null;
        Name name = TreeInfo.name(jCMethodInvocation.meth);
        if (symbol.name == this.names.init) {
            Symbol accessConstructor = accessConstructor(jCMethodInvocation.pos(), symbol);
            if (accessConstructor != symbol) {
                jCMethodInvocation.args = jCMethodInvocation.args.append(makeNull());
                TreeInfo.setSymbol(jCMethodInvocation.meth, accessConstructor);
            }
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) accessConstructor.owner;
            if (classSymbol.isLocal()) {
                jCMethodInvocation.args = jCMethodInvocation.args.appendList(loadFreevars(jCMethodInvocation.pos(), freevars(classSymbol)));
            }
            if ((classSymbol.flags_field & 16384) != 0 || classSymbol.getQualifiedName() == this.names.java_lang_Enum) {
                List list = this.currentMethodDef.params;
                if (this.currentMethodSym.owner.hasOuterInstance()) {
                    list = list.tail;
                }
                jCMethodInvocation.args = jCMethodInvocation.args.prepend(make_at(jCMethodInvocation.pos()).Ident(((JCTree.JCVariableDecl) list.tail.head).sym)).prepend(this.make.Ident(((JCTree.JCVariableDecl) list.head).sym));
            }
            if (classSymbol.hasOuterInstance()) {
                if (jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT)) {
                    makeThis = this.attr.makeNullCheck((JCTree.JCExpression) translate((Lower) ((JCTree.JCFieldAccess) jCMethodInvocation.meth).selected));
                    JCTree.JCIdent Ident = this.make.Ident(accessConstructor);
                    jCMethodInvocation.meth = Ident;
                    Ident.name = name;
                } else {
                    makeThis = (classSymbol.isLocal() || name == this.names._this) ? makeThis(jCMethodInvocation.meth.pos(), classSymbol.type.getEnclosingType().tsym) : makeOwnerThisN(jCMethodInvocation.meth.pos(), classSymbol, false);
                }
                jCMethodInvocation.args = jCMethodInvocation.args.prepend(makeThis);
            }
        } else {
            JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((Lower) jCMethodInvocation.meth);
            jCMethodInvocation.meth = jCExpression;
            if (jCExpression.hasTag(JCTree.Tag.APPLY)) {
                JCTree.JCMethodInvocation jCMethodInvocation2 = (JCTree.JCMethodInvocation) jCMethodInvocation.meth;
                jCMethodInvocation2.args = jCMethodInvocation.args.prependList(jCMethodInvocation2.args);
                this.result = jCMethodInvocation2;
                return;
            }
        }
        this.result = jCMethodInvocation;
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        JCTree.JCExpression jCExpression = jCAssert.detail;
        if (jCExpression == null) {
            jCAssert.pos();
        } else {
            jCExpression.pos();
        }
        JCTree.JCExpression translate = translate((Lower) jCAssert.cond, (Type) this.syms.booleanType);
        jCAssert.cond = translate;
        if (translate.type.isTrue()) {
            this.result = this.make.Skip();
            return;
        }
        JCTree.JCExpression assertFlagTest = assertFlagTest(jCAssert.pos());
        JCTree.JCExpression jCExpression2 = jCAssert.detail;
        List<JCTree.JCExpression> nil = jCExpression2 == null ? List.nil() : List.of(translate((Lower) jCExpression2));
        if (!jCAssert.cond.type.isFalse()) {
            assertFlagTest = makeBinary(JCTree.Tag.AND, assertFlagTest, makeUnary(JCTree.Tag.NOT, jCAssert.cond));
        }
        this.result = this.make.If(assertFlagTest, make_at(jCAssert).Throw(makeNewClass(this.syms.assertionErrorType, nil)), null);
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((Lower) jCAssign.lhs, (JCTree.JCExpression) jCAssign);
        jCAssign.lhs = jCExpression;
        jCAssign.rhs = translate((Lower) jCAssign.rhs, jCExpression.type);
        if (!jCAssign.lhs.hasTag(JCTree.Tag.APPLY)) {
            this.result = jCAssign;
            return;
        }
        JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) jCAssign.lhs;
        jCMethodInvocation.args = List.of(jCAssign.rhs).prependList(jCMethodInvocation.args);
        this.result = jCMethodInvocation;
    }

    @Override
    public void visitAssignop(final JCTree.JCAssignOp jCAssignOp) {
        final boolean z10 = !jCAssignOp.lhs.type.isPrimitive() && jCAssignOp.operator.type.getReturnType().isPrimitive();
        AssignopDependencyScanner assignopDependencyScanner = new AssignopDependencyScanner(jCAssignOp);
        assignopDependencyScanner.scan(jCAssignOp.rhs);
        if (z10 || assignopDependencyScanner.dependencyFound) {
            this.result = translate((Lower) abstractLval(jCAssignOp.lhs, new TreeBuilder() {
                @Override
                public final JCTree.JCExpression build(JCTree.JCExpression jCExpression) {
                    JCTree.JCExpression lambda$visitAssignop$5;
                    lambda$visitAssignop$5 = Lower.this.lambda$visitAssignop$5(jCAssignOp, z10, jCExpression);
                    return lambda$visitAssignop$5;
                }
            }));
            return;
        }
        jCAssignOp.lhs = (JCTree.JCExpression) translate((Lower) jCAssignOp.lhs, (JCTree.JCExpression) jCAssignOp);
        jCAssignOp.rhs = translate((Lower) jCAssignOp.rhs, jCAssignOp.operator.type.getParameterTypes().tail.head);
        if (!jCAssignOp.lhs.hasTag(JCTree.Tag.APPLY)) {
            this.result = jCAssignOp;
            return;
        }
        JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) jCAssignOp.lhs;
        jCMethodInvocation.args = List.of(jCAssignOp.operator.opcode == 256 ? makeString(jCAssignOp.rhs) : jCAssignOp.rhs).prependList(jCMethodInvocation.args);
        this.result = jCMethodInvocation;
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        List<Type> parameterTypes = jCBinary.operator.type.getParameterTypes();
        JCTree.JCExpression translate = translate((Lower) jCBinary.lhs, parameterTypes.head);
        jCBinary.lhs = translate;
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCBinary.getTag().ordinal()];
        if (i10 != 12) {
            if (i10 == 13) {
                if (isFalse(translate)) {
                    this.result = translate;
                    return;
                } else if (isTrue(translate)) {
                    this.result = translate((Lower) jCBinary.rhs, parameterTypes.tail.head);
                    return;
                }
            }
        } else if (isTrue(translate)) {
            this.result = translate;
            return;
        } else if (isFalse(translate)) {
            this.result = translate((Lower) jCBinary.rhs, parameterTypes.tail.head);
            return;
        }
        jCBinary.rhs = translate((Lower) jCBinary.rhs, parameterTypes.tail.head);
        this.result = jCBinary;
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        Symbol.MethodSymbol methodSymbol = this.currentMethodSym;
        if (methodSymbol == null) {
            this.currentMethodSym = new Symbol.MethodSymbol(jCBlock.flags | TagBits.HasNullTypeAnnotation, this.names.empty, null, this.currentClass);
        }
        super.visitBlock(jCBlock);
        this.currentMethodSym = methodSymbol;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        Env<AttrContext> env = this.attrEnv;
        Symbol.ClassSymbol classSymbol = this.currentClass;
        Symbol.MethodSymbol methodSymbol = this.currentMethodSym;
        Symbol.ClassSymbol classSymbol2 = jCClassDecl.sym;
        this.currentClass = classSymbol2;
        this.currentMethodSym = null;
        Env<AttrContext> remove = this.typeEnvs.remove(classSymbol2);
        this.attrEnv = remove;
        if (remove == null) {
            this.attrEnv = env;
        }
        this.classdefs.put(this.currentClass, jCClassDecl);
        this.proxies = this.proxies.dup(this.currentClass);
        List<Symbol.VarSymbol> list = this.outerThisStack;
        if ((jCClassDecl.mods.flags & 16384) != 0 && (this.types.supertype(this.currentClass.type).tsym.flags() & 16384) == 0) {
            visitEnumDef(jCClassDecl);
        }
        JCTree.JCVariableDecl outerThisDef = this.currentClass.hasOuterInstance() ? outerThisDef(jCClassDecl.pos, this.currentClass) : null;
        jCClassDecl.extending = (JCTree.JCExpression) translate((Lower) jCClassDecl.extending);
        jCClassDecl.implementing = translate(jCClassDecl.implementing);
        if (this.currentClass.isLocal()) {
            Symbol.ClassSymbol enclClass = this.currentClass.owner.enclClass();
            if (enclClass.trans_local == null) {
                enclClass.trans_local = List.nil();
            }
            enclClass.trans_local = enclClass.trans_local.prepend(this.currentClass);
        }
        List<JCTree> nil = List.nil();
        while (true) {
            List<JCTree> list2 = jCClassDecl.defs;
            if (list2 == nil) {
                break;
            }
            for (List list3 = list2; list3.nonEmpty() && list3 != nil; list3 = list3.tail) {
                JCTree jCTree = this.outermostMemberDef;
                if (jCTree == null) {
                    this.outermostMemberDef = (JCTree) list3.head;
                }
                list3.head = translate((Lower) list3.head);
                this.outermostMemberDef = jCTree;
            }
            nil = list2;
        }
        JCTree.JCModifiers jCModifiers = jCClassDecl.mods;
        long j10 = jCModifiers.flags;
        if ((4 & j10) != 0) {
            jCModifiers.flags = j10 | 1;
        }
        jCModifiers.flags &= 32273;
        jCClassDecl.name = Convert.shortName(this.currentClass.flatName());
        for (List freevarDefs = freevarDefs(jCClassDecl.pos, freevars(this.currentClass), this.currentClass); freevarDefs.nonEmpty(); freevarDefs = freevarDefs.tail) {
            jCClassDecl.defs = jCClassDecl.defs.prepend(freevarDefs.head);
            enterSynthetic(jCClassDecl.pos(), ((JCTree.JCVariableDecl) freevarDefs.head).sym, this.currentClass.members());
        }
        if (this.currentClass.hasOuterInstance()) {
            jCClassDecl.defs = jCClassDecl.defs.prepend(outerThisDef);
            enterSynthetic(jCClassDecl.pos(), outerThisDef.sym, this.currentClass.members());
        }
        this.proxies = this.proxies.leave();
        this.outerThisStack = list;
        this.translated.append(jCClassDecl);
        this.attrEnv = env;
        this.currentClass = classSymbol;
        this.currentMethodSym = methodSymbol;
        this.result = make_at(jCClassDecl.pos()).Block(4096L, List.nil());
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        JCTree.JCExpression translate = translate((Lower) jCConditional.cond, this.syms.booleanType);
        jCConditional.cond = translate;
        if (isTrue(translate)) {
            this.result = convert(translate((Lower) jCConditional.truepart, jCConditional.type), jCConditional.type);
            addPrunedInfo(translate);
        } else if (isFalse(translate)) {
            this.result = convert(translate((Lower) jCConditional.falsepart, jCConditional.type), jCConditional.type);
            addPrunedInfo(translate);
        } else {
            jCConditional.truepart = translate((Lower) jCConditional.truepart, jCConditional.type);
            jCConditional.falsepart = translate((Lower) jCConditional.falsepart, jCConditional.type);
            this.result = jCConditional;
        }
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        jCDoWhileLoop.body = (JCTree.JCStatement) translate((Lower) jCDoWhileLoop.body);
        jCDoWhileLoop.cond = translate((Lower) jCDoWhileLoop.cond, (Type) this.syms.booleanType);
        this.result = jCDoWhileLoop;
    }

    public JCTree visitEnumSwitch(JCTree.JCSwitch jCSwitch) {
        EnumMapping mapForEnum = mapForEnum(jCSwitch.pos(), jCSwitch.selector.type.tsym);
        make_at(jCSwitch.pos());
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCSwitch.pos(), this.names.ordinal, jCSwitch.selector.type, List.nil());
        TreeMaker treeMaker = this.make;
        JCTree.JCArrayAccess Indexed = treeMaker.Indexed(mapForEnum.mapVar, treeMaker.App(treeMaker.Select(jCSwitch.selector, lookupMethod)));
        ListBuffer listBuffer = new ListBuffer();
        Iterator<JCTree.JCCase> it = jCSwitch.cases.iterator();
        while (it.hasNext()) {
            JCTree.JCCase next = it.next();
            JCTree.JCExpression jCExpression = next.pat;
            if (jCExpression != null) {
                listBuffer.append(this.make.Case(mapForEnum.forConstant((Symbol.VarSymbol) TreeInfo.symbol(jCExpression)), next.stats));
            } else {
                listBuffer.append(next);
            }
        }
        JCTree.JCSwitch Switch = this.make.Switch(Indexed, listBuffer.toList());
        patchTargets(Switch, jCSwitch, Switch);
        return Switch;
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        jCForLoop.init = translate(jCForLoop.init);
        JCTree.JCExpression jCExpression = jCForLoop.cond;
        if (jCExpression != null) {
            jCForLoop.cond = translate((Lower) jCExpression, (Type) this.syms.booleanType);
        }
        jCForLoop.step = translate(jCForLoop.step);
        jCForLoop.body = (JCTree.JCStatement) translate((Lower) jCForLoop.body);
        this.result = jCForLoop;
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        if (this.types.elemtype(jCEnhancedForLoop.expr.type) == null) {
            visitIterableForeachLoop(jCEnhancedForLoop);
        } else {
            visitArrayForeachLoop(jCEnhancedForLoop);
        }
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        this.result = access(jCIdent.sym, jCIdent, this.enclOp, false);
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        JCTree.JCExpression translate = translate((Lower) jCIf.cond, this.syms.booleanType);
        jCIf.cond = translate;
        if (isTrue(translate)) {
            this.result = translate((Lower) jCIf.thenpart);
            addPrunedInfo(translate);
        } else if (!isFalse(translate)) {
            jCIf.thenpart = (JCTree.JCStatement) translate((Lower) jCIf.thenpart);
            jCIf.elsepart = (JCTree.JCStatement) translate((Lower) jCIf.elsepart);
            this.result = jCIf;
        } else {
            JCTree.JCStatement jCStatement = jCIf.elsepart;
            if (jCStatement != null) {
                this.result = translate((Lower) jCStatement);
            } else {
                this.result = this.make.Skip();
            }
            addPrunedInfo(translate);
        }
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        jCArrayAccess.indexed = (JCTree.JCExpression) translate((Lower) jCArrayAccess.indexed);
        jCArrayAccess.index = translate((Lower) jCArrayAccess.index, (Type) this.syms.intType);
        this.result = jCArrayAccess;
    }

    @Override
    public void visitLetExpr(JCTree.LetExpr letExpr) {
        letExpr.defs = translateVarDefs(letExpr.defs);
        letExpr.expr = translate((Lower) letExpr.expr, letExpr.type);
        this.result = letExpr;
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        if (jCMethodDecl.name == this.names.init && (this.currentClass.flags_field & 16384) != 0) {
            JCTree.JCVariableDecl Param = make_at(jCMethodDecl.pos()).Param(this.names.fromString(this.target.syntheticNameChar() + "enum" + this.target.syntheticNameChar() + "name"), this.syms.stringType, jCMethodDecl.sym);
            JCTree.JCModifiers jCModifiers = Param.mods;
            jCModifiers.flags = jCModifiers.flags | 4096;
            Symbol.VarSymbol varSymbol = Param.sym;
            varSymbol.flags_field = varSymbol.flags_field | 4096;
            JCTree.JCVariableDecl Param2 = this.make.Param(this.names.fromString(this.target.syntheticNameChar() + "enum" + this.target.syntheticNameChar() + "ordinal"), this.syms.intType, jCMethodDecl.sym);
            JCTree.JCModifiers jCModifiers2 = Param2.mods;
            jCModifiers2.flags = jCModifiers2.flags | 4096;
            Symbol.VarSymbol varSymbol2 = Param2.sym;
            varSymbol2.flags_field = varSymbol2.flags_field | 4096;
            Symbol.MethodSymbol methodSymbol = jCMethodDecl.sym;
            jCMethodDecl.params = jCMethodDecl.params.prepend(Param2).prepend(Param);
            List<Symbol.VarSymbol> prepend = methodSymbol.extraParams.prepend(Param2.sym);
            methodSymbol.extraParams = prepend;
            methodSymbol.extraParams = prepend.prepend(Param.sym);
            Type erasure = methodSymbol.erasure(this.types);
            methodSymbol.erasure_field = new Type.MethodType(erasure.getParameterTypes().prepend(this.syms.intType).prepend(this.syms.stringType), erasure.getReturnType(), erasure.getThrownTypes(), this.syms.methodClass);
        }
        JCTree.JCMethodDecl jCMethodDecl2 = this.currentMethodDef;
        Symbol.MethodSymbol methodSymbol2 = this.currentMethodSym;
        try {
            this.currentMethodDef = jCMethodDecl;
            this.currentMethodSym = jCMethodDecl.sym;
            visitMethodDefInternal(jCMethodDecl);
        } finally {
            this.currentMethodDef = jCMethodDecl2;
            this.currentMethodSym = methodSymbol2;
        }
    }

    @Override
    public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        Symbol.ModuleSymbol moduleSymbol = jCModuleDecl.sym;
        Symbol.ClassSymbol classSymbol = moduleSymbol.module_info;
        classSymbol.setAttributes(moduleSymbol);
        classSymbol.flags_field |= 2251799813685248L;
        createInfoClass(List.nil(), jCModuleDecl.sym.module_info);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [A, org.openjdk.tools.javac.tree.JCTree$JCExpression] */
    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        jCNewArray.elemtype = (JCTree.JCExpression) translate((Lower) jCNewArray.elemtype);
        for (List list = jCNewArray.dims; list.tail != null; list = list.tail) {
            A a10 = list.head;
            if (a10 != 0) {
                list.head = translate((Lower) a10, (Type) this.syms.intType);
            }
        }
        jCNewArray.elems = translate(jCNewArray.elems, this.types.elemtype(jCNewArray.type));
        this.result = jCNewArray;
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        JCTree.JCExpression makeThis;
        Symbol symbol = jCNewClass.constructor.owner;
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
        boolean z10 = (symbol.flags() & 16384) != 0;
        List<Type> parameterTypes = jCNewClass.constructor.type.getParameterTypes();
        if (z10) {
            parameterTypes = parameterTypes.prepend(this.syms.intType).prepend(this.syms.stringType);
        }
        jCNewClass.args = boxArgs(parameterTypes, jCNewClass.args, jCNewClass.varargsElement);
        jCNewClass.varargsElement = null;
        if (classSymbol.isLocal()) {
            jCNewClass.args = jCNewClass.args.appendList(loadFreevars(jCNewClass.pos(), freevars(classSymbol)));
        }
        Symbol accessConstructor = accessConstructor(jCNewClass.pos(), jCNewClass.constructor);
        if (accessConstructor != jCNewClass.constructor) {
            jCNewClass.args = jCNewClass.args.append(makeNull());
            jCNewClass.constructor = accessConstructor;
        }
        if (classSymbol.hasOuterInstance()) {
            JCTree.JCExpression jCExpression = jCNewClass.encl;
            if (jCExpression != null) {
                makeThis = this.attr.makeNullCheck((JCTree.JCExpression) translate((Lower) jCExpression));
                makeThis.type = jCNewClass.encl.type;
            } else {
                makeThis = classSymbol.isLocal() ? makeThis(jCNewClass.pos(), classSymbol.type.getEnclosingType().tsym) : makeOwnerThis(jCNewClass.pos(), classSymbol, false);
            }
            jCNewClass.args = jCNewClass.args.prepend(makeThis);
        }
        jCNewClass.encl = null;
        JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
        if (jCClassDecl != null) {
            translate((Lower) jCClassDecl);
            jCNewClass.clazz = access(make_at(jCNewClass.clazz.pos()).Ident(jCNewClass.def.sym));
            jCNewClass.def = null;
        } else {
            jCNewClass.clazz = access(classSymbol, jCNewClass.clazz, this.enclOp, false);
        }
        this.result = jCNewClass;
    }

    @Override
    public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
        if (needPackageInfoClass(jCPackageDecl)) {
            Symbol.PackageSymbol packageSymbol = jCPackageDecl.packge;
            Symbol.ClassSymbol classSymbol = packageSymbol.package_info;
            classSymbol.setAttributes(packageSymbol);
            classSymbol.flags_field |= 5632;
            Type.ClassType classType = (Type.ClassType) classSymbol.type;
            classType.supertype_field = this.syms.objectType;
            classType.interfaces_field = List.nil();
            createInfoClass(jCPackageDecl.annotations, classSymbol);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.openjdk.tools.javac.tree.JCTree] */
    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        ?? translate = translate((Lower) jCParens.expr);
        if (translate != jCParens.expr) {
            jCParens = translate;
        }
        this.result = jCParens;
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        JCTree.JCExpression jCExpression = jCReturn.expr;
        if (jCExpression != null) {
            jCReturn.expr = translate((Lower) jCExpression, this.types.erasure(this.currentMethodDef.restype.type));
        }
        this.result = jCReturn;
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        boolean z10 = jCFieldAccess.selected.hasTag(JCTree.Tag.SELECT) && TreeInfo.name(jCFieldAccess.selected) == this.names._super && !this.types.isDirectSuperInterface(((JCTree.JCFieldAccess) jCFieldAccess.selected).selected.type.tsym, this.currentClass);
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((Lower) jCFieldAccess.selected);
        jCFieldAccess.selected = jCExpression;
        Name name = jCFieldAccess.name;
        Names names = this.names;
        if (name == names._class) {
            this.result = classOf(jCExpression);
            return;
        }
        if (name == names._super && this.types.isDirectSuperInterface(jCExpression.type.tsym, this.currentClass)) {
            Assert.checkNonNull(this.types.asSuper(this.currentClass.type, jCFieldAccess.selected.type.tsym));
            this.result = jCFieldAccess;
            return;
        }
        Name name2 = jCFieldAccess.name;
        Names names2 = this.names;
        if (name2 == names2._this || name2 == names2._super) {
            this.result = makeThis(jCFieldAccess.pos(), jCFieldAccess.selected.type.tsym);
        } else {
            this.result = access(jCFieldAccess.sym, jCFieldAccess, this.enclOp, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JCTree visitStringSwitch(JCTree.JCSwitch jCSwitch) {
        List<JCTree.JCCase> cases = jCSwitch.getCases();
        int size = cases.size();
        if (size == 0) {
            return this.make.at(jCSwitch.pos()).Exec(this.attr.makeNullCheck(jCSwitch.getExpression()));
        }
        ListBuffer listBuffer = new ListBuffer();
        int i10 = 1;
        int i11 = size + 1;
        LinkedHashMap linkedHashMap = new LinkedHashMap(i11, 1.0f);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(i11, 1.0f);
        Iterator<JCTree.JCCase> it = cases.iterator();
        int i12 = 0;
        while (it.hasNext()) {
            JCTree.JCExpression expression = it.next().getExpression();
            if (expression != null) {
                String str = (String) expression.type.constValue();
                Assert.checkNull((Integer) linkedHashMap.put(str, Integer.valueOf(i12)));
                int hashCode = str.hashCode();
                Set set = (Set) linkedHashMap2.get(Integer.valueOf(hashCode));
                if (set == null) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(1, 1.0f);
                    linkedHashSet.add(str);
                    linkedHashMap2.put(Integer.valueOf(hashCode), linkedHashSet);
                } else {
                    Assert.check(set.add(str));
                }
            }
            i12++;
        }
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(4112L, this.names.fromString("s" + jCSwitch.pos + this.target.syntheticNameChar()), this.syms.stringType, this.currentMethodSym);
        listBuffer.append(this.make.at(jCSwitch.pos()).VarDef(varSymbol, jCSwitch.getExpression()).setType(varSymbol.type));
        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(4096L, this.names.fromString("tmp" + jCSwitch.pos + this.target.syntheticNameChar()), this.syms.intType, this.currentMethodSym);
        TreeMaker treeMaker = this.make;
        JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) treeMaker.VarDef(varSymbol2, treeMaker.Literal(TypeTag.INT, -1)).setType(varSymbol2.type);
        JCTree.JCExpression jCExpression = jCVariableDecl.init;
        Type.JCPrimitiveType jCPrimitiveType = this.syms.intType;
        varSymbol2.type = jCPrimitiveType;
        jCExpression.type = jCPrimitiveType;
        listBuffer.append(jCVariableDecl);
        ListBuffer listBuffer2 = new ListBuffer();
        JCTree.JCSwitch Switch = this.make.Switch(makeCall(this.make.Ident(varSymbol), this.names.hashCode, List.nil()).setType(this.syms.intType), listBuffer2.toList());
        Iterator it2 = linkedHashMap2.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Integer num = (Integer) entry.getKey();
            num.intValue();
            Set<String> set2 = (Set) entry.getValue();
            Assert.check(set2.size() >= i10 ? i10 : 0);
            JCTree.JCIf jCIf = null;
            for (String str2 : set2) {
                Symbol.VarSymbol varSymbol3 = varSymbol;
                JCTree.JCMethodInvocation makeCall = makeCall(this.make.Ident(varSymbol), this.names.equals, List.of(this.make.Literal(str2)));
                TreeMaker treeMaker2 = this.make;
                jCIf = treeMaker2.If(makeCall, treeMaker2.Exec(treeMaker2.Assign(treeMaker2.Ident(varSymbol2), this.make.Literal(linkedHashMap.get(str2))).setType(varSymbol2.type)), jCIf);
                varSymbol = varSymbol3;
                it2 = it2;
            }
            Symbol.VarSymbol varSymbol4 = varSymbol;
            ListBuffer listBuffer3 = new ListBuffer();
            JCTree.JCBreak Break = this.make.Break(null);
            Break.target = Switch;
            listBuffer3.append(jCIf).append(Break);
            TreeMaker treeMaker3 = this.make;
            listBuffer2.append(treeMaker3.Case(treeMaker3.Literal(num), listBuffer3.toList()));
            varSymbol = varSymbol4;
            it2 = it2;
            i10 = 1;
        }
        Switch.cases = listBuffer2.toList();
        listBuffer.append(Switch);
        ListBuffer listBuffer4 = new ListBuffer();
        TreeMaker treeMaker4 = this.make;
        JCTree.JCSwitch Switch2 = treeMaker4.Switch(treeMaker4.Ident(varSymbol2), listBuffer4.toList());
        Iterator<JCTree.JCCase> it3 = cases.iterator();
        while (it3.hasNext()) {
            JCTree.JCCase next = it3.next();
            patchTargets(next, jCSwitch, Switch2);
            listBuffer4.append(this.make.Case(next.getExpression() == null ? null : this.make.Literal(linkedHashMap.get((String) TreeInfo.skipParens(next.getExpression()).type.constValue())), next.getStatements()));
        }
        Switch2.cases = listBuffer4.toList();
        listBuffer.append(Switch2);
        return this.make.Block(0L, listBuffer.toList());
    }

    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        Type type;
        Type supertype = this.types.supertype(jCSwitch.selector.type);
        boolean z10 = false;
        boolean z11 = (supertype == null || (jCSwitch.selector.type.tsym.flags() & 16384) == 0) ? false : true;
        if (supertype != null && this.types.isSameType(jCSwitch.selector.type, this.syms.stringType)) {
            z10 = true;
        }
        if (z11) {
            type = jCSwitch.selector.type;
        } else {
            Symtab symtab = this.syms;
            type = z10 ? symtab.stringType : symtab.intType;
        }
        jCSwitch.selector = translate((Lower) jCSwitch.selector, type);
        jCSwitch.cases = translateCases(jCSwitch.cases);
        if (z11) {
            this.result = visitEnumSwitch(jCSwitch);
        } else if (z10) {
            this.result = visitStringSwitch(jCSwitch);
        } else {
            this.result = jCSwitch;
        }
    }

    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        if (jCTry.resources.nonEmpty()) {
            this.result = makeTwrTry(jCTry);
            return;
        }
        boolean nonEmpty = jCTry.body.getStatements().nonEmpty();
        boolean nonEmpty2 = jCTry.catchers.nonEmpty();
        JCTree.JCBlock jCBlock = jCTry.finalizer;
        boolean z10 = jCBlock != null && jCBlock.getStatements().nonEmpty();
        if (!nonEmpty2 && !z10) {
            this.result = translate((Lower) jCTry.body);
            return;
        }
        if (nonEmpty) {
            super.visitTry(jCTry);
        } else if (z10) {
            this.result = translate((Lower) jCTry.finalizer);
        } else {
            this.result = translate((Lower) jCTry.body);
        }
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        jCTypeCast.clazz = translate((Lower) jCTypeCast.clazz);
        if (jCTypeCast.type.isPrimitive() != jCTypeCast.expr.type.isPrimitive()) {
            jCTypeCast.expr = translate((Lower) jCTypeCast.expr, jCTypeCast.type);
        } else {
            jCTypeCast.expr = (JCTree.JCExpression) translate((Lower) jCTypeCast.expr);
        }
        this.result = jCTypeCast;
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        boolean isIncOrDecUnaryOp = jCUnary.getTag().isIncOrDecUnaryOp();
        if (isIncOrDecUnaryOp && !jCUnary.arg.type.isPrimitive()) {
            switch (AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCUnary.getTag().ordinal()]) {
                case 8:
                case 9:
                    this.result = translate((Lower) makeAssignop(jCUnary.hasTag(JCTree.Tag.PREINC) ? JCTree.Tag.PLUS_ASG : JCTree.Tag.MINUS_ASG, jCUnary.arg, this.make.Literal(1)), jCUnary.type);
                    return;
                case 10:
                case 11:
                    this.result = translate((Lower) lowerBoxedPostop(jCUnary), jCUnary.type);
                    return;
                default:
                    throw new AssertionError(jCUnary);
            }
        }
        jCUnary.arg = boxIfNeeded((JCTree.JCExpression) translate((Lower) jCUnary.arg, (JCTree.JCExpression) jCUnary), jCUnary.type);
        if (jCUnary.hasTag(JCTree.Tag.NOT) && jCUnary.arg.type.constValue() != null) {
            jCUnary.type = this.cfolder.fold1(257, jCUnary.arg.type);
        }
        if (isIncOrDecUnaryOp && jCUnary.arg.hasTag(JCTree.Tag.APPLY)) {
            this.result = jCUnary.arg;
        } else {
            this.result = jCUnary;
        }
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        Symbol.MethodSymbol methodSymbol = this.currentMethodSym;
        jCVariableDecl.mods = (JCTree.JCModifiers) translate((Lower) jCVariableDecl.mods);
        jCVariableDecl.vartype = (JCTree.JCExpression) translate((Lower) jCVariableDecl.vartype);
        if (this.currentMethodSym == null) {
            this.currentMethodSym = new Symbol.MethodSymbol((jCVariableDecl.mods.flags & 8) | TagBits.HasNullTypeAnnotation, this.names.empty, null, this.currentClass);
        }
        JCTree.JCExpression jCExpression = jCVariableDecl.init;
        if (jCExpression != null) {
            jCVariableDecl.init = translate((Lower) jCExpression, jCVariableDecl.type);
        }
        this.result = jCVariableDecl;
        this.currentMethodSym = methodSymbol;
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        jCWhileLoop.cond = translate((Lower) jCWhileLoop.cond, (Type) this.syms.booleanType);
        jCWhileLoop.body = (JCTree.JCStatement) translate((Lower) jCWhileLoop.body);
        this.result = jCWhileLoop;
    }

    public JCTree.JCExpression boxPrimitive(JCTree.JCExpression jCExpression, Type type) {
        make_at(jCExpression.pos());
        Symbol.MethodSymbol lookupMethod = lookupMethod(jCExpression.pos(), this.names.valueOf, type, List.nil().prepend(jCExpression.type));
        TreeMaker treeMaker = this.make;
        return treeMaker.App(treeMaker.QualIdent(lookupMethod), List.of(jCExpression));
    }

    public List<JCTree.JCVariableDecl> freevarDefs(int i10, List<Symbol.VarSymbol> list, Symbol symbol, long j10) {
        long j11 = j10 | 4112;
        List<JCTree.JCVariableDecl> nil = List.nil();
        for (List<Symbol.VarSymbol> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            Symbol.VarSymbol varSymbol = list2.head;
            Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(j11, proxyName(varSymbol.name), varSymbol.erasure(this.types), symbol);
            this.proxies.enter(varSymbol2);
            JCTree.JCVariableDecl VarDef = this.make.at(i10).VarDef(varSymbol2, null);
            VarDef.vartype = access(VarDef.vartype);
            nil = nil.prepend(VarDef);
        }
        return nil;
    }

    public JCTree.JCClassDecl makeEmptyClass(long j10, Symbol.ClassSymbol classSymbol, Name name, boolean z10) {
        Symbol.ClassSymbol defineClass = this.syms.defineClass(this.names.empty, classSymbol);
        if (name != null) {
            defineClass.flatname = name;
        } else {
            defineClass.flatname = this.chk.localClassName(defineClass);
        }
        defineClass.sourcefile = classSymbol.sourcefile;
        defineClass.completer = Symbol.Completer.NULL_COMPLETER;
        defineClass.members_field = Scope.WriteableScope.create(defineClass);
        defineClass.flags_field = j10;
        Type.ClassType classType = (Type.ClassType) defineClass.type;
        classType.supertype_field = this.syms.objectType;
        classType.interfaces_field = List.nil();
        JCTree.JCClassDecl classDef = classDef(classSymbol);
        enterSynthetic(classDef.pos(), defineClass, classSymbol.members());
        this.chk.putCompiled(defineClass);
        TreeMaker treeMaker = this.make;
        JCTree.JCClassDecl ClassDef = treeMaker.ClassDef(treeMaker.Modifiers(j10), this.names.empty, List.nil(), null, List.nil(), List.nil());
        ClassDef.sym = defineClass;
        ClassDef.type = defineClass.type;
        if (z10) {
            classDef.defs = classDef.defs.prepend(ClassDef);
        }
        return ClassDef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends JCTree.JCExpression> T translate(T t10, Type type) {
        if (t10 == null) {
            return null;
        }
        return (T) boxIfNeeded((JCTree.JCExpression) translate((Lower) t10), type);
    }

    public <T extends JCTree> T translate(T t10, JCTree.JCExpression jCExpression) {
        JCTree.JCExpression jCExpression2 = this.enclOp;
        this.enclOp = jCExpression;
        T t11 = (T) translate((Lower) t10);
        this.enclOp = jCExpression2;
        return t11;
    }

    public JCTree.JCVariableDecl outerThisDef(int i10, Symbol.ClassSymbol classSymbol) {
        return makeOuterThisVarDecl(i10, makeOuterThisVarSymbol(classSymbol, 4112L));
    }

    public <T extends JCTree> List<T> translate(List<T> list, JCTree.JCExpression jCExpression) {
        JCTree.JCExpression jCExpression2 = this.enclOp;
        this.enclOp = jCExpression;
        List<T> translate = translate(list);
        this.enclOp = jCExpression2;
        return translate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree$JCExpression] */
    public <T extends JCTree.JCExpression> List<T> translate(List<T> list, Type type) {
        if (list == null) {
            return null;
        }
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((Lower) list2.head, type);
        }
        return list;
    }

    public JCTree.JCExpression abstractRval(JCTree.JCExpression jCExpression, TreeBuilder treeBuilder) {
        return abstractRval(jCExpression, jCExpression.type, treeBuilder);
    }

    public JCTree.JCExpression access(JCTree.JCExpression jCExpression) {
        Symbol symbol = TreeInfo.symbol(jCExpression);
        return symbol == null ? jCExpression : access(symbol, jCExpression, null, false);
    }
}
