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
import java.util.Iterator;

public class NoCommentHashCodeVisitor implements GenericVisitor<Integer, Void> {
    private static final NoCommentHashCodeVisitor SINGLETON = new NoCommentHashCodeVisitor();

    public static int hashCode(final Node node) {
        return ((Integer) node.accept(SINGLETON, (NoCommentHashCodeVisitor) null)).intValue();
    }

    @Override
    public Integer visit(final AnnotationDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getMembers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final AnnotationMemberDeclaration n10, final Void arg) {
        return Integer.valueOf(((n10.getDefaultValue().isPresent() ? ((Integer) n10.getDefaultValue().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ArrayAccessExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getIndex().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ArrayCreationExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getElementType().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getInitializer().isPresent() ? ((Integer) n10.getInitializer().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getLevels().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ArrayCreationLevel n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getDimension().isPresent() ? ((Integer) n10.getDimension().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final ArrayInitializerExpr n10, final Void arg) {
        return (Integer) n10.getValues().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final ArrayType n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getComponentType().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getOrigin().hashCode() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final AssertStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getCheck().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getMessage().isPresent() ? ((Integer) n10.getMessage().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final AssignExpr n10, final Void arg) {
        return Integer.valueOf((n10.getOperator().hashCode() * 31) + (((Integer) n10.getTarget().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getValue().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final BinaryExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getLeft().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getOperator().hashCode() * 31) + ((Integer) n10.getRight().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final BlockComment n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final BlockStmt n10, final Void arg) {
        return (Integer) n10.getStatements().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(BooleanLiteralExpr booleanLiteralExpr, Void r22) {
        return Integer.valueOf(booleanLiteralExpr.isValue() ? 1 : 0);
    }

    @Override
    public Integer visit(final BreakStmt n10, final Void arg) {
        if (n10.getLabel().isPresent()) {
            return (Integer) n10.getLabel().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
        }
        return 0;
    }

    @Override
    public Integer visit(final CastExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final CatchClause n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getParameter().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final CharLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final ClassExpr n10, final Void arg) {
        return (Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(ClassOrInterfaceDeclaration classOrInterfaceDeclaration, Void r42) {
        return Integer.valueOf((((Integer) classOrInterfaceDeclaration.getExtendedTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) classOrInterfaceDeclaration.getImplementedTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((classOrInterfaceDeclaration.isInterface() ? 1 : 0) * 31) + (((Integer) classOrInterfaceDeclaration.getPermittedTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) classOrInterfaceDeclaration.getTypeParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) classOrInterfaceDeclaration.getMembers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) classOrInterfaceDeclaration.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) classOrInterfaceDeclaration.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((Integer) classOrInterfaceDeclaration.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(final ClassOrInterfaceType n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getScope().isPresent() ? ((Integer) n10.getScope().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((n10.getTypeArguments().isPresent() ? ((Integer) n10.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final CompilationUnit n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getImports().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getModule().isPresent() ? ((Integer) n10.getModule().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((n10.getPackageDeclaration().isPresent() ? ((Integer) n10.getPackageDeclaration().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ConditionalExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getCondition().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getElseExpr().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getThenExpr().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ConstructorDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getReceiverParameter().isPresent() ? ((Integer) n10.getReceiverParameter().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getThrownExceptions().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getTypeParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ContinueStmt n10, final Void arg) {
        if (n10.getLabel().isPresent()) {
            return (Integer) n10.getLabel().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
        }
        return 0;
    }

    @Override
    public Integer visit(final DoStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getCondition().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final DoubleLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final EmptyStmt n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final EnclosedExpr n10, final Void arg) {
        return (Integer) n10.getInner().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final EnumConstantDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getArguments().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getClassBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final EnumDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getEntries().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getImplementedTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getMembers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(ExplicitConstructorInvocationStmt explicitConstructorInvocationStmt, Void r52) {
        return Integer.valueOf((((Integer) explicitConstructorInvocationStmt.getArguments().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r52)).intValue() * 31) + ((explicitConstructorInvocationStmt.getExpression().isPresent() ? ((Integer) explicitConstructorInvocationStmt.getExpression().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r52)).intValue() : 0) * 31) + ((explicitConstructorInvocationStmt.isThis() ? 1 : 0) * 31) + (explicitConstructorInvocationStmt.getTypeArguments().isPresent() ? ((Integer) explicitConstructorInvocationStmt.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r52)).intValue() : 0));
    }

    @Override
    public Integer visit(final ExpressionStmt n10, final Void arg) {
        return (Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final FieldAccessExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getScope().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getTypeArguments().isPresent() ? ((Integer) n10.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final FieldDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getVariables().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ForStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getCompare().isPresent() ? ((Integer) n10.getCompare().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getInitialization().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getUpdate().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ForEachStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getIterable().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getVariable().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final IfStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getCondition().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getElseStmt().isPresent() ? ((Integer) n10.getElseStmt().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getThenStmt().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit2(ImportDeclaration importDeclaration, Void r42) {
        return Integer.valueOf(((importDeclaration.isAsterisk() ? 1 : 0) * 31) + ((importDeclaration.isStatic() ? 1 : 0) * 31) + ((Integer) importDeclaration.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(InitializerDeclaration initializerDeclaration, Void r42) {
        return Integer.valueOf((((Integer) initializerDeclaration.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((initializerDeclaration.isStatic() ? 1 : 0) * 31) + ((Integer) initializerDeclaration.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(final InstanceOfExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getPattern().isPresent() ? ((Integer) n10.getPattern().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final IntegerLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final IntersectionType n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getElements().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final JavadocComment n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final LabeledStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getLabel().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getStatement().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(LambdaExpr lambdaExpr, Void r42) {
        return Integer.valueOf((((Integer) lambdaExpr.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((lambdaExpr.isEnclosingParameters() ? 1 : 0) * 31) + ((Integer) lambdaExpr.getParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(final LineComment n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final LocalClassDeclarationStmt n10, final Void arg) {
        return (Integer) n10.getClassDeclaration().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final LocalRecordDeclarationStmt n10, final Void arg) {
        return (Integer) n10.getRecordDeclaration().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final LongLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final MarkerAnnotationExpr n10, final Void arg) {
        return (Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final MemberValuePair n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getValue().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final MethodCallExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getArguments().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getScope().isPresent() ? ((Integer) n10.getScope().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (n10.getTypeArguments().isPresent() ? ((Integer) n10.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final MethodDeclaration n10, final Void arg) {
        return Integer.valueOf(((n10.getBody().isPresent() ? ((Integer) n10.getBody().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getReceiverParameter().isPresent() ? ((Integer) n10.getReceiverParameter().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getThrownExceptions().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getTypeParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final MethodReferenceExpr n10, final Void arg) {
        return Integer.valueOf((n10.getIdentifier().hashCode() * 31) + (((Integer) n10.getScope().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getTypeArguments().isPresent() ? ((Integer) n10.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final NameExpr n10, final Void arg) {
        return (Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final Name n10, final Void arg) {
        return Integer.valueOf((n10.getIdentifier().hashCode() * 31) + (n10.getQualifier().isPresent() ? ((Integer) n10.getQualifier().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(NodeList n10, Void arg) {
        Iterator it = n10.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += ((Integer) ((Visitable) it.next()).accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31;
        }
        return Integer.valueOf(i10);
    }

    @Override
    public Integer visit(final NormalAnnotationExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getPairs().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final NullLiteralExpr n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final ObjectCreationExpr n10, final Void arg) {
        return Integer.valueOf(((n10.getAnonymousClassBody().isPresent() ? ((Integer) n10.getAnonymousClassBody().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getArguments().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getScope().isPresent() ? ((Integer) n10.getScope().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (n10.getTypeArguments().isPresent() ? ((Integer) n10.getTypeArguments().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0));
    }

    @Override
    public Integer visit(final PackageDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(Parameter parameter, Void r42) {
        return Integer.valueOf((((Integer) parameter.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((parameter.isVarArgs() ? 1 : 0) * 31) + (((Integer) parameter.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) parameter.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) parameter.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((Integer) parameter.getVarArgsAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(final PrimitiveType n10, final Void arg) {
        return Integer.valueOf((n10.getType().hashCode() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ReturnStmt n10, final Void arg) {
        if (n10.getExpression().isPresent()) {
            return (Integer) n10.getExpression().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
        }
        return 0;
    }

    @Override
    public Integer visit(final SimpleName n10, final Void arg) {
        return Integer.valueOf(n10.getIdentifier().hashCode());
    }

    @Override
    public Integer visit(final SingleMemberAnnotationExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getMemberValue().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final StringLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final SuperExpr n10, final Void arg) {
        if (n10.getTypeName().isPresent()) {
            return (Integer) n10.getTypeName().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
        }
        return 0;
    }

    @Override
    public Integer visit(SwitchEntry switchEntry, Void r42) {
        return Integer.valueOf(((switchEntry.getGuard().isPresent() ? ((Integer) switchEntry.getGuard().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() : 0) * 31) + ((switchEntry.isDefault() ? 1 : 0) * 31) + (((Integer) switchEntry.getLabels().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) switchEntry.getStatements().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + switchEntry.getType().hashCode());
    }

    @Override
    public Integer visit(final SwitchStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getEntries().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getSelector().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final SynchronizedStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ThisExpr n10, final Void arg) {
        if (n10.getTypeName().isPresent()) {
            return (Integer) n10.getTypeName().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
        }
        return 0;
    }

    @Override
    public Integer visit(final ThrowStmt n10, final Void arg) {
        return (Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final TryStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getCatchClauses().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getFinallyBlock().isPresent() ? ((Integer) n10.getFinallyBlock().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getResources().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getTryBlock().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final TypeExpr n10, final Void arg) {
        return (Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final TypeParameter n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getTypeBound().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final UnaryExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + n10.getOperator().hashCode());
    }

    @Override
    public Integer visit(final UnionType n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getElements().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final UnknownType n10, final Void arg) {
        return (Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final VariableDeclarationExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getVariables().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final VariableDeclarator n10, final Void arg) {
        return Integer.valueOf(((n10.getInitializer().isPresent() ? ((Integer) n10.getInitializer().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final VoidType n10, final Void arg) {
        return (Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final WhileStmt n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getCondition().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final WildcardType n10, final Void arg) {
        return Integer.valueOf(((n10.getExtendedType().isPresent() ? ((Integer) n10.getExtendedType().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((n10.getSuperType().isPresent() ? ((Integer) n10.getSuperType().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(ModuleDeclaration moduleDeclaration, Void r42) {
        return Integer.valueOf((((Integer) moduleDeclaration.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + (((Integer) moduleDeclaration.getDirectives().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue() * 31) + ((moduleDeclaration.isOpen() ? 1 : 0) * 31) + ((Integer) moduleDeclaration.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) r42)).intValue());
    }

    @Override
    public Integer visit(final ModuleRequiresDirective n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ModuleExportsDirective n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModuleNames().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ModuleProvidesDirective n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getWith().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final ModuleUsesDirective n10, final Void arg) {
        return (Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final ModuleOpensDirective n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModuleNames().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final UnparsableStmt n10, final Void arg) {
        return 0;
    }

    @Override
    public Integer visit(final ReceiverParameter n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final VarType n10, final Void arg) {
        return (Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final Modifier n10, final Void arg) {
        return Integer.valueOf(n10.getKeyword().hashCode());
    }

    @Override
    public Integer visit(final SwitchExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getEntries().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getSelector().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final YieldStmt n10, final Void arg) {
        return (Integer) n10.getExpression().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg);
    }

    @Override
    public Integer visit(final TextBlockLiteralExpr n10, final Void arg) {
        return Integer.valueOf(n10.getValue().hashCode());
    }

    @Override
    public Integer visit(final TypePatternExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final RecordDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getImplementedTypes().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((n10.getReceiverParameter().isPresent() ? ((Integer) n10.getReceiverParameter().get().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() : 0) * 31) + (((Integer) n10.getTypeParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getMembers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final CompactConstructorDeclaration n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getBody().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getName().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getThrownExceptions().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getTypeParameters().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getAnnotations().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }

    @Override
    public Integer visit(final RecordPatternExpr n10, final Void arg) {
        return Integer.valueOf((((Integer) n10.getModifiers().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + (((Integer) n10.getPatternList().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue() * 31) + ((Integer) n10.getType2().accept((GenericVisitor<R, NoCommentHashCodeVisitor>) this, (NoCommentHashCodeVisitor) arg)).intValue());
    }
}
