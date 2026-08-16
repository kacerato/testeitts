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
import com.github.javaparser.ast.visitor.VoidVisitorAdapter;
import java.util.Iterator;
import java.util.function.Consumer;

public abstract class VoidVisitorAdapter<A> implements VoidVisitor<A> {
    public void lambda$null$103(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$118(final Object arg, BodyDeclaration v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$122(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$190(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$37(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$72(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$null$76(final Object arg, Type v10) {
        v10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$0(final Object arg, BodyDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$1(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$10(final Object arg, ArrayCreationLevel p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$100(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$101(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$102(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$104(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$103(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$105(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$106(final Object arg, BlockStmt l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$107(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$108(final Object arg, Parameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$109(final Object arg, ReceiverParameter l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$11(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$110(final Object arg, ReferenceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$111(final Object arg, TypeParameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$112(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$113(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$114(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$115(final Object arg, MemberValuePair p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$116(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$117(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$119(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$118(arg, (BodyDeclaration) obj);
            }
        });
    }

    public void lambda$visit$12(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$120(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$121(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$123(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$122(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$124(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$125(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$126(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$127(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$128(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$129(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$13(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$130(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$131(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$132(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$133(final Object arg, Name l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$134(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$135(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$136(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$137(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$138(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$139(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$14(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$140(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$141(final Object arg, ReferenceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$142(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$143(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$144(final Object arg, ReferenceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$145(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$146(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$147(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$148(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$149(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$15(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$150(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$151(final Object arg, Name l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$152(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$153(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$154(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$155(final Object arg, Statement p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$156(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$157(final Object arg, SwitchEntry p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$158(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$159(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$16(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$160(final Object arg, Name l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$161(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$162(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$163(final Object arg, CatchClause p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$164(final Object arg, BlockStmt l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$165(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$166(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$167(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$168(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$169(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$17(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$170(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$171(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$172(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$173(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$174(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$175(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$176(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$177(final Object arg, VariableDeclarator p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$178(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$179(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$18(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$180(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$181(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$182(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$183(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$184(final Object arg, ReferenceType l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$185(final Object arg, ReferenceType l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$186(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$187(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$188(final Object arg, Parameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$189(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$19(final Object arg, Statement p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$191(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$190(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$192(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$193(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$194(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$195(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$196(final Object arg, ModuleDirective p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$197(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$198(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$199(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$2(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$20(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$200(final Object arg, Name p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$201(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$202(final Object arg, Name p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$203(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$204(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$205(final Object arg, Name p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$206(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$207(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$208(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$209(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$21(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$210(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$211(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$212(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$213(final Object arg, SwitchEntry p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$214(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$215(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$216(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$217(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$218(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$219(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$22(final Object arg, SimpleName l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$220(final Object arg, Parameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$221(final Object arg, ReceiverParameter l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$222(final Object arg, TypeParameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$223(final Object arg, BodyDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$224(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$225(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$226(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$227(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$228(final Object arg, ReferenceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$229(final Object arg, TypeParameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$23(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$230(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$231(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$232(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$233(final Object arg, PatternExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$234(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$24(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$25(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$26(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$27(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$28(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$29(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$3(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$30(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$31(final Object arg, TypeParameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$32(final Object arg, BodyDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$33(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$34(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$35(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$36(final Object arg, ClassOrInterfaceType l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$38(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$37(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$39(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$4(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$40(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$41(final Object arg, ImportDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$42(final Object arg, ModuleDeclaration l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$43(final Object arg, PackageDeclaration l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$44(final Object arg, TypeDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$45(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$46(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$47(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$48(final Object arg, Parameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$49(final Object arg, ReceiverParameter l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$5(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$50(final Object arg, ReferenceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$51(final Object arg, TypeParameter p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$52(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$53(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$54(final Object arg, SimpleName l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$55(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$56(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$57(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$58(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$59(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$6(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$60(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$61(final Object arg, BodyDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$62(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$63(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$64(final Object arg, EnumConstantDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$65(final Object arg, ClassOrInterfaceType p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$66(final Object arg, BodyDeclaration p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$67(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$68(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$69(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$7(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$70(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$71(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$73(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$72(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$74(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$75(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$77(final Object arg, NodeList l10) {
        l10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$null$76(arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$78(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$79(final Object arg, Modifier p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$8(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$80(final Object arg, VariableDeclarator p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$81(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$82(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$83(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$84(final Object arg, Expression l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$85(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$86(final Object arg, Expression p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$87(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$88(final Object arg, Statement l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$89(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$9(final Object arg, ArrayInitializerExpr l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$90(final Object arg, AnnotationExpr p10) {
        p10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$91(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$92(final Object arg, PatternExpr l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$93(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$94(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$95(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$96(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$97(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$98(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    public void lambda$visit$99(final Object arg, Comment l10) {
        l10.accept(this, (VoidVisitorAdapter<A>) arg);
    }

    @Override
    public void visit(final AnnotationDeclaration n10, final A arg) {
        n10.getMembers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$0(arg, (BodyDeclaration) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$1(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$2(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$3(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final AnnotationMemberDeclaration n10, final A arg) {
        n10.getDefaultValue().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$4(arg, (Expression) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$5(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$6(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$7(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ArrayAccessExpr n10, final A arg) {
        n10.getIndex().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$8(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ArrayCreationExpr n10, final A arg) {
        n10.getElementType().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getInitializer().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$9(arg, (ArrayInitializerExpr) obj);
            }
        });
        n10.getLevels().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$10(arg, (ArrayCreationLevel) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$11(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ArrayInitializerExpr n10, final A arg) {
        n10.getValues().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$12(arg, (Expression) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$13(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final AssertStmt n10, final A arg) {
        n10.getCheck().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getMessage().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$14(arg, (Expression) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$15(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final AssignExpr n10, final A arg) {
        n10.getTarget().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getValue().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$16(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final BinaryExpr n10, final A arg) {
        n10.getLeft().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getRight().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$17(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final BlockComment n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$18(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final BlockStmt n10, final A arg) {
        n10.getStatements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$19(arg, (Statement) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$20(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final BooleanLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$21(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final BreakStmt n10, final A arg) {
        n10.getLabel().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$22(arg, (SimpleName) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$23(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final CastExpr n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$24(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final CatchClause n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getParameter().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$25(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final CharLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$26(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ClassExpr n10, final A arg) {
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$27(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ClassOrInterfaceDeclaration n10, final A arg) {
        n10.getExtendedTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$28(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getImplementedTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$29(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getPermittedTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$30(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getTypeParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$31(arg, (TypeParameter) obj);
            }
        });
        n10.getMembers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$32(arg, (BodyDeclaration) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$33(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$34(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$35(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ClassOrInterfaceType n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$36(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$38(arg, (NodeList) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$39(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$40(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final CompilationUnit n10, final A arg) {
        n10.getImports().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$41(arg, (ImportDeclaration) obj);
            }
        });
        n10.getModule().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$42(arg, (ModuleDeclaration) obj);
            }
        });
        n10.getPackageDeclaration().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$43(arg, (PackageDeclaration) obj);
            }
        });
        n10.getTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$44(arg, (TypeDeclaration) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$45(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ConditionalExpr n10, final A arg) {
        n10.getCondition().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getElseExpr().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getThenExpr().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$46(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ConstructorDeclaration n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$47(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$48(arg, (Parameter) obj);
            }
        });
        n10.getReceiverParameter().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$49(arg, (ReceiverParameter) obj);
            }
        });
        n10.getThrownExceptions().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$50(arg, (ReferenceType) obj);
            }
        });
        n10.getTypeParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$51(arg, (TypeParameter) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$52(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$53(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ContinueStmt n10, final A arg) {
        n10.getLabel().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$54(arg, (SimpleName) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$55(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final DoStmt n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getCondition().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$56(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final DoubleLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$57(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final EmptyStmt n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$58(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final EnclosedExpr n10, final A arg) {
        n10.getInner().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$59(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final EnumConstantDeclaration n10, final A arg) {
        n10.getArguments().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$60(arg, (Expression) obj);
            }
        });
        n10.getClassBody().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$61(arg, (BodyDeclaration) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$62(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$63(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final EnumDeclaration n10, final A arg) {
        n10.getEntries().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$64(arg, (EnumConstantDeclaration) obj);
            }
        });
        n10.getImplementedTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$65(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getMembers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$66(arg, (BodyDeclaration) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$67(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$68(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$69(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ExplicitConstructorInvocationStmt n10, final A arg) {
        n10.getArguments().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$70(arg, (Expression) obj);
            }
        });
        n10.getExpression().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$71(arg, (Expression) obj);
            }
        });
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$73(arg, (NodeList) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$74(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ExpressionStmt n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$75(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final FieldAccessExpr n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getScope().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$77(arg, (NodeList) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$78(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final FieldDeclaration n10, final A arg) {
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$79(arg, (Modifier) obj);
            }
        });
        n10.getVariables().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$80(arg, (VariableDeclarator) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$81(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$82(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ForEachStmt n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getIterable().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getVariable().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$83(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ForStmt n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getCompare().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$84(arg, (Expression) obj);
            }
        });
        n10.getInitialization().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$85(arg, (Expression) obj);
            }
        });
        n10.getUpdate().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$86(arg, (Expression) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$87(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final IfStmt n10, final A arg) {
        n10.getCondition().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getElseStmt().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$88(arg, (Statement) obj);
            }
        });
        n10.getThenStmt().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$89(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final InitializerDeclaration n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$90(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$91(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final InstanceOfExpr n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getPattern().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$92(arg, (PatternExpr) obj);
            }
        });
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$93(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final IntegerLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$94(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final JavadocComment n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$95(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LabeledStmt n10, final A arg) {
        n10.getLabel().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getStatement().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$96(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LineComment n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$97(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LongLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$98(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final MarkerAnnotationExpr n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$99(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final MemberValuePair n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getValue().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$100(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final MethodCallExpr n10, final A arg) {
        n10.getArguments().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$101(arg, (Expression) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$102(arg, (Expression) obj);
            }
        });
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$104(arg, (NodeList) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$105(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final MethodDeclaration n10, final A arg) {
        n10.getBody().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$106(arg, (BlockStmt) obj);
            }
        });
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$107(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$108(arg, (Parameter) obj);
            }
        });
        n10.getReceiverParameter().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$109(arg, (ReceiverParameter) obj);
            }
        });
        n10.getThrownExceptions().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$110(arg, (ReferenceType) obj);
            }
        });
        n10.getTypeParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$111(arg, (TypeParameter) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$112(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$113(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final NameExpr n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$114(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final NormalAnnotationExpr n10, final A arg) {
        n10.getPairs().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$115(arg, (MemberValuePair) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$116(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final NullLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$117(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ObjectCreationExpr n10, final A arg) {
        n10.getAnonymousClassBody().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$119(arg, (NodeList) obj);
            }
        });
        n10.getArguments().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$120(arg, (Expression) obj);
            }
        });
        n10.getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$121(arg, (Expression) obj);
            }
        });
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$123(arg, (NodeList) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$124(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final PackageDeclaration n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$125(arg, (AnnotationExpr) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$126(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final Parameter n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$127(arg, (AnnotationExpr) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$128(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getVarArgsAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$129(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$130(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final PrimitiveType n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$131(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$132(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final Name n10, final A arg) {
        n10.getQualifier().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$133(arg, (Name) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$134(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SimpleName n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$135(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ArrayType n10, final A arg) {
        n10.getComponentType().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$136(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$137(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ArrayCreationLevel n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$138(arg, (AnnotationExpr) obj);
            }
        });
        n10.getDimension().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$139(arg, (Expression) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$140(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final IntersectionType n10, final A arg) {
        n10.getElements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$141(arg, (ReferenceType) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$142(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$143(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final UnionType n10, final A arg) {
        n10.getElements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$144(arg, (ReferenceType) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$145(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$146(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ReturnStmt n10, final A arg) {
        n10.getExpression().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$147(arg, (Expression) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$148(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SingleMemberAnnotationExpr n10, final A arg) {
        n10.getMemberValue().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$149(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final StringLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$150(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SuperExpr n10, final A arg) {
        n10.getTypeName().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$151(arg, (Name) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$152(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SwitchEntry n10, final A arg) {
        n10.getGuard().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$153(arg, (Expression) obj);
            }
        });
        n10.getLabels().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$154(arg, (Expression) obj);
            }
        });
        n10.getStatements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$155(arg, (Statement) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$156(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SwitchStmt n10, final A arg) {
        n10.getEntries().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$157(arg, (SwitchEntry) obj);
            }
        });
        n10.getSelector().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$158(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SynchronizedStmt n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$159(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ThisExpr n10, final A arg) {
        n10.getTypeName().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$160(arg, (Name) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$161(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ThrowStmt n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$162(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final TryStmt n10, final A arg) {
        n10.getCatchClauses().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$163(arg, (CatchClause) obj);
            }
        });
        n10.getFinallyBlock().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$164(arg, (BlockStmt) obj);
            }
        });
        n10.getResources().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$165(arg, (Expression) obj);
            }
        });
        n10.getTryBlock().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$166(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LocalClassDeclarationStmt n10, final A arg) {
        n10.getClassDeclaration().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$167(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LocalRecordDeclarationStmt n10, final A arg) {
        n10.getRecordDeclaration().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$168(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final TypeParameter n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getTypeBound().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$169(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$170(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$171(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final UnaryExpr n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$172(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final UnknownType n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$173(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$174(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final VariableDeclarationExpr n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$175(arg, (AnnotationExpr) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$176(arg, (Modifier) obj);
            }
        });
        n10.getVariables().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$177(arg, (VariableDeclarator) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$178(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final VariableDeclarator n10, final A arg) {
        n10.getInitializer().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$179(arg, (Expression) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$180(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final VoidType n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$181(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$182(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final WhileStmt n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getCondition().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$183(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final WildcardType n10, final A arg) {
        n10.getExtendedType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$184(arg, (ReferenceType) obj);
            }
        });
        n10.getSuperType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$185(arg, (ReferenceType) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$186(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$187(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final LambdaExpr n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$188(arg, (Parameter) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$189(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final MethodReferenceExpr n10, final A arg) {
        n10.getScope().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$191(arg, (NodeList) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$192(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final TypeExpr n10, final A arg) {
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$193(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(NodeList n10, A arg) {
        Iterator it = n10.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).accept(this, (VoidVisitorAdapter<A>) arg);
        }
    }

    @Override
    public void visit(final ImportDeclaration n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$194(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleDeclaration n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$195(arg, (AnnotationExpr) obj);
            }
        });
        n10.getDirectives().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$196(arg, (ModuleDirective) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$197(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleRequiresDirective n10, final A arg) {
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$198(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$199(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleExportsDirective n10, final A arg) {
        n10.getModuleNames().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$200(arg, (Name) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$201(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleProvidesDirective n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getWith().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$202(arg, (Name) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$203(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleUsesDirective n10, final A arg) {
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$204(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ModuleOpensDirective n10, final A arg) {
        n10.getModuleNames().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$205(arg, (Name) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$206(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final UnparsableStmt n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$207(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final ReceiverParameter n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$208(arg, (AnnotationExpr) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$209(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final VarType n10, final A arg) {
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$210(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$211(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final Modifier n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$212(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final SwitchExpr n10, final A arg) {
        n10.getEntries().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$213(arg, (SwitchEntry) obj);
            }
        });
        n10.getSelector().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$214(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final TextBlockLiteralExpr n10, final A arg) {
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$215(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final YieldStmt n10, final A arg) {
        n10.getExpression().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$216(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final TypePatternExpr n10, final A arg) {
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$217(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$218(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final RecordDeclaration n10, final A arg) {
        n10.getImplementedTypes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$219(arg, (ClassOrInterfaceType) obj);
            }
        });
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$220(arg, (Parameter) obj);
            }
        });
        n10.getReceiverParameter().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$221(arg, (ReceiverParameter) obj);
            }
        });
        n10.getTypeParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$222(arg, (TypeParameter) obj);
            }
        });
        n10.getMembers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$223(arg, (BodyDeclaration) obj);
            }
        });
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$224(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$225(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$226(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final CompactConstructorDeclaration n10, final A arg) {
        n10.getBody().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$227(arg, (Modifier) obj);
            }
        });
        n10.getName().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getThrownExceptions().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$228(arg, (ReferenceType) obj);
            }
        });
        n10.getTypeParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$229(arg, (TypeParameter) obj);
            }
        });
        n10.getAnnotations().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$230(arg, (AnnotationExpr) obj);
            }
        });
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$231(arg, (Comment) obj);
            }
        });
    }

    @Override
    public void visit(final RecordPatternExpr n10, final A arg) {
        n10.getModifiers().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$232(arg, (Modifier) obj);
            }
        });
        n10.getPatternList().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$233(arg, (PatternExpr) obj);
            }
        });
        n10.getType2().accept(this, (VoidVisitorAdapter<A>) arg);
        n10.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidVisitorAdapter.this.lambda$visit$234(arg, (Comment) obj);
            }
        });
    }
}
