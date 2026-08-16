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
import com.github.javaparser.ast.visitor.GenericListVisitorAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public abstract class GenericListVisitorAdapter<R, A> implements GenericVisitor<List<R>, A> {
    public Stream lambda$visit$0(final Object arg, Node v10) {
        return ((List) v10.accept(this, (GenericListVisitorAdapter<R, A>) arg)).stream();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ArrayCreationLevel n10, final Object arg) {
        return visit(n10, (ArrayCreationLevel) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final CompilationUnit n10, final Object arg) {
        return visit(n10, (CompilationUnit) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit2(final ImportDeclaration n10, final Object arg) {
        return visit2(n10, (ImportDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final Modifier n10, final Object arg) {
        return visit(n10, (Modifier) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(NodeList n10, Object arg) {
        return visit(n10, (NodeList) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final PackageDeclaration n10, final Object arg) {
        return visit(n10, (PackageDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final AnnotationDeclaration n10, final Object arg) {
        return visit(n10, (AnnotationDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final AnnotationMemberDeclaration n10, final Object arg) {
        return visit(n10, (AnnotationMemberDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ClassOrInterfaceDeclaration n10, final Object arg) {
        return visit(n10, (ClassOrInterfaceDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final CompactConstructorDeclaration n10, final Object arg) {
        return visit(n10, (CompactConstructorDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ConstructorDeclaration n10, final Object arg) {
        return visit(n10, (ConstructorDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final EnumConstantDeclaration n10, final Object arg) {
        return visit(n10, (EnumConstantDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final EnumDeclaration n10, final Object arg) {
        return visit(n10, (EnumDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final FieldDeclaration n10, final Object arg) {
        return visit(n10, (FieldDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final InitializerDeclaration n10, final Object arg) {
        return visit(n10, (InitializerDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final MethodDeclaration n10, final Object arg) {
        return visit(n10, (MethodDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final Parameter n10, final Object arg) {
        return visit(n10, (Parameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ReceiverParameter n10, final Object arg) {
        return visit(n10, (ReceiverParameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final RecordDeclaration n10, final Object arg) {
        return visit(n10, (RecordDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final VariableDeclarator n10, final Object arg) {
        return visit(n10, (VariableDeclarator) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final BlockComment n10, final Object arg) {
        return visit(n10, (BlockComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final JavadocComment n10, final Object arg) {
        return visit(n10, (JavadocComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LineComment n10, final Object arg) {
        return visit(n10, (LineComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ArrayAccessExpr n10, final Object arg) {
        return visit(n10, (ArrayAccessExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ArrayCreationExpr n10, final Object arg) {
        return visit(n10, (ArrayCreationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ArrayInitializerExpr n10, final Object arg) {
        return visit(n10, (ArrayInitializerExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final AssignExpr n10, final Object arg) {
        return visit(n10, (AssignExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final BinaryExpr n10, final Object arg) {
        return visit(n10, (BinaryExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final BooleanLiteralExpr n10, final Object arg) {
        return visit(n10, (BooleanLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final CastExpr n10, final Object arg) {
        return visit(n10, (CastExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final CharLiteralExpr n10, final Object arg) {
        return visit(n10, (CharLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ClassExpr n10, final Object arg) {
        return visit(n10, (ClassExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ConditionalExpr n10, final Object arg) {
        return visit(n10, (ConditionalExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final DoubleLiteralExpr n10, final Object arg) {
        return visit(n10, (DoubleLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final EnclosedExpr n10, final Object arg) {
        return visit(n10, (EnclosedExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final FieldAccessExpr n10, final Object arg) {
        return visit(n10, (FieldAccessExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final InstanceOfExpr n10, final Object arg) {
        return visit(n10, (InstanceOfExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final IntegerLiteralExpr n10, final Object arg) {
        return visit(n10, (IntegerLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LambdaExpr n10, final Object arg) {
        return visit(n10, (LambdaExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LongLiteralExpr n10, final Object arg) {
        return visit(n10, (LongLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final MarkerAnnotationExpr n10, final Object arg) {
        return visit(n10, (MarkerAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final MemberValuePair n10, final Object arg) {
        return visit(n10, (MemberValuePair) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final MethodCallExpr n10, final Object arg) {
        return visit(n10, (MethodCallExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final MethodReferenceExpr n10, final Object arg) {
        return visit(n10, (MethodReferenceExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final Name n10, final Object arg) {
        return visit(n10, (Name) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final NameExpr n10, final Object arg) {
        return visit(n10, (NameExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final NormalAnnotationExpr n10, final Object arg) {
        return visit(n10, (NormalAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final NullLiteralExpr n10, final Object arg) {
        return visit(n10, (NullLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ObjectCreationExpr n10, final Object arg) {
        return visit(n10, (ObjectCreationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final RecordPatternExpr n10, final Object arg) {
        return visit(n10, (RecordPatternExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SimpleName n10, final Object arg) {
        return visit(n10, (SimpleName) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SingleMemberAnnotationExpr n10, final Object arg) {
        return visit(n10, (SingleMemberAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final StringLiteralExpr n10, final Object arg) {
        return visit(n10, (StringLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SuperExpr n10, final Object arg) {
        return visit(n10, (SuperExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SwitchExpr n10, final Object arg) {
        return visit(n10, (SwitchExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final TextBlockLiteralExpr n10, final Object arg) {
        return visit(n10, (TextBlockLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ThisExpr n10, final Object arg) {
        return visit(n10, (ThisExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final TypeExpr n10, final Object arg) {
        return visit(n10, (TypeExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final TypePatternExpr n10, final Object arg) {
        return visit(n10, (TypePatternExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final UnaryExpr n10, final Object arg) {
        return visit(n10, (UnaryExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final VariableDeclarationExpr n10, final Object arg) {
        return visit(n10, (VariableDeclarationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleDeclaration n10, final Object arg) {
        return visit(n10, (ModuleDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleExportsDirective n10, final Object arg) {
        return visit(n10, (ModuleExportsDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleOpensDirective n10, final Object arg) {
        return visit(n10, (ModuleOpensDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleProvidesDirective n10, final Object arg) {
        return visit(n10, (ModuleProvidesDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleRequiresDirective n10, final Object arg) {
        return visit(n10, (ModuleRequiresDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ModuleUsesDirective n10, final Object arg) {
        return visit(n10, (ModuleUsesDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final AssertStmt n10, final Object arg) {
        return visit(n10, (AssertStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final BlockStmt n10, final Object arg) {
        return visit(n10, (BlockStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final BreakStmt n10, final Object arg) {
        return visit(n10, (BreakStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final CatchClause n10, final Object arg) {
        return visit(n10, (CatchClause) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ContinueStmt n10, final Object arg) {
        return visit(n10, (ContinueStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final DoStmt n10, final Object arg) {
        return visit(n10, (DoStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final EmptyStmt n10, final Object arg) {
        return visit(n10, (EmptyStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ExplicitConstructorInvocationStmt n10, final Object arg) {
        return visit(n10, (ExplicitConstructorInvocationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ExpressionStmt n10, final Object arg) {
        return visit(n10, (ExpressionStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ForEachStmt n10, final Object arg) {
        return visit(n10, (ForEachStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ForStmt n10, final Object arg) {
        return visit(n10, (ForStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final IfStmt n10, final Object arg) {
        return visit(n10, (IfStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LabeledStmt n10, final Object arg) {
        return visit(n10, (LabeledStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LocalClassDeclarationStmt n10, final Object arg) {
        return visit(n10, (LocalClassDeclarationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final LocalRecordDeclarationStmt n10, final Object arg) {
        return visit(n10, (LocalRecordDeclarationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ReturnStmt n10, final Object arg) {
        return visit(n10, (ReturnStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SwitchEntry n10, final Object arg) {
        return visit(n10, (SwitchEntry) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SwitchStmt n10, final Object arg) {
        return visit(n10, (SwitchStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final SynchronizedStmt n10, final Object arg) {
        return visit(n10, (SynchronizedStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ThrowStmt n10, final Object arg) {
        return visit(n10, (ThrowStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final TryStmt n10, final Object arg) {
        return visit(n10, (TryStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final UnparsableStmt n10, final Object arg) {
        return visit(n10, (UnparsableStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final WhileStmt n10, final Object arg) {
        return visit(n10, (WhileStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final YieldStmt n10, final Object arg) {
        return visit(n10, (YieldStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ArrayType n10, final Object arg) {
        return visit(n10, (ArrayType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final ClassOrInterfaceType n10, final Object arg) {
        return visit(n10, (ClassOrInterfaceType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final IntersectionType n10, final Object arg) {
        return visit(n10, (IntersectionType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final PrimitiveType n10, final Object arg) {
        return visit(n10, (PrimitiveType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final TypeParameter n10, final Object arg) {
        return visit(n10, (TypeParameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final UnionType n10, final Object arg) {
        return visit(n10, (UnionType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final UnknownType n10, final Object arg) {
        return visit(n10, (UnknownType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final VarType n10, final Object arg) {
        return visit(n10, (VarType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final VoidType n10, final Object arg) {
        return visit(n10, (VoidType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object visit(final WildcardType n10, final Object arg) {
        return visit(n10, (WildcardType) arg);
    }

    @Override
    public List<R> visit(final AnnotationDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getMembers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final AnnotationMemberDeclaration n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getDefaultValue().isPresent() && (list2 = (List) n10.getDefaultValue().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ArrayAccessExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getIndex().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ArrayCreationExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getElementType().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getInitializer().isPresent() && (list2 = (List) n10.getInitializer().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getLevels().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ArrayCreationLevel n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getDimension().isPresent() && (list2 = (List) n10.getDimension().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ArrayInitializerExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getValues().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ArrayType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getComponentType().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final AssertStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getCheck().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getMessage().isPresent() && (list2 = (List) n10.getMessage().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final AssignExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getTarget().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getValue().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final BinaryExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getLeft().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getRight().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final BlockComment n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final BlockStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getStatements().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final BooleanLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final BreakStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getLabel().isPresent() && (list2 = (List) n10.getLabel().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final CastExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final CatchClause n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getParameter().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final CharLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ClassExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ClassOrInterfaceDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExtendedTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getImplementedTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getPermittedTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getTypeParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getMembers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List list7 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        List list8 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list8 != null) {
            arrayList.addAll(list8);
        }
        List list9 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list9 != null) {
            arrayList.addAll(list9);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ClassOrInterfaceType n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getScope().isPresent() && (list3 = (List) n10.getScope().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list5 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final CompilationUnit n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        List list4 = (List) n10.getImports().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getModule().isPresent() && (list3 = (List) n10.getModule().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        if (n10.getPackageDeclaration().isPresent() && (list2 = (List) n10.getPackageDeclaration().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list5 = (List) n10.getTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ConditionalExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getCondition().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getElseExpr().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getThenExpr().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ConstructorDeclaration n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        if (n10.getReceiverParameter().isPresent() && (list2 = (List) n10.getReceiverParameter().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list7 = (List) n10.getThrownExceptions().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        List list8 = (List) n10.getTypeParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list8 != null) {
            arrayList.addAll(list8);
        }
        List list9 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list9 != null) {
            arrayList.addAll(list9);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ContinueStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getLabel().isPresent() && (list2 = (List) n10.getLabel().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final DoStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getCondition().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final DoubleLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final EmptyStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final EnclosedExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getInner().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final EnumConstantDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getArguments().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getClassBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final EnumDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getEntries().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getImplementedTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getMembers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List list7 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ExplicitConstructorInvocationStmt n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        List list4 = (List) n10.getArguments().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getExpression().isPresent() && (list3 = (List) n10.getExpression().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ExpressionStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final FieldAccessExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getScope().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final FieldDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getVariables().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ForStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getCompare().isPresent() && (list2 = (List) n10.getCompare().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getInitialization().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getUpdate().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ForEachStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getIterable().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getVariable().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final IfStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getCondition().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getElseStmt().isPresent() && (list2 = (List) n10.getElseStmt().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getThenStmt().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit2(final ImportDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final InitializerDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final InstanceOfExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getPattern().isPresent() && (list2 = (List) n10.getPattern().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final IntegerLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final IntersectionType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getElements().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final JavadocComment n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LabeledStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getLabel().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getStatement().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LambdaExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LineComment n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LocalClassDeclarationStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getClassDeclaration().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LocalRecordDeclarationStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getRecordDeclaration().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final LongLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final MarkerAnnotationExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final MemberValuePair n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getValue().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final MethodCallExpr n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        List list4 = (List) n10.getArguments().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getScope().isPresent() && (list3 = (List) n10.getScope().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final MethodDeclaration n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        if (n10.getBody().isPresent() && (list3 = (List) n10.getBody().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List list7 = (List) n10.getParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        if (n10.getReceiverParameter().isPresent() && (list2 = (List) n10.getReceiverParameter().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list8 = (List) n10.getThrownExceptions().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list8 != null) {
            arrayList.addAll(list8);
        }
        List list9 = (List) n10.getTypeParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list9 != null) {
            arrayList.addAll(list9);
        }
        List list10 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list10 != null) {
            arrayList.addAll(list10);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final MethodReferenceExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getScope().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final NameExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final Name n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getQualifier().isPresent() && (list2 = (List) n10.getQualifier().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final NormalAnnotationExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getPairs().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final NullLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ObjectCreationExpr n10, final A arg) {
        List list;
        List list2;
        List list3;
        List list4;
        ArrayList arrayList = new ArrayList();
        if (n10.getAnonymousClassBody().isPresent() && (list4 = (List) n10.getAnonymousClassBody().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getArguments().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getScope().isPresent() && (list3 = (List) n10.getScope().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        List list6 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        if (n10.getTypeArguments().isPresent() && (list2 = (List) n10.getTypeArguments().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final PackageDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final Parameter n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getVarArgsAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final PrimitiveType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ReturnStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getExpression().isPresent() && (list2 = (List) n10.getExpression().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SimpleName n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SingleMemberAnnotationExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getMemberValue().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final StringLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SuperExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getTypeName().isPresent() && (list2 = (List) n10.getTypeName().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SwitchEntry n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getGuard().isPresent() && (list2 = (List) n10.getGuard().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getLabels().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getStatements().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SwitchStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getEntries().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getSelector().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SynchronizedStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ThisExpr n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getTypeName().isPresent() && (list2 = (List) n10.getTypeName().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ThrowStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final TryStmt n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getCatchClauses().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getFinallyBlock().isPresent() && (list2 = (List) n10.getFinallyBlock().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getResources().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getTryBlock().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final TypeExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final TypeParameter n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getTypeBound().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final UnaryExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final UnionType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getElements().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final UnknownType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final VariableDeclarationExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getVariables().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final VariableDeclarator n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        if (n10.getInitializer().isPresent() && (list2 = (List) n10.getInitializer().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final VoidType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final WhileStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getCondition().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final WildcardType n10, final A arg) {
        List list;
        List list2;
        List list3;
        ArrayList arrayList = new ArrayList();
        if (n10.getExtendedType().isPresent() && (list3 = (List) n10.getExtendedType().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list3);
        }
        if (n10.getSuperType().isPresent() && (list2 = (List) n10.getSuperType().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list4 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(NodeList n10, final A arg) {
        return (List) n10.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((Node) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream lambda$visit$0;
                lambda$visit$0 = GenericListVisitorAdapter.this.lambda$visit$0(arg, (Node) obj);
                return lambda$visit$0;
            }
        }).collect(Collectors.toList());
    }

    @Override
    public List<R> visit(final ModuleDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getDirectives().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ModuleExportsDirective n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModuleNames().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ModuleOpensDirective n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModuleNames().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ModuleProvidesDirective n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getWith().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ModuleRequiresDirective n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ModuleUsesDirective n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final UnparsableStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final ReceiverParameter n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final VarType n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final Modifier n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final SwitchExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getEntries().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getSelector().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final YieldStmt n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getExpression().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final TextBlockLiteralExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final TypePatternExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final RecordDeclaration n10, final A arg) {
        List list;
        List list2;
        ArrayList arrayList = new ArrayList();
        List list3 = (List) n10.getImplementedTypes().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getReceiverParameter().isPresent() && (list2 = (List) n10.getReceiverParameter().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list2);
        }
        List list5 = (List) n10.getTypeParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getMembers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List list7 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        List list8 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list8 != null) {
            arrayList.addAll(list8);
        }
        List list9 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list9 != null) {
            arrayList.addAll(list9);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final CompactConstructorDeclaration n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getBody().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getName().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List list5 = (List) n10.getThrownExceptions().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List list6 = (List) n10.getTypeParameters().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List list7 = (List) n10.getAnnotations().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override
    public List<R> visit(final RecordPatternExpr n10, final A arg) {
        List list;
        ArrayList arrayList = new ArrayList();
        List list2 = (List) n10.getModifiers().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List list3 = (List) n10.getPatternList().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List list4 = (List) n10.getType2().accept(this, (GenericListVisitorAdapter<R, A>) arg);
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        if (n10.getComment().isPresent() && (list = (List) n10.getComment().get().accept(this, (GenericListVisitorAdapter<R, A>) arg)) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }
}
