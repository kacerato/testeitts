package com.github.javaparser.ast.visitor;

import com.github.javaparser.Range;
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
import com.github.javaparser.ast.visitor.NodeFinderVisitor;
import java.util.Iterator;
import java.util.function.BiFunction;

public class NodeFinderVisitor extends VoidVisitorAdapter<Range> {
    public static BiFunction<Node, Range, Boolean> fConveringNode = new BiFunction() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            Boolean lambda$static$0;
            lambda$static$0 = NodeFinderVisitor.lambda$static$0((Node) obj, (Range) obj2);
            return lambda$static$0;
        }
    };

    private static BiFunction<Node, Range, Boolean> f59588fn;
    private Node selectedNode;

    public NodeFinderVisitor(BiFunction<Node, Range, Boolean> fn2) {
        f59588fn = fn2;
    }

    public static Boolean lambda$static$0(Node n10, Range range) {
        return Boolean.valueOf(n10.hasRange() && n10.getRange().get().contains(range));
    }

    public Node getSelectedNode() {
        return this.selectedNode;
    }

    @Override
    public void visit(final AnnotationDeclaration n10, final Range arg) {
        n10.getMembers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final AnnotationMemberDeclaration n10, final Range arg) {
        if (n10.getDefaultValue().isPresent()) {
            n10.getDefaultValue().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ArrayAccessExpr n10, final Range arg) {
        n10.getIndex().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ArrayCreationExpr n10, final Range arg) {
        n10.getElementType().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getInitializer().isPresent()) {
            n10.getInitializer().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getLevels().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ArrayInitializerExpr n10, final Range arg) {
        n10.getValues().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final AssertStmt n10, final Range arg) {
        n10.getCheck().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getMessage().isPresent()) {
            n10.getMessage().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final AssignExpr n10, final Range arg) {
        n10.getTarget().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getValue().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final BinaryExpr n10, final Range arg) {
        n10.getLeft().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getRight().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final BlockStmt n10, final Range arg) {
        n10.getStatements().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final BooleanLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final BreakStmt n10, final Range arg) {
        if (n10.getLabel().isPresent()) {
            n10.getLabel().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final CastExpr n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final CatchClause n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getParameter().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final CharLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        }
    }

    @Override
    public void visit(final ClassExpr n10, final Range arg) {
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ClassOrInterfaceDeclaration n10, final Range arg) {
        n10.getExtendedTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getImplementedTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getPermittedTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTypeParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getMembers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ClassOrInterfaceType n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getScope().isPresent()) {
            n10.getScope().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final CompilationUnit n10, final Range arg) {
        n10.getImports().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getModule().isPresent()) {
            n10.getModule().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getPackageDeclaration().isPresent()) {
            n10.getPackageDeclaration().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ConditionalExpr n10, final Range arg) {
        n10.getCondition().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getElseExpr().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getThenExpr().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ConstructorDeclaration n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getReceiverParameter().isPresent()) {
            n10.getReceiverParameter().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getThrownExceptions().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTypeParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ContinueStmt n10, final Range arg) {
        if (n10.getLabel().isPresent()) {
            n10.getLabel().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final DoStmt n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getCondition().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final DoubleLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final EmptyStmt n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final EnclosedExpr n10, final Range arg) {
        n10.getInner().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final EnumConstantDeclaration n10, final Range arg) {
        n10.getArguments().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getClassBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final EnumDeclaration n10, final Range arg) {
        n10.getEntries().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getImplementedTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getMembers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ExplicitConstructorInvocationStmt n10, final Range arg) {
        n10.getArguments().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getExpression().isPresent()) {
            n10.getExpression().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ExpressionStmt n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final FieldAccessExpr n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getScope().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final FieldDeclaration n10, final Range arg) {
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getVariables().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ForEachStmt n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getIterable().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getVariable().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ForStmt n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getCompare().isPresent()) {
            n10.getCompare().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getInitialization().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getUpdate().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final IfStmt n10, final Range arg) {
        n10.getCondition().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getElseStmt().isPresent()) {
            n10.getElseStmt().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getThenStmt().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final InitializerDeclaration n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final InstanceOfExpr n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getPattern().isPresent()) {
            n10.getPattern().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final IntegerLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        }
    }

    @Override
    public void visit(final JavadocComment n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LabeledStmt n10, final Range arg) {
        n10.getLabel().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getStatement().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LongLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final MarkerAnnotationExpr n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final MemberValuePair n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getValue().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final MethodCallExpr n10, final Range arg) {
        n10.getArguments().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getScope().isPresent()) {
            n10.getScope().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final MethodDeclaration n10, final Range arg) {
        if (n10.getBody().isPresent()) {
            n10.getBody().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getReceiverParameter().isPresent()) {
            n10.getReceiverParameter().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getThrownExceptions().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTypeParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final NameExpr n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final NormalAnnotationExpr n10, final Range arg) {
        n10.getPairs().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final NullLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ObjectCreationExpr n10, final Range arg) {
        if (n10.getAnonymousClassBody().isPresent()) {
            n10.getAnonymousClassBody().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getArguments().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getScope().isPresent()) {
            n10.getScope().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final PackageDeclaration n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final Parameter n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getVarArgsAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final PrimitiveType n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final Name n10, final Range arg) {
        if (n10.getQualifier().isPresent()) {
            n10.getQualifier().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SimpleName n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ArrayType n10, final Range arg) {
        n10.getComponentType().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ArrayCreationLevel n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getDimension().isPresent()) {
            n10.getDimension().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final IntersectionType n10, final Range arg) {
        n10.getElements().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final UnionType n10, final Range arg) {
        n10.getElements().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ReturnStmt n10, final Range arg) {
        if (n10.getExpression().isPresent()) {
            n10.getExpression().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SingleMemberAnnotationExpr n10, final Range arg) {
        n10.getMemberValue().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final StringLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SuperExpr n10, final Range arg) {
        if (n10.getTypeName().isPresent()) {
            n10.getTypeName().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SwitchEntry n10, final Range arg) {
        n10.getLabels().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getStatements().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getGuard().isPresent()) {
            n10.getGuard().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SwitchStmt n10, final Range arg) {
        n10.getEntries().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getSelector().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SynchronizedStmt n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ThisExpr n10, final Range arg) {
        if (n10.getTypeName().isPresent()) {
            n10.getTypeName().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ThrowStmt n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final TryStmt n10, final Range arg) {
        n10.getCatchClauses().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getFinallyBlock().isPresent()) {
            n10.getFinallyBlock().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getResources().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTryBlock().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LocalClassDeclarationStmt n10, final Range arg) {
        n10.getClassDeclaration().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LocalRecordDeclarationStmt n10, final Range arg) {
        n10.getRecordDeclaration().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final TypeParameter n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTypeBound().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final UnaryExpr n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final UnknownType n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final VariableDeclarationExpr n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getVariables().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final VariableDeclarator n10, final Range arg) {
        if (n10.getInitializer().isPresent()) {
            n10.getInitializer().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final VoidType n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final WhileStmt n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getCondition().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final WildcardType n10, final Range arg) {
        if (n10.getExtendedType().isPresent()) {
            n10.getExtendedType().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getSuperType().isPresent()) {
            n10.getSuperType().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LambdaExpr n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final MethodReferenceExpr n10, final Range arg) {
        n10.getScope().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getTypeArguments().isPresent()) {
            n10.getTypeArguments().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final TypeExpr n10, final Range arg) {
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ImportDeclaration n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final BlockComment n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final LineComment n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(NodeList n10, final Range arg) {
        Iterator it = n10.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        }
    }

    @Override
    public void visit(final ModuleDeclaration n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getDirectives().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ModuleRequiresDirective n10, final Range arg) {
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ModuleExportsDirective n10, final Range arg) {
        n10.getModuleNames().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ModuleProvidesDirective n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getWith().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ModuleUsesDirective n10, final Range arg) {
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ModuleOpensDirective n10, final Range arg) {
        n10.getModuleNames().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final UnparsableStmt n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final ReceiverParameter n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final VarType n10, final Range arg) {
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final Modifier n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final SwitchExpr n10, final Range arg) {
        n10.getEntries().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getSelector().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final YieldStmt n10, final Range arg) {
        n10.getExpression().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final TextBlockLiteralExpr n10, final Range arg) {
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final TypePatternExpr n10, final Range arg) {
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getType2().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final RecordDeclaration n10, final Range arg) {
        n10.getImplementedTypes().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getReceiverParameter().isPresent()) {
            n10.getReceiverParameter().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        n10.getTypeParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getMembers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }

    @Override
    public void visit(final CompactConstructorDeclaration n10, final Range arg) {
        n10.getBody().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getModifiers().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getName().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getThrownExceptions().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getTypeParameters().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        n10.getAnnotations().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
        if (this.selectedNode != null) {
            return;
        }
        if (n10.getComment().isPresent()) {
            n10.getComment().get().accept((VoidVisitor<NodeFinderVisitor>) this, (NodeFinderVisitor) arg);
            if (this.selectedNode != null) {
                return;
            }
        }
        if (f59588fn.apply(n10, arg).booleanValue()) {
            this.selectedNode = n10;
        }
    }
}
