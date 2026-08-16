package org.openjdk.tools.javac.tree;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.function.Supplier;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Pair;

public class TreeMaker implements JCTree.Factory {
    protected static final Context.Key<TreeMaker> treeMakerKey = new Context.Key<>();
    AnnotationBuilder annotationBuilder = new AnnotationBuilder();
    Names names;
    public int pos;
    Symtab syms;
    public JCTree.JCCompilationUnit toplevel;
    Types types;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.TYPEVAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.WILDCARD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ERROR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr2 = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr2;
            try {
                iArr2[TypeKind.UNION.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INTERSECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public TreeMaker(Context context) {
        this.pos = -1;
        context.put((Context.Key<Context.Key<TreeMaker>>) treeMakerKey, (Context.Key<TreeMaker>) this);
        this.pos = -1;
        this.toplevel = null;
        this.names = Names.instance(context);
        this.syms = Symtab.instance(context);
        this.types = Types.instance(context);
    }

    public static TreeMaker instance(Context context) {
        TreeMaker treeMaker = (TreeMaker) context.get(treeMakerKey);
        return treeMaker == null ? new TreeMaker(context) : treeMaker;
    }

    public static String lambda$TopLevel$0(JCTree jCTree) {
        return jCTree.getClass().getSimpleName();
    }

    public JCTree.JCAnnotatedType AnnotatedType(List<JCTree.JCAnnotation> list, JCTree.JCExpression jCExpression) {
        JCTree.JCAnnotatedType jCAnnotatedType = new JCTree.JCAnnotatedType(list, jCExpression);
        jCAnnotatedType.pos = this.pos;
        return jCAnnotatedType;
    }

    @Override
    public JCTree.JCAnnotation Annotation(JCTree jCTree, List<JCTree.JCExpression> list) {
        JCTree.JCAnnotation jCAnnotation = new JCTree.JCAnnotation(JCTree.Tag.ANNOTATION, jCTree, list);
        jCAnnotation.pos = this.pos;
        return jCAnnotation;
    }

    public List<JCTree.JCAnnotation> Annotations(List<Attribute.Compound> list) {
        if (list == null) {
            return List.nil();
        }
        ListBuffer listBuffer = new ListBuffer();
        for (List<Attribute.Compound> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(Annotation(list2.head));
        }
        return listBuffer.toList();
    }

    public JCTree.JCClassDecl AnonymousClassDef(JCTree.JCModifiers jCModifiers, List<JCTree> list) {
        return ClassDef(jCModifiers, this.names.empty, List.nil(), null, List.nil(), list);
    }

    public JCTree.JCMethodInvocation App(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        return Apply(null, jCExpression, list).setType(jCExpression.type.getReturnType());
    }

    @Override
    public JCTree.JCMethodInvocation Apply(List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list2) {
        JCTree.JCMethodInvocation jCMethodInvocation = new JCTree.JCMethodInvocation(list, jCExpression, list2);
        jCMethodInvocation.pos = this.pos;
        return jCMethodInvocation;
    }

    @Override
    public JCTree.JCAssert Assert(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCAssert jCAssert = new JCTree.JCAssert(jCExpression, jCExpression2);
        jCAssert.pos = this.pos;
        return jCAssert;
    }

    @Override
    public JCTree.JCAssign Assign(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCAssign jCAssign = new JCTree.JCAssign(jCExpression, jCExpression2);
        jCAssign.pos = this.pos;
        return jCAssign;
    }

    public JCTree.JCStatement Assignment(Symbol symbol, JCTree.JCExpression jCExpression) {
        return Exec(Assign(Ident(symbol), jCExpression).setType(symbol.type));
    }

    @Override
    public JCTree.JCAssignOp Assignop(JCTree.Tag tag, JCTree jCTree, JCTree jCTree2) {
        JCTree.JCAssignOp jCAssignOp = new JCTree.JCAssignOp(tag, jCTree, jCTree2, null);
        jCAssignOp.pos = this.pos;
        return jCAssignOp;
    }

    @Override
    public JCTree.JCBinary Binary(JCTree.Tag tag, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCBinary jCBinary = new JCTree.JCBinary(tag, jCExpression, jCExpression2, null);
        jCBinary.pos = this.pos;
        return jCBinary;
    }

    @Override
    public JCTree.JCBlock Block(long j10, List<JCTree.JCStatement> list) {
        JCTree.JCBlock jCBlock = new JCTree.JCBlock(j10, list);
        jCBlock.pos = this.pos;
        return jCBlock;
    }

    @Override
    public JCTree.JCBreak Break(Name name) {
        JCTree.JCBreak jCBreak = new JCTree.JCBreak(name, null);
        jCBreak.pos = this.pos;
        return jCBreak;
    }

    public JCTree.JCStatement Call(JCTree.JCExpression jCExpression) {
        return jCExpression.type.hasTag(TypeTag.VOID) ? Exec(jCExpression) : Return(jCExpression);
    }

    @Override
    public JCTree.JCCase Case(JCTree.JCExpression jCExpression, List<JCTree.JCStatement> list) {
        JCTree.JCCase jCCase = new JCTree.JCCase(jCExpression, list);
        jCCase.pos = this.pos;
        return jCCase;
    }

    @Override
    public JCTree.JCCatch Catch(JCTree.JCVariableDecl jCVariableDecl, JCTree.JCBlock jCBlock) {
        JCTree.JCCatch jCCatch = new JCTree.JCCatch(jCVariableDecl, jCBlock);
        jCCatch.pos = this.pos;
        return jCCatch;
    }

    @Override
    public JCTree.JCClassDecl ClassDef(JCTree.JCModifiers jCModifiers, Name name, List<JCTree.JCTypeParameter> list, JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list2, List<JCTree> list3) {
        JCTree.JCClassDecl jCClassDecl = new JCTree.JCClassDecl(jCModifiers, name, list, jCExpression, list2, list3, null);
        jCClassDecl.pos = this.pos;
        return jCClassDecl;
    }

    public JCTree.JCExpression ClassLiteral(Symbol.ClassSymbol classSymbol) {
        return ClassLiteral(classSymbol.type);
    }

    @Override
    public JCTree.JCConditional Conditional(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2, JCTree.JCExpression jCExpression3) {
        JCTree.JCConditional jCConditional = new JCTree.JCConditional(jCExpression, jCExpression2, jCExpression3);
        jCConditional.pos = this.pos;
        return jCConditional;
    }

    @Override
    public JCTree.JCContinue Continue(Name name) {
        JCTree.JCContinue jCContinue = new JCTree.JCContinue(name, null);
        jCContinue.pos = this.pos;
        return jCContinue;
    }

    public JCTree.JCExpression Create(Symbol symbol, List<JCTree.JCExpression> list) {
        Type erasure = symbol.owner.erasure(this.types);
        JCTree.JCNewClass NewClass = NewClass(null, null, Type(erasure), list, null);
        NewClass.constructor = symbol;
        NewClass.setType(erasure);
        return NewClass;
    }

    @Override
    public JCTree.JCDoWhileLoop DoLoop(JCTree.JCStatement jCStatement, JCTree.JCExpression jCExpression) {
        JCTree.JCDoWhileLoop jCDoWhileLoop = new JCTree.JCDoWhileLoop(jCStatement, jCExpression);
        jCDoWhileLoop.pos = this.pos;
        return jCDoWhileLoop;
    }

    public JCTree.JCErroneous Erroneous() {
        return Erroneous(List.nil());
    }

    @Override
    public JCTree.JCExpressionStatement Exec(JCTree.JCExpression jCExpression) {
        JCTree.JCExpressionStatement jCExpressionStatement = new JCTree.JCExpressionStatement(jCExpression);
        jCExpressionStatement.pos = this.pos;
        return jCExpressionStatement;
    }

    @Override
    public JCTree.JCExports Exports(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        JCTree.JCExports jCExports = new JCTree.JCExports(jCExpression, list);
        jCExports.pos = this.pos;
        return jCExports;
    }

    @Override
    public JCTree.JCForLoop ForLoop(List<JCTree.JCStatement> list, JCTree.JCExpression jCExpression, List<JCTree.JCExpressionStatement> list2, JCTree.JCStatement jCStatement) {
        JCTree.JCForLoop jCForLoop = new JCTree.JCForLoop(list, jCExpression, list2, jCStatement);
        jCForLoop.pos = this.pos;
        return jCForLoop;
    }

    @Override
    public JCTree.JCEnhancedForLoop ForeachLoop(JCTree.JCVariableDecl jCVariableDecl, JCTree.JCExpression jCExpression, JCTree.JCStatement jCStatement) {
        JCTree.JCEnhancedForLoop jCEnhancedForLoop = new JCTree.JCEnhancedForLoop(jCVariableDecl, jCExpression, jCStatement);
        jCEnhancedForLoop.pos = this.pos;
        return jCEnhancedForLoop;
    }

    @Override
    public JCTree.JCIdent Ident(Name name) {
        JCTree.JCIdent jCIdent = new JCTree.JCIdent(name, null);
        jCIdent.pos = this.pos;
        return jCIdent;
    }

    public List<JCTree.JCExpression> Idents(List<JCTree.JCVariableDecl> list) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<JCTree.JCVariableDecl> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(Ident(list2.head));
        }
        return listBuffer.toList();
    }

    @Override
    public JCTree.JCIf If(JCTree.JCExpression jCExpression, JCTree.JCStatement jCStatement, JCTree.JCStatement jCStatement2) {
        JCTree.JCIf jCIf = new JCTree.JCIf(jCExpression, jCStatement, jCStatement2);
        jCIf.pos = this.pos;
        return jCIf;
    }

    @Override
    public JCTree.JCImport Import(JCTree jCTree, boolean z10) {
        JCTree.JCImport jCImport = new JCTree.JCImport(jCTree, z10);
        jCImport.pos = this.pos;
        return jCImport;
    }

    @Override
    public JCTree.JCArrayAccess Indexed(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCArrayAccess jCArrayAccess = new JCTree.JCArrayAccess(jCExpression, jCExpression2);
        jCArrayAccess.pos = this.pos;
        return jCArrayAccess;
    }

    @Override
    public JCTree.JCLabeledStatement Labelled(Name name, JCTree.JCStatement jCStatement) {
        JCTree.JCLabeledStatement jCLabeledStatement = new JCTree.JCLabeledStatement(name, jCStatement);
        jCLabeledStatement.pos = this.pos;
        return jCLabeledStatement;
    }

    public JCTree.JCLambda Lambda(List<JCTree.JCVariableDecl> list, JCTree jCTree) {
        JCTree.JCLambda jCLambda = new JCTree.JCLambda(list, jCTree);
        jCLambda.pos = this.pos;
        return jCLambda;
    }

    @Override
    public JCTree.LetExpr LetExpr(List<JCTree.JCVariableDecl> list, JCTree.JCExpression jCExpression) {
        JCTree.LetExpr letExpr = new JCTree.LetExpr(list, jCExpression);
        letExpr.pos = this.pos;
        return letExpr;
    }

    @Override
    public JCTree.JCLiteral Literal(TypeTag typeTag, Object obj) {
        JCTree.JCLiteral jCLiteral = new JCTree.JCLiteral(typeTag, obj);
        jCLiteral.pos = this.pos;
        return jCLiteral;
    }

    public JCTree.JCMethodDecl MethodDef(JCTree.JCModifiers jCModifiers, Name name, JCTree.JCExpression jCExpression, List<JCTree.JCTypeParameter> list, List<JCTree.JCVariableDecl> list2, List<JCTree.JCExpression> list3, JCTree.JCBlock jCBlock, JCTree.JCExpression jCExpression2) {
        return MethodDef(jCModifiers, name, jCExpression, list, null, list2, list3, jCBlock, jCExpression2);
    }

    @Override
    public JCTree.JCModifiers Modifiers(long j10, List<JCTree.JCAnnotation> list) {
        JCTree.JCModifiers jCModifiers = new JCTree.JCModifiers(j10, list);
        jCModifiers.pos = ((j10 & 8796093033983L) == 0 && list.isEmpty()) ? -1 : this.pos;
        return jCModifiers;
    }

    @Override
    public JCTree.JCModuleDecl ModuleDef(JCTree.JCModifiers jCModifiers, ModuleTree.ModuleKind moduleKind, JCTree.JCExpression jCExpression, List<JCTree.JCDirective> list) {
        JCTree.JCModuleDecl jCModuleDecl = new JCTree.JCModuleDecl(jCModifiers, moduleKind, jCExpression, list);
        jCModuleDecl.pos = this.pos;
        return jCModuleDecl;
    }

    @Override
    public JCTree.JCNewArray NewArray(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list, List<JCTree.JCExpression> list2) {
        JCTree.JCNewArray jCNewArray = new JCTree.JCNewArray(jCExpression, list, list2);
        jCNewArray.pos = this.pos;
        return jCNewArray;
    }

    @Override
    public JCTree.JCNewClass NewClass(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression2, List<JCTree.JCExpression> list2, JCTree.JCClassDecl jCClassDecl) {
        JCTree.JCNewClass jCNewClass = new JCTree.JCNewClass(jCExpression, list, jCExpression2, list2, jCClassDecl);
        jCNewClass.pos = this.pos;
        return jCNewClass;
    }

    @Override
    public JCTree.JCOpens Opens(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        JCTree.JCOpens jCOpens = new JCTree.JCOpens(jCExpression, list);
        jCOpens.pos = this.pos;
        return jCOpens;
    }

    @Override
    public JCTree.JCPackageDecl PackageDecl(List<JCTree.JCAnnotation> list, JCTree.JCExpression jCExpression) {
        Assert.checkNonNull(list);
        Assert.checkNonNull(jCExpression);
        JCTree.JCPackageDecl jCPackageDecl = new JCTree.JCPackageDecl(list, jCExpression);
        jCPackageDecl.pos = this.pos;
        return jCPackageDecl;
    }

    public JCTree.JCVariableDecl Param(Name name, Type type, Symbol symbol) {
        return VarDef(new Symbol.VarSymbol(8589934592L, name, type, symbol), null);
    }

    public List<JCTree.JCVariableDecl> Params(List<Type> list, Symbol symbol) {
        ListBuffer listBuffer = new ListBuffer();
        Symbol.MethodSymbol methodSymbol = symbol.kind == Kinds.Kind.MTH ? (Symbol.MethodSymbol) symbol : null;
        if (methodSymbol == null || methodSymbol.params == null || list.length() != methodSymbol.params.length()) {
            int i10 = 0;
            for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                listBuffer.append(Param(paramName(i10), list2.head, symbol));
                i10++;
            }
        } else {
            Iterator<Symbol.VarSymbol> it = ((Symbol.MethodSymbol) symbol).params.iterator();
            while (it.hasNext()) {
                listBuffer.append(VarDef(it.next(), null));
            }
        }
        return listBuffer.toList();
    }

    @Override
    public JCTree.JCParens Parens(JCTree.JCExpression jCExpression) {
        JCTree.JCParens jCParens = new JCTree.JCParens(jCExpression);
        jCParens.pos = this.pos;
        return jCParens;
    }

    @Override
    public JCTree.JCProvides Provides(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        JCTree.JCProvides jCProvides = new JCTree.JCProvides(jCExpression, list);
        jCProvides.pos = this.pos;
        return jCProvides;
    }

    public JCTree.JCExpression QualIdent(Symbol symbol) {
        return isUnqualifiable(symbol) ? Ident(symbol) : Select(QualIdent(symbol.owner), symbol);
    }

    public JCTree.JCExpression QualThis(Type type) {
        return Select(Type(type), new Symbol.VarSymbol(16L, this.names._this, type, type.tsym));
    }

    public JCTree.JCVariableDecl ReceiverVarDef(JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCVariableDecl jCVariableDecl = new JCTree.JCVariableDecl(jCModifiers, jCExpression, jCExpression2);
        jCVariableDecl.pos = this.pos;
        return jCVariableDecl;
    }

    public JCTree.JCMemberReference Reference(MemberReferenceTree.ReferenceMode referenceMode, Name name, JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        JCTree.JCMemberReference jCMemberReference = new JCTree.JCMemberReference(referenceMode, name, jCExpression, list);
        jCMemberReference.pos = this.pos;
        return jCMemberReference;
    }

    @Override
    public JCTree.JCRequires Requires(boolean z10, boolean z11, JCTree.JCExpression jCExpression) {
        JCTree.JCRequires jCRequires = new JCTree.JCRequires(z10, z11, jCExpression);
        jCRequires.pos = this.pos;
        return jCRequires;
    }

    @Override
    public JCTree.JCReturn Return(JCTree.JCExpression jCExpression) {
        JCTree.JCReturn jCReturn = new JCTree.JCReturn(jCExpression);
        jCReturn.pos = this.pos;
        return jCReturn;
    }

    @Override
    public JCTree.JCFieldAccess Select(JCTree.JCExpression jCExpression, Name name) {
        JCTree.JCFieldAccess jCFieldAccess = new JCTree.JCFieldAccess(jCExpression, name, null);
        jCFieldAccess.pos = this.pos;
        return jCFieldAccess;
    }

    @Override
    public JCTree.JCSkip Skip() {
        JCTree.JCSkip jCSkip = new JCTree.JCSkip();
        jCSkip.pos = this.pos;
        return jCSkip;
    }

    public JCTree.JCIdent Super(Type type, Symbol.TypeSymbol typeSymbol) {
        return Ident(new Symbol.VarSymbol(16L, this.names._super, type, typeSymbol));
    }

    @Override
    public JCTree.JCSwitch Switch(JCTree.JCExpression jCExpression, List<JCTree.JCCase> list) {
        JCTree.JCSwitch jCSwitch = new JCTree.JCSwitch(jCExpression, list);
        jCSwitch.pos = this.pos;
        return jCSwitch;
    }

    @Override
    public JCTree.JCSynchronized Synchronized(JCTree.JCExpression jCExpression, JCTree.JCBlock jCBlock) {
        JCTree.JCSynchronized jCSynchronized = new JCTree.JCSynchronized(jCExpression, jCBlock);
        jCSynchronized.pos = this.pos;
        return jCSynchronized;
    }

    public JCTree.JCExpression This(Type type) {
        return Ident(new Symbol.VarSymbol(16L, this.names._this, type, type.tsym));
    }

    @Override
    public JCTree.JCThrow Throw(JCTree.JCExpression jCExpression) {
        JCTree.JCThrow jCThrow = new JCTree.JCThrow(jCExpression);
        jCThrow.pos = this.pos;
        return jCThrow;
    }

    @Override
    public JCTree.JCCompilationUnit TopLevel(List<JCTree> list) {
        Iterator<JCTree> it = list.iterator();
        while (it.hasNext()) {
            final JCTree next = it.next();
            Assert.check((next instanceof JCTree.JCClassDecl) || (next instanceof JCTree.JCPackageDecl) || (next instanceof JCTree.JCImport) || (next instanceof JCTree.JCModuleDecl) || (next instanceof JCTree.JCSkip) || (next instanceof JCTree.JCErroneous) || ((next instanceof JCTree.JCExpressionStatement) && (((JCTree.JCExpressionStatement) next).expr instanceof JCTree.JCErroneous)), (Supplier<String>) new Supplier() {
                @Override
                public final Object get() {
                    String lambda$TopLevel$0;
                    lambda$TopLevel$0 = TreeMaker.lambda$TopLevel$0(JCTree.this);
                    return lambda$TopLevel$0;
                }
            });
        }
        JCTree.JCCompilationUnit jCCompilationUnit = new JCTree.JCCompilationUnit(list);
        jCCompilationUnit.pos = this.pos;
        return jCCompilationUnit;
    }

    @Override
    public JCTree.JCTry Try(JCTree.JCBlock jCBlock, List<JCTree.JCCatch> list, JCTree.JCBlock jCBlock2) {
        return Try(List.nil(), jCBlock, list, jCBlock2);
    }

    public JCTree.JCExpression Type(Type type) {
        JCTree.JCExpression TypeIdent;
        if (type == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                TypeIdent = TypeIdent(type.getTag());
                break;
            case 10:
                TypeIdent = Ident(type.tsym);
                break;
            case 11:
                Type.WildcardType wildcardType = (Type.WildcardType) type;
                TypeIdent = Wildcard(TypeBoundKind(wildcardType.kind), wildcardType.kind != BoundKind.UNBOUND ? Type(wildcardType.type) : null);
                break;
            case 12:
                int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[type.getKind().ordinal()];
                if (i10 == 1) {
                    ListBuffer listBuffer = new ListBuffer();
                    Iterator<? extends Type> it = ((Type.UnionClassType) type).getAlternativeTypes().iterator();
                    while (it.hasNext()) {
                        listBuffer.add(Type(it.next()));
                    }
                    TypeIdent = TypeUnion(listBuffer.toList());
                    break;
                } else if (i10 == 2) {
                    ListBuffer listBuffer2 = new ListBuffer();
                    Iterator<Type> it2 = ((Type.IntersectionClassType) type).getExplicitComponents().iterator();
                    while (it2.hasNext()) {
                        listBuffer2.add(Type(it2.next()));
                    }
                    TypeIdent = TypeIntersection(listBuffer2.toList());
                    break;
                } else {
                    Type enclosingType = type.getEnclosingType();
                    TypeIdent = (enclosingType.hasTag(TypeTag.CLASS) && type.tsym.owner.kind == Kinds.Kind.TYP) ? Select(Type(enclosingType), type.tsym) : QualIdent(type.tsym);
                    if (!type.getTypeArguments().isEmpty()) {
                        TypeIdent = TypeApply(TypeIdent, Types(type.getTypeArguments()));
                        break;
                    }
                }
                break;
            case 13:
                TypeIdent = TypeArray(Type(this.types.elemtype(type)));
                break;
            case 14:
                TypeIdent = TypeIdent(TypeTag.ERROR);
                break;
            default:
                throw new AssertionError((Object) ("unexpected type: " + ((Object) type)));
        }
        return TypeIdent.setType(type);
    }

    public JCTree.JCAnnotation TypeAnnotation(JCTree jCTree, List<JCTree.JCExpression> list) {
        JCTree.JCAnnotation jCAnnotation = new JCTree.JCAnnotation(JCTree.Tag.TYPE_ANNOTATION, jCTree, list);
        jCAnnotation.pos = this.pos;
        return jCAnnotation;
    }

    @Override
    public JCTree.JCTypeApply TypeApply(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        JCTree.JCTypeApply jCTypeApply = new JCTree.JCTypeApply(jCExpression, list);
        jCTypeApply.pos = this.pos;
        return jCTypeApply;
    }

    @Override
    public JCTree.JCArrayTypeTree TypeArray(JCTree.JCExpression jCExpression) {
        JCTree.JCArrayTypeTree jCArrayTypeTree = new JCTree.JCArrayTypeTree(jCExpression);
        jCArrayTypeTree.pos = this.pos;
        return jCArrayTypeTree;
    }

    @Override
    public JCTree.TypeBoundKind TypeBoundKind(BoundKind boundKind) {
        JCTree.TypeBoundKind typeBoundKind = new JCTree.TypeBoundKind(boundKind);
        typeBoundKind.pos = this.pos;
        return typeBoundKind;
    }

    @Override
    public JCTree.JCTypeCast TypeCast(JCTree jCTree, JCTree.JCExpression jCExpression) {
        JCTree.JCTypeCast jCTypeCast = new JCTree.JCTypeCast(jCTree, jCExpression);
        jCTypeCast.pos = this.pos;
        return jCTypeCast;
    }

    @Override
    public JCTree.JCPrimitiveTypeTree TypeIdent(TypeTag typeTag) {
        JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree = new JCTree.JCPrimitiveTypeTree(typeTag);
        jCPrimitiveTypeTree.pos = this.pos;
        return jCPrimitiveTypeTree;
    }

    public JCTree.JCTypeIntersection TypeIntersection(List<JCTree.JCExpression> list) {
        JCTree.JCTypeIntersection jCTypeIntersection = new JCTree.JCTypeIntersection(list);
        jCTypeIntersection.pos = this.pos;
        return jCTypeIntersection;
    }

    public JCTree.JCTypeParameter TypeParam(Name name, Type.TypeVar typeVar) {
        return (JCTree.JCTypeParameter) TypeParameter(name, Types(this.types.getBounds(typeVar))).setPos(this.pos).setType(typeVar);
    }

    @Override
    public JCTree.JCTypeParameter TypeParameter(Name name, List<JCTree.JCExpression> list) {
        return TypeParameter(name, list, List.nil());
    }

    public List<JCTree.JCTypeParameter> TypeParams(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            Type type = list2.head;
            listBuffer.append(TypeParam(type.tsym.name, (Type.TypeVar) type));
        }
        return listBuffer.toList();
    }

    @Override
    public JCTree.JCInstanceOf TypeTest(JCTree.JCExpression jCExpression, JCTree jCTree) {
        JCTree.JCInstanceOf jCInstanceOf = new JCTree.JCInstanceOf(jCExpression, jCTree);
        jCInstanceOf.pos = this.pos;
        return jCInstanceOf;
    }

    public JCTree.JCTypeUnion TypeUnion(List<JCTree.JCExpression> list) {
        JCTree.JCTypeUnion jCTypeUnion = new JCTree.JCTypeUnion(list);
        jCTypeUnion.pos = this.pos;
        return jCTypeUnion;
    }

    public List<JCTree.JCExpression> Types(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(Type(list2.head));
        }
        return listBuffer.toList();
    }

    @Override
    public JCTree.JCUnary Unary(JCTree.Tag tag, JCTree.JCExpression jCExpression) {
        JCTree.JCUnary jCUnary = new JCTree.JCUnary(tag, jCExpression);
        jCUnary.pos = this.pos;
        return jCUnary;
    }

    @Override
    public JCTree.JCUses Uses(JCTree.JCExpression jCExpression) {
        JCTree.JCUses jCUses = new JCTree.JCUses(jCExpression);
        jCUses.pos = this.pos;
        return jCUses;
    }

    @Override
    public JCTree.JCVariableDecl VarDef(JCTree.JCModifiers jCModifiers, Name name, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        JCTree.JCVariableDecl jCVariableDecl = new JCTree.JCVariableDecl(jCModifiers, name, jCExpression, jCExpression2, null);
        jCVariableDecl.pos = this.pos;
        return jCVariableDecl;
    }

    @Override
    public JCTree.JCWhileLoop WhileLoop(JCTree.JCExpression jCExpression, JCTree.JCStatement jCStatement) {
        JCTree.JCWhileLoop jCWhileLoop = new JCTree.JCWhileLoop(jCExpression, jCStatement);
        jCWhileLoop.pos = this.pos;
        return jCWhileLoop;
    }

    @Override
    public JCTree.JCWildcard Wildcard(JCTree.TypeBoundKind typeBoundKind, JCTree jCTree) {
        JCTree.JCWildcard jCWildcard = new JCTree.JCWildcard(typeBoundKind, jCTree);
        jCWildcard.pos = this.pos;
        return jCWildcard;
    }

    public TreeMaker at(int i10) {
        this.pos = i10;
        return this;
    }

    public TreeMaker forToplevel(JCTree.JCCompilationUnit jCCompilationUnit) {
        return new TreeMaker(jCCompilationUnit, this.names, this.types, this.syms);
    }

    public boolean isUnqualifiable(Symbol symbol) {
        Symbol symbol2;
        Kinds.Kind kind;
        JCTree.JCCompilationUnit jCCompilationUnit;
        Name name = symbol.name;
        if (name == this.names.empty || (symbol2 = symbol.owner) == null || symbol2 == this.syms.rootPackage || (kind = symbol2.kind) == Kinds.Kind.MTH || kind == Kinds.Kind.VAR) {
            return true;
        }
        if (symbol.kind == Kinds.Kind.TYP && (jCCompilationUnit = this.toplevel) != null) {
            Iterator<Symbol> it = jCCompilationUnit.namedImportScope.getSymbolsByName(name).iterator();
            if (it.hasNext()) {
                return it.next() == symbol && !it.hasNext();
            }
            Iterator<Symbol> it2 = this.toplevel.packge.members().getSymbolsByName(symbol.name).iterator();
            if (it2.hasNext()) {
                return it2.next() == symbol && !it2.hasNext();
            }
            Iterator<Symbol> it3 = this.toplevel.starImportScope.getSymbolsByName(symbol.name).iterator();
            if (it3.hasNext()) {
                return it3.next() == symbol && !it3.hasNext();
            }
        }
        return false;
    }

    public Name paramName(int i10) {
        return this.names.fromString("x" + i10);
    }

    public Name typaramName(int i10) {
        return this.names.fromString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS + i10);
    }

    public class AnnotationBuilder implements Attribute.Visitor {
        JCTree.JCExpression result = null;

        public AnnotationBuilder() {
        }

        public JCTree.JCExpression translate(Attribute attribute) {
            attribute.accept(this);
            return this.result;
        }

        @Override
        public void visitArray(Attribute.Array array) {
            ListBuffer listBuffer = new ListBuffer();
            int i10 = 0;
            while (true) {
                Attribute[] attributeArr = array.values;
                if (i10 >= attributeArr.length) {
                    this.result = TreeMaker.this.NewArray(null, List.nil(), listBuffer.toList()).setType(array.type);
                    return;
                } else {
                    listBuffer.append(translate(attributeArr[i10]));
                    i10++;
                }
            }
        }

        @Override
        public void visitClass(Attribute.Class r22) {
            this.result = TreeMaker.this.ClassLiteral(r22.classType).setType(TreeMaker.this.syms.classType);
        }

        @Override
        public void visitCompound(Attribute.Compound compound) {
            if (compound instanceof Attribute.TypeCompound) {
                this.result = visitTypeCompoundInternal((Attribute.TypeCompound) compound);
            } else {
                this.result = visitCompoundInternal(compound);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public JCTree.JCAnnotation visitCompoundInternal(Attribute.Compound compound) {
            ListBuffer listBuffer = new ListBuffer();
            for (List list = compound.values; list.nonEmpty(); list = list.tail) {
                Pair pair = (Pair) list.head;
                JCTree.JCExpression translate = translate((Attribute) pair.snd);
                TreeMaker treeMaker = TreeMaker.this;
                listBuffer.append(treeMaker.Assign(treeMaker.Ident((Symbol) pair.fst), translate).setType(translate.type));
            }
            TreeMaker treeMaker2 = TreeMaker.this;
            return treeMaker2.Annotation(treeMaker2.Type(compound.type), listBuffer.toList());
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
            this.result = TreeMaker.this.Literal(constant.type.getTag(), constant.value);
        }

        @Override
        public void visitEnum(Attribute.Enum r22) {
            this.result = TreeMaker.this.QualIdent(r22.value);
        }

        @Override
        public void visitError(Attribute.Error error) {
            this.result = TreeMaker.this.Erroneous();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public JCTree.JCAnnotation visitTypeCompoundInternal(Attribute.TypeCompound typeCompound) {
            ListBuffer listBuffer = new ListBuffer();
            for (List list = typeCompound.values; list.nonEmpty(); list = list.tail) {
                Pair pair = (Pair) list.head;
                JCTree.JCExpression translate = translate((Attribute) pair.snd);
                TreeMaker treeMaker = TreeMaker.this;
                listBuffer.append(treeMaker.Assign(treeMaker.Ident((Symbol) pair.fst), translate).setType(translate.type));
            }
            TreeMaker treeMaker2 = TreeMaker.this;
            return treeMaker2.TypeAnnotation(treeMaker2.Type(typeCompound.type), listBuffer.toList());
        }

        public JCTree.JCAnnotation translate(Attribute.Compound compound) {
            return visitCompoundInternal(compound);
        }

        public JCTree.JCAnnotation translate(Attribute.TypeCompound typeCompound) {
            return visitTypeCompoundInternal(typeCompound);
        }
    }

    public JCTree.JCMethodInvocation App(JCTree.JCExpression jCExpression) {
        return Apply(null, jCExpression, List.nil()).setType(jCExpression.type.getReturnType());
    }

    public JCTree.JCExpression ClassLiteral(Type type) {
        return Select(Type(type), new Symbol.VarSymbol(25L, this.names._class, type, type.tsym));
    }

    @Override
    public JCTree.JCErroneous Erroneous(List<? extends JCTree> list) {
        JCTree.JCErroneous jCErroneous = new JCTree.JCErroneous(list);
        jCErroneous.pos = this.pos;
        return jCErroneous;
    }

    @Override
    public JCTree.JCMethodDecl MethodDef(JCTree.JCModifiers jCModifiers, Name name, JCTree.JCExpression jCExpression, List<JCTree.JCTypeParameter> list, JCTree.JCVariableDecl jCVariableDecl, List<JCTree.JCVariableDecl> list2, List<JCTree.JCExpression> list3, JCTree.JCBlock jCBlock, JCTree.JCExpression jCExpression2) {
        JCTree.JCMethodDecl jCMethodDecl = new JCTree.JCMethodDecl(jCModifiers, name, jCExpression, list, jCVariableDecl, list2, list3, jCBlock, jCExpression2, null);
        jCMethodDecl.pos = this.pos;
        return jCMethodDecl;
    }

    @Override
    public JCTree.JCTry Try(List<JCTree> list, JCTree.JCBlock jCBlock, List<JCTree.JCCatch> list2, JCTree.JCBlock jCBlock2) {
        JCTree.JCTry jCTry = new JCTree.JCTry(list, jCBlock, list2, jCBlock2);
        jCTry.pos = this.pos;
        return jCTry;
    }

    public JCTree.JCTypeParameter TypeParameter(Name name, List<JCTree.JCExpression> list, List<JCTree.JCAnnotation> list2) {
        JCTree.JCTypeParameter jCTypeParameter = new JCTree.JCTypeParameter(name, list, list2);
        jCTypeParameter.pos = this.pos;
        return jCTypeParameter;
    }

    public TreeMaker at(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        this.pos = diagnosticPosition == null ? -1 : diagnosticPosition.getStartPosition();
        return this;
    }

    public JCTree.JCAnnotation Annotation(Attribute attribute) {
        return this.annotationBuilder.translate((Attribute.Compound) attribute);
    }

    public JCTree.JCIdent Ident(Symbol symbol) {
        Name name = symbol.name;
        if (name == this.names.empty) {
            name = symbol.flatName();
        }
        return (JCTree.JCIdent) new JCTree.JCIdent(name, symbol).setPos(this.pos).setType(symbol.type);
    }

    public JCTree.JCArrayAccess Indexed(Symbol symbol, JCTree.JCExpression jCExpression) {
        JCTree.JCArrayAccess jCArrayAccess = new JCTree.JCArrayAccess(QualIdent(symbol), jCExpression);
        jCArrayAccess.type = ((Type.ArrayType) symbol.type).elemtype;
        return jCArrayAccess;
    }

    public JCTree.LetExpr LetExpr(JCTree.JCVariableDecl jCVariableDecl, JCTree.JCExpression jCExpression) {
        JCTree.LetExpr letExpr = new JCTree.LetExpr(List.of(jCVariableDecl), jCExpression);
        letExpr.pos = this.pos;
        return letExpr;
    }

    public JCTree.JCLiteral Literal(Object obj) {
        if (obj instanceof String) {
            return Literal(TypeTag.CLASS, obj).setType(this.syms.stringType.constType(obj));
        }
        if (obj instanceof Integer) {
            return Literal(TypeTag.INT, obj).setType(this.syms.intType.constType(obj));
        }
        if (obj instanceof Long) {
            return Literal(TypeTag.LONG, obj).setType(this.syms.longType.constType(obj));
        }
        if (obj instanceof Byte) {
            return Literal(TypeTag.BYTE, obj).setType(this.syms.byteType.constType(obj));
        }
        if (obj instanceof Character) {
            char charAt = ((Character) obj).toString().charAt(0);
            return Literal(TypeTag.CHAR, Integer.valueOf(charAt)).setType(this.syms.charType.constType(Integer.valueOf(charAt)));
        }
        if (obj instanceof Double) {
            return Literal(TypeTag.DOUBLE, obj).setType(this.syms.doubleType.constType(obj));
        }
        if (obj instanceof Float) {
            return Literal(TypeTag.FLOAT, obj).setType(this.syms.floatType.constType(obj));
        }
        if (obj instanceof Short) {
            return Literal(TypeTag.SHORT, obj).setType(this.syms.shortType.constType(obj));
        }
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            return Literal(TypeTag.BOOLEAN, Integer.valueOf(booleanValue ? 1 : 0)).setType(this.syms.booleanType.constType(Integer.valueOf(booleanValue ? 1 : 0)));
        }
        throw new AssertionError(obj);
    }

    public JCTree.JCModifiers Modifiers(long j10) {
        return Modifiers(j10, List.nil());
    }

    public JCTree.JCExpression Select(JCTree.JCExpression jCExpression, Symbol symbol) {
        return new JCTree.JCFieldAccess(jCExpression, symbol.name, symbol).setPos(this.pos).setType(symbol.type);
    }

    public JCTree.JCAnnotation TypeAnnotation(Attribute attribute) {
        return this.annotationBuilder.translate((Attribute.TypeCompound) attribute);
    }

    public JCTree.JCTypeCast TypeCast(Type type, JCTree.JCExpression jCExpression) {
        return (JCTree.JCTypeCast) TypeCast(Type(type), jCExpression).setType(type);
    }

    public JCTree.JCVariableDecl VarDef(Symbol.VarSymbol varSymbol, JCTree.JCExpression jCExpression) {
        return (JCTree.JCVariableDecl) new JCTree.JCVariableDecl(Modifiers(varSymbol.flags(), Annotations(varSymbol.getRawAttributes())), varSymbol.name, Type(varSymbol.type), jCExpression, varSymbol).setPos(this.pos).setType(varSymbol.type);
    }

    public JCTree.JCMethodDecl MethodDef(Symbol.MethodSymbol methodSymbol, JCTree.JCBlock jCBlock) {
        return MethodDef(methodSymbol, methodSymbol.type, jCBlock);
    }

    public JCTree.JCMethodDecl MethodDef(Symbol.MethodSymbol methodSymbol, Type type, JCTree.JCBlock jCBlock) {
        return (JCTree.JCMethodDecl) new JCTree.JCMethodDecl(Modifiers(methodSymbol.flags(), Annotations(methodSymbol.getRawAttributes())), methodSymbol.name, Type(type.getReturnType()), TypeParams(type.getTypeArguments()), null, Params(type.getParameterTypes(), methodSymbol), Types(type.getThrownTypes()), jCBlock, null, methodSymbol).setPos(this.pos).setType(type);
    }

    public JCTree.JCExpression Ident(JCTree.JCVariableDecl jCVariableDecl) {
        return Ident(jCVariableDecl.sym);
    }

    public TreeMaker(JCTree.JCCompilationUnit jCCompilationUnit, Names names, Types types, Symtab symtab) {
        this.pos = -1;
        this.pos = 0;
        this.toplevel = jCCompilationUnit;
        this.names = names;
        this.types = types;
        this.syms = symtab;
    }
}
