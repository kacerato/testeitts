package com.github.javaparser.ast.visitor;

import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.AnnotationMemberDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.CompactConstructorDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumConstantDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.ReceiverParameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.ast.expr.ArrayAccessExpr;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.BinaryExpr;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.CastExpr;
import com.github.javaparser.ast.expr.CharLiteralExpr;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.expr.ConditionalExpr;
import com.github.javaparser.ast.expr.DoubleLiteralExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.InstanceOfExpr;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.LongLiteralExpr;
import com.github.javaparser.ast.expr.MarkerAnnotationExpr;
import com.github.javaparser.ast.expr.MemberValuePair;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.MethodReferenceExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.NormalAnnotationExpr;
import com.github.javaparser.ast.expr.NullLiteralExpr;
import com.github.javaparser.ast.expr.ObjectCreationExpr;
import com.github.javaparser.ast.expr.RecordPatternExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.expr.SingleMemberAnnotationExpr;
import com.github.javaparser.ast.expr.StringLiteralExpr;
import com.github.javaparser.ast.expr.SuperExpr;
import com.github.javaparser.ast.expr.SwitchExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.expr.ThisExpr;
import com.github.javaparser.ast.expr.TypeExpr;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.ast.expr.UnaryExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.modules.ModuleExportsDirective;
import com.github.javaparser.ast.modules.ModuleOpensDirective;
import com.github.javaparser.ast.modules.ModuleProvidesDirective;
import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import com.github.javaparser.ast.modules.ModuleUsesDirective;
import com.github.javaparser.ast.stmt.AssertStmt;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.BreakStmt;
import com.github.javaparser.ast.stmt.CatchClause;
import com.github.javaparser.ast.stmt.ContinueStmt;
import com.github.javaparser.ast.stmt.DoStmt;
import com.github.javaparser.ast.stmt.EmptyStmt;
import com.github.javaparser.ast.stmt.ExplicitConstructorInvocationStmt;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.ForStmt;
import com.github.javaparser.ast.stmt.IfStmt;
import com.github.javaparser.ast.stmt.LabeledStmt;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.stmt.SwitchStmt;
import com.github.javaparser.ast.stmt.SynchronizedStmt;
import com.github.javaparser.ast.stmt.ThrowStmt;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.stmt.UnparsableStmt;
import com.github.javaparser.ast.stmt.WhileStmt;
import com.github.javaparser.ast.stmt.YieldStmt;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.IntersectionType;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.type.WildcardType;

public abstract class VoidVisitorWithDefaults<A> implements VoidVisitor<A> {
    public void defaultAction(Node n10, A arg) {
    }

    @Override
    public void visit(final AnnotationDeclaration n10, final A arg) {
        defaultAction((Node) n10, (AnnotationDeclaration) arg);
    }

    public void defaultAction(NodeList n10, A arg) {
    }

    @Override
    public void visit(final AnnotationMemberDeclaration n10, final A arg) {
        defaultAction((Node) n10, (AnnotationMemberDeclaration) arg);
    }

    @Override
    public void visit(final ArrayAccessExpr n10, final A arg) {
        defaultAction((Node) n10, (ArrayAccessExpr) arg);
    }

    @Override
    public void visit(final ArrayCreationExpr n10, final A arg) {
        defaultAction((Node) n10, (ArrayCreationExpr) arg);
    }

    @Override
    public void visit(final ArrayInitializerExpr n10, final A arg) {
        defaultAction((Node) n10, (ArrayInitializerExpr) arg);
    }

    @Override
    public void visit(final AssertStmt n10, final A arg) {
        defaultAction((Node) n10, (AssertStmt) arg);
    }

    @Override
    public void visit(final AssignExpr n10, final A arg) {
        defaultAction((Node) n10, (AssignExpr) arg);
    }

    @Override
    public void visit(final BinaryExpr n10, final A arg) {
        defaultAction((Node) n10, (BinaryExpr) arg);
    }

    @Override
    public void visit(final BlockComment n10, final A arg) {
        defaultAction((Node) n10, (BlockComment) arg);
    }

    @Override
    public void visit(final BlockStmt n10, final A arg) {
        defaultAction((Node) n10, (BlockStmt) arg);
    }

    @Override
    public void visit(final BooleanLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (BooleanLiteralExpr) arg);
    }

    @Override
    public void visit(final BreakStmt n10, final A arg) {
        defaultAction((Node) n10, (BreakStmt) arg);
    }

    @Override
    public void visit(final CastExpr n10, final A arg) {
        defaultAction((Node) n10, (CastExpr) arg);
    }

    @Override
    public void visit(final CatchClause n10, final A arg) {
        defaultAction((Node) n10, (CatchClause) arg);
    }

    @Override
    public void visit(final CharLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (CharLiteralExpr) arg);
    }

    @Override
    public void visit(final ClassExpr n10, final A arg) {
        defaultAction((Node) n10, (ClassExpr) arg);
    }

    @Override
    public void visit(final ClassOrInterfaceDeclaration n10, final A arg) {
        defaultAction((Node) n10, (ClassOrInterfaceDeclaration) arg);
    }

    @Override
    public void visit(final ClassOrInterfaceType n10, final A arg) {
        defaultAction((Node) n10, (ClassOrInterfaceType) arg);
    }

    @Override
    public void visit(final CompilationUnit n10, final A arg) {
        defaultAction((Node) n10, (CompilationUnit) arg);
    }

    @Override
    public void visit(final ConditionalExpr n10, final A arg) {
        defaultAction((Node) n10, (ConditionalExpr) arg);
    }

    @Override
    public void visit(final ConstructorDeclaration n10, final A arg) {
        defaultAction((Node) n10, (ConstructorDeclaration) arg);
    }

    @Override
    public void visit(final ContinueStmt n10, final A arg) {
        defaultAction((Node) n10, (ContinueStmt) arg);
    }

    @Override
    public void visit(final DoStmt n10, final A arg) {
        defaultAction((Node) n10, (DoStmt) arg);
    }

    @Override
    public void visit(final DoubleLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (DoubleLiteralExpr) arg);
    }

    @Override
    public void visit(final EmptyStmt n10, final A arg) {
        defaultAction((Node) n10, (EmptyStmt) arg);
    }

    @Override
    public void visit(final EnclosedExpr n10, final A arg) {
        defaultAction((Node) n10, (EnclosedExpr) arg);
    }

    @Override
    public void visit(final EnumConstantDeclaration n10, final A arg) {
        defaultAction((Node) n10, (EnumConstantDeclaration) arg);
    }

    @Override
    public void visit(final EnumDeclaration n10, final A arg) {
        defaultAction((Node) n10, (EnumDeclaration) arg);
    }

    @Override
    public void visit(final ExplicitConstructorInvocationStmt n10, final A arg) {
        defaultAction((Node) n10, (ExplicitConstructorInvocationStmt) arg);
    }

    @Override
    public void visit(final ExpressionStmt n10, final A arg) {
        defaultAction((Node) n10, (ExpressionStmt) arg);
    }

    @Override
    public void visit(final FieldAccessExpr n10, final A arg) {
        defaultAction((Node) n10, (FieldAccessExpr) arg);
    }

    @Override
    public void visit(final FieldDeclaration n10, final A arg) {
        defaultAction((Node) n10, (FieldDeclaration) arg);
    }

    @Override
    public void visit(final ForEachStmt n10, final A arg) {
        defaultAction((Node) n10, (ForEachStmt) arg);
    }

    @Override
    public void visit(final ForStmt n10, final A arg) {
        defaultAction((Node) n10, (ForStmt) arg);
    }

    @Override
    public void visit(final IfStmt n10, final A arg) {
        defaultAction((Node) n10, (IfStmt) arg);
    }

    @Override
    public void visit(final InitializerDeclaration n10, final A arg) {
        defaultAction((Node) n10, (InitializerDeclaration) arg);
    }

    @Override
    public void visit(final InstanceOfExpr n10, final A arg) {
        defaultAction((Node) n10, (InstanceOfExpr) arg);
    }

    @Override
    public void visit(final IntegerLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (IntegerLiteralExpr) arg);
    }

    @Override
    public void visit(final JavadocComment n10, final A arg) {
        defaultAction((Node) n10, (JavadocComment) arg);
    }

    @Override
    public void visit(final LabeledStmt n10, final A arg) {
        defaultAction((Node) n10, (LabeledStmt) arg);
    }

    @Override
    public void visit(final LineComment n10, final A arg) {
        defaultAction((Node) n10, (LineComment) arg);
    }

    @Override
    public void visit(final LongLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (LongLiteralExpr) arg);
    }

    @Override
    public void visit(final MarkerAnnotationExpr n10, final A arg) {
        defaultAction((Node) n10, (MarkerAnnotationExpr) arg);
    }

    @Override
    public void visit(final MemberValuePair n10, final A arg) {
        defaultAction((Node) n10, (MemberValuePair) arg);
    }

    @Override
    public void visit(final MethodCallExpr n10, final A arg) {
        defaultAction((Node) n10, (MethodCallExpr) arg);
    }

    @Override
    public void visit(final MethodDeclaration n10, final A arg) {
        defaultAction((Node) n10, (MethodDeclaration) arg);
    }

    @Override
    public void visit(final NameExpr n10, final A arg) {
        defaultAction((Node) n10, (NameExpr) arg);
    }

    @Override
    public void visit(final NormalAnnotationExpr n10, final A arg) {
        defaultAction((Node) n10, (NormalAnnotationExpr) arg);
    }

    @Override
    public void visit(final NullLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (NullLiteralExpr) arg);
    }

    @Override
    public void visit(final ObjectCreationExpr n10, final A arg) {
        defaultAction((Node) n10, (ObjectCreationExpr) arg);
    }

    @Override
    public void visit(final PackageDeclaration n10, final A arg) {
        defaultAction((Node) n10, (PackageDeclaration) arg);
    }

    @Override
    public void visit(final Parameter n10, final A arg) {
        defaultAction((Node) n10, (Parameter) arg);
    }

    @Override
    public void visit(final PrimitiveType n10, final A arg) {
        defaultAction((Node) n10, (PrimitiveType) arg);
    }

    @Override
    public void visit(final Name n10, final A arg) {
        defaultAction((Node) n10, (Name) arg);
    }

    @Override
    public void visit(final SimpleName n10, final A arg) {
        defaultAction((Node) n10, (SimpleName) arg);
    }

    @Override
    public void visit(final ArrayType n10, final A arg) {
        defaultAction((Node) n10, (ArrayType) arg);
    }

    @Override
    public void visit(final ArrayCreationLevel n10, final A arg) {
        defaultAction((Node) n10, (ArrayCreationLevel) arg);
    }

    @Override
    public void visit(final IntersectionType n10, final A arg) {
        defaultAction((Node) n10, (IntersectionType) arg);
    }

    @Override
    public void visit(final UnionType n10, final A arg) {
        defaultAction((Node) n10, (UnionType) arg);
    }

    @Override
    public void visit(final ReturnStmt n10, final A arg) {
        defaultAction((Node) n10, (ReturnStmt) arg);
    }

    @Override
    public void visit(final SingleMemberAnnotationExpr n10, final A arg) {
        defaultAction((Node) n10, (SingleMemberAnnotationExpr) arg);
    }

    @Override
    public void visit(final StringLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (StringLiteralExpr) arg);
    }

    @Override
    public void visit(final SuperExpr n10, final A arg) {
        defaultAction((Node) n10, (SuperExpr) arg);
    }

    @Override
    public void visit(final SwitchEntry n10, final A arg) {
        defaultAction((Node) n10, (SwitchEntry) arg);
    }

    @Override
    public void visit(final SwitchStmt n10, final A arg) {
        defaultAction((Node) n10, (SwitchStmt) arg);
    }

    @Override
    public void visit(final SynchronizedStmt n10, final A arg) {
        defaultAction((Node) n10, (SynchronizedStmt) arg);
    }

    @Override
    public void visit(final ThisExpr n10, final A arg) {
        defaultAction((Node) n10, (ThisExpr) arg);
    }

    @Override
    public void visit(final ThrowStmt n10, final A arg) {
        defaultAction((Node) n10, (ThrowStmt) arg);
    }

    @Override
    public void visit(final TryStmt n10, final A arg) {
        defaultAction((Node) n10, (TryStmt) arg);
    }

    @Override
    public void visit(final LocalClassDeclarationStmt n10, final A arg) {
        defaultAction((Node) n10, (LocalClassDeclarationStmt) arg);
    }

    @Override
    public void visit(final LocalRecordDeclarationStmt n10, final A arg) {
        defaultAction((Node) n10, (LocalRecordDeclarationStmt) arg);
    }

    @Override
    public void visit(final TypeParameter n10, final A arg) {
        defaultAction((Node) n10, (TypeParameter) arg);
    }

    @Override
    public void visit(final UnaryExpr n10, final A arg) {
        defaultAction((Node) n10, (UnaryExpr) arg);
    }

    @Override
    public void visit(final UnknownType n10, final A arg) {
        defaultAction((Node) n10, (UnknownType) arg);
    }

    @Override
    public void visit(final VariableDeclarationExpr n10, final A arg) {
        defaultAction((Node) n10, (VariableDeclarationExpr) arg);
    }

    @Override
    public void visit(final VariableDeclarator n10, final A arg) {
        defaultAction((Node) n10, (VariableDeclarator) arg);
    }

    @Override
    public void visit(final VoidType n10, final A arg) {
        defaultAction((Node) n10, (VoidType) arg);
    }

    @Override
    public void visit(final WhileStmt n10, final A arg) {
        defaultAction((Node) n10, (WhileStmt) arg);
    }

    @Override
    public void visit(final WildcardType n10, final A arg) {
        defaultAction((Node) n10, (WildcardType) arg);
    }

    @Override
    public void visit(final LambdaExpr n10, final A arg) {
        defaultAction((Node) n10, (LambdaExpr) arg);
    }

    @Override
    public void visit(final MethodReferenceExpr n10, final A arg) {
        defaultAction((Node) n10, (MethodReferenceExpr) arg);
    }

    @Override
    public void visit(final TypeExpr n10, final A arg) {
        defaultAction((Node) n10, (TypeExpr) arg);
    }

    @Override
    public void visit(NodeList n10, A arg) {
        defaultAction(n10, (NodeList) arg);
    }

    @Override
    public void visit(final ImportDeclaration n10, final A arg) {
        defaultAction((Node) n10, (ImportDeclaration) arg);
    }

    @Override
    public void visit(final ModuleDeclaration n10, final A arg) {
        defaultAction((Node) n10, (ModuleDeclaration) arg);
    }

    @Override
    public void visit(final ModuleRequiresDirective n10, final A arg) {
        defaultAction((Node) n10, (ModuleRequiresDirective) arg);
    }

    @Override
    public void visit(final ModuleExportsDirective n10, final A arg) {
        defaultAction((Node) n10, (ModuleExportsDirective) arg);
    }

    @Override
    public void visit(final ModuleProvidesDirective n10, final A arg) {
        defaultAction((Node) n10, (ModuleProvidesDirective) arg);
    }

    @Override
    public void visit(final ModuleUsesDirective n10, final A arg) {
        defaultAction((Node) n10, (ModuleUsesDirective) arg);
    }

    @Override
    public void visit(final ModuleOpensDirective n10, final A arg) {
        defaultAction((Node) n10, (ModuleOpensDirective) arg);
    }

    @Override
    public void visit(final UnparsableStmt n10, final A arg) {
        defaultAction((Node) n10, (UnparsableStmt) arg);
    }

    @Override
    public void visit(final ReceiverParameter n10, final A arg) {
        defaultAction((Node) n10, (ReceiverParameter) arg);
    }

    @Override
    public void visit(final Modifier n10, final A arg) {
        defaultAction((Node) n10, (Modifier) arg);
    }

    @Override
    public void visit(final VarType n10, final A arg) {
        defaultAction((Node) n10, (VarType) arg);
    }

    @Override
    public void visit(final SwitchExpr n10, final A arg) {
        defaultAction((Node) n10, (SwitchExpr) arg);
    }

    @Override
    public void visit(final TextBlockLiteralExpr n10, final A arg) {
        defaultAction((Node) n10, (TextBlockLiteralExpr) arg);
    }

    @Override
    public void visit(final YieldStmt n10, final A arg) {
        defaultAction((Node) n10, (YieldStmt) arg);
    }

    @Override
    public void visit(final TypePatternExpr n10, final A arg) {
        defaultAction((Node) n10, (TypePatternExpr) arg);
    }

    @Override
    public void visit(final RecordDeclaration n10, final A arg) {
        defaultAction((Node) n10, (RecordDeclaration) arg);
    }

    @Override
    public void visit(final CompactConstructorDeclaration n10, final A arg) {
        defaultAction((Node) n10, (CompactConstructorDeclaration) arg);
    }

    @Override
    public void visit(final RecordPatternExpr n10, final A arg) {
        defaultAction((Node) n10, (RecordPatternExpr) arg);
    }
}
