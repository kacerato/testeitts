package com.github.javaparser.ast.visitor;

import c0.C3915a;
import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.DataKey;
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
import com.github.javaparser.ast.comments.Comment;
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
import com.github.javaparser.ast.visitor.CloneVisitor;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Consumer;

public class CloneVisitor implements GenericVisitor<Visitable, Object> {
    private <N extends Node> NodeList<N> cloneList(NodeList<N> list, Object arg) {
        if (list == null) {
            return null;
        }
        return (NodeList) list.accept((GenericVisitor<R, CloneVisitor>) this, (CloneVisitor) arg);
    }

    private void copyData(Node source, Node destination) {
        for (DataKey<?> dataKey : source.getDataKeys()) {
            destination.setData(dataKey, source.getData(dataKey));
        }
    }

    public static void lambda$visit$0(final CompilationUnit r10, CompilationUnit.Storage s10) {
        r10.setStorage(s10.getPath(), s10.getEncoding());
    }

    public <T extends Node> T cloneNode(Optional<T> node, Object arg) {
        T t10;
        if (node.isPresent() && (t10 = (T) node.get().accept(this, arg)) != null) {
            return t10;
        }
        return null;
    }

    public <T extends Node> T cloneNode(T node, Object arg) {
        T t10;
        if (node == null || (t10 = (T) node.accept(this, arg)) == null) {
            return null;
        }
        return t10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CompilationUnit n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getImports(), arg);
        ModuleDeclaration moduleDeclaration = (ModuleDeclaration) cloneNode(n10.getModule(), arg);
        PackageDeclaration packageDeclaration = (PackageDeclaration) cloneNode(n10.getPackageDeclaration(), arg);
        NodeList cloneList2 = cloneList(n10.getTypes(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final CompilationUnit compilationUnit = new CompilationUnit(n10.getTokenRange().orElse(null), packageDeclaration, cloneList, cloneList2, moduleDeclaration);
        n10.getStorage().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CloneVisitor.lambda$visit$0(CompilationUnit.this, (CompilationUnit.Storage) obj);
            }
        });
        compilationUnit.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CompilationUnit.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, compilationUnit);
        return compilationUnit;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final PackageDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final PackageDeclaration packageDeclaration = new PackageDeclaration(n10.getTokenRange().orElse(null), cloneList, name);
        packageDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PackageDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, packageDeclaration);
        return packageDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TypeParameter n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList = cloneList(n10.getTypeBound(), arg);
        NodeList cloneList2 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final TypeParameter typeParameter = new TypeParameter(n10.getTokenRange().orElse(null), simpleName, cloneList, cloneList2);
        typeParameter.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TypeParameter.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, typeParameter);
        return typeParameter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LineComment n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LineComment lineComment = new LineComment(n10.getTokenRange().orElse(null), n10.getContent());
        lineComment.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LineComment.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, lineComment);
        return lineComment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BlockComment n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final BlockComment blockComment = new BlockComment(n10.getTokenRange().orElse(null), n10.getContent());
        blockComment.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BlockComment.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, blockComment);
        return blockComment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ClassOrInterfaceDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getExtendedTypes(), arg);
        NodeList cloneList2 = cloneList(n10.getImplementedTypes(), arg);
        NodeList cloneList3 = cloneList(n10.getPermittedTypes(), arg);
        NodeList cloneList4 = cloneList(n10.getTypeParameters(), arg);
        NodeList cloneList5 = cloneList(n10.getMembers(), arg);
        NodeList cloneList6 = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList7 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ClassOrInterfaceDeclaration classOrInterfaceDeclaration = new ClassOrInterfaceDeclaration(n10.getTokenRange().orElse(null), cloneList6, cloneList7, n10.isInterface(), simpleName, cloneList4, cloneList, cloneList2, cloneList3, cloneList5);
        classOrInterfaceDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassOrInterfaceDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, classOrInterfaceDeclaration);
        return classOrInterfaceDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EnumDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getEntries(), arg);
        NodeList cloneList2 = cloneList(n10.getImplementedTypes(), arg);
        NodeList cloneList3 = cloneList(n10.getMembers(), arg);
        NodeList cloneList4 = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList5 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final EnumDeclaration enumDeclaration = new EnumDeclaration(n10.getTokenRange().orElse(null), cloneList4, cloneList5, simpleName, cloneList2, cloneList, cloneList3);
        enumDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EnumDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, enumDeclaration);
        return enumDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EnumConstantDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getArguments(), arg);
        NodeList cloneList2 = cloneList(n10.getClassBody(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList3 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final EnumConstantDeclaration enumConstantDeclaration = new EnumConstantDeclaration(n10.getTokenRange().orElse(null), cloneList3, simpleName, cloneList, cloneList2);
        enumConstantDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EnumConstantDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, enumConstantDeclaration);
        return enumConstantDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AnnotationDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getMembers(), arg);
        NodeList cloneList2 = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList3 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final AnnotationDeclaration annotationDeclaration = new AnnotationDeclaration(n10.getTokenRange().orElse(null), cloneList2, cloneList3, simpleName, cloneList);
        annotationDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AnnotationDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, annotationDeclaration);
        return annotationDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AnnotationMemberDeclaration n10, final Object arg) {
        Expression expression = (Expression) cloneNode(n10.getDefaultValue(), arg);
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        NodeList cloneList2 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final AnnotationMemberDeclaration annotationMemberDeclaration = new AnnotationMemberDeclaration(n10.getTokenRange().orElse(null), cloneList, cloneList2, type, simpleName, expression);
        annotationMemberDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AnnotationMemberDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, annotationMemberDeclaration);
        return annotationMemberDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final FieldDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        NodeList cloneList2 = cloneList(n10.getVariables(), arg);
        NodeList cloneList3 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final FieldDeclaration fieldDeclaration = new FieldDeclaration(n10.getTokenRange().orElse(null), cloneList, cloneList3, cloneList2);
        fieldDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                FieldDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, fieldDeclaration);
        return fieldDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final VariableDeclarator n10, final Object arg) {
        Expression expression = (Expression) cloneNode(n10.getInitializer(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final VariableDeclarator variableDeclarator = new VariableDeclarator(n10.getTokenRange().orElse(null), type, simpleName, expression);
        variableDeclarator.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VariableDeclarator.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, variableDeclarator);
        return variableDeclarator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ConstructorDeclaration n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode((CloneVisitor) n10.getBody(), arg);
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList2 = cloneList(n10.getParameters(), arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) cloneNode(n10.getReceiverParameter(), arg);
        NodeList cloneList3 = cloneList(n10.getThrownExceptions(), arg);
        NodeList cloneList4 = cloneList(n10.getTypeParameters(), arg);
        NodeList cloneList5 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(n10.getTokenRange().orElse(null), cloneList, cloneList5, cloneList4, simpleName, cloneList2, cloneList3, blockStmt, receiverParameter);
        constructorDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ConstructorDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, constructorDeclaration);
        return constructorDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MethodDeclaration n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode(n10.getBody(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList2 = cloneList(n10.getParameters(), arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) cloneNode(n10.getReceiverParameter(), arg);
        NodeList cloneList3 = cloneList(n10.getThrownExceptions(), arg);
        NodeList cloneList4 = cloneList(n10.getTypeParameters(), arg);
        NodeList cloneList5 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final MethodDeclaration methodDeclaration = new MethodDeclaration(n10.getTokenRange().orElse(null), cloneList, cloneList5, cloneList4, type, simpleName, cloneList2, cloneList3, blockStmt, receiverParameter);
        methodDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MethodDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, methodDeclaration);
        return methodDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final Parameter n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        NodeList cloneList2 = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        NodeList cloneList3 = cloneList(n10.getVarArgsAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final Parameter parameter = new Parameter(n10.getTokenRange().orElse(null), cloneList2, cloneList, type, n10.isVarArgs(), cloneList3, simpleName);
        parameter.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Parameter.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, parameter);
        return parameter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final InitializerDeclaration n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode((CloneVisitor) n10.getBody(), arg);
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final InitializerDeclaration initializerDeclaration = new InitializerDeclaration(n10.getTokenRange().orElse(null), n10.isStatic(), blockStmt);
        initializerDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InitializerDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, initializerDeclaration);
        return initializerDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final JavadocComment n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final JavadocComment javadocComment = new JavadocComment(n10.getTokenRange().orElse(null), n10.getContent());
        javadocComment.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavadocComment.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, javadocComment);
        return javadocComment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ClassOrInterfaceType n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) cloneNode(n10.getScope(), arg);
        NodeList cloneList = cloneList(n10.getTypeArguments().orElse(null), arg);
        NodeList cloneList2 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ClassOrInterfaceType classOrInterfaceType2 = new ClassOrInterfaceType(n10.getTokenRange().orElse(null), classOrInterfaceType, simpleName, cloneList, cloneList2);
        classOrInterfaceType2.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassOrInterfaceType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, classOrInterfaceType2);
        return classOrInterfaceType2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final PrimitiveType n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final PrimitiveType primitiveType = new PrimitiveType(n10.getTokenRange().orElse(null), n10.getType(), cloneList);
        primitiveType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PrimitiveType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, primitiveType);
        return primitiveType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayType n10, final Object arg) {
        Type type = (Type) cloneNode((CloneVisitor) n10.getComponentType(), arg);
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ArrayType arrayType = new ArrayType(n10.getTokenRange().orElse(null), type, n10.getOrigin(), cloneList);
        arrayType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, arrayType);
        return arrayType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayCreationLevel n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Expression expression = (Expression) cloneNode(n10.getDimension(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ArrayCreationLevel arrayCreationLevel = new ArrayCreationLevel(n10.getTokenRange().orElse(null), expression, cloneList);
        arrayCreationLevel.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayCreationLevel.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, arrayCreationLevel);
        return arrayCreationLevel;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final IntersectionType n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getElements(), arg);
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final IntersectionType intersectionType = new IntersectionType(n10.getTokenRange().orElse(null), cloneList);
        intersectionType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IntersectionType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, intersectionType);
        return intersectionType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnionType n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getElements(), arg);
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final UnionType unionType = new UnionType(n10.getTokenRange().orElse(null), cloneList);
        unionType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UnionType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, unionType);
        return unionType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final VoidType n10, final Object arg) {
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final VoidType voidType = new VoidType(n10.getTokenRange().orElse(null));
        voidType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VoidType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, voidType);
        return voidType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final WildcardType n10, final Object arg) {
        ReferenceType referenceType = (ReferenceType) cloneNode(n10.getExtendedType(), arg);
        ReferenceType referenceType2 = (ReferenceType) cloneNode(n10.getSuperType(), arg);
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final WildcardType wildcardType = new WildcardType(n10.getTokenRange().orElse(null), referenceType, referenceType2, cloneList);
        wildcardType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                WildcardType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, wildcardType);
        return wildcardType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnknownType n10, final Object arg) {
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final UnknownType unknownType = new UnknownType(n10.getTokenRange().orElse(null));
        unknownType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UnknownType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, unknownType);
        return unknownType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayAccessExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getIndex(), arg);
        Expression expression2 = (Expression) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ArrayAccessExpr arrayAccessExpr = new ArrayAccessExpr(n10.getTokenRange().orElse(null), expression2, expression);
        arrayAccessExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayAccessExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, arrayAccessExpr);
        return arrayAccessExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayCreationExpr n10, final Object arg) {
        Type type = (Type) cloneNode((CloneVisitor) n10.getElementType(), arg);
        ArrayInitializerExpr arrayInitializerExpr = (ArrayInitializerExpr) cloneNode(n10.getInitializer(), arg);
        NodeList cloneList = cloneList(n10.getLevels(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ArrayCreationExpr arrayCreationExpr = new ArrayCreationExpr(n10.getTokenRange().orElse(null), type, cloneList, arrayInitializerExpr);
        arrayCreationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayCreationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, arrayCreationExpr);
        return arrayCreationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ArrayInitializerExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getValues(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ArrayInitializerExpr arrayInitializerExpr = new ArrayInitializerExpr(n10.getTokenRange().orElse(null), cloneList);
        arrayInitializerExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayInitializerExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, arrayInitializerExpr);
        return arrayInitializerExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AssignExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getTarget(), arg);
        Expression expression2 = (Expression) cloneNode((CloneVisitor) n10.getValue(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final AssignExpr assignExpr = new AssignExpr(n10.getTokenRange().orElse(null), expression, expression2, n10.getOperator());
        assignExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AssignExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, assignExpr);
        return assignExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BinaryExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getLeft(), arg);
        Expression expression2 = (Expression) cloneNode((CloneVisitor) n10.getRight(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final BinaryExpr binaryExpr = new BinaryExpr(n10.getTokenRange().orElse(null), expression, expression2, n10.getOperator());
        binaryExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BinaryExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, binaryExpr);
        return binaryExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CastExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final CastExpr castExpr = new CastExpr(n10.getTokenRange().orElse(null), type, expression);
        castExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CastExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, castExpr);
        return castExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ClassExpr n10, final Object arg) {
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ClassExpr classExpr = new ClassExpr(n10.getTokenRange().orElse(null), type);
        classExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, classExpr);
        return classExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ConditionalExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getCondition(), arg);
        Expression expression2 = (Expression) cloneNode((CloneVisitor) n10.getElseExpr(), arg);
        Expression expression3 = (Expression) cloneNode((CloneVisitor) n10.getThenExpr(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ConditionalExpr conditionalExpr = new ConditionalExpr(n10.getTokenRange().orElse(null), expression, expression3, expression2);
        conditionalExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ConditionalExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, conditionalExpr);
        return conditionalExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EnclosedExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getInner(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final EnclosedExpr enclosedExpr = new EnclosedExpr(n10.getTokenRange().orElse(null), expression);
        enclosedExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EnclosedExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, enclosedExpr);
        return enclosedExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final FieldAccessExpr n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getScope(), arg);
        NodeList cloneList = cloneList(n10.getTypeArguments().orElse(null), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final FieldAccessExpr fieldAccessExpr = new FieldAccessExpr(n10.getTokenRange().orElse(null), expression, cloneList, simpleName);
        fieldAccessExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                FieldAccessExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, fieldAccessExpr);
        return fieldAccessExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final InstanceOfExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        PatternExpr patternExpr = (PatternExpr) cloneNode(n10.getPattern(), arg);
        ReferenceType referenceType = (ReferenceType) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final InstanceOfExpr instanceOfExpr = new InstanceOfExpr(n10.getTokenRange().orElse(null), expression, referenceType, patternExpr);
        instanceOfExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InstanceOfExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, instanceOfExpr);
        return instanceOfExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final StringLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final StringLiteralExpr stringLiteralExpr = new StringLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        stringLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                StringLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, stringLiteralExpr);
        return stringLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final IntegerLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final IntegerLiteralExpr integerLiteralExpr = new IntegerLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        integerLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IntegerLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, integerLiteralExpr);
        return integerLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LongLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LongLiteralExpr longLiteralExpr = new LongLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        longLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LongLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, longLiteralExpr);
        return longLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CharLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final CharLiteralExpr charLiteralExpr = new CharLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        charLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CharLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, charLiteralExpr);
        return charLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final DoubleLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final DoubleLiteralExpr doubleLiteralExpr = new DoubleLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        doubleLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DoubleLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, doubleLiteralExpr);
        return doubleLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BooleanLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final BooleanLiteralExpr booleanLiteralExpr = new BooleanLiteralExpr(n10.getTokenRange().orElse(null), n10.isValue());
        booleanLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BooleanLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, booleanLiteralExpr);
        return booleanLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final NullLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final NullLiteralExpr nullLiteralExpr = new NullLiteralExpr(n10.getTokenRange().orElse(null));
        nullLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NullLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, nullLiteralExpr);
        return nullLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MethodCallExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getArguments(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Expression expression = (Expression) cloneNode(n10.getScope(), arg);
        NodeList cloneList2 = cloneList(n10.getTypeArguments().orElse(null), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final MethodCallExpr methodCallExpr = new MethodCallExpr(n10.getTokenRange().orElse(null), expression, cloneList2, simpleName, cloneList);
        methodCallExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MethodCallExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, methodCallExpr);
        return methodCallExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final NameExpr n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final NameExpr nameExpr = new NameExpr(n10.getTokenRange().orElse(null), simpleName);
        nameExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NameExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, nameExpr);
        return nameExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ObjectCreationExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnonymousClassBody().orElse(null), arg);
        NodeList cloneList2 = cloneList(n10.getArguments(), arg);
        Expression expression = (Expression) cloneNode(n10.getScope(), arg);
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) cloneNode((CloneVisitor) n10.getType2(), arg);
        NodeList cloneList3 = cloneList(n10.getTypeArguments().orElse(null), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ObjectCreationExpr objectCreationExpr = new ObjectCreationExpr(n10.getTokenRange().orElse(null), expression, classOrInterfaceType, cloneList3, cloneList2, cloneList);
        objectCreationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ObjectCreationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, objectCreationExpr);
        return objectCreationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final Name n10, final Object arg) {
        Name name = (Name) cloneNode(n10.getQualifier(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final Name name2 = new Name(n10.getTokenRange().orElse(null), name, n10.getIdentifier());
        name2.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Name.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, name2);
        return name2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SimpleName n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SimpleName simpleName = new SimpleName(n10.getTokenRange().orElse(null), n10.getIdentifier());
        simpleName.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SimpleName.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, simpleName);
        return simpleName;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ThisExpr n10, final Object arg) {
        Name name = (Name) cloneNode(n10.getTypeName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ThisExpr thisExpr = new ThisExpr(n10.getTokenRange().orElse(null), name);
        thisExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ThisExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, thisExpr);
        return thisExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SuperExpr n10, final Object arg) {
        Name name = (Name) cloneNode(n10.getTypeName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SuperExpr superExpr = new SuperExpr(n10.getTokenRange().orElse(null), name);
        superExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SuperExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, superExpr);
        return superExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnaryExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final UnaryExpr unaryExpr = new UnaryExpr(n10.getTokenRange().orElse(null), expression, n10.getOperator());
        unaryExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UnaryExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, unaryExpr);
        return unaryExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final VariableDeclarationExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        NodeList cloneList2 = cloneList(n10.getModifiers(), arg);
        NodeList cloneList3 = cloneList(n10.getVariables(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final VariableDeclarationExpr variableDeclarationExpr = new VariableDeclarationExpr(n10.getTokenRange().orElse(null), cloneList2, cloneList, cloneList3);
        variableDeclarationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VariableDeclarationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, variableDeclarationExpr);
        return variableDeclarationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MarkerAnnotationExpr n10, final Object arg) {
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final MarkerAnnotationExpr markerAnnotationExpr = new MarkerAnnotationExpr(n10.getTokenRange().orElse(null), name);
        markerAnnotationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MarkerAnnotationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, markerAnnotationExpr);
        return markerAnnotationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SingleMemberAnnotationExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getMemberValue(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SingleMemberAnnotationExpr singleMemberAnnotationExpr = new SingleMemberAnnotationExpr(n10.getTokenRange().orElse(null), name, expression);
        singleMemberAnnotationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SingleMemberAnnotationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, singleMemberAnnotationExpr);
        return singleMemberAnnotationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final NormalAnnotationExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getPairs(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final NormalAnnotationExpr normalAnnotationExpr = new NormalAnnotationExpr(n10.getTokenRange().orElse(null), name, cloneList);
        normalAnnotationExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NormalAnnotationExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, normalAnnotationExpr);
        return normalAnnotationExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MemberValuePair n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getValue(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final MemberValuePair memberValuePair = new MemberValuePair(n10.getTokenRange().orElse(null), simpleName, expression);
        memberValuePair.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MemberValuePair.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, memberValuePair);
        return memberValuePair;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ExplicitConstructorInvocationStmt n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getArguments(), arg);
        Expression expression = (Expression) cloneNode(n10.getExpression(), arg);
        NodeList cloneList2 = cloneList(n10.getTypeArguments().orElse(null), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ExplicitConstructorInvocationStmt explicitConstructorInvocationStmt = new ExplicitConstructorInvocationStmt(n10.getTokenRange().orElse(null), cloneList2, n10.isThis(), expression, cloneList);
        explicitConstructorInvocationStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ExplicitConstructorInvocationStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, explicitConstructorInvocationStmt);
        return explicitConstructorInvocationStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LocalClassDeclarationStmt n10, final Object arg) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) cloneNode((CloneVisitor) n10.getClassDeclaration(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LocalClassDeclarationStmt localClassDeclarationStmt = new LocalClassDeclarationStmt(n10.getTokenRange().orElse(null), classOrInterfaceDeclaration);
        localClassDeclarationStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LocalClassDeclarationStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, localClassDeclarationStmt);
        return localClassDeclarationStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LocalRecordDeclarationStmt n10, final Object arg) {
        RecordDeclaration recordDeclaration = (RecordDeclaration) cloneNode((CloneVisitor) n10.getRecordDeclaration(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LocalRecordDeclarationStmt localRecordDeclarationStmt = new LocalRecordDeclarationStmt(n10.getTokenRange().orElse(null), recordDeclaration);
        localRecordDeclarationStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LocalRecordDeclarationStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, localRecordDeclarationStmt);
        return localRecordDeclarationStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final AssertStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getCheck(), arg);
        Expression expression2 = (Expression) cloneNode(n10.getMessage(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final AssertStmt assertStmt = new AssertStmt(n10.getTokenRange().orElse(null), expression, expression2);
        assertStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AssertStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, assertStmt);
        return assertStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BlockStmt n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getStatements(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final BlockStmt blockStmt = new BlockStmt(n10.getTokenRange().orElse(null), cloneList);
        blockStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BlockStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, blockStmt);
        return blockStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LabeledStmt n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getLabel(), arg);
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getStatement(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LabeledStmt labeledStmt = new LabeledStmt(n10.getTokenRange().orElse(null), simpleName, statement);
        labeledStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LabeledStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, labeledStmt);
        return labeledStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final EmptyStmt n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final EmptyStmt emptyStmt = new EmptyStmt(n10.getTokenRange().orElse(null));
        emptyStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EmptyStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, emptyStmt);
        return emptyStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ExpressionStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ExpressionStmt expressionStmt = new ExpressionStmt(n10.getTokenRange().orElse(null), expression);
        expressionStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ExpressionStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, expressionStmt);
        return expressionStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SwitchStmt n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getEntries(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getSelector(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SwitchStmt switchStmt = new SwitchStmt(n10.getTokenRange().orElse(null), expression, cloneList);
        switchStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SwitchStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, switchStmt);
        return switchStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SwitchEntry n10, final Object arg) {
        Expression expression = (Expression) cloneNode(n10.getGuard(), arg);
        NodeList cloneList = cloneList(n10.getLabels(), arg);
        NodeList cloneList2 = cloneList(n10.getStatements(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SwitchEntry switchEntry = new SwitchEntry(n10.getTokenRange().orElse(null), cloneList, n10.getType(), cloneList2, n10.isDefault(), expression);
        switchEntry.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SwitchEntry.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, switchEntry);
        return switchEntry;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final BreakStmt n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode(n10.getLabel(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final BreakStmt breakStmt = new BreakStmt(n10.getTokenRange().orElse(null), simpleName);
        breakStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BreakStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, breakStmt);
        return breakStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ReturnStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode(n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ReturnStmt returnStmt = new ReturnStmt(n10.getTokenRange().orElse(null), expression);
        returnStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ReturnStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, returnStmt);
        return returnStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final IfStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getCondition(), arg);
        Statement statement = (Statement) cloneNode(n10.getElseStmt(), arg);
        Statement statement2 = (Statement) cloneNode((CloneVisitor) n10.getThenStmt(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final IfStmt ifStmt = new IfStmt(n10.getTokenRange().orElse(null), expression, statement2, statement);
        ifStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IfStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, ifStmt);
        return ifStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final WhileStmt n10, final Object arg) {
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getBody(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getCondition(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final WhileStmt whileStmt = new WhileStmt(n10.getTokenRange().orElse(null), expression, statement);
        whileStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                WhileStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, whileStmt);
        return whileStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ContinueStmt n10, final Object arg) {
        SimpleName simpleName = (SimpleName) cloneNode(n10.getLabel(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ContinueStmt continueStmt = new ContinueStmt(n10.getTokenRange().orElse(null), simpleName);
        continueStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ContinueStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, continueStmt);
        return continueStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final DoStmt n10, final Object arg) {
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getBody(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getCondition(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final DoStmt doStmt = new DoStmt(n10.getTokenRange().orElse(null), statement, expression);
        doStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DoStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, doStmt);
        return doStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ForEachStmt n10, final Object arg) {
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getBody(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getIterable(), arg);
        VariableDeclarationExpr variableDeclarationExpr = (VariableDeclarationExpr) cloneNode((CloneVisitor) n10.getVariable(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ForEachStmt forEachStmt = new ForEachStmt(n10.getTokenRange().orElse(null), variableDeclarationExpr, expression, statement);
        forEachStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ForEachStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, forEachStmt);
        return forEachStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ForStmt n10, final Object arg) {
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getBody(), arg);
        Expression expression = (Expression) cloneNode(n10.getCompare(), arg);
        NodeList cloneList = cloneList(n10.getInitialization(), arg);
        NodeList cloneList2 = cloneList(n10.getUpdate(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ForStmt forStmt = new ForStmt(n10.getTokenRange().orElse(null), cloneList, expression, cloneList2, statement);
        forStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ForStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, forStmt);
        return forStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ThrowStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ThrowStmt throwStmt = new ThrowStmt(n10.getTokenRange().orElse(null), expression);
        throwStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ThrowStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, throwStmt);
        return throwStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SynchronizedStmt n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode((CloneVisitor) n10.getBody(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SynchronizedStmt synchronizedStmt = new SynchronizedStmt(n10.getTokenRange().orElse(null), expression, blockStmt);
        synchronizedStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SynchronizedStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, synchronizedStmt);
        return synchronizedStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TryStmt n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getCatchClauses(), arg);
        BlockStmt blockStmt = (BlockStmt) cloneNode(n10.getFinallyBlock(), arg);
        NodeList cloneList2 = cloneList(n10.getResources(), arg);
        BlockStmt blockStmt2 = (BlockStmt) cloneNode((CloneVisitor) n10.getTryBlock(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final TryStmt tryStmt = new TryStmt(n10.getTokenRange().orElse(null), cloneList2, blockStmt2, cloneList, blockStmt);
        tryStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TryStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, tryStmt);
        return tryStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CatchClause n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode((CloneVisitor) n10.getBody(), arg);
        Parameter parameter = (Parameter) cloneNode((CloneVisitor) n10.getParameter(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final CatchClause catchClause = new CatchClause(n10.getTokenRange().orElse(null), parameter, blockStmt);
        catchClause.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CatchClause.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, catchClause);
        return catchClause;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final LambdaExpr n10, final Object arg) {
        Statement statement = (Statement) cloneNode((CloneVisitor) n10.getBody(), arg);
        NodeList cloneList = cloneList(n10.getParameters(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final LambdaExpr lambdaExpr = new LambdaExpr(n10.getTokenRange().orElse(null), cloneList, statement, n10.isEnclosingParameters());
        lambdaExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LambdaExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, lambdaExpr);
        return lambdaExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final MethodReferenceExpr n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getScope(), arg);
        NodeList cloneList = cloneList(n10.getTypeArguments().orElse(null), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final MethodReferenceExpr methodReferenceExpr = new MethodReferenceExpr(n10.getTokenRange().orElse(null), expression, cloneList, n10.getIdentifier());
        methodReferenceExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MethodReferenceExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, methodReferenceExpr);
        return methodReferenceExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TypeExpr n10, final Object arg) {
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final TypeExpr typeExpr = new TypeExpr(n10.getTokenRange().orElse(null), type);
        typeExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TypeExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, typeExpr);
        return typeExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(NodeList n10, Object arg) {
        NodeList nodeList = new NodeList();
        Iterator it = n10.iterator();
        while (it.hasNext()) {
            Node node = (Node) ((Node) it.next()).accept((GenericVisitor<R, CloneVisitor>) this, (CloneVisitor) arg);
            if (node != null) {
                nodeList.add((NodeList) node);
            }
        }
        return nodeList;
    }

    @Override
    public Visitable visit2(final ImportDeclaration n10, final Object arg) {
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ImportDeclaration importDeclaration = new ImportDeclaration(n10.getTokenRange().orElse(null), name, n10.isStatic(), n10.isAsterisk());
        importDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ImportDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, importDeclaration);
        return importDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        NodeList cloneList2 = cloneList(n10.getDirectives(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleDeclaration moduleDeclaration = new ModuleDeclaration(n10.getTokenRange().orElse(null), cloneList, name, n10.isOpen(), cloneList2);
        moduleDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleDeclaration);
        return moduleDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleRequiresDirective n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleRequiresDirective moduleRequiresDirective = new ModuleRequiresDirective(n10.getTokenRange().orElse(null), cloneList, name);
        moduleRequiresDirective.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleRequiresDirective.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleRequiresDirective);
        return moduleRequiresDirective;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleExportsDirective n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModuleNames(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleExportsDirective moduleExportsDirective = new ModuleExportsDirective(n10.getTokenRange().orElse(null), name, cloneList);
        moduleExportsDirective.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleExportsDirective.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleExportsDirective);
        return moduleExportsDirective;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleProvidesDirective n10, final Object arg) {
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList = cloneList(n10.getWith(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleProvidesDirective moduleProvidesDirective = new ModuleProvidesDirective(n10.getTokenRange().orElse(null), name, cloneList);
        moduleProvidesDirective.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleProvidesDirective.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleProvidesDirective);
        return moduleProvidesDirective;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleUsesDirective n10, final Object arg) {
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleUsesDirective moduleUsesDirective = new ModuleUsesDirective(n10.getTokenRange().orElse(null), name);
        moduleUsesDirective.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleUsesDirective.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleUsesDirective);
        return moduleUsesDirective;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ModuleOpensDirective n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModuleNames(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ModuleOpensDirective moduleOpensDirective = new ModuleOpensDirective(n10.getTokenRange().orElse(null), name, cloneList);
        moduleOpensDirective.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModuleOpensDirective.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, moduleOpensDirective);
        return moduleOpensDirective;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final UnparsableStmt n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final UnparsableStmt unparsableStmt = new UnparsableStmt(n10.getTokenRange().orElse(null));
        unparsableStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UnparsableStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, unparsableStmt);
        return unparsableStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final ReceiverParameter n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getAnnotations(), arg);
        Name name = (Name) cloneNode((CloneVisitor) n10.getName(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final ReceiverParameter receiverParameter = new ReceiverParameter(n10.getTokenRange().orElse(null), cloneList, type, name);
        receiverParameter.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ReceiverParameter.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, receiverParameter);
        return receiverParameter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final VarType n10, final Object arg) {
        cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final VarType varType = new VarType(n10.getTokenRange().orElse(null));
        varType.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VarType.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, varType);
        return varType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final Modifier n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final Modifier modifier = new Modifier(n10.getTokenRange().orElse(null), n10.getKeyword());
        modifier.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Modifier.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, modifier);
        return modifier;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final SwitchExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getEntries(), arg);
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getSelector(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final SwitchExpr switchExpr = new SwitchExpr(n10.getTokenRange().orElse(null), expression, cloneList);
        switchExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SwitchExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, switchExpr);
        return switchExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final YieldStmt n10, final Object arg) {
        Expression expression = (Expression) cloneNode((CloneVisitor) n10.getExpression(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final YieldStmt yieldStmt = new YieldStmt(n10.getTokenRange().orElse(null), expression);
        yieldStmt.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                YieldStmt.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, yieldStmt);
        return yieldStmt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TextBlockLiteralExpr n10, final Object arg) {
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final TextBlockLiteralExpr textBlockLiteralExpr = new TextBlockLiteralExpr(n10.getTokenRange().orElse(null), n10.getValue());
        textBlockLiteralExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TextBlockLiteralExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, textBlockLiteralExpr);
        return textBlockLiteralExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final TypePatternExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final TypePatternExpr typePatternExpr = new TypePatternExpr(n10.getTokenRange().orElse(null), cloneList, type, simpleName);
        typePatternExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TypePatternExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, typePatternExpr);
        return typePatternExpr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final RecordDeclaration n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getImplementedTypes(), arg);
        NodeList cloneList2 = cloneList(n10.getParameters(), arg);
        ReceiverParameter receiverParameter = (ReceiverParameter) cloneNode(n10.getReceiverParameter(), arg);
        NodeList cloneList3 = cloneList(n10.getTypeParameters(), arg);
        NodeList cloneList4 = cloneList(n10.getMembers(), arg);
        NodeList cloneList5 = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList6 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final RecordDeclaration recordDeclaration = new RecordDeclaration(n10.getTokenRange().orElse(null), cloneList5, cloneList6, simpleName, cloneList2, cloneList3, cloneList, cloneList4, receiverParameter);
        recordDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RecordDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, recordDeclaration);
        return recordDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final CompactConstructorDeclaration n10, final Object arg) {
        BlockStmt blockStmt = (BlockStmt) cloneNode((CloneVisitor) n10.getBody(), arg);
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        SimpleName simpleName = (SimpleName) cloneNode((CloneVisitor) n10.getName(), arg);
        NodeList cloneList2 = cloneList(n10.getThrownExceptions(), arg);
        NodeList cloneList3 = cloneList(n10.getTypeParameters(), arg);
        NodeList cloneList4 = cloneList(n10.getAnnotations(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final CompactConstructorDeclaration compactConstructorDeclaration = new CompactConstructorDeclaration(n10.getTokenRange().orElse(null), cloneList, cloneList4, cloneList3, simpleName, cloneList2, blockStmt);
        compactConstructorDeclaration.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CompactConstructorDeclaration.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, compactConstructorDeclaration);
        return compactConstructorDeclaration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Visitable visit(final RecordPatternExpr n10, final Object arg) {
        NodeList cloneList = cloneList(n10.getModifiers(), arg);
        NodeList cloneList2 = cloneList(n10.getPatternList(), arg);
        Type type = (Type) cloneNode((CloneVisitor) n10.getType2(), arg);
        Comment comment = (Comment) cloneNode(n10.getComment(), arg);
        final RecordPatternExpr recordPatternExpr = new RecordPatternExpr(n10.getTokenRange().orElse(null), cloneList, type, cloneList2);
        recordPatternExpr.setComment(comment);
        n10.getOrphanComments().stream().map(new C3915a()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RecordPatternExpr.this.addOrphanComment((Comment) obj);
            }
        });
        copyData(n10, recordPatternExpr);
        return recordPatternExpr;
    }
}
