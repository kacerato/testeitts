package org.openjdk.tools.javac.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.Set;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.AnnotatedTypeTree;
import org.openjdk.source.tree.AnnotationTree;
import org.openjdk.source.tree.ArrayAccessTree;
import org.openjdk.source.tree.ArrayTypeTree;
import org.openjdk.source.tree.AssertTree;
import org.openjdk.source.tree.AssignmentTree;
import org.openjdk.source.tree.BinaryTree;
import org.openjdk.source.tree.BlockTree;
import org.openjdk.source.tree.BreakTree;
import org.openjdk.source.tree.CaseTree;
import org.openjdk.source.tree.CatchTree;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.CompoundAssignmentTree;
import org.openjdk.source.tree.ConditionalExpressionTree;
import org.openjdk.source.tree.ContinueTree;
import org.openjdk.source.tree.DirectiveTree;
import org.openjdk.source.tree.DoWhileLoopTree;
import org.openjdk.source.tree.EmptyStatementTree;
import org.openjdk.source.tree.EnhancedForLoopTree;
import org.openjdk.source.tree.ErroneousTree;
import org.openjdk.source.tree.ExportsTree;
import org.openjdk.source.tree.ExpressionStatementTree;
import org.openjdk.source.tree.ExpressionTree;
import org.openjdk.source.tree.ForLoopTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.IfTree;
import org.openjdk.source.tree.ImportTree;
import org.openjdk.source.tree.InstanceOfTree;
import org.openjdk.source.tree.IntersectionTypeTree;
import org.openjdk.source.tree.LabeledStatementTree;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.LiteralTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.MemberSelectTree;
import org.openjdk.source.tree.MethodInvocationTree;
import org.openjdk.source.tree.MethodTree;
import org.openjdk.source.tree.ModifiersTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.source.tree.NewArrayTree;
import org.openjdk.source.tree.NewClassTree;
import org.openjdk.source.tree.OpensTree;
import org.openjdk.source.tree.PackageTree;
import org.openjdk.source.tree.ParameterizedTypeTree;
import org.openjdk.source.tree.ParenthesizedTree;
import org.openjdk.source.tree.PrimitiveTypeTree;
import org.openjdk.source.tree.ProvidesTree;
import org.openjdk.source.tree.RequiresTree;
import org.openjdk.source.tree.ReturnTree;
import org.openjdk.source.tree.StatementTree;
import org.openjdk.source.tree.SwitchTree;
import org.openjdk.source.tree.SynchronizedTree;
import org.openjdk.source.tree.ThrowTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.tree.TreeVisitor;
import org.openjdk.source.tree.TryTree;
import org.openjdk.source.tree.TypeCastTree;
import org.openjdk.source.tree.TypeParameterTree;
import org.openjdk.source.tree.UnaryTree;
import org.openjdk.source.tree.UnionTypeTree;
import org.openjdk.source.tree.UsesTree;
import org.openjdk.source.tree.VariableTree;
import org.openjdk.source.tree.WhileLoopTree;
import org.openjdk.source.tree.WildcardTree;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Position;

public abstract class JCTree implements Tree, Cloneable, JCDiagnostic.DiagnosticPosition {
    public int pos;
    public Type type;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$BoundKind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[BoundKind.values().length];
            $SwitchMap$com$sun$tools$javac$code$BoundKind = iArr;
            try {
                iArr[BoundKind.UNBOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$BoundKind[BoundKind.EXTENDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$BoundKind[BoundKind.SUPER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface Factory {
        JCAnnotation Annotation(JCTree jCTree, List<JCExpression> list);

        JCMethodInvocation Apply(List<JCExpression> list, JCExpression jCExpression, List<JCExpression> list2);

        JCAssert Assert(JCExpression jCExpression, JCExpression jCExpression2);

        JCAssign Assign(JCExpression jCExpression, JCExpression jCExpression2);

        JCAssignOp Assignop(Tag tag, JCTree jCTree, JCTree jCTree2);

        JCBinary Binary(Tag tag, JCExpression jCExpression, JCExpression jCExpression2);

        JCBlock Block(long j10, List<JCStatement> list);

        JCBreak Break(Name name);

        JCCase Case(JCExpression jCExpression, List<JCStatement> list);

        JCCatch Catch(JCVariableDecl jCVariableDecl, JCBlock jCBlock);

        JCClassDecl ClassDef(JCModifiers jCModifiers, Name name, List<JCTypeParameter> list, JCExpression jCExpression, List<JCExpression> list2, List<JCTree> list3);

        JCConditional Conditional(JCExpression jCExpression, JCExpression jCExpression2, JCExpression jCExpression3);

        JCContinue Continue(Name name);

        JCDoWhileLoop DoLoop(JCStatement jCStatement, JCExpression jCExpression);

        JCErroneous Erroneous(List<? extends JCTree> list);

        JCExpressionStatement Exec(JCExpression jCExpression);

        JCExports Exports(JCExpression jCExpression, List<JCExpression> list);

        JCForLoop ForLoop(List<JCStatement> list, JCExpression jCExpression, List<JCExpressionStatement> list2, JCStatement jCStatement);

        JCEnhancedForLoop ForeachLoop(JCVariableDecl jCVariableDecl, JCExpression jCExpression, JCStatement jCStatement);

        JCIdent Ident(Name name);

        JCIf If(JCExpression jCExpression, JCStatement jCStatement, JCStatement jCStatement2);

        JCImport Import(JCTree jCTree, boolean z10);

        JCArrayAccess Indexed(JCExpression jCExpression, JCExpression jCExpression2);

        JCLabeledStatement Labelled(Name name, JCStatement jCStatement);

        LetExpr LetExpr(List<JCVariableDecl> list, JCExpression jCExpression);

        JCLiteral Literal(TypeTag typeTag, Object obj);

        JCMethodDecl MethodDef(JCModifiers jCModifiers, Name name, JCExpression jCExpression, List<JCTypeParameter> list, JCVariableDecl jCVariableDecl, List<JCVariableDecl> list2, List<JCExpression> list3, JCBlock jCBlock, JCExpression jCExpression2);

        JCModifiers Modifiers(long j10, List<JCAnnotation> list);

        JCModuleDecl ModuleDef(JCModifiers jCModifiers, ModuleTree.ModuleKind moduleKind, JCExpression jCExpression, List<JCDirective> list);

        JCNewArray NewArray(JCExpression jCExpression, List<JCExpression> list, List<JCExpression> list2);

        JCNewClass NewClass(JCExpression jCExpression, List<JCExpression> list, JCExpression jCExpression2, List<JCExpression> list2, JCClassDecl jCClassDecl);

        JCOpens Opens(JCExpression jCExpression, List<JCExpression> list);

        JCPackageDecl PackageDecl(List<JCAnnotation> list, JCExpression jCExpression);

        JCParens Parens(JCExpression jCExpression);

        JCProvides Provides(JCExpression jCExpression, List<JCExpression> list);

        JCRequires Requires(boolean z10, boolean z11, JCExpression jCExpression);

        JCReturn Return(JCExpression jCExpression);

        JCFieldAccess Select(JCExpression jCExpression, Name name);

        JCSkip Skip();

        JCSwitch Switch(JCExpression jCExpression, List<JCCase> list);

        JCSynchronized Synchronized(JCExpression jCExpression, JCBlock jCBlock);

        JCThrow Throw(JCExpression jCExpression);

        JCCompilationUnit TopLevel(List<JCTree> list);

        JCTry Try(JCBlock jCBlock, List<JCCatch> list, JCBlock jCBlock2);

        JCTry Try(List<JCTree> list, JCBlock jCBlock, List<JCCatch> list2, JCBlock jCBlock2);

        JCTypeApply TypeApply(JCExpression jCExpression, List<JCExpression> list);

        JCArrayTypeTree TypeArray(JCExpression jCExpression);

        TypeBoundKind TypeBoundKind(BoundKind boundKind);

        JCTypeCast TypeCast(JCTree jCTree, JCExpression jCExpression);

        JCPrimitiveTypeTree TypeIdent(TypeTag typeTag);

        JCTypeParameter TypeParameter(Name name, List<JCExpression> list);

        JCInstanceOf TypeTest(JCExpression jCExpression, JCTree jCTree);

        JCUnary Unary(Tag tag, JCExpression jCExpression);

        JCUses Uses(JCExpression jCExpression);

        JCVariableDecl VarDef(JCModifiers jCModifiers, Name name, JCExpression jCExpression, JCExpression jCExpression2);

        JCWhileLoop WhileLoop(JCExpression jCExpression, JCStatement jCStatement);

        JCWildcard Wildcard(TypeBoundKind typeBoundKind, JCTree jCTree);
    }

    public static class JCAnnotatedType extends JCExpression implements AnnotatedTypeTree {
        public List<JCAnnotation> annotations;
        public JCExpression underlyingType;

        public JCAnnotatedType(List<JCAnnotation> list, JCExpression jCExpression) {
            Assert.check(list != null && list.nonEmpty());
            this.annotations = list;
            this.underlyingType = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitAnnotatedType(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ANNOTATED_TYPE;
        }

        @Override
        public Tag getTag() {
            return Tag.ANNOTATED_TYPE;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitAnnotatedType(this, d10);
        }

        @Override
        public List<JCAnnotation> getAnnotations() {
            return this.annotations;
        }

        @Override
        public JCExpression getUnderlyingType() {
            return this.underlyingType;
        }
    }

    public static class JCAnnotation extends JCExpression implements AnnotationTree {
        public JCTree annotationType;
        public List<JCExpression> args;
        public Attribute.Compound attribute;
        private Tag tag;

        public JCAnnotation(Tag tag, JCTree jCTree, List<JCExpression> list) {
            this.tag = tag;
            this.annotationType = jCTree;
            this.args = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitAnnotation(this);
        }

        @Override
        public Tree.Kind getKind() {
            return TreeInfo.tagToKind(getTag());
        }

        @Override
        public Tag getTag() {
            return this.tag;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitAnnotation(this, d10);
        }

        @Override
        public JCTree getAnnotationType() {
            return this.annotationType;
        }

        @Override
        public List<JCExpression> getArguments() {
            return this.args;
        }
    }

    public static class JCArrayAccess extends JCExpression implements ArrayAccessTree {
        public JCExpression index;
        public JCExpression indexed;

        public JCArrayAccess(JCExpression jCExpression, JCExpression jCExpression2) {
            this.indexed = jCExpression;
            this.index = jCExpression2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitIndexed(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ARRAY_ACCESS;
        }

        @Override
        public Tag getTag() {
            return Tag.INDEXED;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitArrayAccess(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.indexed;
        }

        @Override
        public JCExpression getIndex() {
            return this.index;
        }
    }

    public static class JCArrayTypeTree extends JCExpression implements ArrayTypeTree {
        public JCExpression elemtype;

        public JCArrayTypeTree(JCExpression jCExpression) {
            this.elemtype = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeArray(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ARRAY_TYPE;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEARRAY;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitArrayType(this, d10);
        }

        @Override
        public JCTree getType() {
            return this.elemtype;
        }
    }

    public static class JCAssert extends JCStatement implements AssertTree {
        public JCExpression cond;
        public JCExpression detail;

        public JCAssert(JCExpression jCExpression, JCExpression jCExpression2) {
            this.cond = jCExpression;
            this.detail = jCExpression2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitAssert(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ASSERT;
        }

        @Override
        public Tag getTag() {
            return Tag.ASSERT;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitAssert(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public JCExpression getDetail() {
            return this.detail;
        }
    }

    public static class JCAssign extends JCExpression implements AssignmentTree {
        public JCExpression lhs;
        public JCExpression rhs;

        public JCAssign(JCExpression jCExpression, JCExpression jCExpression2) {
            this.lhs = jCExpression;
            this.rhs = jCExpression2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitAssign(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ASSIGNMENT;
        }

        @Override
        public Tag getTag() {
            return Tag.ASSIGN;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitAssignment(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.rhs;
        }

        @Override
        public JCExpression getVariable() {
            return this.lhs;
        }
    }

    public static class JCAssignOp extends JCOperatorExpression implements CompoundAssignmentTree {
        public JCExpression lhs;
        public JCExpression rhs;

        public JCAssignOp(Tag tag, JCTree jCTree, JCTree jCTree2, Symbol.OperatorSymbol operatorSymbol) {
            this.opcode = tag;
            this.lhs = (JCExpression) jCTree;
            this.rhs = (JCExpression) jCTree2;
            this.operator = operatorSymbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitAssignop(this);
        }

        @Override
        public Tree.Kind getKind() {
            return TreeInfo.tagToKind(getTag());
        }

        @Override
        public JCExpression getOperand(JCOperatorExpression.OperandPos operandPos) {
            return operandPos == JCOperatorExpression.OperandPos.LEFT ? this.lhs : this.rhs;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitCompoundAssignment(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.rhs;
        }

        @Override
        public JCExpression getVariable() {
            return this.lhs;
        }
    }

    public static class JCBinary extends JCOperatorExpression implements BinaryTree {
        public JCExpression lhs;
        public JCExpression rhs;

        public JCBinary(Tag tag, JCExpression jCExpression, JCExpression jCExpression2, Symbol.OperatorSymbol operatorSymbol) {
            this.opcode = tag;
            this.lhs = jCExpression;
            this.rhs = jCExpression2;
            this.operator = operatorSymbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitBinary(this);
        }

        @Override
        public Tree.Kind getKind() {
            return TreeInfo.tagToKind(getTag());
        }

        @Override
        public JCExpression getOperand(JCOperatorExpression.OperandPos operandPos) {
            return operandPos == JCOperatorExpression.OperandPos.LEFT ? this.lhs : this.rhs;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitBinary(this, d10);
        }

        @Override
        public JCExpression getLeftOperand() {
            return this.lhs;
        }

        @Override
        public JCExpression getRightOperand() {
            return this.rhs;
        }
    }

    public static class JCBlock extends JCStatement implements BlockTree {
        public int endpos = -1;
        public long flags;
        public List<JCStatement> stats;

        public JCBlock(long j10, List<JCStatement> list) {
            this.stats = list;
            this.flags = j10;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitBlock(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.BLOCK;
        }

        @Override
        public Tag getTag() {
            return Tag.BLOCK;
        }

        @Override
        public boolean isStatic() {
            return (this.flags & 8) != 0;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitBlock(this, d10);
        }

        @Override
        public List<JCStatement> getStatements() {
            return this.stats;
        }
    }

    public static class JCBreak extends JCStatement implements BreakTree {
        public Name label;
        public JCTree target;

        public JCBreak(Name name, JCTree jCTree) {
            this.label = name;
            this.target = jCTree;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitBreak(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.BREAK;
        }

        @Override
        public Tag getTag() {
            return Tag.BREAK;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitBreak(this, d10);
        }

        @Override
        public Name getLabel() {
            return this.label;
        }
    }

    public static class JCCase extends JCStatement implements CaseTree {
        public JCExpression pat;
        public List<JCStatement> stats;

        public JCCase(JCExpression jCExpression, List<JCStatement> list) {
            this.pat = jCExpression;
            this.stats = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitCase(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.CASE;
        }

        @Override
        public Tag getTag() {
            return Tag.CASE;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitCase(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.pat;
        }

        @Override
        public List<JCStatement> getStatements() {
            return this.stats;
        }
    }

    public static class JCCatch extends JCTree implements CatchTree {
        public JCBlock body;
        public JCVariableDecl param;

        public JCCatch(JCVariableDecl jCVariableDecl, JCBlock jCBlock) {
            this.param = jCVariableDecl;
            this.body = jCBlock;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitCatch(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.CATCH;
        }

        @Override
        public Tag getTag() {
            return Tag.CATCH;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitCatch(this, d10);
        }

        @Override
        public JCBlock getBlock() {
            return this.body;
        }

        @Override
        public JCVariableDecl getParameter() {
            return this.param;
        }
    }

    public static class JCClassDecl extends JCStatement implements ClassTree {
        public List<JCTree> defs;
        public JCExpression extending;
        public List<JCExpression> implementing;
        public JCModifiers mods;
        public Name name;
        public Symbol.ClassSymbol sym;
        public List<JCTypeParameter> typarams;

        public JCClassDecl(JCModifiers jCModifiers, Name name, List<JCTypeParameter> list, JCExpression jCExpression, List<JCExpression> list2, List<JCTree> list3, Symbol.ClassSymbol classSymbol) {
            this.mods = jCModifiers;
            this.name = name;
            this.typarams = list;
            this.extending = jCExpression;
            this.implementing = list2;
            this.defs = list3;
            this.sym = classSymbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitClassDef(this);
        }

        @Override
        public Tree.Kind getKind() {
            long j10 = this.mods.flags;
            return (8192 & j10) != 0 ? Tree.Kind.ANNOTATION_TYPE : (512 & j10) != 0 ? Tree.Kind.INTERFACE : (j10 & 16384) != 0 ? Tree.Kind.ENUM : Tree.Kind.CLASS;
        }

        @Override
        public Tag getTag() {
            return Tag.CLASSDEF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitClass(this, d10);
        }

        @Override
        public JCExpression getExtendsClause() {
            return this.extending;
        }

        @Override
        public List<JCExpression> getImplementsClause() {
            return this.implementing;
        }

        @Override
        public List<JCTree> getMembers() {
            return this.defs;
        }

        @Override
        public JCModifiers getModifiers() {
            return this.mods;
        }

        @Override
        public Name getSimpleName() {
            return this.name;
        }

        @Override
        public List<JCTypeParameter> getTypeParameters() {
            return this.typarams;
        }
    }

    public static class JCCompilationUnit extends JCTree implements CompilationUnitTree {
        public List<JCTree> defs;
        public JavaFileManager.Location locn;
        public Symbol.ModuleSymbol modle;
        public Scope.NamedImportScope namedImportScope;
        public Symbol.PackageSymbol packge;
        public JavaFileObject sourcefile;
        public Scope.StarImportScope starImportScope;
        public Scope.WriteableScope toplevelScope;
        public Position.LineMap lineMap = null;
        public DocCommentTable docComments = null;
        public EndPosTable endPositions = null;

        public JCCompilationUnit(List<JCTree> list) {
            this.defs = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTopLevel(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.COMPILATION_UNIT;
        }

        public JCModuleDecl getModuleDecl() {
            Iterator<JCTree> it = this.defs.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next.hasTag(Tag.MODULEDEF)) {
                    return (JCModuleDecl) next;
                }
            }
            return null;
        }

        @Override
        public ExpressionTree getPackageName() {
            JCPackageDecl jCPackageDecl = getPackage();
            if (jCPackageDecl != null) {
                return jCPackageDecl.getPackageName();
            }
            return null;
        }

        @Override
        public JavaFileObject getSourceFile() {
            return this.sourcefile;
        }

        @Override
        public Tag getTag() {
            return Tag.TOPLEVEL;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitCompilationUnit(this, d10);
        }

        @Override
        public List<JCImport> getImports() {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<JCTree> it = this.defs.iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                if (next.hasTag(Tag.IMPORT)) {
                    listBuffer.append((JCImport) next);
                } else if (!next.hasTag(Tag.PACKAGEDEF) && !next.hasTag(Tag.SKIP)) {
                    break;
                }
            }
            return listBuffer.toList();
        }

        @Override
        public Position.LineMap getLineMap() {
            return this.lineMap;
        }

        @Override
        public JCPackageDecl getPackage() {
            if (this.defs.isEmpty() || !this.defs.head.hasTag(Tag.PACKAGEDEF)) {
                return null;
            }
            return (JCPackageDecl) this.defs.head;
        }

        @Override
        public List<JCAnnotation> getPackageAnnotations() {
            JCPackageDecl jCPackageDecl = getPackage();
            return jCPackageDecl != null ? jCPackageDecl.getAnnotations() : List.nil();
        }

        @Override
        public List<JCTree> getTypeDecls() {
            List<JCTree> list = this.defs;
            while (!list.isEmpty() && (list.head.hasTag(Tag.PACKAGEDEF) || list.head.hasTag(Tag.IMPORT))) {
                list = list.tail;
            }
            return list;
        }
    }

    public static class JCConditional extends JCPolyExpression implements ConditionalExpressionTree {
        public JCExpression cond;
        public JCExpression falsepart;
        public JCExpression truepart;

        public JCConditional(JCExpression jCExpression, JCExpression jCExpression2, JCExpression jCExpression3) {
            this.cond = jCExpression;
            this.truepart = jCExpression2;
            this.falsepart = jCExpression3;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitConditional(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.CONDITIONAL_EXPRESSION;
        }

        @Override
        public Tag getTag() {
            return Tag.CONDEXPR;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitConditionalExpression(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public JCExpression getFalseExpression() {
            return this.falsepart;
        }

        @Override
        public JCExpression getTrueExpression() {
            return this.truepart;
        }
    }

    public static class JCContinue extends JCStatement implements ContinueTree {
        public Name label;
        public JCTree target;

        public JCContinue(Name name, JCTree jCTree) {
            this.label = name;
            this.target = jCTree;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitContinue(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.CONTINUE;
        }

        @Override
        public Tag getTag() {
            return Tag.CONTINUE;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitContinue(this, d10);
        }

        @Override
        public Name getLabel() {
            return this.label;
        }
    }

    public static abstract class JCDirective extends JCTree implements DirectiveTree {
    }

    public static class JCDoWhileLoop extends JCStatement implements DoWhileLoopTree {
        public JCStatement body;
        public JCExpression cond;

        public JCDoWhileLoop(JCStatement jCStatement, JCExpression jCExpression) {
            this.body = jCStatement;
            this.cond = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitDoLoop(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.DO_WHILE_LOOP;
        }

        @Override
        public Tag getTag() {
            return Tag.DOLOOP;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitDoWhileLoop(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public JCStatement getStatement() {
            return this.body;
        }
    }

    public static class JCEnhancedForLoop extends JCStatement implements EnhancedForLoopTree {
        public JCStatement body;
        public JCExpression expr;
        public JCVariableDecl var;

        public JCEnhancedForLoop(JCVariableDecl jCVariableDecl, JCExpression jCExpression, JCStatement jCStatement) {
            this.var = jCVariableDecl;
            this.expr = jCExpression;
            this.body = jCStatement;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitForeachLoop(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ENHANCED_FOR_LOOP;
        }

        @Override
        public Tag getTag() {
            return Tag.FOREACHLOOP;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitEnhancedForLoop(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }

        @Override
        public JCStatement getStatement() {
            return this.body;
        }

        @Override
        public JCVariableDecl getVariable() {
            return this.var;
        }
    }

    public static class JCErroneous extends JCExpression implements ErroneousTree {
        public List<? extends JCTree> errs;

        public JCErroneous(List<? extends JCTree> list) {
            this.errs = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitErroneous(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.ERRONEOUS;
        }

        @Override
        public Tag getTag() {
            return Tag.ERRONEOUS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitErroneous(this, d10);
        }

        @Override
        public List<? extends JCTree> getErrorTrees() {
            return this.errs;
        }
    }

    public static class JCExports extends JCDirective implements ExportsTree {
        public Directive.ExportsDirective directive;
        public List<JCExpression> moduleNames;
        public JCExpression qualid;

        public JCExports(JCExpression jCExpression, List<JCExpression> list) {
            this.qualid = jCExpression;
            this.moduleNames = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitExports(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.EXPORTS;
        }

        @Override
        public Tag getTag() {
            return Tag.EXPORTS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitExports(this, d10);
        }

        @Override
        public List<JCExpression> getModuleNames() {
            return this.moduleNames;
        }

        @Override
        public JCExpression getPackageName() {
            return this.qualid;
        }
    }

    public static abstract class JCExpression extends JCTree implements ExpressionTree {
        public boolean isPoly() {
            return false;
        }

        public boolean isStandalone() {
            return true;
        }

        @Override
        public JCExpression setPos(int i10) {
            super.setPos(i10);
            return this;
        }

        @Override
        public JCExpression setType(Type type) {
            super.setType(type);
            return this;
        }
    }

    public static class JCExpressionStatement extends JCStatement implements ExpressionStatementTree {
        public JCExpression expr;

        public JCExpressionStatement(JCExpression jCExpression) {
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitExec(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.EXPRESSION_STATEMENT;
        }

        @Override
        public Tag getTag() {
            return Tag.EXEC;
        }

        @Override
        public String toString() {
            StringWriter stringWriter = new StringWriter();
            try {
                new Pretty(stringWriter, false).printStat(this);
                return stringWriter.toString();
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitExpressionStatement(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }
    }

    public static class JCFieldAccess extends JCExpression implements MemberSelectTree {
        public Name name;
        public JCExpression selected;
        public Symbol sym;

        public JCFieldAccess(JCExpression jCExpression, Name name, Symbol symbol) {
            this.selected = jCExpression;
            this.name = name;
            this.sym = symbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitSelect(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.MEMBER_SELECT;
        }

        @Override
        public Tag getTag() {
            return Tag.SELECT;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitMemberSelect(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.selected;
        }

        @Override
        public Name getIdentifier() {
            return this.name;
        }
    }

    public static class JCForLoop extends JCStatement implements ForLoopTree {
        public JCStatement body;
        public JCExpression cond;
        public List<JCStatement> init;
        public List<JCExpressionStatement> step;

        public JCForLoop(List<JCStatement> list, JCExpression jCExpression, List<JCExpressionStatement> list2, JCStatement jCStatement) {
            this.init = list;
            this.cond = jCExpression;
            this.step = list2;
            this.body = jCStatement;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitForLoop(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.FOR_LOOP;
        }

        @Override
        public Tag getTag() {
            return Tag.FORLOOP;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitForLoop(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public List<JCStatement> getInitializer() {
            return this.init;
        }

        @Override
        public JCStatement getStatement() {
            return this.body;
        }

        @Override
        public List<JCExpressionStatement> getUpdate() {
            return this.step;
        }
    }

    public static abstract class JCFunctionalExpression extends JCPolyExpression {
        public List<Type> targets;

        public JCFunctionalExpression() {
            this.polyKind = JCPolyExpression.PolyKind.POLY;
        }

        public Type getDescriptorType(Types types) {
            return this.targets.nonEmpty() ? types.findDescriptorType(this.targets.head) : types.createErrorType(null);
        }
    }

    public static class JCIdent extends JCExpression implements IdentifierTree {
        public Name name;
        public Symbol sym;

        public JCIdent(Name name, Symbol symbol) {
            this.name = name;
            this.sym = symbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitIdent(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.IDENTIFIER;
        }

        @Override
        public Tag getTag() {
            return Tag.IDENT;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitIdentifier(this, d10);
        }

        @Override
        public Name getName() {
            return this.name;
        }
    }

    public static class JCIf extends JCStatement implements IfTree {
        public JCExpression cond;
        public JCStatement elsepart;
        public JCStatement thenpart;

        public JCIf(JCExpression jCExpression, JCStatement jCStatement, JCStatement jCStatement2) {
            this.cond = jCExpression;
            this.thenpart = jCStatement;
            this.elsepart = jCStatement2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitIf(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.IF;
        }

        @Override
        public Tag getTag() {
            return Tag.IF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitIf(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public JCStatement getElseStatement() {
            return this.elsepart;
        }

        @Override
        public JCStatement getThenStatement() {
            return this.thenpart;
        }
    }

    public static class JCImport extends JCTree implements ImportTree {
        public Scope importScope;
        public JCTree qualid;
        public boolean staticImport;

        public JCImport(JCTree jCTree, boolean z10) {
            this.qualid = jCTree;
            this.staticImport = z10;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitImport(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.IMPORT;
        }

        @Override
        public Tag getTag() {
            return Tag.IMPORT;
        }

        @Override
        public boolean isStatic() {
            return this.staticImport;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitImport(this, d10);
        }

        @Override
        public JCTree getQualifiedIdentifier() {
            return this.qualid;
        }
    }

    public static class JCInstanceOf extends JCExpression implements InstanceOfTree {
        public JCTree clazz;
        public JCExpression expr;

        public JCInstanceOf(JCExpression jCExpression, JCTree jCTree) {
            this.expr = jCExpression;
            this.clazz = jCTree;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeTest(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.INSTANCE_OF;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPETEST;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitInstanceOf(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }

        @Override
        public JCTree getType() {
            return this.clazz;
        }
    }

    public static class JCLabeledStatement extends JCStatement implements LabeledStatementTree {
        public JCStatement body;
        public Name label;

        public JCLabeledStatement(Name name, JCStatement jCStatement) {
            this.label = name;
            this.body = jCStatement;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitLabelled(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.LABELED_STATEMENT;
        }

        @Override
        public Tag getTag() {
            return Tag.LABELLED;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitLabeledStatement(this, d10);
        }

        @Override
        public Name getLabel() {
            return this.label;
        }

        @Override
        public JCStatement getStatement() {
            return this.body;
        }
    }

    public static class JCLambda extends JCFunctionalExpression implements LambdaExpressionTree {
        public JCTree body;
        public boolean canCompleteNormally = true;
        public ParameterKind paramKind;
        public List<JCVariableDecl> params;

        public enum ParameterKind {
            IMPLICIT,
            EXPLICIT
        }

        public JCLambda(List<JCVariableDecl> list, JCTree jCTree) {
            this.params = list;
            this.body = jCTree;
            if (list.isEmpty() || list.head.vartype != null) {
                this.paramKind = ParameterKind.EXPLICIT;
            } else {
                this.paramKind = ParameterKind.IMPLICIT;
            }
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitLambda(this);
        }

        @Override
        public LambdaExpressionTree.BodyKind getBodyKind() {
            return this.body.hasTag(Tag.BLOCK) ? LambdaExpressionTree.BodyKind.STATEMENT : LambdaExpressionTree.BodyKind.EXPRESSION;
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.LAMBDA_EXPRESSION;
        }

        @Override
        public java.util.List<? extends VariableTree> getParameters() {
            return this.params;
        }

        @Override
        public Tag getTag() {
            return Tag.LAMBDA;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitLambdaExpression(this, d10);
        }

        @Override
        public JCTree getBody() {
            return this.body;
        }

        @Override
        public JCLambda setType(Type type) {
            super.setType(type);
            return this;
        }
    }

    public static class JCLiteral extends JCExpression implements LiteralTree {
        public TypeTag typetag;
        public Object value;

        public JCLiteral(TypeTag typeTag, Object obj) {
            this.typetag = typeTag;
            this.value = obj;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitLiteral(this);
        }

        @Override
        public Tree.Kind getKind() {
            return this.typetag.getKindLiteral();
        }

        @Override
        public Tag getTag() {
            return Tag.LITERAL;
        }

        @Override
        public Object getValue() {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[this.typetag.ordinal()];
            if (i10 == 1) {
                return Boolean.valueOf(((Integer) this.value).intValue() != 0);
            }
            if (i10 != 2) {
                return this.value;
            }
            int intValue = ((Integer) this.value).intValue();
            char c10 = (char) intValue;
            if (c10 == intValue) {
                return Character.valueOf(c10);
            }
            throw new AssertionError((Object) "bad value for char literal");
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitLiteral(this, d10);
        }

        @Override
        public JCLiteral setType(Type type) {
            super.setType(type);
            return this;
        }
    }

    public static class JCMemberReference extends JCFunctionalExpression implements MemberReferenceTree {
        public JCExpression expr;
        public ReferenceKind kind;
        public MemberReferenceTree.ReferenceMode mode;
        public Name name;
        private OverloadKind overloadKind;
        public boolean ownerAccessible;
        public JCPolyExpression.PolyKind refPolyKind;
        public Type referentType;
        public Symbol sym;
        public List<JCExpression> typeargs;
        public Type varargsElement;

        public enum OverloadKind {
            OVERLOADED,
            UNOVERLOADED
        }

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SUPER' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class ReferenceKind {
            private static final ReferenceKind[] $VALUES;
            public static final ReferenceKind ARRAY_CTOR;
            public static final ReferenceKind BOUND;
            public static final ReferenceKind IMPLICIT_INNER;
            public static final ReferenceKind STATIC;
            public static final ReferenceKind SUPER;
            public static final ReferenceKind TOPLEVEL;
            public static final ReferenceKind UNBOUND;
            final MemberReferenceTree.ReferenceMode mode;
            final boolean unbound;

            static {
                MemberReferenceTree.ReferenceMode referenceMode = MemberReferenceTree.ReferenceMode.INVOKE;
                ReferenceKind referenceKind = new ReferenceKind("SUPER", 0, referenceMode, false);
                SUPER = referenceKind;
                ReferenceKind referenceKind2 = new ReferenceKind("UNBOUND", 1, referenceMode, true);
                UNBOUND = referenceKind2;
                ReferenceKind referenceKind3 = new ReferenceKind("STATIC", 2, referenceMode, false);
                STATIC = referenceKind3;
                ReferenceKind referenceKind4 = new ReferenceKind("BOUND", 3, referenceMode, false);
                BOUND = referenceKind4;
                MemberReferenceTree.ReferenceMode referenceMode2 = MemberReferenceTree.ReferenceMode.NEW;
                ReferenceKind referenceKind5 = new ReferenceKind("IMPLICIT_INNER", 4, referenceMode2, false);
                IMPLICIT_INNER = referenceKind5;
                ReferenceKind referenceKind6 = new ReferenceKind("TOPLEVEL", 5, referenceMode2, false);
                TOPLEVEL = referenceKind6;
                ReferenceKind referenceKind7 = new ReferenceKind("ARRAY_CTOR", 6, referenceMode2, false);
                ARRAY_CTOR = referenceKind7;
                $VALUES = new ReferenceKind[]{referenceKind, referenceKind2, referenceKind3, referenceKind4, referenceKind5, referenceKind6, referenceKind7};
            }

            private ReferenceKind(String str, int i10, MemberReferenceTree.ReferenceMode referenceMode, boolean z10) {
                this.mode = referenceMode;
                this.unbound = z10;
            }

            public static ReferenceKind valueOf(String str) {
                return (ReferenceKind) Enum.valueOf(ReferenceKind.class, str);
            }

            public static ReferenceKind[] values() {
                return (ReferenceKind[]) $VALUES.clone();
            }

            public boolean isUnbound() {
                return this.unbound;
            }
        }

        public JCMemberReference(MemberReferenceTree.ReferenceMode referenceMode, Name name, JCExpression jCExpression, List<JCExpression> list) {
            this.mode = referenceMode;
            this.name = name;
            this.expr = jCExpression;
            this.typeargs = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitReference(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.MEMBER_REFERENCE;
        }

        @Override
        public MemberReferenceTree.ReferenceMode getMode() {
            return this.mode;
        }

        public OverloadKind getOverloadKind() {
            return this.overloadKind;
        }

        @Override
        public Tag getTag() {
            return Tag.REFERENCE;
        }

        public boolean hasKind(ReferenceKind referenceKind) {
            return this.kind == referenceKind;
        }

        public void setOverloadKind(OverloadKind overloadKind) {
            this.overloadKind = overloadKind;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitMemberReference(this, d10);
        }

        @Override
        public Name getName() {
            return this.name;
        }

        @Override
        public JCExpression getQualifierExpression() {
            return this.expr;
        }

        @Override
        public List<JCExpression> getTypeArguments() {
            return this.typeargs;
        }
    }

    public static class JCMethodDecl extends JCTree implements MethodTree {
        public JCBlock body;
        public JCExpression defaultValue;
        public JCModifiers mods;
        public Name name;
        public List<JCVariableDecl> params;
        public JCVariableDecl recvparam;
        public JCExpression restype;
        public Symbol.MethodSymbol sym;
        public List<JCExpression> thrown;
        public List<JCTypeParameter> typarams;

        public JCMethodDecl(JCModifiers jCModifiers, Name name, JCExpression jCExpression, List<JCTypeParameter> list, JCVariableDecl jCVariableDecl, List<JCVariableDecl> list2, List<JCExpression> list3, JCBlock jCBlock, JCExpression jCExpression2, Symbol.MethodSymbol methodSymbol) {
            this.mods = jCModifiers;
            this.name = name;
            this.restype = jCExpression;
            this.typarams = list;
            this.params = list2;
            this.recvparam = jCVariableDecl;
            this.thrown = list3;
            this.body = jCBlock;
            this.defaultValue = jCExpression2;
            this.sym = methodSymbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitMethodDef(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.METHOD;
        }

        @Override
        public Tag getTag() {
            return Tag.METHODDEF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitMethod(this, d10);
        }

        @Override
        public JCBlock getBody() {
            return this.body;
        }

        @Override
        public JCTree getDefaultValue() {
            return this.defaultValue;
        }

        @Override
        public JCModifiers getModifiers() {
            return this.mods;
        }

        @Override
        public Name getName() {
            return this.name;
        }

        @Override
        public List<JCVariableDecl> getParameters() {
            return this.params;
        }

        @Override
        public JCVariableDecl getReceiverParameter() {
            return this.recvparam;
        }

        @Override
        public JCTree getReturnType() {
            return this.restype;
        }

        @Override
        public List<JCExpression> getThrows() {
            return this.thrown;
        }

        @Override
        public List<JCTypeParameter> getTypeParameters() {
            return this.typarams;
        }
    }

    public static class JCMethodInvocation extends JCPolyExpression implements MethodInvocationTree {
        public List<JCExpression> args;
        public JCExpression meth;
        public List<JCExpression> typeargs;
        public Type varargsElement;

        public JCMethodInvocation(List<JCExpression> list, JCExpression jCExpression, List<JCExpression> list2) {
            this.typeargs = list == null ? List.nil() : list;
            this.meth = jCExpression;
            this.args = list2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitApply(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.METHOD_INVOCATION;
        }

        @Override
        public Tag getTag() {
            return Tag.APPLY;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitMethodInvocation(this, d10);
        }

        @Override
        public List<JCExpression> getArguments() {
            return this.args;
        }

        @Override
        public JCExpression getMethodSelect() {
            return this.meth;
        }

        @Override
        public List<JCExpression> getTypeArguments() {
            return this.typeargs;
        }

        @Override
        public JCMethodInvocation setType(Type type) {
            super.setType(type);
            return this;
        }
    }

    public static class JCModifiers extends JCTree implements ModifiersTree {
        public List<JCAnnotation> annotations;
        public long flags;

        public JCModifiers(long j10, List<JCAnnotation> list) {
            this.flags = j10;
            this.annotations = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitModifiers(this);
        }

        @Override
        public Set<Modifier> getFlags() {
            return Flags.asModifierSet(this.flags);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.MODIFIERS;
        }

        @Override
        public Tag getTag() {
            return Tag.MODIFIERS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitModifiers(this, d10);
        }

        @Override
        public List<JCAnnotation> getAnnotations() {
            return this.annotations;
        }
    }

    public static class JCModuleDecl extends JCTree implements ModuleTree {
        public List<JCDirective> directives;
        private final ModuleTree.ModuleKind kind;
        public JCModifiers mods;
        public JCExpression qualId;
        public Symbol.ModuleSymbol sym;
        public Type.ModuleType type;

        public JCModuleDecl(JCModifiers jCModifiers, ModuleTree.ModuleKind moduleKind, JCExpression jCExpression, List<JCDirective> list) {
            this.mods = jCModifiers;
            this.kind = moduleKind;
            this.qualId = jCExpression;
            this.directives = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitModuleDef(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.MODULE;
        }

        @Override
        public ModuleTree.ModuleKind getModuleType() {
            return this.kind;
        }

        @Override
        public Tag getTag() {
            return Tag.MODULEDEF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitModule(this, d10);
        }

        @Override
        public List<? extends AnnotationTree> getAnnotations() {
            return this.mods.annotations;
        }

        @Override
        public List<JCDirective> getDirectives() {
            return this.directives;
        }

        @Override
        public JCExpression getName() {
            return this.qualId;
        }
    }

    public static class JCNewArray extends JCExpression implements NewArrayTree {
        public List<JCAnnotation> annotations = List.nil();
        public List<List<JCAnnotation>> dimAnnotations = List.nil();
        public List<JCExpression> dims;
        public List<JCExpression> elems;
        public JCExpression elemtype;

        public JCNewArray(JCExpression jCExpression, List<JCExpression> list, List<JCExpression> list2) {
            this.elemtype = jCExpression;
            this.dims = list;
            this.elems = list2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitNewArray(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.NEW_ARRAY;
        }

        @Override
        public Tag getTag() {
            return Tag.NEWARRAY;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitNewArray(this, d10);
        }

        @Override
        public List<JCAnnotation> getAnnotations() {
            return this.annotations;
        }

        @Override
        public List<List<JCAnnotation>> getDimAnnotations() {
            return this.dimAnnotations;
        }

        @Override
        public List<JCExpression> getDimensions() {
            return this.dims;
        }

        @Override
        public List<JCExpression> getInitializers() {
            return this.elems;
        }

        @Override
        public JCExpression getType() {
            return this.elemtype;
        }
    }

    public static class JCNewClass extends JCPolyExpression implements NewClassTree {
        public List<JCExpression> args;
        public JCExpression clazz;
        public Symbol constructor;
        public Type constructorType;
        public JCClassDecl def;
        public JCExpression encl;
        public List<JCExpression> typeargs;
        public Type varargsElement;

        public JCNewClass(JCExpression jCExpression, List<JCExpression> list, JCExpression jCExpression2, List<JCExpression> list2, JCClassDecl jCClassDecl) {
            this.encl = jCExpression;
            this.typeargs = list == null ? List.nil() : list;
            this.clazz = jCExpression2;
            this.args = list2;
            this.def = jCClassDecl;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitNewClass(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.NEW_CLASS;
        }

        @Override
        public Tag getTag() {
            return Tag.NEWCLASS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitNewClass(this, d10);
        }

        @Override
        public List<JCExpression> getArguments() {
            return this.args;
        }

        @Override
        public JCClassDecl getClassBody() {
            return this.def;
        }

        @Override
        public JCExpression getEnclosingExpression() {
            return this.encl;
        }

        @Override
        public JCExpression getIdentifier() {
            return this.clazz;
        }

        @Override
        public List<JCExpression> getTypeArguments() {
            return this.typeargs;
        }
    }

    public static class JCOpens extends JCDirective implements OpensTree {
        public Directive.OpensDirective directive;
        public List<JCExpression> moduleNames;
        public JCExpression qualid;

        public JCOpens(JCExpression jCExpression, List<JCExpression> list) {
            this.qualid = jCExpression;
            this.moduleNames = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitOpens(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.OPENS;
        }

        @Override
        public Tag getTag() {
            return Tag.OPENS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitOpens(this, d10);
        }

        @Override
        public List<JCExpression> getModuleNames() {
            return this.moduleNames;
        }

        @Override
        public JCExpression getPackageName() {
            return this.qualid;
        }
    }

    public static abstract class JCOperatorExpression extends JCExpression {
        protected Tag opcode;
        public Symbol.OperatorSymbol operator;

        public enum OperandPos {
            LEFT,
            RIGHT
        }

        public abstract JCExpression getOperand(OperandPos operandPos);

        public Symbol.OperatorSymbol getOperator() {
            return this.operator;
        }

        @Override
        public Tag getTag() {
            return this.opcode;
        }
    }

    public static class JCPackageDecl extends JCTree implements PackageTree {
        public List<JCAnnotation> annotations;
        public Symbol.PackageSymbol packge;
        public JCExpression pid;

        public JCPackageDecl(List<JCAnnotation> list, JCExpression jCExpression) {
            this.annotations = list;
            this.pid = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitPackageDef(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.PACKAGE;
        }

        @Override
        public Tag getTag() {
            return Tag.PACKAGEDEF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitPackage(this, d10);
        }

        @Override
        public List<JCAnnotation> getAnnotations() {
            return this.annotations;
        }

        @Override
        public JCExpression getPackageName() {
            return this.pid;
        }
    }

    public static class JCParens extends JCExpression implements ParenthesizedTree {
        public JCExpression expr;

        public JCParens(JCExpression jCExpression) {
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitParens(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.PARENTHESIZED;
        }

        @Override
        public Tag getTag() {
            return Tag.PARENS;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitParenthesized(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }
    }

    public static abstract class JCPolyExpression extends JCExpression {
        public PolyKind polyKind;

        public enum PolyKind {
            STANDALONE,
            POLY
        }

        @Override
        public boolean isPoly() {
            return this.polyKind == PolyKind.POLY;
        }

        @Override
        public boolean isStandalone() {
            return this.polyKind == PolyKind.STANDALONE;
        }
    }

    public static class JCPrimitiveTypeTree extends JCExpression implements PrimitiveTypeTree {
        public TypeTag typetag;

        public JCPrimitiveTypeTree(TypeTag typeTag) {
            this.typetag = typeTag;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeIdent(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.PRIMITIVE_TYPE;
        }

        @Override
        public TypeKind getPrimitiveTypeKind() {
            return this.typetag.getPrimitiveTypeKind();
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEIDENT;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitPrimitiveType(this, d10);
        }
    }

    public static class JCProvides extends JCDirective implements ProvidesTree {
        public List<JCExpression> implNames;
        public JCExpression serviceName;

        public JCProvides(JCExpression jCExpression, List<JCExpression> list) {
            this.serviceName = jCExpression;
            this.implNames = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitProvides(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.PROVIDES;
        }

        @Override
        public Tag getTag() {
            return Tag.PROVIDES;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitProvides(this, d10);
        }

        @Override
        public List<JCExpression> getImplementationNames() {
            return this.implNames;
        }

        @Override
        public JCExpression getServiceName() {
            return this.serviceName;
        }
    }

    public static class JCRequires extends JCDirective implements RequiresTree {
        public Directive.RequiresDirective directive;
        public boolean isStaticPhase;
        public boolean isTransitive;
        public JCExpression moduleName;

        public JCRequires(boolean z10, boolean z11, JCExpression jCExpression) {
            this.isTransitive = z10;
            this.isStaticPhase = z11;
            this.moduleName = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitRequires(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.REQUIRES;
        }

        @Override
        public Tag getTag() {
            return Tag.REQUIRES;
        }

        @Override
        public boolean isStatic() {
            return this.isStaticPhase;
        }

        @Override
        public boolean isTransitive() {
            return this.isTransitive;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitRequires(this, d10);
        }

        @Override
        public JCExpression getModuleName() {
            return this.moduleName;
        }
    }

    public static class JCReturn extends JCStatement implements ReturnTree {
        public JCExpression expr;

        public JCReturn(JCExpression jCExpression) {
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitReturn(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.RETURN;
        }

        @Override
        public Tag getTag() {
            return Tag.RETURN;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitReturn(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }
    }

    public static class JCSkip extends JCStatement implements EmptyStatementTree {
        @Override
        public void accept(Visitor visitor) {
            visitor.visitSkip(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.EMPTY_STATEMENT;
        }

        @Override
        public Tag getTag() {
            return Tag.SKIP;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitEmptyStatement(this, d10);
        }
    }

    public static abstract class JCStatement extends JCTree implements StatementTree {
        @Override
        public JCStatement setPos(int i10) {
            super.setPos(i10);
            return this;
        }

        @Override
        public JCStatement setType(Type type) {
            super.setType(type);
            return this;
        }
    }

    public static class JCSwitch extends JCStatement implements SwitchTree {
        public List<JCCase> cases;
        public JCExpression selector;

        public JCSwitch(JCExpression jCExpression, List<JCCase> list) {
            this.selector = jCExpression;
            this.cases = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitSwitch(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.SWITCH;
        }

        @Override
        public Tag getTag() {
            return Tag.SWITCH;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitSwitch(this, d10);
        }

        @Override
        public List<JCCase> getCases() {
            return this.cases;
        }

        @Override
        public JCExpression getExpression() {
            return this.selector;
        }
    }

    public static class JCSynchronized extends JCStatement implements SynchronizedTree {
        public JCBlock body;
        public JCExpression lock;

        public JCSynchronized(JCExpression jCExpression, JCBlock jCBlock) {
            this.lock = jCExpression;
            this.body = jCBlock;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitSynchronized(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.SYNCHRONIZED;
        }

        @Override
        public Tag getTag() {
            return Tag.SYNCHRONIZED;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitSynchronized(this, d10);
        }

        @Override
        public JCBlock getBlock() {
            return this.body;
        }

        @Override
        public JCExpression getExpression() {
            return this.lock;
        }
    }

    public static class JCThrow extends JCStatement implements ThrowTree {
        public JCExpression expr;

        public JCThrow(JCExpression jCExpression) {
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitThrow(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.THROW;
        }

        @Override
        public Tag getTag() {
            return Tag.THROW;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitThrow(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }
    }

    public static class JCTry extends JCStatement implements TryTree {
        public JCBlock body;
        public List<JCCatch> catchers;
        public JCBlock finalizer;
        public boolean finallyCanCompleteNormally;
        public List<JCTree> resources;

        public JCTry(List<JCTree> list, JCBlock jCBlock, List<JCCatch> list2, JCBlock jCBlock2) {
            this.body = jCBlock;
            this.catchers = list2;
            this.finalizer = jCBlock2;
            this.resources = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTry(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.TRY;
        }

        @Override
        public Tag getTag() {
            return Tag.TRY;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitTry(this, d10);
        }

        @Override
        public JCBlock getBlock() {
            return this.body;
        }

        @Override
        public List<JCCatch> getCatches() {
            return this.catchers;
        }

        @Override
        public JCBlock getFinallyBlock() {
            return this.finalizer;
        }

        @Override
        public List<JCTree> getResources() {
            return this.resources;
        }
    }

    public static class JCTypeApply extends JCExpression implements ParameterizedTypeTree {
        public List<JCExpression> arguments;
        public JCExpression clazz;

        public JCTypeApply(JCExpression jCExpression, List<JCExpression> list) {
            this.clazz = jCExpression;
            this.arguments = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeApply(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.PARAMETERIZED_TYPE;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEAPPLY;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitParameterizedType(this, d10);
        }

        @Override
        public JCTree getType() {
            return this.clazz;
        }

        @Override
        public List<JCExpression> getTypeArguments() {
            return this.arguments;
        }
    }

    public static class JCTypeCast extends JCExpression implements TypeCastTree {
        public JCTree clazz;
        public JCExpression expr;

        public JCTypeCast(JCTree jCTree, JCExpression jCExpression) {
            this.clazz = jCTree;
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeCast(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.TYPE_CAST;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPECAST;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitTypeCast(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.expr;
        }

        @Override
        public JCTree getType() {
            return this.clazz;
        }
    }

    public static class JCTypeIntersection extends JCExpression implements IntersectionTypeTree {
        public List<JCExpression> bounds;

        public JCTypeIntersection(List<JCExpression> list) {
            this.bounds = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeIntersection(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.INTERSECTION_TYPE;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEINTERSECTION;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitIntersectionType(this, d10);
        }

        @Override
        public List<JCExpression> getBounds() {
            return this.bounds;
        }
    }

    public static class JCTypeParameter extends JCTree implements TypeParameterTree {
        public List<JCAnnotation> annotations;
        public List<JCExpression> bounds;
        public Name name;

        public JCTypeParameter(Name name, List<JCExpression> list, List<JCAnnotation> list2) {
            this.name = name;
            this.bounds = list;
            this.annotations = list2;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeParameter(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.TYPE_PARAMETER;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEPARAMETER;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitTypeParameter(this, d10);
        }

        @Override
        public List<JCAnnotation> getAnnotations() {
            return this.annotations;
        }

        @Override
        public List<JCExpression> getBounds() {
            return this.bounds;
        }

        @Override
        public Name getName() {
            return this.name;
        }
    }

    public static class JCTypeUnion extends JCExpression implements UnionTypeTree {
        public List<JCExpression> alternatives;

        public JCTypeUnion(List<JCExpression> list) {
            this.alternatives = list;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeUnion(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.UNION_TYPE;
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEUNION;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitUnionType(this, d10);
        }

        @Override
        public List<JCExpression> getTypeAlternatives() {
            return this.alternatives;
        }
    }

    public static class JCUnary extends JCOperatorExpression implements UnaryTree {
        public JCExpression arg;

        public JCUnary(Tag tag, JCExpression jCExpression) {
            this.opcode = tag;
            this.arg = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitUnary(this);
        }

        @Override
        public Tree.Kind getKind() {
            return TreeInfo.tagToKind(getTag());
        }

        @Override
        public JCExpression getOperand(JCOperatorExpression.OperandPos operandPos) {
            return this.arg;
        }

        public void setTag(Tag tag) {
            this.opcode = tag;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitUnary(this, d10);
        }

        @Override
        public JCExpression getExpression() {
            return this.arg;
        }
    }

    public static class JCUses extends JCDirective implements UsesTree {
        public JCExpression qualid;

        public JCUses(JCExpression jCExpression) {
            this.qualid = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitUses(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.USES;
        }

        @Override
        public Tag getTag() {
            return Tag.USES;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitUses(this, d10);
        }

        @Override
        public JCExpression getServiceName() {
            return this.qualid;
        }
    }

    public static class JCVariableDecl extends JCStatement implements VariableTree {
        public JCExpression init;
        public JCModifiers mods;
        public Name name;
        public JCExpression nameexpr;
        public Symbol.VarSymbol sym;
        public JCExpression vartype;

        public JCVariableDecl(JCModifiers jCModifiers, Name name, JCExpression jCExpression, JCExpression jCExpression2, Symbol.VarSymbol varSymbol) {
            this.mods = jCModifiers;
            this.name = name;
            this.vartype = jCExpression;
            this.init = jCExpression2;
            this.sym = varSymbol;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitVarDef(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.VARIABLE;
        }

        @Override
        public Tag getTag() {
            return Tag.VARDEF;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitVariable(this, d10);
        }

        @Override
        public JCExpression getInitializer() {
            return this.init;
        }

        @Override
        public JCModifiers getModifiers() {
            return this.mods;
        }

        @Override
        public Name getName() {
            return this.name;
        }

        @Override
        public JCExpression getNameExpression() {
            return this.nameexpr;
        }

        @Override
        public JCTree getType() {
            return this.vartype;
        }

        public JCVariableDecl(JCModifiers jCModifiers, JCExpression jCExpression, JCExpression jCExpression2) {
            this(jCModifiers, null, jCExpression2, null, null);
            this.nameexpr = jCExpression;
            if (jCExpression.hasTag(Tag.IDENT)) {
                this.name = ((JCIdent) jCExpression).name;
            } else {
                this.name = ((JCFieldAccess) jCExpression).name;
            }
        }
    }

    public static class JCWhileLoop extends JCStatement implements WhileLoopTree {
        public JCStatement body;
        public JCExpression cond;

        public JCWhileLoop(JCExpression jCExpression, JCStatement jCStatement) {
            this.cond = jCExpression;
            this.body = jCStatement;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitWhileLoop(this);
        }

        @Override
        public Tree.Kind getKind() {
            return Tree.Kind.WHILE_LOOP;
        }

        @Override
        public Tag getTag() {
            return Tag.WHILELOOP;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitWhileLoop(this, d10);
        }

        @Override
        public JCExpression getCondition() {
            return this.cond;
        }

        @Override
        public JCStatement getStatement() {
            return this.body;
        }
    }

    public static class JCWildcard extends JCExpression implements WildcardTree {
        public JCTree inner;
        public TypeBoundKind kind;

        public JCWildcard(TypeBoundKind typeBoundKind, JCTree jCTree) {
            this.kind = (TypeBoundKind) Assert.checkNonNull(typeBoundKind);
            this.inner = jCTree;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitWildcard(this);
        }

        @Override
        public Tree.Kind getKind() {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$BoundKind[this.kind.kind.ordinal()];
            if (i10 == 1) {
                return Tree.Kind.UNBOUNDED_WILDCARD;
            }
            if (i10 == 2) {
                return Tree.Kind.EXTENDS_WILDCARD;
            }
            if (i10 == 3) {
                return Tree.Kind.SUPER_WILDCARD;
            }
            throw new AssertionError((Object) ("Unknown wildcard bound " + ((Object) this.kind)));
        }

        @Override
        public Tag getTag() {
            return Tag.WILDCARD;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            return treeVisitor.visitWildcard(this, d10);
        }

        @Override
        public JCTree getBound() {
            return this.inner;
        }
    }

    public static class LetExpr extends JCExpression {
        public List<JCVariableDecl> defs;
        public JCExpression expr;

        public LetExpr(List<JCVariableDecl> list, JCExpression jCExpression) {
            this.defs = list;
            this.expr = jCExpression;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitLetExpr(this);
        }

        @Override
        public Tree.Kind getKind() {
            throw new AssertionError((Object) "LetExpr is not part of a public API");
        }

        @Override
        public Tag getTag() {
            return Tag.LETEXPR;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            throw new AssertionError((Object) "LetExpr is not part of a public API");
        }
    }

    public static class TypeBoundKind extends JCTree {
        public BoundKind kind;

        public TypeBoundKind(BoundKind boundKind) {
            this.kind = boundKind;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitTypeBoundKind(this);
        }

        @Override
        public Tree.Kind getKind() {
            throw new AssertionError((Object) "TypeBoundKind is not part of a public API");
        }

        @Override
        public Tag getTag() {
            return Tag.TYPEBOUNDKIND;
        }

        @Override
        public <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10) {
            throw new AssertionError((Object) "TypeBoundKind is not part of a public API");
        }
    }

    public static abstract class Visitor {
        public void visitAnnotatedType(JCAnnotatedType jCAnnotatedType) {
            visitTree(jCAnnotatedType);
        }

        public void visitAnnotation(JCAnnotation jCAnnotation) {
            visitTree(jCAnnotation);
        }

        public void visitApply(JCMethodInvocation jCMethodInvocation) {
            visitTree(jCMethodInvocation);
        }

        public void visitAssert(JCAssert jCAssert) {
            visitTree(jCAssert);
        }

        public void visitAssign(JCAssign jCAssign) {
            visitTree(jCAssign);
        }

        public void visitAssignop(JCAssignOp jCAssignOp) {
            visitTree(jCAssignOp);
        }

        public void visitBinary(JCBinary jCBinary) {
            visitTree(jCBinary);
        }

        public void visitBlock(JCBlock jCBlock) {
            visitTree(jCBlock);
        }

        public void visitBreak(JCBreak jCBreak) {
            visitTree(jCBreak);
        }

        public void visitCase(JCCase jCCase) {
            visitTree(jCCase);
        }

        public void visitCatch(JCCatch jCCatch) {
            visitTree(jCCatch);
        }

        public void visitClassDef(JCClassDecl jCClassDecl) {
            visitTree(jCClassDecl);
        }

        public void visitConditional(JCConditional jCConditional) {
            visitTree(jCConditional);
        }

        public void visitContinue(JCContinue jCContinue) {
            visitTree(jCContinue);
        }

        public void visitDoLoop(JCDoWhileLoop jCDoWhileLoop) {
            visitTree(jCDoWhileLoop);
        }

        public void visitErroneous(JCErroneous jCErroneous) {
            visitTree(jCErroneous);
        }

        public void visitExec(JCExpressionStatement jCExpressionStatement) {
            visitTree(jCExpressionStatement);
        }

        public void visitExports(JCExports jCExports) {
            visitTree(jCExports);
        }

        public void visitForLoop(JCForLoop jCForLoop) {
            visitTree(jCForLoop);
        }

        public void visitForeachLoop(JCEnhancedForLoop jCEnhancedForLoop) {
            visitTree(jCEnhancedForLoop);
        }

        public void visitIdent(JCIdent jCIdent) {
            visitTree(jCIdent);
        }

        public void visitIf(JCIf jCIf) {
            visitTree(jCIf);
        }

        public void visitImport(JCImport jCImport) {
            visitTree(jCImport);
        }

        public void visitIndexed(JCArrayAccess jCArrayAccess) {
            visitTree(jCArrayAccess);
        }

        public void visitLabelled(JCLabeledStatement jCLabeledStatement) {
            visitTree(jCLabeledStatement);
        }

        public void visitLambda(JCLambda jCLambda) {
            visitTree(jCLambda);
        }

        public void visitLetExpr(LetExpr letExpr) {
            visitTree(letExpr);
        }

        public void visitLiteral(JCLiteral jCLiteral) {
            visitTree(jCLiteral);
        }

        public void visitMethodDef(JCMethodDecl jCMethodDecl) {
            visitTree(jCMethodDecl);
        }

        public void visitModifiers(JCModifiers jCModifiers) {
            visitTree(jCModifiers);
        }

        public void visitModuleDef(JCModuleDecl jCModuleDecl) {
            visitTree(jCModuleDecl);
        }

        public void visitNewArray(JCNewArray jCNewArray) {
            visitTree(jCNewArray);
        }

        public void visitNewClass(JCNewClass jCNewClass) {
            visitTree(jCNewClass);
        }

        public void visitOpens(JCOpens jCOpens) {
            visitTree(jCOpens);
        }

        public void visitPackageDef(JCPackageDecl jCPackageDecl) {
            visitTree(jCPackageDecl);
        }

        public void visitParens(JCParens jCParens) {
            visitTree(jCParens);
        }

        public void visitProvides(JCProvides jCProvides) {
            visitTree(jCProvides);
        }

        public void visitReference(JCMemberReference jCMemberReference) {
            visitTree(jCMemberReference);
        }

        public void visitRequires(JCRequires jCRequires) {
            visitTree(jCRequires);
        }

        public void visitReturn(JCReturn jCReturn) {
            visitTree(jCReturn);
        }

        public void visitSelect(JCFieldAccess jCFieldAccess) {
            visitTree(jCFieldAccess);
        }

        public void visitSkip(JCSkip jCSkip) {
            visitTree(jCSkip);
        }

        public void visitSwitch(JCSwitch jCSwitch) {
            visitTree(jCSwitch);
        }

        public void visitSynchronized(JCSynchronized jCSynchronized) {
            visitTree(jCSynchronized);
        }

        public void visitThrow(JCThrow jCThrow) {
            visitTree(jCThrow);
        }

        public void visitTopLevel(JCCompilationUnit jCCompilationUnit) {
            visitTree(jCCompilationUnit);
        }

        public void visitTree(JCTree jCTree) {
            Assert.error();
        }

        public void visitTry(JCTry jCTry) {
            visitTree(jCTry);
        }

        public void visitTypeApply(JCTypeApply jCTypeApply) {
            visitTree(jCTypeApply);
        }

        public void visitTypeArray(JCArrayTypeTree jCArrayTypeTree) {
            visitTree(jCArrayTypeTree);
        }

        public void visitTypeBoundKind(TypeBoundKind typeBoundKind) {
            visitTree(typeBoundKind);
        }

        public void visitTypeCast(JCTypeCast jCTypeCast) {
            visitTree(jCTypeCast);
        }

        public void visitTypeIdent(JCPrimitiveTypeTree jCPrimitiveTypeTree) {
            visitTree(jCPrimitiveTypeTree);
        }

        public void visitTypeIntersection(JCTypeIntersection jCTypeIntersection) {
            visitTree(jCTypeIntersection);
        }

        public void visitTypeParameter(JCTypeParameter jCTypeParameter) {
            visitTree(jCTypeParameter);
        }

        public void visitTypeTest(JCInstanceOf jCInstanceOf) {
            visitTree(jCInstanceOf);
        }

        public void visitTypeUnion(JCTypeUnion jCTypeUnion) {
            visitTree(jCTypeUnion);
        }

        public void visitUnary(JCUnary jCUnary) {
            visitTree(jCUnary);
        }

        public void visitUses(JCUses jCUses) {
            visitTree(jCUses);
        }

        public void visitVarDef(JCVariableDecl jCVariableDecl) {
            visitTree(jCVariableDecl);
        }

        public void visitWhileLoop(JCWhileLoop jCWhileLoop) {
            visitTree(jCWhileLoop);
        }

        public void visitWildcard(JCWildcard jCWildcard) {
            visitTree(jCWildcard);
        }
    }

    @Override
    public abstract <R, D> R accept(TreeVisitor<R, D> treeVisitor, D d10);

    public abstract void accept(Visitor visitor);

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public int getEndPosition(EndPosTable endPosTable) {
        return TreeInfo.getEndPos(this, endPosTable);
    }

    @Override
    public int getPreferredPosition() {
        return this.pos;
    }

    @Override
    public int getStartPosition() {
        return TreeInfo.getStartPos(this);
    }

    public abstract Tag getTag();

    @Override
    public JCTree getTree() {
        return this;
    }

    public boolean hasTag(Tag tag) {
        return tag == getTag();
    }

    public JCDiagnostic.DiagnosticPosition pos() {
        return this;
    }

    public JCTree setPos(int i10) {
        this.pos = i10;
        return this;
    }

    public JCTree setType(Type type) {
        this.type = type;
        return this;
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            new Pretty(stringWriter, false).printExpr(this);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'MOD_ASG' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Tag {
        private static final Tag[] $VALUES;
        public static final Tag AND;
        public static final Tag ANNOTATED_TYPE;
        public static final Tag ANNOTATION;
        public static final Tag APPLY;
        public static final Tag ASSERT;
        public static final Tag ASSIGN;
        public static final Tag BITAND;
        public static final Tag BITAND_ASG;
        public static final Tag BITOR;
        public static final Tag BITOR_ASG;
        public static final Tag BITXOR;
        public static final Tag BITXOR_ASG;
        public static final Tag BLOCK;
        public static final Tag BREAK;
        public static final Tag CASE;
        public static final Tag CATCH;
        public static final Tag CLASSDEF;
        public static final Tag COMPL;
        public static final Tag CONDEXPR;
        public static final Tag CONTINUE;
        public static final Tag DIV;
        public static final Tag DIV_ASG;
        public static final Tag DOLOOP;
        public static final Tag EQ;
        public static final Tag ERRONEOUS;
        public static final Tag EXEC;
        public static final Tag EXPORTS;
        public static final Tag FOREACHLOOP;
        public static final Tag FORLOOP;
        public static final Tag GE;
        public static final Tag GT;
        public static final Tag IDENT;
        public static final Tag IF;
        public static final Tag IMPORT;
        public static final Tag INDEXED;
        public static final Tag LABELLED;
        public static final Tag LAMBDA;
        public static final Tag LE;
        public static final Tag LETEXPR;
        public static final Tag LITERAL;
        public static final Tag LT;
        public static final Tag METHODDEF;
        public static final Tag MINUS;
        public static final Tag MINUS_ASG;
        public static final Tag MOD;
        public static final Tag MODIFIERS;
        public static final Tag MODULEDEF;
        public static final Tag MOD_ASG;
        public static final Tag MUL;
        public static final Tag MUL_ASG;
        public static final Tag NE;
        public static final Tag NEG;
        public static final Tag NEWARRAY;
        public static final Tag NEWCLASS;
        public static final Tag NOT;
        public static final Tag NO_TAG;
        public static final Tag NULLCHK;
        public static final Tag OPENS;
        public static final Tag OR;
        public static final Tag PACKAGEDEF;
        public static final Tag PARENS;
        public static final Tag PLUS;
        public static final Tag PLUS_ASG;
        public static final Tag POS;
        public static final Tag POSTDEC;
        public static final Tag POSTINC;
        public static final Tag PREDEC;
        public static final Tag PREINC;
        public static final Tag PROVIDES;
        public static final Tag REFERENCE;
        public static final Tag REQUIRES;
        public static final Tag RETURN;
        public static final Tag SELECT;
        public static final Tag SKIP;
        public static final Tag SL;
        public static final Tag SL_ASG;
        public static final Tag SR;
        public static final Tag SR_ASG;
        public static final Tag SWITCH;
        public static final Tag SYNCHRONIZED;
        public static final Tag THROW;
        public static final Tag TOPLEVEL;
        public static final Tag TRY;
        public static final Tag TYPEAPPLY;
        public static final Tag TYPEARRAY;
        public static final Tag TYPEBOUNDKIND;
        public static final Tag TYPECAST;
        public static final Tag TYPEIDENT;
        public static final Tag TYPEINTERSECTION;
        public static final Tag TYPEPARAMETER;
        public static final Tag TYPETEST;
        public static final Tag TYPEUNION;
        public static final Tag TYPE_ANNOTATION;
        public static final Tag USES;
        public static final Tag USR;
        public static final Tag USR_ASG;
        public static final Tag VARDEF;
        public static final Tag WHILELOOP;
        public static final Tag WILDCARD;
        private static final int numberOfOperators;
        private final Tag noAssignTag;

        static {
            Tag tag = new Tag("NO_TAG", 0);
            NO_TAG = tag;
            Tag tag2 = new Tag("TOPLEVEL", 1);
            TOPLEVEL = tag2;
            Tag tag3 = new Tag("PACKAGEDEF", 2);
            PACKAGEDEF = tag3;
            Tag tag4 = new Tag("IMPORT", 3);
            IMPORT = tag4;
            Tag tag5 = new Tag("CLASSDEF", 4);
            CLASSDEF = tag5;
            Tag tag6 = new Tag("METHODDEF", 5);
            METHODDEF = tag6;
            Tag tag7 = new Tag("VARDEF", 6);
            VARDEF = tag7;
            Tag tag8 = new Tag("SKIP", 7);
            SKIP = tag8;
            Tag tag9 = new Tag("BLOCK", 8);
            BLOCK = tag9;
            Tag tag10 = new Tag("DOLOOP", 9);
            DOLOOP = tag10;
            Tag tag11 = new Tag("WHILELOOP", 10);
            WHILELOOP = tag11;
            Tag tag12 = new Tag("FORLOOP", 11);
            FORLOOP = tag12;
            Tag tag13 = new Tag("FOREACHLOOP", 12);
            FOREACHLOOP = tag13;
            Tag tag14 = new Tag("LABELLED", 13);
            LABELLED = tag14;
            Tag tag15 = new Tag("SWITCH", 14);
            SWITCH = tag15;
            Tag tag16 = new Tag("CASE", 15);
            CASE = tag16;
            Tag tag17 = new Tag("SYNCHRONIZED", 16);
            SYNCHRONIZED = tag17;
            Tag tag18 = new Tag("TRY", 17);
            TRY = tag18;
            Tag tag19 = new Tag("CATCH", 18);
            CATCH = tag19;
            Tag tag20 = new Tag("CONDEXPR", 19);
            CONDEXPR = tag20;
            Tag tag21 = new Tag("IF", 20);
            IF = tag21;
            Tag tag22 = new Tag("EXEC", 21);
            EXEC = tag22;
            Tag tag23 = new Tag("BREAK", 22);
            BREAK = tag23;
            Tag tag24 = new Tag("CONTINUE", 23);
            CONTINUE = tag24;
            Tag tag25 = new Tag("RETURN", 24);
            RETURN = tag25;
            Tag tag26 = new Tag("THROW", 25);
            THROW = tag26;
            Tag tag27 = new Tag("ASSERT", 26);
            ASSERT = tag27;
            Tag tag28 = new Tag("APPLY", 27);
            APPLY = tag28;
            Tag tag29 = new Tag("NEWCLASS", 28);
            NEWCLASS = tag29;
            Tag tag30 = new Tag("NEWARRAY", 29);
            NEWARRAY = tag30;
            Tag tag31 = new Tag("LAMBDA", 30);
            LAMBDA = tag31;
            Tag tag32 = new Tag("PARENS", 31);
            PARENS = tag32;
            Tag tag33 = new Tag("ASSIGN", 32);
            ASSIGN = tag33;
            Tag tag34 = new Tag("TYPECAST", 33);
            TYPECAST = tag34;
            Tag tag35 = new Tag("TYPETEST", 34);
            TYPETEST = tag35;
            Tag tag36 = new Tag("INDEXED", 35);
            INDEXED = tag36;
            Tag tag37 = new Tag("SELECT", 36);
            SELECT = tag37;
            Tag tag38 = new Tag("REFERENCE", 37);
            REFERENCE = tag38;
            Tag tag39 = new Tag("IDENT", 38);
            IDENT = tag39;
            Tag tag40 = new Tag("LITERAL", 39);
            LITERAL = tag40;
            Tag tag41 = new Tag("TYPEIDENT", 40);
            TYPEIDENT = tag41;
            Tag tag42 = new Tag("TYPEARRAY", 41);
            TYPEARRAY = tag42;
            Tag tag43 = new Tag("TYPEAPPLY", 42);
            TYPEAPPLY = tag43;
            Tag tag44 = new Tag("TYPEUNION", 43);
            TYPEUNION = tag44;
            Tag tag45 = new Tag("TYPEINTERSECTION", 44);
            TYPEINTERSECTION = tag45;
            Tag tag46 = new Tag("TYPEPARAMETER", 45);
            TYPEPARAMETER = tag46;
            Tag tag47 = new Tag("WILDCARD", 46);
            WILDCARD = tag47;
            Tag tag48 = new Tag("TYPEBOUNDKIND", 47);
            TYPEBOUNDKIND = tag48;
            Tag tag49 = new Tag("ANNOTATION", 48);
            ANNOTATION = tag49;
            Tag tag50 = new Tag("TYPE_ANNOTATION", 49);
            TYPE_ANNOTATION = tag50;
            Tag tag51 = new Tag("MODIFIERS", 50);
            MODIFIERS = tag51;
            Tag tag52 = new Tag("ANNOTATED_TYPE", 51);
            ANNOTATED_TYPE = tag52;
            Tag tag53 = new Tag("ERRONEOUS", 52);
            ERRONEOUS = tag53;
            Tag tag54 = new Tag("POS", 53);
            POS = tag54;
            Tag tag55 = new Tag("NEG", 54);
            NEG = tag55;
            Tag tag56 = new Tag("NOT", 55);
            NOT = tag56;
            Tag tag57 = new Tag("COMPL", 56);
            COMPL = tag57;
            Tag tag58 = new Tag("PREINC", 57);
            PREINC = tag58;
            Tag tag59 = new Tag("PREDEC", 58);
            PREDEC = tag59;
            Tag tag60 = new Tag("POSTINC", 59);
            POSTINC = tag60;
            Tag tag61 = new Tag("POSTDEC", 60);
            POSTDEC = tag61;
            Tag tag62 = new Tag("NULLCHK", 61);
            NULLCHK = tag62;
            Tag tag63 = new Tag("OR", 62);
            OR = tag63;
            Tag tag64 = new Tag("AND", 63);
            AND = tag64;
            Tag tag65 = new Tag("BITOR", 64);
            BITOR = tag65;
            Tag tag66 = new Tag("BITXOR", 65);
            BITXOR = tag66;
            Tag tag67 = new Tag("BITAND", 66);
            BITAND = tag67;
            Tag tag68 = new Tag("EQ", 67);
            EQ = tag68;
            Tag tag69 = new Tag("NE", 68);
            NE = tag69;
            Tag tag70 = new Tag("LT", 69);
            LT = tag70;
            Tag tag71 = new Tag("GT", 70);
            GT = tag71;
            Tag tag72 = new Tag("LE", 71);
            LE = tag72;
            Tag tag73 = new Tag("GE", 72);
            GE = tag73;
            Tag tag74 = new Tag("SL", 73);
            SL = tag74;
            Tag tag75 = new Tag("SR", 74);
            SR = tag75;
            Tag tag76 = new Tag("USR", 75);
            USR = tag76;
            Tag tag77 = new Tag("PLUS", 76);
            PLUS = tag77;
            Tag tag78 = new Tag("MINUS", 77);
            MINUS = tag78;
            Tag tag79 = new Tag("MUL", 78);
            MUL = tag79;
            Tag tag80 = new Tag("DIV", 79);
            DIV = tag80;
            Tag tag81 = new Tag("MOD", 80);
            MOD = tag81;
            Tag tag82 = new Tag("BITOR_ASG", 81, tag65);
            BITOR_ASG = tag82;
            Tag tag83 = new Tag("BITXOR_ASG", 82, tag66);
            BITXOR_ASG = tag83;
            Tag tag84 = new Tag("BITAND_ASG", 83, tag67);
            BITAND_ASG = tag84;
            Tag tag85 = new Tag("SL_ASG", 84, tag74);
            SL_ASG = tag85;
            Tag tag86 = new Tag("SR_ASG", 85, tag75);
            SR_ASG = tag86;
            Tag tag87 = new Tag("USR_ASG", 86, tag76);
            USR_ASG = tag87;
            Tag tag88 = new Tag("PLUS_ASG", 87, tag77);
            PLUS_ASG = tag88;
            Tag tag89 = new Tag("MINUS_ASG", 88, tag78);
            MINUS_ASG = tag89;
            Tag tag90 = new Tag("MUL_ASG", 89, tag79);
            MUL_ASG = tag90;
            Tag tag91 = new Tag("DIV_ASG", 90, tag80);
            DIV_ASG = tag91;
            Tag tag92 = new Tag("MOD_ASG", 91, tag81);
            MOD_ASG = tag92;
            Tag tag93 = new Tag("MODULEDEF", 92);
            MODULEDEF = tag93;
            Tag tag94 = new Tag("EXPORTS", 93);
            EXPORTS = tag94;
            Tag tag95 = new Tag("OPENS", 94);
            OPENS = tag95;
            Tag tag96 = new Tag("PROVIDES", 95);
            PROVIDES = tag96;
            Tag tag97 = new Tag("REQUIRES", 96);
            REQUIRES = tag97;
            Tag tag98 = new Tag("USES", 97);
            USES = tag98;
            Tag tag99 = new Tag("LETEXPR", 98);
            LETEXPR = tag99;
            $VALUES = new Tag[]{tag, tag2, tag3, tag4, tag5, tag6, tag7, tag8, tag9, tag10, tag11, tag12, tag13, tag14, tag15, tag16, tag17, tag18, tag19, tag20, tag21, tag22, tag23, tag24, tag25, tag26, tag27, tag28, tag29, tag30, tag31, tag32, tag33, tag34, tag35, tag36, tag37, tag38, tag39, tag40, tag41, tag42, tag43, tag44, tag45, tag46, tag47, tag48, tag49, tag50, tag51, tag52, tag53, tag54, tag55, tag56, tag57, tag58, tag59, tag60, tag61, tag62, tag63, tag64, tag65, tag66, tag67, tag68, tag69, tag70, tag71, tag72, tag73, tag74, tag75, tag76, tag77, tag78, tag79, tag80, tag81, tag82, tag83, tag84, tag85, tag86, tag87, tag88, tag89, tag90, tag91, tag92, tag93, tag94, tag95, tag96, tag97, tag98, tag99};
            numberOfOperators = (tag81.ordinal() - tag54.ordinal()) + 1;
        }

        private Tag(String str, int i10, Tag tag) {
            this.noAssignTag = tag;
        }

        public static int getNumberOfOperators() {
            return numberOfOperators;
        }

        public static Tag valueOf(String str) {
            return (Tag) Enum.valueOf(Tag.class, str);
        }

        public static Tag[] values() {
            return (Tag[]) $VALUES.clone();
        }

        public boolean isAssignop() {
            return this.noAssignTag != null;
        }

        public boolean isIncOrDecUnaryOp() {
            return this == PREINC || this == PREDEC || this == POSTINC || this == POSTDEC;
        }

        public boolean isPostUnaryOp() {
            return this == POSTINC || this == POSTDEC;
        }

        public Tag noAssignOp() {
            Tag tag = this.noAssignTag;
            if (tag != null) {
                return tag;
            }
            throw new AssertionError((Object) "noAssignOp() method is not available for non assignment tags");
        }

        public int operatorIndex() {
            return ordinal() - POS.ordinal();
        }

        private Tag(String str, int i10) {
            this(str, i10, null);
        }
    }
}
