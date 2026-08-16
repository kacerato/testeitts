package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.CompileStates;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeTranslator;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class TransTypes extends TreeTranslator {
    private static final String statePreviousToFlowAssertMsg = "The current compile state [%s] of class %s is previous to FLOW";
    protected static final Context.Key<TransTypes> transTypesKey = new Context.Key<>();
    private final boolean allowGraphInference;
    private final boolean allowInterfaceBridges;
    private Annotate annotate;
    Map<Symbol.MethodSymbol, Pair<Symbol.MethodSymbol, Symbol.MethodSymbol>> bridgeSpans;
    private final CompileStates compileStates;
    JCTree currentMethod = null;
    private Enter enter;
    private Env<AttrContext> env;
    private Log log;
    private TreeMaker make;
    private Names names;
    private Type pt;
    private final Resolve resolve;
    private final boolean skipDuplicateBridges;
    private Symtab syms;
    private Types types;

    public TransTypes(Context context) {
        context.put((Context.Key<Context.Key<TransTypes>>) transTypesKey, (Context.Key<TransTypes>) this);
        this.compileStates = CompileStates.instance(context);
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        this.enter = Enter.instance(context);
        this.bridgeSpans = new HashMap();
        this.types = Types.instance(context);
        this.make = TreeMaker.instance(context);
        this.resolve = Resolve.instance(context);
        Source instance = Source.instance(context);
        this.allowInterfaceBridges = instance.allowDefaultMethods();
        this.allowGraphInference = instance.allowGraphInference();
        this.skipDuplicateBridges = Options.instance(context).getBoolean("skipDuplicateBridges", false);
        this.annotate = Annotate.instance(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Symbol.VarSymbol> createBridgeParams(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, Type type) {
        if (methodSymbol.params == null) {
            return null;
        }
        List<Symbol.VarSymbol> nil = List.nil();
        List list = methodSymbol.params;
        for (List list2 = ((Type.MethodType) type).argtypes; list.nonEmpty() && list2.nonEmpty(); list2 = list2.tail) {
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(((Symbol.VarSymbol) list.head).flags() | 8589938688L, ((Symbol.VarSymbol) list.head).name, (Type) list2.head, methodSymbol2);
            varSymbol.setAttributes((Symbol) list.head);
            nil = nil.append(varSymbol);
            list = list.tail;
        }
        return nil;
    }

    private Type erasure(Type type) {
        return this.types.erasure(type);
    }

    public static TransTypes instance(Context context) {
        TransTypes transTypes = (TransTypes) context.get(transTypesKey);
        return transTypes == null ? new TransTypes(context) : transTypes;
    }

    private boolean isBridgeNeeded(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, Type type) {
        if (methodSymbol2 == methodSymbol) {
            if ((methodSymbol.flags() & 1024) != 0) {
                return false;
            }
            return !isSameMemberWhenErased(type, methodSymbol, methodSymbol.erasure(this.types));
        }
        if (skipBridge(methodSymbol, methodSymbol2, type)) {
            return false;
        }
        if (!isSameMemberWhenErased(type, methodSymbol, methodSymbol.erasure(this.types))) {
            return true;
        }
        if (isSameMemberWhenErased(type, methodSymbol2, methodSymbol2.erasure(this.types))) {
            return !this.types.isSameType(r7, r0);
        }
        return true;
    }

    private boolean isSameMemberWhenErased(Type type, Symbol.MethodSymbol methodSymbol, Type type2) {
        Types types = this.types;
        return types.isSameType(erasure(types.memberType(type, methodSymbol)), type2);
    }

    private boolean skipBridge(Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, Type type) {
        if (!this.skipDuplicateBridges) {
            return false;
        }
        Symbol.TypeSymbol typeSymbol = type.tsym;
        Symbol symbol = methodSymbol2.owner;
        if (typeSymbol == symbol) {
            return false;
        }
        Types types = this.types;
        return types.isSubtype(types.erasure(symbol.type), this.types.erasure(methodSymbol.owner.type)) && methodSymbol2.overrides(methodSymbol, (Symbol.TypeSymbol) methodSymbol2.owner, this.types, true);
    }

    public void addBridge(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, Symbol.ClassSymbol classSymbol, boolean z10, ListBuffer<JCTree> listBuffer) {
        this.make.at(diagnosticPosition);
        Type erasure = erasure(this.types.memberType(classSymbol.type, methodSymbol));
        Type erasure2 = methodSymbol.erasure(this.types);
        long flags = (methodSymbol2.flags() & 7) | 2147487744L | (classSymbol.isInterface() ? 8796093022208L : 0L);
        if (z10) {
            flags |= 137438953472L;
        }
        Symbol.MethodSymbol methodSymbol3 = new Symbol.MethodSymbol(flags, methodSymbol.name, erasure2, classSymbol);
        methodSymbol3.params = createBridgeParams(methodSymbol2, methodSymbol3, erasure2);
        methodSymbol3.setAttributes(methodSymbol2);
        if (!z10) {
            JCTree.JCMethodDecl MethodDef = this.make.MethodDef(methodSymbol3, null);
            JCTree.JCExpression This = methodSymbol2.owner == classSymbol ? this.make.This(classSymbol.erasure(this.types)) : this.make.Super(this.types.supertype(classSymbol.type).tsym.erasure(this.types), classSymbol);
            Type erasure3 = erasure(methodSymbol2.type.getReturnType());
            TreeMaker treeMaker = this.make;
            JCTree.JCMethodInvocation type = treeMaker.Apply(null, treeMaker.Select(This, methodSymbol2).setType(erasure3), translateArgs(this.make.Idents(MethodDef.params), erasure.getParameterTypes(), null)).setType(erasure3);
            MethodDef.body = this.make.Block(0L, List.of(erasure.getReturnType().hasTag(TypeTag.VOID) ? this.make.Exec(type) : this.make.Return(coerce(type, erasure2.getReturnType()))));
            listBuffer.append(MethodDef);
        }
        classSymbol.members().enter(methodSymbol3);
        this.bridgeSpans.put(methodSymbol3, new Pair<>(methodSymbol, methodSymbol2));
    }

    public void addBridgeIfNeeded(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Symbol.ClassSymbol classSymbol, ListBuffer<JCTree> listBuffer) {
        if (symbol.kind == Kinds.Kind.MTH && symbol.name != this.names.init && (symbol.flags() & 10) == 0 && (symbol.flags() & 4096) != 4096 && symbol.isMemberOf(classSymbol, this.types)) {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) symbol;
            Symbol.MethodSymbol binaryImplementation = methodSymbol.binaryImplementation(classSymbol, this.types);
            Symbol.MethodSymbol implementation = methodSymbol.implementation(classSymbol, this.types, true);
            if (binaryImplementation == null || binaryImplementation == methodSymbol || !(implementation == null || binaryImplementation.owner.isSubClass(implementation.owner, this.types))) {
                if (implementation != null && isBridgeNeeded(methodSymbol, implementation, classSymbol.type)) {
                    addBridge(diagnosticPosition, methodSymbol, implementation, classSymbol, binaryImplementation == implementation, listBuffer);
                    return;
                }
                if (implementation == methodSymbol && implementation.owner != classSymbol && (implementation.flags() & 16) == 0 && (methodSymbol.flags() & Flags.AnnotationTypeElementMask) == 1 && (classSymbol.flags() & 1) > (1 & implementation.owner.flags())) {
                    addBridge(diagnosticPosition, methodSymbol, implementation, classSymbol, false, listBuffer);
                    return;
                }
                return;
            }
            if ((binaryImplementation.flags() & 4096) != 4096) {
                if (binaryImplementation.overrides(methodSymbol, classSymbol, this.types, true)) {
                    return;
                }
                Symbol symbol2 = binaryImplementation.owner;
                if (symbol2 == classSymbol || this.types.asSuper(symbol2.type, methodSymbol.owner) == null) {
                    this.log.error(diagnosticPosition, "name.clash.same.erasure.no.override", binaryImplementation, binaryImplementation.location(classSymbol.type, this.types), methodSymbol, methodSymbol.location(classSymbol.type, this.types));
                    return;
                }
                return;
            }
            Pair<Symbol.MethodSymbol, Symbol.MethodSymbol> pair = this.bridgeSpans.get(binaryImplementation);
            Symbol.MethodSymbol methodSymbol2 = pair == null ? null : pair.fst;
            if (methodSymbol2 == null || methodSymbol2 == methodSymbol) {
                return;
            }
            if (implementation == null || !implementation.overrides(methodSymbol2, classSymbol, this.types, true)) {
                Symbol.MethodSymbol methodSymbol3 = pair == null ? null : pair.snd;
                if (methodSymbol3 == null || !methodSymbol3.overrides(methodSymbol, classSymbol, this.types, true, false)) {
                    this.log.error(diagnosticPosition, "name.clash.same.erasure.no.override", methodSymbol2, methodSymbol2.location(classSymbol.type, this.types), methodSymbol, methodSymbol.location(classSymbol.type, this.types));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addBridges(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol, Symbol.ClassSymbol classSymbol, ListBuffer<JCTree> listBuffer) {
        Iterator<Symbol> it = typeSymbol.members().getSymbols(Scope.LookupKind.NON_RECURSIVE).iterator();
        while (it.hasNext()) {
            addBridgeIfNeeded(diagnosticPosition, it.next(), classSymbol, listBuffer);
        }
        for (List interfaces = this.types.interfaces(typeSymbol.type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            addBridges(diagnosticPosition, ((Type) interfaces.head).tsym, classSymbol, listBuffer);
        }
    }

    public JCTree.JCExpression cast(JCTree.JCExpression jCExpression, Type type) {
        TreeMaker treeMaker = this.make;
        int i10 = treeMaker.pos;
        treeMaker.at(jCExpression.pos);
        if (!this.types.isSameType(jCExpression.type, type)) {
            if (!this.resolve.isAccessible(this.env, type.tsym)) {
                this.resolve.logAccessErrorInternal(this.env, jCExpression, type);
            }
            TreeMaker treeMaker2 = this.make;
            jCExpression = treeMaker2.TypeCast(treeMaker2.Type(type), jCExpression).setType(type);
        }
        this.make.pos = i10;
        return jCExpression;
    }

    public JCTree.JCExpression coerce(Env<AttrContext> env, JCTree.JCExpression jCExpression, Type type) {
        Env<AttrContext> env2 = this.env;
        try {
            this.env = env;
            return coerce(jCExpression, type);
        } finally {
            this.env = env2;
        }
    }

    public JCTree.JCExpression retype(JCTree.JCExpression jCExpression, Type type, Type type2) {
        if (type.isPrimitive()) {
            return jCExpression;
        }
        if (type2 != null && type2.isPrimitive()) {
            type2 = erasure(jCExpression.type);
        }
        jCExpression.type = type;
        return type2 != null ? coerce(jCExpression, type2) : jCExpression;
    }

    public <T extends JCTree> T translate(T t10, Type type) {
        Type type2 = this.pt;
        try {
            this.pt = type;
            return (T) translate((TransTypes) t10);
        } finally {
            this.pt = type2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    /* JADX WARN: Type inference failed for: r5v4, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    /* JADX WARN: Type inference failed for: r5v8, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public <T extends JCTree> List<T> translateArgs(List<T> list, List<Type> list2, Type type) {
        if (list2.isEmpty()) {
            return list;
        }
        List list3 = list;
        List<Type> list4 = list2;
        while (list4.tail.nonEmpty()) {
            list3.head = translate((TransTypes) list3.head, list4.head);
            list3 = list3.tail;
            list4 = list4.tail;
        }
        Type type2 = list4.head;
        boolean z10 = true;
        if (type == null && list3.length() != 1) {
            z10 = false;
        }
        Assert.check(z10);
        if (type != null) {
            while (list3.nonEmpty()) {
                list3.head = translate((TransTypes) list3.head, type);
                list3 = list3.tail;
            }
        } else {
            list3.head = translate((TransTypes) list3.head, type2);
        }
        return list;
    }

    public void translateClass(Symbol.ClassSymbol classSymbol) {
        Type supertype = this.types.supertype(classSymbol.type);
        if (supertype.hasTag(TypeTag.CLASS)) {
            translateClass((Symbol.ClassSymbol) supertype.tsym);
        }
        Env<AttrContext> env = this.enter.getEnv(classSymbol);
        if (env != null) {
            long j10 = classSymbol.flags_field;
            if ((j10 & 1125899906842624L) != 0) {
                return;
            }
            classSymbol.flags_field = j10 | 1125899906842624L;
            boolean z10 = this.compileStates.get(env) != null;
            if (!z10 && classSymbol.outermostClass() == classSymbol) {
                Assert.error("No info for outermost class: " + ((Object) env.enclClass.sym));
            }
            if (z10 && CompileStates.CompileState.FLOW.isAfter(this.compileStates.get(env))) {
                Assert.error(String.format(statePreviousToFlowAssertMsg, this.compileStates.get(env), env.enclClass.sym));
            }
            Env<AttrContext> env2 = this.env;
            try {
                this.env = env;
                TreeMaker treeMaker = this.make;
                Type type = this.pt;
                this.make = treeMaker.forToplevel(env.toplevel);
                this.pt = null;
                try {
                    JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) this.env.tree;
                    jCClassDecl.typarams = List.nil();
                    super.visitClassDef(jCClassDecl);
                    this.make.at(jCClassDecl.pos);
                    ListBuffer<JCTree> listBuffer = new ListBuffer<>();
                    if (!this.allowInterfaceBridges) {
                        if ((jCClassDecl.sym.flags() & 512) == 0) {
                        }
                        jCClassDecl.defs = listBuffer.toList().prependList(jCClassDecl.defs);
                        jCClassDecl.type = erasure(jCClassDecl.type);
                        this.make = treeMaker;
                        this.pt = type;
                    }
                    addBridges(jCClassDecl.pos(), classSymbol, listBuffer);
                    jCClassDecl.defs = listBuffer.toList().prependList(jCClassDecl.defs);
                    jCClassDecl.type = erasure(jCClassDecl.type);
                    this.make = treeMaker;
                    this.pt = type;
                } catch (Throwable th2) {
                    this.make = treeMaker;
                    this.pt = type;
                    throw th2;
                }
            } finally {
                this.env = env2;
            }
        }
    }

    public JCTree translateTopLevelClass(JCTree jCTree, TreeMaker treeMaker) {
        this.make = treeMaker;
        this.pt = null;
        return translate((TransTypes) jCTree, (Type) null);
    }

    @Override
    public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
        List<Attribute.TypeCompound> fromAnnotations = this.annotate.fromAnnotations(jCAnnotatedType.annotations);
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((TransTypes) jCAnnotatedType.underlyingType);
        jCAnnotatedType.underlyingType = jCExpression;
        jCAnnotatedType.type = jCExpression.type.annotatedType(fromAnnotations);
        this.result = jCAnnotatedType;
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        this.result = jCAnnotation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((TransTypes) jCMethodInvocation.meth, (Type) null);
        jCMethodInvocation.meth = jCExpression;
        Symbol symbol = TreeInfo.symbol(jCExpression);
        Type erasure = symbol.erasure(this.types);
        List parameterTypes = (!this.allowGraphInference || this.types.isSignaturePolymorphic((Symbol.MethodSymbol) symbol.baseSymbol())) ? erasure.getParameterTypes() : jCMethodInvocation.meth.type.getParameterTypes();
        if (symbol.name == this.names.init && symbol.owner == this.syms.enumSym) {
            parameterTypes = parameterTypes.tail.tail;
        }
        Type type = jCMethodInvocation.varargsElement;
        if (type != null) {
            jCMethodInvocation.varargsElement = this.types.erasure(type);
        } else if (jCMethodInvocation.args.length() != parameterTypes.length()) {
            this.log.error(jCMethodInvocation.pos(), "method.invoked.with.incorrect.number.arguments", Integer.valueOf(jCMethodInvocation.args.length()), Integer.valueOf(parameterTypes.length()));
        }
        jCMethodInvocation.args = translateArgs(jCMethodInvocation.args, parameterTypes, jCMethodInvocation.varargsElement);
        jCMethodInvocation.type = this.types.erasure(jCMethodInvocation.type);
        this.result = retype(jCMethodInvocation, erasure.getReturnType(), this.pt);
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        jCAssert.cond = (JCTree.JCExpression) translate((TransTypes) jCAssert.cond, (Type) this.syms.booleanType);
        JCTree.JCExpression jCExpression = jCAssert.detail;
        if (jCExpression != null) {
            jCAssert.detail = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type));
        }
        this.result = jCAssert;
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((TransTypes) jCAssign.lhs, (Type) null);
        jCAssign.lhs = jCExpression;
        jCAssign.rhs = (JCTree.JCExpression) translate((TransTypes) jCAssign.rhs, erasure(jCExpression.type));
        Type erasure = erasure(jCAssign.lhs.type);
        jCAssign.type = erasure;
        this.result = retype(jCAssign, erasure, this.pt);
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        jCAssignOp.lhs = (JCTree.JCExpression) translate((TransTypes) jCAssignOp.lhs, (Type) null);
        jCAssignOp.rhs = (JCTree.JCExpression) translate((TransTypes) jCAssignOp.rhs, jCAssignOp.operator.type.getParameterTypes().tail.head);
        jCAssignOp.type = erasure(jCAssignOp.type);
        this.result = jCAssignOp;
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        jCBinary.lhs = (JCTree.JCExpression) translate((TransTypes) jCBinary.lhs, jCBinary.operator.type.getParameterTypes().head);
        jCBinary.rhs = (JCTree.JCExpression) translate((TransTypes) jCBinary.rhs, jCBinary.operator.type.getParameterTypes().tail.head);
        this.result = jCBinary;
    }

    @Override
    public void visitCase(JCTree.JCCase jCCase) {
        jCCase.pat = (JCTree.JCExpression) translate((TransTypes) jCCase.pat, (Type) null);
        jCCase.stats = translate(jCCase.stats);
        this.result = jCCase;
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        translateClass(jCClassDecl.sym);
        this.result = jCClassDecl;
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        jCConditional.cond = (JCTree.JCExpression) translate((TransTypes) jCConditional.cond, (Type) this.syms.booleanType);
        jCConditional.truepart = (JCTree.JCExpression) translate((TransTypes) jCConditional.truepart, erasure(jCConditional.type));
        jCConditional.falsepart = (JCTree.JCExpression) translate((TransTypes) jCConditional.falsepart, erasure(jCConditional.type));
        Type erasure = erasure(jCConditional.type);
        jCConditional.type = erasure;
        this.result = retype(jCConditional, erasure, this.pt);
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        jCDoWhileLoop.body = (JCTree.JCStatement) translate((TransTypes) jCDoWhileLoop.body);
        jCDoWhileLoop.cond = (JCTree.JCExpression) translate((TransTypes) jCDoWhileLoop.cond, (Type) this.syms.booleanType);
        this.result = jCDoWhileLoop;
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        jCExpressionStatement.expr = (JCTree.JCExpression) translate((TransTypes) jCExpressionStatement.expr, (Type) null);
        this.result = jCExpressionStatement;
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        jCForLoop.init = translate(jCForLoop.init, (Type) null);
        JCTree.JCExpression jCExpression = jCForLoop.cond;
        if (jCExpression != null) {
            jCForLoop.cond = (JCTree.JCExpression) translate((TransTypes) jCExpression, (Type) this.syms.booleanType);
        }
        jCForLoop.step = translate(jCForLoop.step, (Type) null);
        jCForLoop.body = (JCTree.JCStatement) translate((TransTypes) jCForLoop.body);
        this.result = jCForLoop;
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        jCEnhancedForLoop.var = (JCTree.JCVariableDecl) translate((TransTypes) jCEnhancedForLoop.var, (Type) null);
        JCTree.JCExpression jCExpression = jCEnhancedForLoop.expr;
        Type type = jCExpression.type;
        JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(type));
        jCEnhancedForLoop.expr = jCExpression2;
        if (this.types.elemtype(jCExpression2.type) == null) {
            jCEnhancedForLoop.expr.type = type;
        }
        jCEnhancedForLoop.body = (JCTree.JCStatement) translate((TransTypes) jCEnhancedForLoop.body);
        this.result = jCEnhancedForLoop;
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        Type erasure = jCIdent.sym.erasure(this.types);
        Symbol symbol = jCIdent.sym;
        if (symbol.kind == Kinds.Kind.TYP && symbol.type.hasTag(TypeTag.TYPEVAR)) {
            this.result = this.make.at(jCIdent.pos).Type(erasure);
            return;
        }
        if (jCIdent.type.constValue() != null) {
            this.result = jCIdent;
        } else if (jCIdent.sym.kind == Kinds.Kind.VAR) {
            this.result = retype(jCIdent, erasure, this.pt);
        } else {
            jCIdent.type = erasure(jCIdent.type);
            this.result = jCIdent;
        }
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        jCIf.cond = (JCTree.JCExpression) translate((TransTypes) jCIf.cond, (Type) this.syms.booleanType);
        jCIf.thenpart = (JCTree.JCStatement) translate((TransTypes) jCIf.thenpart);
        jCIf.elsepart = (JCTree.JCStatement) translate((TransTypes) jCIf.elsepart);
        this.result = jCIf;
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        JCTree.JCExpression jCExpression = jCArrayAccess.indexed;
        jCArrayAccess.indexed = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type));
        jCArrayAccess.index = (JCTree.JCExpression) translate((TransTypes) jCArrayAccess.index, (Type) this.syms.intType);
        this.result = retype(jCArrayAccess, this.types.elemtype(jCArrayAccess.indexed.type), this.pt);
    }

    @Override
    public void visitLambda(JCTree.JCLambda jCLambda) {
        JCTree jCTree = this.currentMethod;
        Type type = null;
        try {
            this.currentMethod = null;
            jCLambda.params = translate(jCLambda.params);
            JCTree jCTree2 = jCLambda.body;
            Type type2 = jCTree2.type;
            if (type2 != null) {
                type = erasure(type2);
            }
            jCLambda.body = translate((TransTypes) jCTree2, type);
            jCLambda.type = erasure(jCLambda.type);
            this.result = jCLambda;
        } finally {
            this.currentMethod = jCTree;
        }
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        JCTree jCTree = this.currentMethod;
        try {
            this.currentMethod = jCMethodDecl;
            jCMethodDecl.restype = (JCTree.JCExpression) translate((TransTypes) jCMethodDecl.restype, (Type) null);
            jCMethodDecl.typarams = List.nil();
            jCMethodDecl.params = translateVarDefs(jCMethodDecl.params);
            jCMethodDecl.recvparam = (JCTree.JCVariableDecl) translate((TransTypes) jCMethodDecl.recvparam, (Type) null);
            jCMethodDecl.thrown = translate(jCMethodDecl.thrown, (Type) null);
            jCMethodDecl.body = (JCTree.JCBlock) translate((TransTypes) jCMethodDecl.body, jCMethodDecl.sym.erasure(this.types).getReturnType());
            jCMethodDecl.type = erasure(jCMethodDecl.type);
            this.result = jCMethodDecl;
            this.currentMethod = jCTree;
            for (Symbol symbol : jCMethodDecl.sym.owner.members().getSymbolsByName(jCMethodDecl.name)) {
                if (symbol != jCMethodDecl.sym && this.types.isSameType(erasure(symbol.type), jCMethodDecl.type)) {
                    this.log.error(jCMethodDecl.pos(), "name.clash.same.erasure", jCMethodDecl.sym, symbol);
                    return;
                }
            }
        } catch (Throwable th2) {
            this.currentMethod = jCTree;
            throw th2;
        }
    }

    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        jCNewArray.elemtype = (JCTree.JCExpression) translate((TransTypes) jCNewArray.elemtype, (Type) null);
        translate(jCNewArray.dims, this.syms.intType);
        Type type = jCNewArray.type;
        if (type != null) {
            jCNewArray.elems = translate(jCNewArray.elems, erasure(this.types.elemtype(type)));
            jCNewArray.type = erasure(jCNewArray.type);
        } else {
            jCNewArray.elems = translate(jCNewArray.elems, (Type) null);
        }
        this.result = jCNewArray;
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        JCTree.JCExpression jCExpression = jCNewClass.encl;
        if (jCExpression != null) {
            jCNewClass.encl = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type));
        }
        Type type = jCNewClass.constructorType;
        Type erasure = type != null ? erasure(type) : null;
        List<Type> parameterTypes = (erasure == null || !this.allowGraphInference) ? jCNewClass.constructor.erasure(this.types).getParameterTypes() : erasure.getParameterTypes();
        jCNewClass.clazz = (JCTree.JCExpression) translate((TransTypes) jCNewClass.clazz, (Type) null);
        Type type2 = jCNewClass.varargsElement;
        if (type2 != null) {
            jCNewClass.varargsElement = this.types.erasure(type2);
        }
        jCNewClass.args = translateArgs(jCNewClass.args, parameterTypes, jCNewClass.varargsElement);
        jCNewClass.def = (JCTree.JCClassDecl) translate((TransTypes) jCNewClass.def, (Type) null);
        if (erasure != null) {
            jCNewClass.constructorType = erasure;
        }
        jCNewClass.type = erasure(jCNewClass.type);
        this.result = jCNewClass;
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((TransTypes) jCParens.expr, this.pt);
        jCParens.expr = jCExpression;
        jCParens.type = erasure(jCExpression.type);
        this.result = jCParens;
    }

    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        Type skipTypeVars = this.types.skipTypeVars(jCMemberReference.expr.type, false);
        if (skipTypeVars.isCompound()) {
            skipTypeVars = jCMemberReference.sym.owner.type;
        }
        Type erasure = erasure(skipTypeVars);
        if (jCMemberReference.kind == JCTree.JCMemberReference.ReferenceKind.UNBOUND) {
            jCMemberReference.expr = this.make.Type(erasure);
        } else {
            jCMemberReference.expr = (JCTree.JCExpression) translate((TransTypes) jCMemberReference.expr, erasure);
        }
        jCMemberReference.type = erasure(jCMemberReference.type);
        Type type = jCMemberReference.varargsElement;
        if (type != null) {
            jCMemberReference.varargsElement = erasure(type);
        }
        this.result = jCMemberReference;
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        JCTree.JCExpression jCExpression = jCReturn.expr;
        JCTree jCTree = this.currentMethod;
        jCReturn.expr = (JCTree.JCExpression) translate((TransTypes) jCExpression, jCTree != null ? this.types.erasure(jCTree.type).getReturnType() : null);
        this.result = jCReturn;
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        Type skipTypeVars = this.types.skipTypeVars(jCFieldAccess.selected.type, false);
        if (skipTypeVars.isCompound()) {
            JCTree.JCExpression jCExpression = jCFieldAccess.selected;
            jCFieldAccess.selected = coerce((JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type)), erasure(jCFieldAccess.sym.owner.type));
        } else {
            jCFieldAccess.selected = (JCTree.JCExpression) translate((TransTypes) jCFieldAccess.selected, erasure(skipTypeVars));
        }
        if (jCFieldAccess.type.constValue() != null) {
            this.result = jCFieldAccess;
            return;
        }
        Symbol symbol = jCFieldAccess.sym;
        if (symbol.kind == Kinds.Kind.VAR) {
            this.result = retype(jCFieldAccess, symbol.erasure(this.types), this.pt);
        } else {
            jCFieldAccess.type = erasure(jCFieldAccess.type);
            this.result = jCFieldAccess;
        }
    }

    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        Type supertype = this.types.supertype(jCSwitch.selector.type);
        jCSwitch.selector = (JCTree.JCExpression) translate((TransTypes) jCSwitch.selector, (supertype == null || supertype.tsym != this.syms.enumSym) ? this.syms.intType : erasure(jCSwitch.selector.type));
        jCSwitch.cases = translateCases(jCSwitch.cases);
        this.result = jCSwitch;
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        JCTree.JCExpression jCExpression = jCSynchronized.lock;
        jCSynchronized.lock = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type));
        jCSynchronized.body = (JCTree.JCBlock) translate((TransTypes) jCSynchronized.body);
        this.result = jCSynchronized;
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        JCTree.JCExpression jCExpression = jCThrow.expr;
        jCThrow.expr = (JCTree.JCExpression) translate((TransTypes) jCExpression, erasure(jCExpression.type));
        this.result = jCThrow;
    }

    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        jCTry.resources = translate(jCTry.resources, this.syms.autoCloseableType);
        jCTry.body = (JCTree.JCBlock) translate((TransTypes) jCTry.body);
        jCTry.catchers = translateCatchers(jCTry.catchers);
        jCTry.finalizer = (JCTree.JCBlock) translate((TransTypes) jCTry.finalizer);
        this.result = jCTry;
    }

    @Override
    public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
        this.result = translate((TransTypes) jCTypeApply.clazz, (Type) null);
    }

    @Override
    public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
        jCArrayTypeTree.elemtype = (JCTree.JCExpression) translate((TransTypes) jCArrayTypeTree.elemtype, (Type) null);
        jCArrayTypeTree.type = erasure(jCArrayTypeTree.type);
        this.result = jCArrayTypeTree;
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        jCTypeCast.clazz = translate((TransTypes) jCTypeCast.clazz, (Type) null);
        Type type = jCTypeCast.type;
        Type erasure = erasure(type);
        jCTypeCast.type = erasure;
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) translate((TransTypes) jCTypeCast.expr, erasure);
        if (jCExpression != jCTypeCast.expr) {
            JCTree.JCTypeCast jCTypeCast2 = jCExpression.hasTag(JCTree.Tag.TYPECAST) ? (JCTree.JCTypeCast) jCExpression : null;
            if (jCTypeCast2 != null && this.types.isSameType(jCTypeCast2.type, type, true)) {
                jCExpression = jCTypeCast2.expr;
            }
            jCTypeCast.expr = jCExpression;
        }
        if (type.isIntersection()) {
            Iterator<Type> it = ((Type.IntersectionClassType) type).getExplicitComponents().iterator();
            while (it.hasNext()) {
                Type erasure2 = erasure(it.next());
                if (!this.types.isSameType(erasure2, jCTypeCast.type)) {
                    jCTypeCast.expr = coerce(jCTypeCast.expr, erasure2);
                }
            }
        }
        this.result = jCTypeCast;
    }

    @Override
    public void visitTypeIntersection(JCTree.JCTypeIntersection jCTypeIntersection) {
        jCTypeIntersection.bounds = translate(jCTypeIntersection.bounds, (Type) null);
        jCTypeIntersection.type = erasure(jCTypeIntersection.type);
        this.result = jCTypeIntersection;
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        jCInstanceOf.expr = (JCTree.JCExpression) translate((TransTypes) jCInstanceOf.expr, (Type) null);
        jCInstanceOf.clazz = translate((TransTypes) jCInstanceOf.clazz, (Type) null);
        this.result = jCInstanceOf;
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        jCUnary.arg = (JCTree.JCExpression) translate((TransTypes) jCUnary.arg, jCUnary.getTag() == JCTree.Tag.NULLCHK ? jCUnary.type : jCUnary.operator.type.getParameterTypes().head);
        this.result = jCUnary;
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        jCVariableDecl.vartype = (JCTree.JCExpression) translate((TransTypes) jCVariableDecl.vartype, (Type) null);
        jCVariableDecl.init = (JCTree.JCExpression) translate((TransTypes) jCVariableDecl.init, jCVariableDecl.sym.erasure(this.types));
        jCVariableDecl.type = erasure(jCVariableDecl.type);
        this.result = jCVariableDecl;
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        jCWhileLoop.cond = (JCTree.JCExpression) translate((TransTypes) jCWhileLoop.cond, (Type) this.syms.booleanType);
        jCWhileLoop.body = (JCTree.JCStatement) translate((TransTypes) jCWhileLoop.body);
        this.result = jCWhileLoop;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addBridges(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol, ListBuffer<JCTree> listBuffer) {
        Type supertype = this.types.supertype(classSymbol.type);
        while (supertype.hasTag(TypeTag.CLASS)) {
            addBridges(diagnosticPosition, supertype.tsym, classSymbol, listBuffer);
            supertype = this.types.supertype(supertype);
        }
        for (List interfaces = this.types.interfaces(classSymbol.type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            addBridges(diagnosticPosition, ((Type) interfaces.head).tsym, classSymbol, listBuffer);
        }
    }

    public JCTree.JCExpression coerce(JCTree.JCExpression jCExpression, Type type) {
        Type baseType = type.baseType();
        if (jCExpression.type.isPrimitive() != type.isPrimitive()) {
            return jCExpression;
        }
        Types types = this.types;
        return types.isAssignable(jCExpression.type, baseType, types.noWarnings) ? jCExpression : cast(jCExpression, baseType);
    }

    public <T extends JCTree> List<T> translate(List<T> list, Type type) {
        Type type2 = this.pt;
        try {
            this.pt = type;
            return translate(list);
        } finally {
            this.pt = type2;
        }
    }

    public <T extends JCTree> List<T> translateArgs(List<T> list, List<Type> list2, Type type, Env<AttrContext> env) {
        Env<AttrContext> env2 = this.env;
        try {
            this.env = env;
            return translateArgs(list, list2, type);
        } finally {
            this.env = env2;
        }
    }
}
