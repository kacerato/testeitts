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
import com.github.javaparser.ast.body.BodyDeclaration;
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
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.ast.expr.AnnotationExpr;
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
import com.github.javaparser.ast.expr.Expression;
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
import com.github.javaparser.ast.expr.PatternExpr;
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
import com.github.javaparser.ast.modules.ModuleDirective;
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
import com.github.javaparser.ast.stmt.Statement;
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
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.type.WildcardType;
import com.github.javaparser.ast.visitor.ModifierVisitor;
import com.github.javaparser.utils.Pair;
import com.github.javaparser.utils.Utils;
import java.util.ArrayList;
import java.util.Optional;
import java.util.function.Function;

public class ModifierVisitor<A> implements GenericVisitor<Visitable, A> {
    /* JADX WARN: Multi-variable type inference failed */
    public NodeList lambda$modifyList$113(final Object arg, NodeList ns) {
        return modifyList(ns, (NodeList) arg);
    }

    public Comment lambda$visit$0(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$1(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$10(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$100(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$101(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$102(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$103(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ReferenceType lambda$visit$104(final Object arg, ReferenceType s10) {
        return (ReferenceType) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ReferenceType lambda$visit$105(final Object arg, ReferenceType s10) {
        return (ReferenceType) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$106(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$107(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$108(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$109(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$11(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$110(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$111(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$112(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$114(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$115(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$116(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$117(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$118(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$119(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$12(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$120(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$121(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$122(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$123(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$124(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$125(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$126(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$127(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$128(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public SimpleName lambda$visit$13(final Object arg, SimpleName s10) {
        return (SimpleName) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$14(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$15(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$16(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$17(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$18(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$19(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$2(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ReceiverParameter lambda$visit$20(final Object arg, ReceiverParameter s10) {
        return (ReceiverParameter) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$21(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ClassOrInterfaceType lambda$visit$22(final Object arg, ClassOrInterfaceType s10) {
        return (ClassOrInterfaceType) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$23(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ModuleDeclaration lambda$visit$24(final Object arg, ModuleDeclaration s10) {
        return (ModuleDeclaration) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public PackageDeclaration lambda$visit$25(final Object arg, PackageDeclaration s10) {
        return (PackageDeclaration) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$26(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$27(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ReceiverParameter lambda$visit$28(final Object arg, ReceiverParameter s10) {
        return (ReceiverParameter) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$29(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$3(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$30(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public SimpleName lambda$visit$31(final Object arg, SimpleName s10) {
        return (SimpleName) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$32(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$33(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$34(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$35(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$36(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$37(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$38(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$39(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ArrayInitializerExpr lambda$visit$4(final Object arg, ArrayInitializerExpr s10) {
        return (ArrayInitializerExpr) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$40(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$41(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$42(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$43(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$44(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$45(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$46(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Statement lambda$visit$47(final Object arg, Statement s10) {
        return (Statement) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$48(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$49(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$5(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public PatternExpr lambda$visit$50(final Object arg, PatternExpr s10) {
        return (PatternExpr) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$51(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$52(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$53(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$54(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$55(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$56(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$57(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$58(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$59(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$6(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public BlockStmt lambda$visit$60(final Object arg, BlockStmt s10) {
        return (BlockStmt) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public ReceiverParameter lambda$visit$61(final Object arg, ReceiverParameter s10) {
        return (ReceiverParameter) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$62(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$63(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$64(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$65(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$66(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$67(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$68(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$69(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$7(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Name lambda$visit$70(final Object arg, Name s10) {
        return (Name) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$71(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$72(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$73(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$74(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$75(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$76(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$77(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$78(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$79(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$8(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$80(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$81(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$82(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Name lambda$visit$83(final Object arg, Name s10) {
        return (Name) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$84(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Expression lambda$visit$85(final Object arg, Expression s10) {
        return (Expression) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$86(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$87(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$88(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Name lambda$visit$89(final Object arg, Name s10) {
        return (Name) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$9(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$90(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$91(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public BlockStmt lambda$visit$92(final Object arg, BlockStmt s10) {
        return (BlockStmt) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$93(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$94(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$95(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$96(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$97(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$98(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    public Comment lambda$visit$99(final Object arg, Comment s10) {
        return (Comment) s10.accept(this, (ModifierVisitor<A>) arg);
    }

    private <N extends Node> NodeList<N> modifyList(NodeList<N> list, A arg) {
        return (NodeList) list.accept(this, (ModifierVisitor<A>) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayCreationLevel n10, final Object arg) {
        return visit(n10, (ArrayCreationLevel) arg);
    }

    private <N extends Node> NodeList<N> modifyList(Optional<NodeList<N>> list, final A arg) {
        return (NodeList) list.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                NodeList lambda$modifyList$113;
                lambda$modifyList$113 = ModifierVisitor.this.lambda$modifyList$113(arg, (NodeList) obj);
                return lambda$modifyList$113;
            }
        }).orElse(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CompilationUnit n10, final Object arg) {
        return visit(n10, (CompilationUnit) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit2(final ImportDeclaration n10, final Object arg) {
        return visit2(n10, (ImportDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final Modifier n10, final Object arg) {
        return visit(n10, (Modifier) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(NodeList n10, Object arg) {
        return visit(n10, (NodeList) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final PackageDeclaration n10, final Object arg) {
        return visit(n10, (PackageDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AnnotationDeclaration n10, final Object arg) {
        return visit(n10, (AnnotationDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AnnotationMemberDeclaration n10, final Object arg) {
        return visit(n10, (AnnotationMemberDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ClassOrInterfaceDeclaration n10, final Object arg) {
        return visit(n10, (ClassOrInterfaceDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CompactConstructorDeclaration n10, final Object arg) {
        return visit(n10, (CompactConstructorDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ConstructorDeclaration n10, final Object arg) {
        return visit(n10, (ConstructorDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EnumConstantDeclaration n10, final Object arg) {
        return visit(n10, (EnumConstantDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EnumDeclaration n10, final Object arg) {
        return visit(n10, (EnumDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final FieldDeclaration n10, final Object arg) {
        return visit(n10, (FieldDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final InitializerDeclaration n10, final Object arg) {
        return visit(n10, (InitializerDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodDeclaration n10, final Object arg) {
        return visit(n10, (MethodDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final Parameter n10, final Object arg) {
        return visit(n10, (Parameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ReceiverParameter n10, final Object arg) {
        return visit(n10, (ReceiverParameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final RecordDeclaration n10, final Object arg) {
        return visit(n10, (RecordDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VariableDeclarator n10, final Object arg) {
        return visit(n10, (VariableDeclarator) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BlockComment n10, final Object arg) {
        return visit(n10, (BlockComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final JavadocComment n10, final Object arg) {
        return visit(n10, (JavadocComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LineComment n10, final Object arg) {
        return visit(n10, (LineComment) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayAccessExpr n10, final Object arg) {
        return visit(n10, (ArrayAccessExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayCreationExpr n10, final Object arg) {
        return visit(n10, (ArrayCreationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayInitializerExpr n10, final Object arg) {
        return visit(n10, (ArrayInitializerExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AssignExpr n10, final Object arg) {
        return visit(n10, (AssignExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BinaryExpr n10, final Object arg) {
        return visit(n10, (BinaryExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BooleanLiteralExpr n10, final Object arg) {
        return visit(n10, (BooleanLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CastExpr n10, final Object arg) {
        return visit(n10, (CastExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CharLiteralExpr n10, final Object arg) {
        return visit(n10, (CharLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ClassExpr n10, final Object arg) {
        return visit(n10, (ClassExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ConditionalExpr n10, final Object arg) {
        return visit(n10, (ConditionalExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final DoubleLiteralExpr n10, final Object arg) {
        return visit(n10, (DoubleLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EnclosedExpr n10, final Object arg) {
        return visit(n10, (EnclosedExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final FieldAccessExpr n10, final Object arg) {
        return visit(n10, (FieldAccessExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final InstanceOfExpr n10, final Object arg) {
        return visit(n10, (InstanceOfExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final IntegerLiteralExpr n10, final Object arg) {
        return visit(n10, (IntegerLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LambdaExpr n10, final Object arg) {
        return visit(n10, (LambdaExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LongLiteralExpr n10, final Object arg) {
        return visit(n10, (LongLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MarkerAnnotationExpr n10, final Object arg) {
        return visit(n10, (MarkerAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MemberValuePair n10, final Object arg) {
        return visit(n10, (MemberValuePair) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodCallExpr n10, final Object arg) {
        return visit(n10, (MethodCallExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodReferenceExpr n10, final Object arg) {
        return visit(n10, (MethodReferenceExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final Name n10, final Object arg) {
        return visit(n10, (Name) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final NameExpr n10, final Object arg) {
        return visit(n10, (NameExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final NormalAnnotationExpr n10, final Object arg) {
        return visit(n10, (NormalAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final NullLiteralExpr n10, final Object arg) {
        return visit(n10, (NullLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ObjectCreationExpr n10, final Object arg) {
        return visit(n10, (ObjectCreationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final RecordPatternExpr n10, final Object arg) {
        return visit(n10, (RecordPatternExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SimpleName n10, final Object arg) {
        return visit(n10, (SimpleName) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SingleMemberAnnotationExpr n10, final Object arg) {
        return visit(n10, (SingleMemberAnnotationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final StringLiteralExpr n10, final Object arg) {
        return visit(n10, (StringLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SuperExpr n10, final Object arg) {
        return visit(n10, (SuperExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchExpr n10, final Object arg) {
        return visit(n10, (SwitchExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TextBlockLiteralExpr n10, final Object arg) {
        return visit(n10, (TextBlockLiteralExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ThisExpr n10, final Object arg) {
        return visit(n10, (ThisExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TypeExpr n10, final Object arg) {
        return visit(n10, (TypeExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TypePatternExpr n10, final Object arg) {
        return visit(n10, (TypePatternExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnaryExpr n10, final Object arg) {
        return visit(n10, (UnaryExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VariableDeclarationExpr n10, final Object arg) {
        return visit(n10, (VariableDeclarationExpr) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleDeclaration n10, final Object arg) {
        return visit(n10, (ModuleDeclaration) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleExportsDirective n10, final Object arg) {
        return visit(n10, (ModuleExportsDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleOpensDirective n10, final Object arg) {
        return visit(n10, (ModuleOpensDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleProvidesDirective n10, final Object arg) {
        return visit(n10, (ModuleProvidesDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleRequiresDirective n10, final Object arg) {
        return visit(n10, (ModuleRequiresDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleUsesDirective n10, final Object arg) {
        return visit(n10, (ModuleUsesDirective) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AssertStmt n10, final Object arg) {
        return visit(n10, (AssertStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BlockStmt n10, final Object arg) {
        return visit(n10, (BlockStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BreakStmt n10, final Object arg) {
        return visit(n10, (BreakStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CatchClause n10, final Object arg) {
        return visit(n10, (CatchClause) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ContinueStmt n10, final Object arg) {
        return visit(n10, (ContinueStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final DoStmt n10, final Object arg) {
        return visit(n10, (DoStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EmptyStmt n10, final Object arg) {
        return visit(n10, (EmptyStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ExplicitConstructorInvocationStmt n10, final Object arg) {
        return visit(n10, (ExplicitConstructorInvocationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ExpressionStmt n10, final Object arg) {
        return visit(n10, (ExpressionStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ForEachStmt n10, final Object arg) {
        return visit(n10, (ForEachStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ForStmt n10, final Object arg) {
        return visit(n10, (ForStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final IfStmt n10, final Object arg) {
        return visit(n10, (IfStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LabeledStmt n10, final Object arg) {
        return visit(n10, (LabeledStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LocalClassDeclarationStmt n10, final Object arg) {
        return visit(n10, (LocalClassDeclarationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LocalRecordDeclarationStmt n10, final Object arg) {
        return visit(n10, (LocalRecordDeclarationStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ReturnStmt n10, final Object arg) {
        return visit(n10, (ReturnStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchEntry n10, final Object arg) {
        return visit(n10, (SwitchEntry) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchStmt n10, final Object arg) {
        return visit(n10, (SwitchStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SynchronizedStmt n10, final Object arg) {
        return visit(n10, (SynchronizedStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ThrowStmt n10, final Object arg) {
        return visit(n10, (ThrowStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TryStmt n10, final Object arg) {
        return visit(n10, (TryStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnparsableStmt n10, final Object arg) {
        return visit(n10, (UnparsableStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final WhileStmt n10, final Object arg) {
        return visit(n10, (WhileStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final YieldStmt n10, final Object arg) {
        return visit(n10, (YieldStmt) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayType n10, final Object arg) {
        return visit(n10, (ArrayType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ClassOrInterfaceType n10, final Object arg) {
        return visit(n10, (ClassOrInterfaceType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final IntersectionType n10, final Object arg) {
        return visit(n10, (IntersectionType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final PrimitiveType n10, final Object arg) {
        return visit(n10, (PrimitiveType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TypeParameter n10, final Object arg) {
        return visit(n10, (TypeParameter) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnionType n10, final Object arg) {
        return visit(n10, (UnionType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnknownType n10, final Object arg) {
        return visit(n10, (UnknownType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VarType n10, final Object arg) {
        return visit(n10, (VarType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VoidType n10, final Object arg) {
        return visit(n10, (VoidType) arg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final WildcardType n10, final Object arg) {
        return visit(n10, (WildcardType) arg);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AnnotationDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getMembers(), (NodeList<BodyDeclaration<?>>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$0;
                lambda$visit$0 = ModifierVisitor.this.lambda$visit$0(arg, (Comment) obj);
                return lambda$visit$0;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setMembers((NodeList<BodyDeclaration<?>>) modifyList3);
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final AnnotationMemberDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        Expression expression = (Expression) n10.getDefaultValue().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$1;
                lambda$visit$1 = ModifierVisitor.this.lambda$visit$1(arg, (Expression) obj);
                return lambda$visit$1;
            }
        }).orElse(null);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$2;
                lambda$visit$2 = ModifierVisitor.this.lambda$visit$2(arg, (Comment) obj);
                return lambda$visit$2;
            }
        }).orElse(null);
        if (simpleName == null || type == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setDefaultValue(expression);
        n10.setName(simpleName);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayAccessExpr n10, final A arg) {
        Expression expression = (Expression) n10.getIndex().accept(this, (ModifierVisitor<A>) arg);
        Expression expression2 = (Expression) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$3;
                lambda$visit$3 = ModifierVisitor.this.lambda$visit$3(arg, (Comment) obj);
                return lambda$visit$3;
            }
        }).orElse(null);
        if (expression == null || expression2 == null) {
            return null;
        }
        n10.setIndex(expression);
        n10.setName(expression2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayCreationExpr n10, final A arg) {
        Type type = (Type) n10.getElementType().accept(this, (ModifierVisitor<A>) arg);
        ArrayInitializerExpr arrayInitializerExpr = (ArrayInitializerExpr) n10.getInitializer().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ArrayInitializerExpr lambda$visit$4;
                lambda$visit$4 = ModifierVisitor.this.lambda$visit$4(arg, (ArrayInitializerExpr) obj);
                return lambda$visit$4;
            }
        }).orElse(null);
        NodeList<N> modifyList = modifyList(n10.getLevels(), (NodeList<ArrayCreationLevel>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$5;
                lambda$visit$5 = ModifierVisitor.this.lambda$visit$5(arg, (Comment) obj);
                return lambda$visit$5;
            }
        }).orElse(null);
        if (type == null || modifyList.isEmpty()) {
            return null;
        }
        n10.setElementType(type);
        n10.setInitializer(arrayInitializerExpr);
        n10.setLevels(modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayInitializerExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getValues(), (NodeList<Expression>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$6;
                lambda$visit$6 = ModifierVisitor.this.lambda$visit$6(arg, (Comment) obj);
                return lambda$visit$6;
            }
        }).orElse(null);
        n10.setValues(modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AssertStmt n10, final A arg) {
        Expression expression = (Expression) n10.getCheck().accept(this, (ModifierVisitor<A>) arg);
        Expression expression2 = (Expression) n10.getMessage().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$7;
                lambda$visit$7 = ModifierVisitor.this.lambda$visit$7(arg, (Expression) obj);
                return lambda$visit$7;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$8;
                lambda$visit$8 = ModifierVisitor.this.lambda$visit$8(arg, (Comment) obj);
                return lambda$visit$8;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setCheck(expression);
        n10.setMessage(expression2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AssignExpr n10, final A arg) {
        Expression expression = (Expression) n10.getTarget().accept(this, (ModifierVisitor<A>) arg);
        Expression expression2 = (Expression) n10.getValue().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$9;
                lambda$visit$9 = ModifierVisitor.this.lambda$visit$9(arg, (Comment) obj);
                return lambda$visit$9;
            }
        }).orElse(null);
        if (expression == null || expression2 == null) {
            return null;
        }
        n10.setTarget(expression);
        n10.setValue(expression2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BinaryExpr n10, final A arg) {
        Expression expression = (Expression) n10.getLeft().accept(this, (ModifierVisitor<A>) arg);
        Expression expression2 = (Expression) n10.getRight().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$10;
                lambda$visit$10 = ModifierVisitor.this.lambda$visit$10(arg, (Comment) obj);
                return lambda$visit$10;
            }
        }).orElse(null);
        if (expression == null) {
            return expression2;
        }
        if (expression2 == null) {
            return expression;
        }
        n10.setLeft(expression);
        n10.setRight(expression2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final BlockStmt n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getStatements(), (NodeList<Statement>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$11;
                lambda$visit$11 = ModifierVisitor.this.lambda$visit$11(arg, (Comment) obj);
                return lambda$visit$11;
            }
        }).orElse(null);
        n10.setStatements2((NodeList<Statement>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BooleanLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$12;
                lambda$visit$12 = ModifierVisitor.this.lambda$visit$12(arg, (Comment) obj);
                return lambda$visit$12;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BreakStmt n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getLabel().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                SimpleName lambda$visit$13;
                lambda$visit$13 = ModifierVisitor.this.lambda$visit$13(arg, (SimpleName) obj);
                return lambda$visit$13;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$14;
                lambda$visit$14 = ModifierVisitor.this.lambda$visit$14(arg, (Comment) obj);
                return lambda$visit$14;
            }
        }).orElse(null);
        n10.setLabel(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CastExpr n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$15;
                lambda$visit$15 = ModifierVisitor.this.lambda$visit$15(arg, (Comment) obj);
                return lambda$visit$15;
            }
        }).orElse(null);
        if (expression == null || type == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CatchClause n10, final A arg) {
        BlockStmt blockStmt = (BlockStmt) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Parameter parameter = (Parameter) n10.getParameter().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$16;
                lambda$visit$16 = ModifierVisitor.this.lambda$visit$16(arg, (Comment) obj);
                return lambda$visit$16;
            }
        }).orElse(null);
        if (blockStmt == null || parameter == null) {
            return null;
        }
        n10.setBody(blockStmt);
        n10.setParameter(parameter);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CharLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$17;
                lambda$visit$17 = ModifierVisitor.this.lambda$visit$17(arg, (Comment) obj);
                return lambda$visit$17;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ClassExpr n10, final A arg) {
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$18;
                lambda$visit$18 = ModifierVisitor.this.lambda$visit$18(arg, (Comment) obj);
                return lambda$visit$18;
            }
        }).orElse(null);
        if (type == null) {
            return null;
        }
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ClassOrInterfaceDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getExtendedTypes(), (NodeList<ClassOrInterfaceType>) arg);
        NodeList<N> modifyList4 = modifyList(n10.getImplementedTypes(), (NodeList<ClassOrInterfaceType>) arg);
        NodeList<N> modifyList5 = modifyList(n10.getPermittedTypes(), (NodeList<ClassOrInterfaceType>) arg);
        NodeList<N> modifyList6 = modifyList(n10.getTypeParameters(), (NodeList<TypeParameter>) arg);
        NodeList<N> modifyList7 = modifyList(n10.getMembers(), (NodeList<BodyDeclaration<?>>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$19;
                lambda$visit$19 = ModifierVisitor.this.lambda$visit$19(arg, (Comment) obj);
                return lambda$visit$19;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setExtendedTypes2((NodeList<ClassOrInterfaceType>) modifyList3);
        n10.setImplementedTypes2((NodeList<ClassOrInterfaceType>) modifyList4);
        n10.setPermittedTypes(modifyList5);
        n10.setTypeParameters2((NodeList<TypeParameter>) modifyList6);
        n10.setMembers((NodeList<BodyDeclaration<?>>) modifyList7);
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final RecordDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getImplementedTypes(), (NodeList<ClassOrInterfaceType>) arg);
        NodeList<N> modifyList4 = modifyList(n10.getParameters(), (NodeList<Parameter>) arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) n10.getReceiverParameter().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ReceiverParameter lambda$visit$20;
                lambda$visit$20 = ModifierVisitor.this.lambda$visit$20(arg, (ReceiverParameter) obj);
                return lambda$visit$20;
            }
        }).orElse(null);
        NodeList<N> modifyList5 = modifyList(n10.getTypeParameters(), (NodeList<TypeParameter>) arg);
        NodeList<N> modifyList6 = modifyList(n10.getMembers(), (NodeList<BodyDeclaration<?>>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$21;
                lambda$visit$21 = ModifierVisitor.this.lambda$visit$21(arg, (Comment) obj);
                return lambda$visit$21;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setImplementedTypes2((NodeList<ClassOrInterfaceType>) modifyList3);
        n10.setParameters2((NodeList<Parameter>) modifyList4);
        n10.setReceiverParameter(receiverParameter);
        n10.setTypeParameters2((NodeList<TypeParameter>) modifyList5);
        n10.setMembers((NodeList<BodyDeclaration<?>>) modifyList6);
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ClassOrInterfaceType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) n10.getScope().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ClassOrInterfaceType lambda$visit$22;
                lambda$visit$22 = ModifierVisitor.this.lambda$visit$22(arg, (ClassOrInterfaceType) obj);
                return lambda$visit$22;
            }
        }).orElse(null);
        NodeList<N> modifyList2 = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$23;
                lambda$visit$23 = ModifierVisitor.this.lambda$visit$23(arg, (Comment) obj);
                return lambda$visit$23;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setName(simpleName);
        n10.setScope(classOrInterfaceType);
        n10.setTypeArguments2((NodeList<Type>) modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CompilationUnit n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getImports(), (NodeList<ImportDeclaration>) arg);
        ModuleDeclaration moduleDeclaration = (ModuleDeclaration) n10.getModule().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ModuleDeclaration lambda$visit$24;
                lambda$visit$24 = ModifierVisitor.this.lambda$visit$24(arg, (ModuleDeclaration) obj);
                return lambda$visit$24;
            }
        }).orElse(null);
        PackageDeclaration packageDeclaration = (PackageDeclaration) n10.getPackageDeclaration().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                PackageDeclaration lambda$visit$25;
                lambda$visit$25 = ModifierVisitor.this.lambda$visit$25(arg, (PackageDeclaration) obj);
                return lambda$visit$25;
            }
        }).orElse(null);
        NodeList<N> modifyList2 = modifyList(n10.getTypes(), (NodeList<TypeDeclaration<?>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$26;
                lambda$visit$26 = ModifierVisitor.this.lambda$visit$26(arg, (Comment) obj);
                return lambda$visit$26;
            }
        }).orElse(null);
        n10.setImports(modifyList);
        n10.setModule(moduleDeclaration);
        n10.setPackageDeclaration(packageDeclaration);
        n10.setTypes(modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ConditionalExpr n10, final A arg) {
        Expression expression = (Expression) n10.getCondition().accept(this, (ModifierVisitor<A>) arg);
        Expression expression2 = (Expression) n10.getElseExpr().accept(this, (ModifierVisitor<A>) arg);
        Expression expression3 = (Expression) n10.getThenExpr().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$27;
                lambda$visit$27 = ModifierVisitor.this.lambda$visit$27(arg, (Comment) obj);
                return lambda$visit$27;
            }
        }).orElse(null);
        if (expression == null || expression2 == null || expression3 == null) {
            return null;
        }
        n10.setCondition(expression);
        n10.setElseExpr(expression2);
        n10.setThenExpr(expression3);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ConstructorDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        BlockStmt blockStmt = (BlockStmt) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getParameters(), (NodeList<Parameter>) arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) n10.getReceiverParameter().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ReceiverParameter lambda$visit$28;
                lambda$visit$28 = ModifierVisitor.this.lambda$visit$28(arg, (ReceiverParameter) obj);
                return lambda$visit$28;
            }
        }).orElse(null);
        NodeList<N> modifyList4 = modifyList(n10.getThrownExceptions(), (NodeList<ReferenceType>) arg);
        NodeList<N> modifyList5 = modifyList(n10.getTypeParameters(), (NodeList<TypeParameter>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$29;
                lambda$visit$29 = ModifierVisitor.this.lambda$visit$29(arg, (Comment) obj);
                return lambda$visit$29;
            }
        }).orElse(null);
        if (blockStmt == null || simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setBody(blockStmt);
        n10.setName(simpleName);
        n10.setParameters((NodeList<Parameter>) modifyList3);
        n10.setReceiverParameter(receiverParameter);
        n10.setThrownExceptions((NodeList<ReferenceType>) modifyList4);
        n10.setTypeParameters((NodeList<TypeParameter>) modifyList5);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final CompactConstructorDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        BlockStmt blockStmt = (BlockStmt) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getThrownExceptions(), (NodeList<ReferenceType>) arg);
        NodeList<N> modifyList4 = modifyList(n10.getTypeParameters(), (NodeList<TypeParameter>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$30;
                lambda$visit$30 = ModifierVisitor.this.lambda$visit$30(arg, (Comment) obj);
                return lambda$visit$30;
            }
        }).orElse(null);
        if (blockStmt == null || simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setBody(blockStmt);
        n10.setName(simpleName);
        n10.setThrownExceptions2((NodeList<ReferenceType>) modifyList3);
        n10.setTypeParameters2((NodeList<TypeParameter>) modifyList4);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ContinueStmt n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getLabel().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                SimpleName lambda$visit$31;
                lambda$visit$31 = ModifierVisitor.this.lambda$visit$31(arg, (SimpleName) obj);
                return lambda$visit$31;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$32;
                lambda$visit$32 = ModifierVisitor.this.lambda$visit$32(arg, (Comment) obj);
                return lambda$visit$32;
            }
        }).orElse(null);
        n10.setLabel(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final DoStmt n10, final A arg) {
        Statement statement = (Statement) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getCondition().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$33;
                lambda$visit$33 = ModifierVisitor.this.lambda$visit$33(arg, (Comment) obj);
                return lambda$visit$33;
            }
        }).orElse(null);
        if (statement == null || expression == null) {
            return null;
        }
        n10.setBody(statement);
        n10.setCondition(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final DoubleLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$34;
                lambda$visit$34 = ModifierVisitor.this.lambda$visit$34(arg, (Comment) obj);
                return lambda$visit$34;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EmptyStmt n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$35;
                lambda$visit$35 = ModifierVisitor.this.lambda$visit$35(arg, (Comment) obj);
                return lambda$visit$35;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EnclosedExpr n10, final A arg) {
        Expression expression = (Expression) n10.getInner().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$36;
                lambda$visit$36 = ModifierVisitor.this.lambda$visit$36(arg, (Comment) obj);
                return lambda$visit$36;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setInner(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EnumConstantDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getArguments(), (NodeList<Expression>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getClassBody(), (NodeList<BodyDeclaration<?>>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$37;
                lambda$visit$37 = ModifierVisitor.this.lambda$visit$37(arg, (Comment) obj);
                return lambda$visit$37;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setArguments2((NodeList<Expression>) modifyList2);
        n10.setClassBody(modifyList3);
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final EnumDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getEntries(), (NodeList<EnumConstantDeclaration>) arg);
        NodeList<N> modifyList4 = modifyList(n10.getImplementedTypes(), (NodeList<ClassOrInterfaceType>) arg);
        NodeList<N> modifyList5 = modifyList(n10.getMembers(), (NodeList<BodyDeclaration<?>>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$38;
                lambda$visit$38 = ModifierVisitor.this.lambda$visit$38(arg, (Comment) obj);
                return lambda$visit$38;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setEntries(modifyList3);
        n10.setImplementedTypes2((NodeList<ClassOrInterfaceType>) modifyList4);
        n10.setMembers((NodeList<BodyDeclaration<?>>) modifyList5);
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ExplicitConstructorInvocationStmt n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getArguments(), (NodeList<Expression>) arg);
        Expression expression = (Expression) n10.getExpression().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$39;
                lambda$visit$39 = ModifierVisitor.this.lambda$visit$39(arg, (Expression) obj);
                return lambda$visit$39;
            }
        }).orElse(null);
        NodeList<N> modifyList2 = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$40;
                lambda$visit$40 = ModifierVisitor.this.lambda$visit$40(arg, (Comment) obj);
                return lambda$visit$40;
            }
        }).orElse(null);
        n10.setArguments2((NodeList<Expression>) modifyList);
        n10.setExpression(expression);
        n10.setTypeArguments2((NodeList<Type>) modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ExpressionStmt n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$41;
                lambda$visit$41 = ModifierVisitor.this.lambda$visit$41(arg, (Comment) obj);
                return lambda$visit$41;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final FieldAccessExpr n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getScope().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$42;
                lambda$visit$42 = ModifierVisitor.this.lambda$visit$42(arg, (Comment) obj);
                return lambda$visit$42;
            }
        }).orElse(null);
        if (simpleName == null || expression == null) {
            return null;
        }
        n10.setName(simpleName);
        n10.setScope(expression);
        n10.setTypeArguments2((NodeList<Type>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final FieldDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getVariables(), (NodeList<VariableDeclarator>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$43;
                lambda$visit$43 = ModifierVisitor.this.lambda$visit$43(arg, (Comment) obj);
                return lambda$visit$43;
            }
        }).orElse(null);
        if (modifyList3.isEmpty()) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setVariables2((NodeList<VariableDeclarator>) modifyList3);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ForEachStmt n10, final A arg) {
        Statement statement = (Statement) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getIterable().accept(this, (ModifierVisitor<A>) arg);
        VariableDeclarationExpr variableDeclarationExpr = (VariableDeclarationExpr) n10.getVariable().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$44;
                lambda$visit$44 = ModifierVisitor.this.lambda$visit$44(arg, (Comment) obj);
                return lambda$visit$44;
            }
        }).orElse(null);
        if (statement == null || expression == null || variableDeclarationExpr == null) {
            return null;
        }
        n10.setBody(statement);
        n10.setIterable(expression);
        n10.setVariable(variableDeclarationExpr);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ForStmt n10, final A arg) {
        Statement statement = (Statement) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getCompare().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$45;
                lambda$visit$45 = ModifierVisitor.this.lambda$visit$45(arg, (Expression) obj);
                return lambda$visit$45;
            }
        }).orElse(null);
        NodeList<N> modifyList = modifyList(n10.getInitialization(), (NodeList<Expression>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getUpdate(), (NodeList<Expression>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$46;
                lambda$visit$46 = ModifierVisitor.this.lambda$visit$46(arg, (Comment) obj);
                return lambda$visit$46;
            }
        }).orElse(null);
        if (statement == null) {
            return null;
        }
        n10.setBody(statement);
        n10.setCompare(expression);
        n10.setInitialization(modifyList);
        n10.setUpdate(modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final IfStmt n10, final A arg) {
        Expression expression = (Expression) n10.getCondition().accept(this, (ModifierVisitor<A>) arg);
        Statement statement = (Statement) n10.getElseStmt().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Statement lambda$visit$47;
                lambda$visit$47 = ModifierVisitor.this.lambda$visit$47(arg, (Statement) obj);
                return lambda$visit$47;
            }
        }).orElse(null);
        Statement statement2 = (Statement) n10.getThenStmt().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$48;
                lambda$visit$48 = ModifierVisitor.this.lambda$visit$48(arg, (Comment) obj);
                return lambda$visit$48;
            }
        }).orElse(null);
        if (expression == null || statement2 == null) {
            return null;
        }
        n10.setCondition(expression);
        n10.setElseStmt(statement);
        n10.setThenStmt(statement2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final InitializerDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        BlockStmt blockStmt = (BlockStmt) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$49;
                lambda$visit$49 = ModifierVisitor.this.lambda$visit$49(arg, (Comment) obj);
                return lambda$visit$49;
            }
        }).orElse(null);
        if (blockStmt == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setBody(blockStmt);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final InstanceOfExpr n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        PatternExpr patternExpr = (PatternExpr) n10.getPattern().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                PatternExpr lambda$visit$50;
                lambda$visit$50 = ModifierVisitor.this.lambda$visit$50(arg, (PatternExpr) obj);
                return lambda$visit$50;
            }
        }).orElse(null);
        ReferenceType referenceType = (ReferenceType) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$51;
                lambda$visit$51 = ModifierVisitor.this.lambda$visit$51(arg, (Comment) obj);
                return lambda$visit$51;
            }
        }).orElse(null);
        if (expression == null || referenceType == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setPattern(patternExpr);
        n10.setType(referenceType);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final IntegerLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$52;
                lambda$visit$52 = ModifierVisitor.this.lambda$visit$52(arg, (Comment) obj);
                return lambda$visit$52;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final JavadocComment n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$53;
                lambda$visit$53 = ModifierVisitor.this.lambda$visit$53(arg, (Comment) obj);
                return lambda$visit$53;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LabeledStmt n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getLabel().accept(this, (ModifierVisitor<A>) arg);
        Statement statement = (Statement) n10.getStatement().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$54;
                lambda$visit$54 = ModifierVisitor.this.lambda$visit$54(arg, (Comment) obj);
                return lambda$visit$54;
            }
        }).orElse(null);
        if (simpleName == null || statement == null) {
            return null;
        }
        n10.setLabel(simpleName);
        n10.setStatement(statement);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LongLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$55;
                lambda$visit$55 = ModifierVisitor.this.lambda$visit$55(arg, (Comment) obj);
                return lambda$visit$55;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MarkerAnnotationExpr n10, final A arg) {
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$56;
                lambda$visit$56 = ModifierVisitor.this.lambda$visit$56(arg, (Comment) obj);
                return lambda$visit$56;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MemberValuePair n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getValue().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$57;
                lambda$visit$57 = ModifierVisitor.this.lambda$visit$57(arg, (Comment) obj);
                return lambda$visit$57;
            }
        }).orElse(null);
        if (simpleName == null || expression == null) {
            return null;
        }
        n10.setName(simpleName);
        n10.setValue(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodCallExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getArguments(), (NodeList<Expression>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getScope().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$58;
                lambda$visit$58 = ModifierVisitor.this.lambda$visit$58(arg, (Expression) obj);
                return lambda$visit$58;
            }
        }).orElse(null);
        NodeList<N> modifyList2 = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$59;
                lambda$visit$59 = ModifierVisitor.this.lambda$visit$59(arg, (Comment) obj);
                return lambda$visit$59;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setArguments2((NodeList<Expression>) modifyList);
        n10.setName(simpleName);
        n10.setScope(expression);
        n10.setTypeArguments2((NodeList<Type>) modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        BlockStmt blockStmt = (BlockStmt) n10.getBody().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                BlockStmt lambda$visit$60;
                lambda$visit$60 = ModifierVisitor.this.lambda$visit$60(arg, (BlockStmt) obj);
                return lambda$visit$60;
            }
        }).orElse(null);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getParameters(), (NodeList<Parameter>) arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) n10.getReceiverParameter().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ReceiverParameter lambda$visit$61;
                lambda$visit$61 = ModifierVisitor.this.lambda$visit$61(arg, (ReceiverParameter) obj);
                return lambda$visit$61;
            }
        }).orElse(null);
        NodeList<N> modifyList4 = modifyList(n10.getThrownExceptions(), (NodeList<ReferenceType>) arg);
        NodeList<N> modifyList5 = modifyList(n10.getTypeParameters(), (NodeList<TypeParameter>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$62;
                lambda$visit$62 = ModifierVisitor.this.lambda$visit$62(arg, (Comment) obj);
                return lambda$visit$62;
            }
        }).orElse(null);
        if (type == null || simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setBody(blockStmt);
        n10.setType(type);
        n10.setName(simpleName);
        n10.setParameters((NodeList<Parameter>) modifyList3);
        n10.setReceiverParameter(receiverParameter);
        n10.setThrownExceptions((NodeList<ReferenceType>) modifyList4);
        n10.setTypeParameters((NodeList<TypeParameter>) modifyList5);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final NameExpr n10, final A arg) {
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$63;
                lambda$visit$63 = ModifierVisitor.this.lambda$visit$63(arg, (Comment) obj);
                return lambda$visit$63;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setName(simpleName);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final NormalAnnotationExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getPairs(), (NodeList<MemberValuePair>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$64;
                lambda$visit$64 = ModifierVisitor.this.lambda$visit$64(arg, (Comment) obj);
                return lambda$visit$64;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setPairs(modifyList);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final NullLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$65;
                lambda$visit$65 = ModifierVisitor.this.lambda$visit$65(arg, (Comment) obj);
                return lambda$visit$65;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ObjectCreationExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnonymousClassBody(), (Optional<NodeList<BodyDeclaration<?>>>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getArguments(), (NodeList<Expression>) arg);
        Expression expression = (Expression) n10.getScope().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$66;
                lambda$visit$66 = ModifierVisitor.this.lambda$visit$66(arg, (Expression) obj);
                return lambda$visit$66;
            }
        }).orElse(null);
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$67;
                lambda$visit$67 = ModifierVisitor.this.lambda$visit$67(arg, (Comment) obj);
                return lambda$visit$67;
            }
        }).orElse(null);
        if (classOrInterfaceType == null) {
            return null;
        }
        n10.setAnonymousClassBody(modifyList);
        n10.setArguments2((NodeList<Expression>) modifyList2);
        n10.setScope(expression);
        n10.setType(classOrInterfaceType);
        n10.setTypeArguments2((NodeList<Type>) modifyList3);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final PackageDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$68;
                lambda$visit$68 = ModifierVisitor.this.lambda$visit$68(arg, (Comment) obj);
                return lambda$visit$68;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final Parameter n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getVarArgsAnnotations(), (NodeList<AnnotationExpr>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$69;
                lambda$visit$69 = ModifierVisitor.this.lambda$visit$69(arg, (Comment) obj);
                return lambda$visit$69;
            }
        }).orElse(null);
        if (simpleName == null || type == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setName(simpleName);
        n10.setType(type);
        n10.setVarArgsAnnotations(modifyList3);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final Name n10, final A arg) {
        Name name = (Name) n10.getQualifier().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Name lambda$visit$70;
                lambda$visit$70 = ModifierVisitor.this.lambda$visit$70(arg, (Name) obj);
                return lambda$visit$70;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$71;
                lambda$visit$71 = ModifierVisitor.this.lambda$visit$71(arg, (Comment) obj);
                return lambda$visit$71;
            }
        }).orElse(null);
        n10.setQualifier(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final PrimitiveType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$72;
                lambda$visit$72 = ModifierVisitor.this.lambda$visit$72(arg, (Comment) obj);
                return lambda$visit$72;
            }
        }).orElse(null);
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SimpleName n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$73;
                lambda$visit$73 = ModifierVisitor.this.lambda$visit$73(arg, (Comment) obj);
                return lambda$visit$73;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Type type = (Type) n10.getComponentType().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$74;
                lambda$visit$74 = ModifierVisitor.this.lambda$visit$74(arg, (Comment) obj);
                return lambda$visit$74;
            }
        }).orElse(null);
        if (type == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setComponentType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ArrayCreationLevel n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Expression expression = (Expression) n10.getDimension().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$75;
                lambda$visit$75 = ModifierVisitor.this.lambda$visit$75(arg, (Expression) obj);
                return lambda$visit$75;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$76;
                lambda$visit$76 = ModifierVisitor.this.lambda$visit$76(arg, (Comment) obj);
                return lambda$visit$76;
            }
        }).orElse(null);
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setDimension(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final IntersectionType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getElements(), (NodeList<ReferenceType>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$77;
                lambda$visit$77 = ModifierVisitor.this.lambda$visit$77(arg, (Comment) obj);
                return lambda$visit$77;
            }
        }).orElse(null);
        if (modifyList2.isEmpty()) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setElements(modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnionType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getElements(), (NodeList<ReferenceType>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$78;
                lambda$visit$78 = ModifierVisitor.this.lambda$visit$78(arg, (Comment) obj);
                return lambda$visit$78;
            }
        }).orElse(null);
        if (modifyList2.isEmpty()) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setElements(modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ReturnStmt n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$79;
                lambda$visit$79 = ModifierVisitor.this.lambda$visit$79(arg, (Expression) obj);
                return lambda$visit$79;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$80;
                lambda$visit$80 = ModifierVisitor.this.lambda$visit$80(arg, (Comment) obj);
                return lambda$visit$80;
            }
        }).orElse(null);
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SingleMemberAnnotationExpr n10, final A arg) {
        Expression expression = (Expression) n10.getMemberValue().accept(this, (ModifierVisitor<A>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$81;
                lambda$visit$81 = ModifierVisitor.this.lambda$visit$81(arg, (Comment) obj);
                return lambda$visit$81;
            }
        }).orElse(null);
        if (expression == null || name == null) {
            return null;
        }
        n10.setMemberValue(expression);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final StringLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$82;
                lambda$visit$82 = ModifierVisitor.this.lambda$visit$82(arg, (Comment) obj);
                return lambda$visit$82;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SuperExpr n10, final A arg) {
        Name name = (Name) n10.getTypeName().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Name lambda$visit$83;
                lambda$visit$83 = ModifierVisitor.this.lambda$visit$83(arg, (Name) obj);
                return lambda$visit$83;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$84;
                lambda$visit$84 = ModifierVisitor.this.lambda$visit$84(arg, (Comment) obj);
                return lambda$visit$84;
            }
        }).orElse(null);
        n10.setTypeName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchEntry n10, final A arg) {
        Expression expression = (Expression) n10.getGuard().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$85;
                lambda$visit$85 = ModifierVisitor.this.lambda$visit$85(arg, (Expression) obj);
                return lambda$visit$85;
            }
        }).orElse(null);
        NodeList<N> modifyList = modifyList(n10.getLabels(), (NodeList<Expression>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getStatements(), (NodeList<Statement>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$86;
                lambda$visit$86 = ModifierVisitor.this.lambda$visit$86(arg, (Comment) obj);
                return lambda$visit$86;
            }
        }).orElse(null);
        n10.setGuard(expression);
        n10.setLabels(modifyList);
        n10.setStatements2((NodeList<Statement>) modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchStmt n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getEntries(), (NodeList<SwitchEntry>) arg);
        Expression expression = (Expression) n10.getSelector().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$87;
                lambda$visit$87 = ModifierVisitor.this.lambda$visit$87(arg, (Comment) obj);
                return lambda$visit$87;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setEntries((NodeList<SwitchEntry>) modifyList);
        n10.setSelector(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SynchronizedStmt n10, final A arg) {
        BlockStmt blockStmt = (BlockStmt) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$88;
                lambda$visit$88 = ModifierVisitor.this.lambda$visit$88(arg, (Comment) obj);
                return lambda$visit$88;
            }
        }).orElse(null);
        if (blockStmt == null || expression == null) {
            return null;
        }
        n10.setBody(blockStmt);
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ThisExpr n10, final A arg) {
        Name name = (Name) n10.getTypeName().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Name lambda$visit$89;
                lambda$visit$89 = ModifierVisitor.this.lambda$visit$89(arg, (Name) obj);
                return lambda$visit$89;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$90;
                lambda$visit$90 = ModifierVisitor.this.lambda$visit$90(arg, (Comment) obj);
                return lambda$visit$90;
            }
        }).orElse(null);
        n10.setTypeName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ThrowStmt n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$91;
                lambda$visit$91 = ModifierVisitor.this.lambda$visit$91(arg, (Comment) obj);
                return lambda$visit$91;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TryStmt n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getCatchClauses(), (NodeList<CatchClause>) arg);
        BlockStmt blockStmt = (BlockStmt) n10.getFinallyBlock().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                BlockStmt lambda$visit$92;
                lambda$visit$92 = ModifierVisitor.this.lambda$visit$92(arg, (BlockStmt) obj);
                return lambda$visit$92;
            }
        }).orElse(null);
        NodeList<N> modifyList2 = modifyList(n10.getResources(), (NodeList<Expression>) arg);
        BlockStmt blockStmt2 = (BlockStmt) n10.getTryBlock().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$93;
                lambda$visit$93 = ModifierVisitor.this.lambda$visit$93(arg, (Comment) obj);
                return lambda$visit$93;
            }
        }).orElse(null);
        if (blockStmt2 == null) {
            return null;
        }
        n10.setCatchClauses(modifyList);
        n10.setFinallyBlock(blockStmt);
        n10.setResources(modifyList2);
        n10.setTryBlock(blockStmt2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LocalClassDeclarationStmt n10, final A arg) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) n10.getClassDeclaration().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$94;
                lambda$visit$94 = ModifierVisitor.this.lambda$visit$94(arg, (Comment) obj);
                return lambda$visit$94;
            }
        }).orElse(null);
        if (classOrInterfaceDeclaration == null) {
            return null;
        }
        n10.setClassDeclaration(classOrInterfaceDeclaration);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LocalRecordDeclarationStmt n10, final A arg) {
        RecordDeclaration recordDeclaration = (RecordDeclaration) n10.getRecordDeclaration().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$95;
                lambda$visit$95 = ModifierVisitor.this.lambda$visit$95(arg, (Comment) obj);
                return lambda$visit$95;
            }
        }).orElse(null);
        if (recordDeclaration == null) {
            return null;
        }
        n10.setRecordDeclaration(recordDeclaration);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TypeParameter n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getTypeBound(), (NodeList<ClassOrInterfaceType>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$96;
                lambda$visit$96 = ModifierVisitor.this.lambda$visit$96(arg, (Comment) obj);
                return lambda$visit$96;
            }
        }).orElse(null);
        if (simpleName == null) {
            return null;
        }
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setName(simpleName);
        n10.setTypeBound(modifyList2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnaryExpr n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$97;
                lambda$visit$97 = ModifierVisitor.this.lambda$visit$97(arg, (Comment) obj);
                return lambda$visit$97;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final UnknownType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$98;
                lambda$visit$98 = ModifierVisitor.this.lambda$visit$98(arg, (Comment) obj);
                return lambda$visit$98;
            }
        }).orElse(null);
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VariableDeclarationExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList3 = modifyList(n10.getVariables(), (NodeList<VariableDeclarator>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$99;
                lambda$visit$99 = ModifierVisitor.this.lambda$visit$99(arg, (Comment) obj);
                return lambda$visit$99;
            }
        }).orElse(null);
        if (modifyList3.isEmpty()) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setModifiers((NodeList<Modifier>) modifyList2);
        n10.setVariables2((NodeList<VariableDeclarator>) modifyList3);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final VariableDeclarator n10, final A arg) {
        Expression expression = (Expression) n10.getInitializer().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$visit$100;
                lambda$visit$100 = ModifierVisitor.this.lambda$visit$100(arg, (Expression) obj);
                return lambda$visit$100;
            }
        }).orElse(null);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$101;
                lambda$visit$101 = ModifierVisitor.this.lambda$visit$101(arg, (Comment) obj);
                return lambda$visit$101;
            }
        }).orElse(null);
        if (simpleName == null || type == null) {
            return null;
        }
        n10.setInitializer(expression);
        n10.setName(simpleName);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VoidType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$102;
                lambda$visit$102 = ModifierVisitor.this.lambda$visit$102(arg, (Comment) obj);
                return lambda$visit$102;
            }
        }).orElse(null);
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final WhileStmt n10, final A arg) {
        Statement statement = (Statement) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        Expression expression = (Expression) n10.getCondition().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$103;
                lambda$visit$103 = ModifierVisitor.this.lambda$visit$103(arg, (Comment) obj);
                return lambda$visit$103;
            }
        }).orElse(null);
        if (statement == null || expression == null) {
            return null;
        }
        n10.setBody(statement);
        n10.setCondition(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final WildcardType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        ReferenceType referenceType = (ReferenceType) n10.getExtendedType().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ReferenceType lambda$visit$104;
                lambda$visit$104 = ModifierVisitor.this.lambda$visit$104(arg, (ReferenceType) obj);
                return lambda$visit$104;
            }
        }).orElse(null);
        ReferenceType referenceType2 = (ReferenceType) n10.getSuperType().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ReferenceType lambda$visit$105;
                lambda$visit$105 = ModifierVisitor.this.lambda$visit$105(arg, (ReferenceType) obj);
                return lambda$visit$105;
            }
        }).orElse(null);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$106;
                lambda$visit$106 = ModifierVisitor.this.lambda$visit$106(arg, (Comment) obj);
                return lambda$visit$106;
            }
        }).orElse(null);
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setExtendedType(referenceType);
        n10.setSuperType(referenceType2);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final LambdaExpr n10, final A arg) {
        Statement statement = (Statement) n10.getBody().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList = modifyList(n10.getParameters(), (NodeList<Parameter>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$107;
                lambda$visit$107 = ModifierVisitor.this.lambda$visit$107(arg, (Comment) obj);
                return lambda$visit$107;
            }
        }).orElse(null);
        if (statement == null) {
            return null;
        }
        n10.setBody(statement);
        n10.setParameters2((NodeList<Parameter>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final MethodReferenceExpr n10, final A arg) {
        Expression expression = (Expression) n10.getScope().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList = modifyList(n10.getTypeArguments(), (Optional<NodeList<Type>>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$108;
                lambda$visit$108 = ModifierVisitor.this.lambda$visit$108(arg, (Comment) obj);
                return lambda$visit$108;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setScope(expression);
        n10.setTypeArguments2((NodeList<Type>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TypeExpr n10, final A arg) {
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$109;
                lambda$visit$109 = ModifierVisitor.this.lambda$visit$109(arg, (Comment) obj);
                return lambda$visit$109;
            }
        }).orElse(null);
        if (type == null) {
            return null;
        }
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(NodeList n10, A arg) {
        if (n10.isEmpty()) {
            return n10;
        }
        ArrayList<Pair> arrayList = new ArrayList();
        for (Node node : new ArrayList(n10)) {
            arrayList.add(new Pair(node, (Node) node.accept(this, (ModifierVisitor<A>) arg)));
        }
        for (Pair pair : arrayList) {
            B b10 = pair.f59827b;
            if (b10 == 0) {
                Utils.removeElementByObjectIdentity(n10, pair.f59826a);
            } else {
                Utils.replaceElementByObjectIdentity(n10, pair.f59826a, b10);
            }
        }
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit2(final ImportDeclaration n10, final A arg) {
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$110;
                lambda$visit$110 = ModifierVisitor.this.lambda$visit$110(arg, (Comment) obj);
                return lambda$visit$110;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BlockComment n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$111;
                lambda$visit$111 = ModifierVisitor.this.lambda$visit$111(arg, (Comment) obj);
                return lambda$visit$111;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LineComment n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$112;
                lambda$visit$112 = ModifierVisitor.this.lambda$visit$112(arg, (Comment) obj);
                return lambda$visit$112;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleDeclaration n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getDirectives(), (NodeList<ModuleDirective>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$114;
                lambda$visit$114 = ModifierVisitor.this.lambda$visit$114(arg, (Comment) obj);
                return lambda$visit$114;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setDirectives(modifyList2);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleRequiresDirective n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$115;
                lambda$visit$115 = ModifierVisitor.this.lambda$visit$115(arg, (Comment) obj);
                return lambda$visit$115;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setModifiers((NodeList<Modifier>) modifyList);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleExportsDirective n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getModuleNames(), (NodeList<Name>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$116;
                lambda$visit$116 = ModifierVisitor.this.lambda$visit$116(arg, (Comment) obj);
                return lambda$visit$116;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setModuleNames(modifyList);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleProvidesDirective n10, final A arg) {
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        NodeList<N> modifyList = modifyList(n10.getWith(), (NodeList<Name>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$117;
                lambda$visit$117 = ModifierVisitor.this.lambda$visit$117(arg, (Comment) obj);
                return lambda$visit$117;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setName(name);
        n10.setWith(modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleUsesDirective n10, final A arg) {
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$118;
                lambda$visit$118 = ModifierVisitor.this.lambda$visit$118(arg, (Comment) obj);
                return lambda$visit$118;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ModuleOpensDirective n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getModuleNames(), (NodeList<Name>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$119;
                lambda$visit$119 = ModifierVisitor.this.lambda$visit$119(arg, (Comment) obj);
                return lambda$visit$119;
            }
        }).orElse(null);
        if (name == null) {
            return null;
        }
        n10.setModuleNames(modifyList);
        n10.setName(name);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnparsableStmt n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$120;
                lambda$visit$120 = ModifierVisitor.this.lambda$visit$120(arg, (Comment) obj);
                return lambda$visit$120;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final ReceiverParameter n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Name name = (Name) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$121;
                lambda$visit$121 = ModifierVisitor.this.lambda$visit$121(arg, (Comment) obj);
                return lambda$visit$121;
            }
        }).orElse(null);
        if (name == null || type == null) {
            return null;
        }
        n10.setAnnotations2((NodeList<AnnotationExpr>) modifyList);
        n10.setName(name);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final VarType n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getAnnotations(), (NodeList<AnnotationExpr>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$122;
                lambda$visit$122 = ModifierVisitor.this.lambda$visit$122(arg, (Comment) obj);
                return lambda$visit$122;
            }
        }).orElse(null);
        n10.setAnnotations((NodeList<AnnotationExpr>) modifyList);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final Modifier n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$123;
                lambda$visit$123 = ModifierVisitor.this.lambda$visit$123(arg, (Comment) obj);
                return lambda$visit$123;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final SwitchExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getEntries(), (NodeList<SwitchEntry>) arg);
        Expression expression = (Expression) n10.getSelector().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$124;
                lambda$visit$124 = ModifierVisitor.this.lambda$visit$124(arg, (Comment) obj);
                return lambda$visit$124;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setEntries((NodeList<SwitchEntry>) modifyList);
        n10.setSelector(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final YieldStmt n10, final A arg) {
        Expression expression = (Expression) n10.getExpression().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$125;
                lambda$visit$125 = ModifierVisitor.this.lambda$visit$125(arg, (Comment) obj);
                return lambda$visit$125;
            }
        }).orElse(null);
        if (expression == null) {
            return null;
        }
        n10.setExpression(expression);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TextBlockLiteralExpr n10, final A arg) {
        n10.setComment((Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$126;
                lambda$visit$126 = ModifierVisitor.this.lambda$visit$126(arg, (Comment) obj);
                return lambda$visit$126;
            }
        }).orElse(null));
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final TypePatternExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        SimpleName simpleName = (SimpleName) n10.getName().accept(this, (ModifierVisitor<A>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$127;
                lambda$visit$127 = ModifierVisitor.this.lambda$visit$127(arg, (Comment) obj);
                return lambda$visit$127;
            }
        }).orElse(null);
        if (simpleName == null || type == null) {
            return null;
        }
        n10.setModifiers((NodeList<Modifier>) modifyList);
        n10.setName(simpleName);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Visitable visit(final RecordPatternExpr n10, final A arg) {
        NodeList<N> modifyList = modifyList(n10.getModifiers(), (NodeList<Modifier>) arg);
        NodeList<N> modifyList2 = modifyList(n10.getPatternList(), (NodeList<PatternExpr>) arg);
        Type type = (Type) n10.getType2().accept(this, (ModifierVisitor<A>) arg);
        Comment comment = (Comment) n10.getComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Comment lambda$visit$128;
                lambda$visit$128 = ModifierVisitor.this.lambda$visit$128(arg, (Comment) obj);
                return lambda$visit$128;
            }
        }).orElse(null);
        if (type == null) {
            return null;
        }
        n10.setModifiers((NodeList<Modifier>) modifyList);
        n10.setPatternList(modifyList2);
        n10.setType(type);
        n10.setComment(comment);
        return n10;
    }
}
