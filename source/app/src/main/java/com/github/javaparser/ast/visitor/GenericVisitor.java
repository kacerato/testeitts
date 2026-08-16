package com.github.javaparser.ast.visitor;

import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
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

public interface GenericVisitor<R, A> {
    R visit(ArrayCreationLevel n10, A arg);

    R visit(CompilationUnit n10, A arg);

    R visit2(ImportDeclaration n10, A arg);

    R visit(Modifier n10, A arg);

    R visit(NodeList n10, A arg);

    R visit(PackageDeclaration n10, A arg);

    R visit(AnnotationDeclaration n10, A arg);

    R visit(AnnotationMemberDeclaration n10, A arg);

    R visit(ClassOrInterfaceDeclaration n10, A arg);

    R visit(CompactConstructorDeclaration n10, A arg);

    R visit(ConstructorDeclaration n10, A arg);

    R visit(EnumConstantDeclaration n10, A arg);

    R visit(EnumDeclaration n10, A arg);

    R visit(FieldDeclaration n10, A arg);

    R visit(InitializerDeclaration n10, A arg);

    R visit(MethodDeclaration n10, A arg);

    R visit(Parameter n10, A arg);

    R visit(ReceiverParameter n10, A arg);

    R visit(RecordDeclaration n10, A arg);

    R visit(VariableDeclarator n10, A arg);

    R visit(BlockComment n10, A arg);

    R visit(JavadocComment n10, A arg);

    R visit(LineComment n10, A arg);

    R visit(ArrayAccessExpr n10, A arg);

    R visit(ArrayCreationExpr n10, A arg);

    R visit(ArrayInitializerExpr n10, A arg);

    R visit(AssignExpr n10, A arg);

    R visit(BinaryExpr n10, A arg);

    R visit(BooleanLiteralExpr n10, A arg);

    R visit(CastExpr n10, A arg);

    R visit(CharLiteralExpr n10, A arg);

    R visit(ClassExpr n10, A arg);

    R visit(ConditionalExpr n10, A arg);

    R visit(DoubleLiteralExpr n10, A arg);

    R visit(EnclosedExpr n10, A arg);

    R visit(FieldAccessExpr n10, A arg);

    R visit(InstanceOfExpr n10, A arg);

    R visit(IntegerLiteralExpr n10, A arg);

    R visit(LambdaExpr n10, A arg);

    R visit(LongLiteralExpr n10, A arg);

    R visit(MarkerAnnotationExpr n10, A arg);

    R visit(MemberValuePair n10, A arg);

    R visit(MethodCallExpr n10, A arg);

    R visit(MethodReferenceExpr n10, A arg);

    R visit(Name n10, A arg);

    R visit(NameExpr n10, A arg);

    R visit(NormalAnnotationExpr n10, A arg);

    R visit(NullLiteralExpr n10, A arg);

    R visit(ObjectCreationExpr n10, A arg);

    R visit(RecordPatternExpr n10, A arg);

    R visit(SimpleName n10, A arg);

    R visit(SingleMemberAnnotationExpr n10, A arg);

    R visit(StringLiteralExpr n10, A arg);

    R visit(SuperExpr n10, A arg);

    R visit(SwitchExpr n10, A arg);

    R visit(TextBlockLiteralExpr n10, A arg);

    R visit(ThisExpr n10, A arg);

    R visit(TypeExpr n10, A arg);

    R visit(TypePatternExpr n10, A arg);

    R visit(UnaryExpr n10, A arg);

    R visit(VariableDeclarationExpr n10, A arg);

    R visit(ModuleDeclaration n10, A arg);

    R visit(ModuleExportsDirective n10, A arg);

    R visit(ModuleOpensDirective n10, A arg);

    R visit(ModuleProvidesDirective n10, A arg);

    R visit(ModuleRequiresDirective n10, A arg);

    R visit(ModuleUsesDirective n10, A arg);

    R visit(AssertStmt n10, A arg);

    R visit(BlockStmt n10, A arg);

    R visit(BreakStmt n10, A arg);

    R visit(CatchClause n10, A arg);

    R visit(ContinueStmt n10, A arg);

    R visit(DoStmt n10, A arg);

    R visit(EmptyStmt n10, A arg);

    R visit(ExplicitConstructorInvocationStmt n10, A arg);

    R visit(ExpressionStmt n10, A arg);

    R visit(ForEachStmt n10, A arg);

    R visit(ForStmt n10, A arg);

    R visit(IfStmt n10, A arg);

    R visit(LabeledStmt n10, A arg);

    R visit(LocalClassDeclarationStmt n10, A arg);

    R visit(LocalRecordDeclarationStmt n10, A arg);

    R visit(ReturnStmt n10, A arg);

    R visit(SwitchEntry n10, A arg);

    R visit(SwitchStmt n10, A arg);

    R visit(SynchronizedStmt n10, A arg);

    R visit(ThrowStmt n10, A arg);

    R visit(TryStmt n10, A arg);

    R visit(UnparsableStmt n10, A arg);

    R visit(WhileStmt n10, A arg);

    R visit(YieldStmt n10, A arg);

    R visit(ArrayType n10, A arg);

    R visit(ClassOrInterfaceType n10, A arg);

    R visit(IntersectionType n10, A arg);

    R visit(PrimitiveType n10, A arg);

    R visit(TypeParameter n10, A arg);

    R visit(UnionType n10, A arg);

    R visit(UnknownType n10, A arg);

    R visit(VarType n10, A arg);

    R visit(VoidType n10, A arg);

    R visit(WildcardType n10, A arg);
}
