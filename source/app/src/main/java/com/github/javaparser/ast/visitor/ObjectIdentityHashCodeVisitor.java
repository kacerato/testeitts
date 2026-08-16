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

public class ObjectIdentityHashCodeVisitor implements GenericVisitor<Integer, Void> {
    private static final ObjectIdentityHashCodeVisitor SINGLETON = new ObjectIdentityHashCodeVisitor();

    public static int hashCode(final Node node) {
        return ((Integer) node.accept(SINGLETON, (ObjectIdentityHashCodeVisitor) null)).intValue();
    }

    @Override
    public Integer visit(final AnnotationDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final AnnotationMemberDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ArrayAccessExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ArrayCreationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ArrayCreationLevel n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ArrayInitializerExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ArrayType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final AssertStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final AssignExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final BinaryExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final BlockComment n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final BlockStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final BooleanLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final BreakStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final CastExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final CatchClause n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final CharLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ClassExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ClassOrInterfaceDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ClassOrInterfaceType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final CompilationUnit n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ConditionalExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ConstructorDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ContinueStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final DoStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final DoubleLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final EmptyStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final EnclosedExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final EnumConstantDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final EnumDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ExplicitConstructorInvocationStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ExpressionStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final FieldAccessExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final FieldDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ForStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ForEachStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final IfStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit2(final ImportDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final InitializerDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final InstanceOfExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final IntegerLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final IntersectionType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final JavadocComment n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LabeledStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LambdaExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LineComment n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LocalClassDeclarationStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LocalRecordDeclarationStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final LongLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final MarkerAnnotationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final MemberValuePair n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final MethodCallExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final MethodDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final MethodReferenceExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final NameExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final Name n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(NodeList n10, Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final NormalAnnotationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final NullLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ObjectCreationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final PackageDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final Parameter n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final PrimitiveType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ReturnStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SimpleName n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SingleMemberAnnotationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final StringLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SuperExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SwitchEntry n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SwitchStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SynchronizedStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ThisExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ThrowStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final TryStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final TypeExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final TypeParameter n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final UnaryExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final UnionType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final UnknownType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final VariableDeclarationExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final VariableDeclarator n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final VoidType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final WhileStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final WildcardType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleRequiresDirective n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleExportsDirective n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleProvidesDirective n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleUsesDirective n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ModuleOpensDirective n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final UnparsableStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final ReceiverParameter n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final VarType n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final Modifier n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final SwitchExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final YieldStmt n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final TextBlockLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final TypePatternExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final RecordDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final CompactConstructorDeclaration n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }

    @Override
    public Integer visit(final RecordPatternExpr n10, final Void arg) {
        return Integer.valueOf(n10.hashCode());
    }
}
