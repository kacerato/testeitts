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

public abstract class GenericVisitorAdapter<R, A> implements GenericVisitor<R, A> {
    @Override
    public R visit(AnnotationDeclaration annotationDeclaration, A a10) {
        R r10;
        R r11 = (R) annotationDeclaration.getMembers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) annotationDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) annotationDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) annotationDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!annotationDeclaration.getComment().isPresent() || (r10 = (R) annotationDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(AnnotationMemberDeclaration annotationMemberDeclaration, A a10) {
        R r10;
        R r11;
        if (annotationMemberDeclaration.getDefaultValue().isPresent() && (r11 = (R) annotationMemberDeclaration.getDefaultValue().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r12 = (R) annotationMemberDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) annotationMemberDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) annotationMemberDeclaration.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) annotationMemberDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        if (!annotationMemberDeclaration.getComment().isPresent() || (r10 = (R) annotationMemberDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ArrayAccessExpr arrayAccessExpr, A a10) {
        R r10;
        R r11 = (R) arrayAccessExpr.getIndex().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) arrayAccessExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!arrayAccessExpr.getComment().isPresent() || (r10 = (R) arrayAccessExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ArrayCreationExpr arrayCreationExpr, A a10) {
        R r10;
        R r11;
        R r12 = (R) arrayCreationExpr.getElementType().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (arrayCreationExpr.getInitializer().isPresent() && (r11 = (R) arrayCreationExpr.getInitializer().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) arrayCreationExpr.getLevels().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!arrayCreationExpr.getComment().isPresent() || (r10 = (R) arrayCreationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ArrayInitializerExpr arrayInitializerExpr, A a10) {
        R r10;
        R r11 = (R) arrayInitializerExpr.getValues().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!arrayInitializerExpr.getComment().isPresent() || (r10 = (R) arrayInitializerExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(AssertStmt assertStmt, A a10) {
        R r10;
        R r11;
        R r12 = (R) assertStmt.getCheck().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (assertStmt.getMessage().isPresent() && (r11 = (R) assertStmt.getMessage().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!assertStmt.getComment().isPresent() || (r10 = (R) assertStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(AssignExpr assignExpr, A a10) {
        R r10;
        R r11 = (R) assignExpr.getTarget().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) assignExpr.getValue().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!assignExpr.getComment().isPresent() || (r10 = (R) assignExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(BinaryExpr binaryExpr, A a10) {
        R r10;
        R r11 = (R) binaryExpr.getLeft().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) binaryExpr.getRight().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!binaryExpr.getComment().isPresent() || (r10 = (R) binaryExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(BlockStmt blockStmt, A a10) {
        R r10;
        R r11 = (R) blockStmt.getStatements().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!blockStmt.getComment().isPresent() || (r10 = (R) blockStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(BooleanLiteralExpr booleanLiteralExpr, A a10) {
        R r10;
        if (!booleanLiteralExpr.getComment().isPresent() || (r10 = (R) booleanLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(BreakStmt breakStmt, A a10) {
        R r10;
        R r11;
        if (breakStmt.getLabel().isPresent() && (r11 = (R) breakStmt.getLabel().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!breakStmt.getComment().isPresent() || (r10 = (R) breakStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(CastExpr castExpr, A a10) {
        R r10;
        R r11 = (R) castExpr.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) castExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!castExpr.getComment().isPresent() || (r10 = (R) castExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(CatchClause catchClause, A a10) {
        R r10;
        R r11 = (R) catchClause.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) catchClause.getParameter().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!catchClause.getComment().isPresent() || (r10 = (R) catchClause.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(CharLiteralExpr charLiteralExpr, A a10) {
        R r10;
        if (!charLiteralExpr.getComment().isPresent() || (r10 = (R) charLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ClassExpr classExpr, A a10) {
        R r10;
        R r11 = (R) classExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!classExpr.getComment().isPresent() || (r10 = (R) classExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ClassOrInterfaceDeclaration classOrInterfaceDeclaration, A a10) {
        R r10;
        R r11 = (R) classOrInterfaceDeclaration.getExtendedTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) classOrInterfaceDeclaration.getImplementedTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) classOrInterfaceDeclaration.getPermittedTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) classOrInterfaceDeclaration.getTypeParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) classOrInterfaceDeclaration.getMembers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        R r16 = (R) classOrInterfaceDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        R r17 = (R) classOrInterfaceDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r17 != null) {
            return r17;
        }
        R r18 = (R) classOrInterfaceDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r18 != null) {
            return r18;
        }
        if (!classOrInterfaceDeclaration.getComment().isPresent() || (r10 = (R) classOrInterfaceDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ClassOrInterfaceType classOrInterfaceType, A a10) {
        R r10;
        R r11;
        R r12;
        R r13 = (R) classOrInterfaceType.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (classOrInterfaceType.getScope().isPresent() && (r12 = (R) classOrInterfaceType.getScope().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        if (classOrInterfaceType.getTypeArguments().isPresent() && (r11 = (R) classOrInterfaceType.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r14 = (R) classOrInterfaceType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!classOrInterfaceType.getComment().isPresent() || (r10 = (R) classOrInterfaceType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(CompilationUnit compilationUnit, A a10) {
        R r10;
        R r11;
        R r12;
        R r13 = (R) compilationUnit.getImports().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (compilationUnit.getModule().isPresent() && (r12 = (R) compilationUnit.getModule().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        if (compilationUnit.getPackageDeclaration().isPresent() && (r11 = (R) compilationUnit.getPackageDeclaration().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r14 = (R) compilationUnit.getTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!compilationUnit.getComment().isPresent() || (r10 = (R) compilationUnit.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ConditionalExpr conditionalExpr, A a10) {
        R r10;
        R r11 = (R) conditionalExpr.getCondition().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) conditionalExpr.getElseExpr().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) conditionalExpr.getThenExpr().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!conditionalExpr.getComment().isPresent() || (r10 = (R) conditionalExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ConstructorDeclaration constructorDeclaration, A a10) {
        R r10;
        R r11;
        R r12 = (R) constructorDeclaration.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) constructorDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) constructorDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) constructorDeclaration.getParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        if (constructorDeclaration.getReceiverParameter().isPresent() && (r11 = (R) constructorDeclaration.getReceiverParameter().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r16 = (R) constructorDeclaration.getThrownExceptions().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        R r17 = (R) constructorDeclaration.getTypeParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r17 != null) {
            return r17;
        }
        R r18 = (R) constructorDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r18 != null) {
            return r18;
        }
        if (!constructorDeclaration.getComment().isPresent() || (r10 = (R) constructorDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ContinueStmt continueStmt, A a10) {
        R r10;
        R r11;
        if (continueStmt.getLabel().isPresent() && (r11 = (R) continueStmt.getLabel().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!continueStmt.getComment().isPresent() || (r10 = (R) continueStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(DoStmt doStmt, A a10) {
        R r10;
        R r11 = (R) doStmt.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) doStmt.getCondition().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!doStmt.getComment().isPresent() || (r10 = (R) doStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(DoubleLiteralExpr doubleLiteralExpr, A a10) {
        R r10;
        if (!doubleLiteralExpr.getComment().isPresent() || (r10 = (R) doubleLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(EmptyStmt emptyStmt, A a10) {
        R r10;
        if (!emptyStmt.getComment().isPresent() || (r10 = (R) emptyStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(EnclosedExpr enclosedExpr, A a10) {
        R r10;
        R r11 = (R) enclosedExpr.getInner().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!enclosedExpr.getComment().isPresent() || (r10 = (R) enclosedExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(EnumConstantDeclaration enumConstantDeclaration, A a10) {
        R r10;
        R r11 = (R) enumConstantDeclaration.getArguments().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) enumConstantDeclaration.getClassBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) enumConstantDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) enumConstantDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!enumConstantDeclaration.getComment().isPresent() || (r10 = (R) enumConstantDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(EnumDeclaration enumDeclaration, A a10) {
        R r10;
        R r11 = (R) enumDeclaration.getEntries().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) enumDeclaration.getImplementedTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) enumDeclaration.getMembers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) enumDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) enumDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        R r16 = (R) enumDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        if (!enumDeclaration.getComment().isPresent() || (r10 = (R) enumDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ExplicitConstructorInvocationStmt explicitConstructorInvocationStmt, A a10) {
        R r10;
        R r11;
        R r12;
        R r13 = (R) explicitConstructorInvocationStmt.getArguments().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (explicitConstructorInvocationStmt.getExpression().isPresent() && (r12 = (R) explicitConstructorInvocationStmt.getExpression().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        if (explicitConstructorInvocationStmt.getTypeArguments().isPresent() && (r11 = (R) explicitConstructorInvocationStmt.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!explicitConstructorInvocationStmt.getComment().isPresent() || (r10 = (R) explicitConstructorInvocationStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ExpressionStmt expressionStmt, A a10) {
        R r10;
        R r11 = (R) expressionStmt.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!expressionStmt.getComment().isPresent() || (r10 = (R) expressionStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(FieldAccessExpr fieldAccessExpr, A a10) {
        R r10;
        R r11;
        R r12 = (R) fieldAccessExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) fieldAccessExpr.getScope().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (fieldAccessExpr.getTypeArguments().isPresent() && (r11 = (R) fieldAccessExpr.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!fieldAccessExpr.getComment().isPresent() || (r10 = (R) fieldAccessExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(FieldDeclaration fieldDeclaration, A a10) {
        R r10;
        R r11 = (R) fieldDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) fieldDeclaration.getVariables().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) fieldDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!fieldDeclaration.getComment().isPresent() || (r10 = (R) fieldDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ForEachStmt forEachStmt, A a10) {
        R r10;
        R r11 = (R) forEachStmt.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) forEachStmt.getIterable().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) forEachStmt.getVariable().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!forEachStmt.getComment().isPresent() || (r10 = (R) forEachStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ForStmt forStmt, A a10) {
        R r10;
        R r11;
        R r12 = (R) forStmt.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (forStmt.getCompare().isPresent() && (r11 = (R) forStmt.getCompare().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) forStmt.getInitialization().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) forStmt.getUpdate().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!forStmt.getComment().isPresent() || (r10 = (R) forStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(IfStmt ifStmt, A a10) {
        R r10;
        R r11;
        R r12 = (R) ifStmt.getCondition().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (ifStmt.getElseStmt().isPresent() && (r11 = (R) ifStmt.getElseStmt().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) ifStmt.getThenStmt().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!ifStmt.getComment().isPresent() || (r10 = (R) ifStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(InitializerDeclaration initializerDeclaration, A a10) {
        R r10;
        R r11 = (R) initializerDeclaration.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) initializerDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!initializerDeclaration.getComment().isPresent() || (r10 = (R) initializerDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(InstanceOfExpr instanceOfExpr, A a10) {
        R r10;
        R r11;
        R r12 = (R) instanceOfExpr.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (instanceOfExpr.getPattern().isPresent() && (r11 = (R) instanceOfExpr.getPattern().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) instanceOfExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!instanceOfExpr.getComment().isPresent() || (r10 = (R) instanceOfExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(IntegerLiteralExpr integerLiteralExpr, A a10) {
        R r10;
        if (!integerLiteralExpr.getComment().isPresent() || (r10 = (R) integerLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(JavadocComment javadocComment, A a10) {
        R r10;
        if (!javadocComment.getComment().isPresent() || (r10 = (R) javadocComment.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LabeledStmt labeledStmt, A a10) {
        R r10;
        R r11 = (R) labeledStmt.getLabel().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) labeledStmt.getStatement().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!labeledStmt.getComment().isPresent() || (r10 = (R) labeledStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LongLiteralExpr longLiteralExpr, A a10) {
        R r10;
        if (!longLiteralExpr.getComment().isPresent() || (r10 = (R) longLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(MarkerAnnotationExpr markerAnnotationExpr, A a10) {
        R r10;
        R r11 = (R) markerAnnotationExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!markerAnnotationExpr.getComment().isPresent() || (r10 = (R) markerAnnotationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(MemberValuePair memberValuePair, A a10) {
        R r10;
        R r11 = (R) memberValuePair.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) memberValuePair.getValue().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!memberValuePair.getComment().isPresent() || (r10 = (R) memberValuePair.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(MethodCallExpr methodCallExpr, A a10) {
        R r10;
        R r11;
        R r12;
        R r13 = (R) methodCallExpr.getArguments().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) methodCallExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (methodCallExpr.getScope().isPresent() && (r12 = (R) methodCallExpr.getScope().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        if (methodCallExpr.getTypeArguments().isPresent() && (r11 = (R) methodCallExpr.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!methodCallExpr.getComment().isPresent() || (r10 = (R) methodCallExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(MethodDeclaration methodDeclaration, A a10) {
        R r10;
        R r11;
        R r12;
        if (methodDeclaration.getBody().isPresent() && (r12 = (R) methodDeclaration.getBody().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        R r13 = (R) methodDeclaration.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) methodDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) methodDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        R r16 = (R) methodDeclaration.getParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        if (methodDeclaration.getReceiverParameter().isPresent() && (r11 = (R) methodDeclaration.getReceiverParameter().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r17 = (R) methodDeclaration.getThrownExceptions().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r17 != null) {
            return r17;
        }
        R r18 = (R) methodDeclaration.getTypeParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r18 != null) {
            return r18;
        }
        R r19 = (R) methodDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r19 != null) {
            return r19;
        }
        if (!methodDeclaration.getComment().isPresent() || (r10 = (R) methodDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(NameExpr nameExpr, A a10) {
        R r10;
        R r11 = (R) nameExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!nameExpr.getComment().isPresent() || (r10 = (R) nameExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(NormalAnnotationExpr normalAnnotationExpr, A a10) {
        R r10;
        R r11 = (R) normalAnnotationExpr.getPairs().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) normalAnnotationExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!normalAnnotationExpr.getComment().isPresent() || (r10 = (R) normalAnnotationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(NullLiteralExpr nullLiteralExpr, A a10) {
        R r10;
        if (!nullLiteralExpr.getComment().isPresent() || (r10 = (R) nullLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ObjectCreationExpr objectCreationExpr, A a10) {
        R r10;
        R r11;
        R r12;
        R r13;
        if (objectCreationExpr.getAnonymousClassBody().isPresent() && (r13 = (R) objectCreationExpr.getAnonymousClassBody().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r13;
        }
        R r14 = (R) objectCreationExpr.getArguments().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (objectCreationExpr.getScope().isPresent() && (r12 = (R) objectCreationExpr.getScope().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        R r15 = (R) objectCreationExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        if (objectCreationExpr.getTypeArguments().isPresent() && (r11 = (R) objectCreationExpr.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!objectCreationExpr.getComment().isPresent() || (r10 = (R) objectCreationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(PackageDeclaration packageDeclaration, A a10) {
        R r10;
        R r11 = (R) packageDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) packageDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!packageDeclaration.getComment().isPresent() || (r10 = (R) packageDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(Parameter parameter, A a10) {
        R r10;
        R r11 = (R) parameter.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) parameter.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) parameter.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) parameter.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) parameter.getVarArgsAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        if (!parameter.getComment().isPresent() || (r10 = (R) parameter.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(PrimitiveType primitiveType, A a10) {
        R r10;
        R r11 = (R) primitiveType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!primitiveType.getComment().isPresent() || (r10 = (R) primitiveType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(Name name, A a10) {
        R r10;
        R r11;
        if (name.getQualifier().isPresent() && (r11 = (R) name.getQualifier().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!name.getComment().isPresent() || (r10 = (R) name.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SimpleName simpleName, A a10) {
        R r10;
        if (!simpleName.getComment().isPresent() || (r10 = (R) simpleName.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ArrayType arrayType, A a10) {
        R r10;
        R r11 = (R) arrayType.getComponentType().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) arrayType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!arrayType.getComment().isPresent() || (r10 = (R) arrayType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ArrayCreationLevel arrayCreationLevel, A a10) {
        R r10;
        R r11;
        R r12 = (R) arrayCreationLevel.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (arrayCreationLevel.getDimension().isPresent() && (r11 = (R) arrayCreationLevel.getDimension().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!arrayCreationLevel.getComment().isPresent() || (r10 = (R) arrayCreationLevel.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(IntersectionType intersectionType, A a10) {
        R r10;
        R r11 = (R) intersectionType.getElements().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) intersectionType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!intersectionType.getComment().isPresent() || (r10 = (R) intersectionType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(UnionType unionType, A a10) {
        R r10;
        R r11 = (R) unionType.getElements().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) unionType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!unionType.getComment().isPresent() || (r10 = (R) unionType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ReturnStmt returnStmt, A a10) {
        R r10;
        R r11;
        if (returnStmt.getExpression().isPresent() && (r11 = (R) returnStmt.getExpression().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!returnStmt.getComment().isPresent() || (r10 = (R) returnStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SingleMemberAnnotationExpr singleMemberAnnotationExpr, A a10) {
        R r10;
        R r11 = (R) singleMemberAnnotationExpr.getMemberValue().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) singleMemberAnnotationExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!singleMemberAnnotationExpr.getComment().isPresent() || (r10 = (R) singleMemberAnnotationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(StringLiteralExpr stringLiteralExpr, A a10) {
        R r10;
        if (!stringLiteralExpr.getComment().isPresent() || (r10 = (R) stringLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SuperExpr superExpr, A a10) {
        R r10;
        R r11;
        if (superExpr.getTypeName().isPresent() && (r11 = (R) superExpr.getTypeName().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!superExpr.getComment().isPresent() || (r10 = (R) superExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SwitchEntry switchEntry, A a10) {
        R r10;
        R r11;
        if (switchEntry.getGuard().isPresent() && (r11 = (R) switchEntry.getGuard().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r12 = (R) switchEntry.getLabels().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) switchEntry.getStatements().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!switchEntry.getComment().isPresent() || (r10 = (R) switchEntry.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SwitchStmt switchStmt, A a10) {
        R r10;
        R r11 = (R) switchStmt.getEntries().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) switchStmt.getSelector().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!switchStmt.getComment().isPresent() || (r10 = (R) switchStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SynchronizedStmt synchronizedStmt, A a10) {
        R r10;
        R r11 = (R) synchronizedStmt.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) synchronizedStmt.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!synchronizedStmt.getComment().isPresent() || (r10 = (R) synchronizedStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ThisExpr thisExpr, A a10) {
        R r10;
        R r11;
        if (thisExpr.getTypeName().isPresent() && (r11 = (R) thisExpr.getTypeName().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!thisExpr.getComment().isPresent() || (r10 = (R) thisExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ThrowStmt throwStmt, A a10) {
        R r10;
        R r11 = (R) throwStmt.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!throwStmt.getComment().isPresent() || (r10 = (R) throwStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(TryStmt tryStmt, A a10) {
        R r10;
        R r11;
        R r12 = (R) tryStmt.getCatchClauses().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (tryStmt.getFinallyBlock().isPresent() && (r11 = (R) tryStmt.getFinallyBlock().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) tryStmt.getResources().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) tryStmt.getTryBlock().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        if (!tryStmt.getComment().isPresent() || (r10 = (R) tryStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LocalClassDeclarationStmt localClassDeclarationStmt, A a10) {
        R r10;
        R r11 = (R) localClassDeclarationStmt.getClassDeclaration().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!localClassDeclarationStmt.getComment().isPresent() || (r10 = (R) localClassDeclarationStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LocalRecordDeclarationStmt localRecordDeclarationStmt, A a10) {
        R r10;
        R r11 = (R) localRecordDeclarationStmt.getRecordDeclaration().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!localRecordDeclarationStmt.getComment().isPresent() || (r10 = (R) localRecordDeclarationStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(TypeParameter typeParameter, A a10) {
        R r10;
        R r11 = (R) typeParameter.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) typeParameter.getTypeBound().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) typeParameter.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!typeParameter.getComment().isPresent() || (r10 = (R) typeParameter.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(UnaryExpr unaryExpr, A a10) {
        R r10;
        R r11 = (R) unaryExpr.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!unaryExpr.getComment().isPresent() || (r10 = (R) unaryExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(UnknownType unknownType, A a10) {
        R r10;
        R r11 = (R) unknownType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!unknownType.getComment().isPresent() || (r10 = (R) unknownType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(VariableDeclarationExpr variableDeclarationExpr, A a10) {
        R r10;
        R r11 = (R) variableDeclarationExpr.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) variableDeclarationExpr.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) variableDeclarationExpr.getVariables().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!variableDeclarationExpr.getComment().isPresent() || (r10 = (R) variableDeclarationExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(VariableDeclarator variableDeclarator, A a10) {
        R r10;
        R r11;
        if (variableDeclarator.getInitializer().isPresent() && (r11 = (R) variableDeclarator.getInitializer().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r12 = (R) variableDeclarator.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) variableDeclarator.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!variableDeclarator.getComment().isPresent() || (r10 = (R) variableDeclarator.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(VoidType voidType, A a10) {
        R r10;
        R r11 = (R) voidType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!voidType.getComment().isPresent() || (r10 = (R) voidType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(WhileStmt whileStmt, A a10) {
        R r10;
        R r11 = (R) whileStmt.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) whileStmt.getCondition().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!whileStmt.getComment().isPresent() || (r10 = (R) whileStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(WildcardType wildcardType, A a10) {
        R r10;
        R r11;
        R r12;
        if (wildcardType.getExtendedType().isPresent() && (r12 = (R) wildcardType.getExtendedType().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r12;
        }
        if (wildcardType.getSuperType().isPresent() && (r11 = (R) wildcardType.getSuperType().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r13 = (R) wildcardType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!wildcardType.getComment().isPresent() || (r10 = (R) wildcardType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LambdaExpr lambdaExpr, A a10) {
        R r10;
        R r11 = (R) lambdaExpr.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) lambdaExpr.getParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!lambdaExpr.getComment().isPresent() || (r10 = (R) lambdaExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(MethodReferenceExpr methodReferenceExpr, A a10) {
        R r10;
        R r11;
        R r12 = (R) methodReferenceExpr.getScope().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (methodReferenceExpr.getTypeArguments().isPresent() && (r11 = (R) methodReferenceExpr.getTypeArguments().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        if (!methodReferenceExpr.getComment().isPresent() || (r10 = (R) methodReferenceExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(TypeExpr typeExpr, A a10) {
        R r10;
        R r11 = (R) typeExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!typeExpr.getComment().isPresent() || (r10 = (R) typeExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit2(ImportDeclaration importDeclaration, A a10) {
        R r10;
        R r11 = (R) importDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!importDeclaration.getComment().isPresent() || (r10 = (R) importDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(BlockComment blockComment, A a10) {
        R r10;
        if (!blockComment.getComment().isPresent() || (r10 = (R) blockComment.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(LineComment lineComment, A a10) {
        R r10;
        if (!lineComment.getComment().isPresent() || (r10 = (R) lineComment.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(NodeList nodeList, A a10) {
        Iterator it = nodeList.iterator();
        while (it.hasNext()) {
            R r10 = (R) ((Node) it.next()).accept(this, (GenericVisitorAdapter<R, A>) a10);
            if (r10 != null) {
                return r10;
            }
        }
        return null;
    }

    @Override
    public R visit(ModuleDeclaration moduleDeclaration, A a10) {
        R r10;
        R r11 = (R) moduleDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) moduleDeclaration.getDirectives().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) moduleDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!moduleDeclaration.getComment().isPresent() || (r10 = (R) moduleDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ModuleRequiresDirective moduleRequiresDirective, A a10) {
        R r10;
        R r11 = (R) moduleRequiresDirective.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) moduleRequiresDirective.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!moduleRequiresDirective.getComment().isPresent() || (r10 = (R) moduleRequiresDirective.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ModuleExportsDirective moduleExportsDirective, A a10) {
        R r10;
        R r11 = (R) moduleExportsDirective.getModuleNames().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) moduleExportsDirective.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!moduleExportsDirective.getComment().isPresent() || (r10 = (R) moduleExportsDirective.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ModuleProvidesDirective moduleProvidesDirective, A a10) {
        R r10;
        R r11 = (R) moduleProvidesDirective.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) moduleProvidesDirective.getWith().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!moduleProvidesDirective.getComment().isPresent() || (r10 = (R) moduleProvidesDirective.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ModuleUsesDirective moduleUsesDirective, A a10) {
        R r10;
        R r11 = (R) moduleUsesDirective.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!moduleUsesDirective.getComment().isPresent() || (r10 = (R) moduleUsesDirective.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ModuleOpensDirective moduleOpensDirective, A a10) {
        R r10;
        R r11 = (R) moduleOpensDirective.getModuleNames().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) moduleOpensDirective.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!moduleOpensDirective.getComment().isPresent() || (r10 = (R) moduleOpensDirective.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(UnparsableStmt unparsableStmt, A a10) {
        R r10;
        if (!unparsableStmt.getComment().isPresent() || (r10 = (R) unparsableStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(ReceiverParameter receiverParameter, A a10) {
        R r10;
        R r11 = (R) receiverParameter.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) receiverParameter.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) receiverParameter.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!receiverParameter.getComment().isPresent() || (r10 = (R) receiverParameter.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(VarType varType, A a10) {
        R r10;
        R r11 = (R) varType.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!varType.getComment().isPresent() || (r10 = (R) varType.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(Modifier modifier, A a10) {
        R r10;
        if (!modifier.getComment().isPresent() || (r10 = (R) modifier.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(SwitchExpr switchExpr, A a10) {
        R r10;
        R r11 = (R) switchExpr.getEntries().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) switchExpr.getSelector().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        if (!switchExpr.getComment().isPresent() || (r10 = (R) switchExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(YieldStmt yieldStmt, A a10) {
        R r10;
        R r11 = (R) yieldStmt.getExpression().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        if (!yieldStmt.getComment().isPresent() || (r10 = (R) yieldStmt.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(TextBlockLiteralExpr textBlockLiteralExpr, A a10) {
        R r10;
        if (!textBlockLiteralExpr.getComment().isPresent() || (r10 = (R) textBlockLiteralExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(TypePatternExpr typePatternExpr, A a10) {
        R r10;
        R r11 = (R) typePatternExpr.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) typePatternExpr.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) typePatternExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!typePatternExpr.getComment().isPresent() || (r10 = (R) typePatternExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(RecordDeclaration recordDeclaration, A a10) {
        R r10;
        R r11;
        R r12 = (R) recordDeclaration.getImplementedTypes().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) recordDeclaration.getParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (recordDeclaration.getReceiverParameter().isPresent() && (r11 = (R) recordDeclaration.getReceiverParameter().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) != null) {
            return r11;
        }
        R r14 = (R) recordDeclaration.getTypeParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) recordDeclaration.getMembers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        R r16 = (R) recordDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        R r17 = (R) recordDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r17 != null) {
            return r17;
        }
        R r18 = (R) recordDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r18 != null) {
            return r18;
        }
        if (!recordDeclaration.getComment().isPresent() || (r10 = (R) recordDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(CompactConstructorDeclaration compactConstructorDeclaration, A a10) {
        R r10;
        R r11 = (R) compactConstructorDeclaration.getBody().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) compactConstructorDeclaration.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) compactConstructorDeclaration.getName().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        R r14 = (R) compactConstructorDeclaration.getThrownExceptions().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r14 != null) {
            return r14;
        }
        R r15 = (R) compactConstructorDeclaration.getTypeParameters().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r15 != null) {
            return r15;
        }
        R r16 = (R) compactConstructorDeclaration.getAnnotations().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r16 != null) {
            return r16;
        }
        if (!compactConstructorDeclaration.getComment().isPresent() || (r10 = (R) compactConstructorDeclaration.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }

    @Override
    public R visit(RecordPatternExpr recordPatternExpr, A a10) {
        R r10;
        R r11 = (R) recordPatternExpr.getModifiers().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r11 != null) {
            return r11;
        }
        R r12 = (R) recordPatternExpr.getPatternList().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r12 != null) {
            return r12;
        }
        R r13 = (R) recordPatternExpr.getType2().accept(this, (GenericVisitorAdapter<R, A>) a10);
        if (r13 != null) {
            return r13;
        }
        if (!recordPatternExpr.getComment().isPresent() || (r10 = (R) recordPatternExpr.getComment().get().accept(this, (GenericVisitorAdapter<R, A>) a10)) == null) {
            return null;
        }
        return r10;
    }
}
