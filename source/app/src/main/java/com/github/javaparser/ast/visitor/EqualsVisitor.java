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
import java.util.List;
import java.util.Optional;

public class EqualsVisitor implements GenericVisitor<Boolean, Visitable> {
    private static final EqualsVisitor SINGLETON = new EqualsVisitor();

    private EqualsVisitor() {
    }

    private boolean commonNodeEquality(Node n10, Node n22) {
        if (nodeEquals(n10.getComment(), n22.getComment())) {
            return nodesEquals(n10.getOrphanComments(), n22.getOrphanComments());
        }
        return false;
    }

    public static boolean equals(final Node n10, final Node n22) {
        return SINGLETON.nodeEquals(n10, n22);
    }

    private <T extends Node> boolean nodeEquals(final T n10, final T n22) {
        if (n10 == n22) {
            return true;
        }
        if (n10 == null || n22 == null || n10.getClass() != n22.getClass() || !commonNodeEquality(n10, n22)) {
            return false;
        }
        return ((Boolean) n10.accept(this, n22)).booleanValue();
    }

    private <T extends Node> boolean nodesEquals(final List<T> nodes1, final List<T> nodes2) {
        if (nodes1 == null) {
            return nodes2 == null;
        }
        if (nodes2 == null || nodes1.size() != nodes2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < nodes1.size(); i10++) {
            if (!nodeEquals(nodes1.get(i10), nodes2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private boolean objEquals(final Object n10, final Object n22) {
        if (n10 == n22) {
            return true;
        }
        if (n10 == null || n22 == null) {
            return false;
        }
        return n10.equals(n22);
    }

    private <T extends Node> boolean nodeEquals(final Optional<T> n10, final Optional<T> n22) {
        return nodeEquals(n10.orElse(null), n22.orElse(null));
    }

    private <N extends Node> boolean nodesEquals(NodeList<N> n10, NodeList<N> n22) {
        if (n10 == n22) {
            return true;
        }
        if (n10 == null || n22 == null || n10.size() != n22.size()) {
            return false;
        }
        for (int i10 = 0; i10 < n10.size(); i10++) {
            if (!nodeEquals(n10.get(i10), n22.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private <T extends Node> boolean nodesEquals(final Optional<NodeList<T>> n10, final Optional<NodeList<T>> n22) {
        return nodesEquals((NodeList) n10.orElse(null), (NodeList) n22.orElse(null));
    }

    @Override
    public Boolean visit(final CompilationUnit n10, final Visitable arg) {
        CompilationUnit compilationUnit = (CompilationUnit) arg;
        if (nodesEquals((NodeList) n10.getImports(), (NodeList) compilationUnit.getImports()) && nodeEquals(n10.getModule(), compilationUnit.getModule()) && nodeEquals(n10.getPackageDeclaration(), compilationUnit.getPackageDeclaration()) && nodesEquals((NodeList) n10.getTypes(), (NodeList) compilationUnit.getTypes()) && nodeEquals(n10.getComment(), compilationUnit.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final PackageDeclaration n10, final Visitable arg) {
        PackageDeclaration packageDeclaration = (PackageDeclaration) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) packageDeclaration.getAnnotations()) && nodeEquals(n10.getName(), packageDeclaration.getName()) && nodeEquals(n10.getComment(), packageDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TypeParameter n10, final Visitable arg) {
        TypeParameter typeParameter = (TypeParameter) arg;
        if (nodeEquals(n10.getName(), typeParameter.getName()) && nodesEquals((NodeList) n10.getTypeBound(), (NodeList) typeParameter.getTypeBound()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) typeParameter.getAnnotations()) && nodeEquals(n10.getComment(), typeParameter.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LineComment n10, final Visitable arg) {
        LineComment lineComment = (LineComment) arg;
        if (objEquals(n10.getContent(), lineComment.getContent()) && nodeEquals(n10.getComment(), lineComment.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BlockComment n10, final Visitable arg) {
        BlockComment blockComment = (BlockComment) arg;
        if (objEquals(n10.getContent(), blockComment.getContent()) && nodeEquals(n10.getComment(), blockComment.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ClassOrInterfaceDeclaration n10, final Visitable arg) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) arg;
        if (nodesEquals((NodeList) n10.getExtendedTypes(), (NodeList) classOrInterfaceDeclaration.getExtendedTypes()) && nodesEquals((NodeList) n10.getImplementedTypes(), (NodeList) classOrInterfaceDeclaration.getImplementedTypes()) && objEquals(Boolean.valueOf(n10.isInterface()), Boolean.valueOf(classOrInterfaceDeclaration.isInterface())) && nodesEquals((NodeList) n10.getPermittedTypes(), (NodeList) classOrInterfaceDeclaration.getPermittedTypes()) && nodesEquals((NodeList) n10.getTypeParameters(), (NodeList) classOrInterfaceDeclaration.getTypeParameters()) && nodesEquals((NodeList) n10.getMembers(), (NodeList) classOrInterfaceDeclaration.getMembers()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) classOrInterfaceDeclaration.getModifiers()) && nodeEquals(n10.getName(), classOrInterfaceDeclaration.getName()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) classOrInterfaceDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), classOrInterfaceDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnumDeclaration n10, final Visitable arg) {
        EnumDeclaration enumDeclaration = (EnumDeclaration) arg;
        if (nodesEquals((NodeList) n10.getEntries(), (NodeList) enumDeclaration.getEntries()) && nodesEquals((NodeList) n10.getImplementedTypes(), (NodeList) enumDeclaration.getImplementedTypes()) && nodesEquals((NodeList) n10.getMembers(), (NodeList) enumDeclaration.getMembers()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) enumDeclaration.getModifiers()) && nodeEquals(n10.getName(), enumDeclaration.getName()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) enumDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), enumDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnumConstantDeclaration n10, final Visitable arg) {
        EnumConstantDeclaration enumConstantDeclaration = (EnumConstantDeclaration) arg;
        if (nodesEquals((NodeList) n10.getArguments(), (NodeList) enumConstantDeclaration.getArguments()) && nodesEquals((NodeList) n10.getClassBody(), (NodeList) enumConstantDeclaration.getClassBody()) && nodeEquals(n10.getName(), enumConstantDeclaration.getName()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) enumConstantDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), enumConstantDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AnnotationDeclaration n10, final Visitable arg) {
        AnnotationDeclaration annotationDeclaration = (AnnotationDeclaration) arg;
        if (nodesEquals((NodeList) n10.getMembers(), (NodeList) annotationDeclaration.getMembers()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) annotationDeclaration.getModifiers()) && nodeEquals(n10.getName(), annotationDeclaration.getName()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) annotationDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), annotationDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AnnotationMemberDeclaration n10, final Visitable arg) {
        AnnotationMemberDeclaration annotationMemberDeclaration = (AnnotationMemberDeclaration) arg;
        if (nodeEquals(n10.getDefaultValue(), annotationMemberDeclaration.getDefaultValue()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) annotationMemberDeclaration.getModifiers()) && nodeEquals(n10.getName(), annotationMemberDeclaration.getName()) && nodeEquals(n10.getType2(), annotationMemberDeclaration.getType2()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) annotationMemberDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), annotationMemberDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final FieldDeclaration n10, final Visitable arg) {
        FieldDeclaration fieldDeclaration = (FieldDeclaration) arg;
        if (nodesEquals((NodeList) n10.getModifiers(), (NodeList) fieldDeclaration.getModifiers()) && nodesEquals((NodeList) n10.getVariables(), (NodeList) fieldDeclaration.getVariables()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) fieldDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), fieldDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VariableDeclarator n10, final Visitable arg) {
        VariableDeclarator variableDeclarator = (VariableDeclarator) arg;
        if (nodeEquals(n10.getInitializer(), variableDeclarator.getInitializer()) && nodeEquals(n10.getName(), variableDeclarator.getName()) && nodeEquals(n10.getType2(), variableDeclarator.getType2()) && nodeEquals(n10.getComment(), variableDeclarator.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ConstructorDeclaration n10, final Visitable arg) {
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) arg;
        if (nodeEquals(n10.getBody(), constructorDeclaration.getBody()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) constructorDeclaration.getModifiers()) && nodeEquals(n10.getName(), constructorDeclaration.getName()) && nodesEquals((NodeList) n10.getParameters(), (NodeList) constructorDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), constructorDeclaration.getReceiverParameter()) && nodesEquals((NodeList) n10.getThrownExceptions(), (NodeList) constructorDeclaration.getThrownExceptions()) && nodesEquals((NodeList) n10.getTypeParameters(), (NodeList) constructorDeclaration.getTypeParameters()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) constructorDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), constructorDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MethodDeclaration n10, final Visitable arg) {
        MethodDeclaration methodDeclaration = (MethodDeclaration) arg;
        if (nodeEquals(n10.getBody(), methodDeclaration.getBody()) && nodeEquals(n10.getType2(), methodDeclaration.getType2()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) methodDeclaration.getModifiers()) && nodeEquals(n10.getName(), methodDeclaration.getName()) && nodesEquals((NodeList) n10.getParameters(), (NodeList) methodDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), methodDeclaration.getReceiverParameter()) && nodesEquals((NodeList) n10.getThrownExceptions(), (NodeList) methodDeclaration.getThrownExceptions()) && nodesEquals((NodeList) n10.getTypeParameters(), (NodeList) methodDeclaration.getTypeParameters()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) methodDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), methodDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final Parameter n10, final Visitable arg) {
        Parameter parameter = (Parameter) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) parameter.getAnnotations()) && objEquals(Boolean.valueOf(n10.isVarArgs()), Boolean.valueOf(parameter.isVarArgs())) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) parameter.getModifiers()) && nodeEquals(n10.getName(), parameter.getName()) && nodeEquals(n10.getType2(), parameter.getType2()) && nodesEquals((NodeList) n10.getVarArgsAnnotations(), (NodeList) parameter.getVarArgsAnnotations()) && nodeEquals(n10.getComment(), parameter.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final InitializerDeclaration n10, final Visitable arg) {
        InitializerDeclaration initializerDeclaration = (InitializerDeclaration) arg;
        if (nodeEquals(n10.getBody(), initializerDeclaration.getBody()) && objEquals(Boolean.valueOf(n10.isStatic()), Boolean.valueOf(initializerDeclaration.isStatic())) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) initializerDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), initializerDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final JavadocComment n10, final Visitable arg) {
        JavadocComment javadocComment = (JavadocComment) arg;
        if (objEquals(n10.getContent(), javadocComment.getContent()) && nodeEquals(n10.getComment(), javadocComment.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ClassOrInterfaceType n10, final Visitable arg) {
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) arg;
        if (nodeEquals(n10.getName(), classOrInterfaceType.getName()) && nodeEquals(n10.getScope(), classOrInterfaceType.getScope()) && nodesEquals(n10.getTypeArguments(), classOrInterfaceType.getTypeArguments()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) classOrInterfaceType.getAnnotations()) && nodeEquals(n10.getComment(), classOrInterfaceType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final PrimitiveType n10, final Visitable arg) {
        PrimitiveType primitiveType = (PrimitiveType) arg;
        if (objEquals(n10.getType(), primitiveType.getType()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) primitiveType.getAnnotations()) && nodeEquals(n10.getComment(), primitiveType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayType n10, final Visitable arg) {
        ArrayType arrayType = (ArrayType) arg;
        if (nodeEquals(n10.getComponentType(), arrayType.getComponentType()) && objEquals(n10.getOrigin(), arrayType.getOrigin()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) arrayType.getAnnotations()) && nodeEquals(n10.getComment(), arrayType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayCreationLevel n10, final Visitable arg) {
        ArrayCreationLevel arrayCreationLevel = (ArrayCreationLevel) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) arrayCreationLevel.getAnnotations()) && nodeEquals(n10.getDimension(), arrayCreationLevel.getDimension()) && nodeEquals(n10.getComment(), arrayCreationLevel.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final IntersectionType n10, final Visitable arg) {
        IntersectionType intersectionType = (IntersectionType) arg;
        if (nodesEquals((NodeList) n10.getElements(), (NodeList) intersectionType.getElements()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) intersectionType.getAnnotations()) && nodeEquals(n10.getComment(), intersectionType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnionType n10, final Visitable arg) {
        UnionType unionType = (UnionType) arg;
        if (nodesEquals((NodeList) n10.getElements(), (NodeList) unionType.getElements()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) unionType.getAnnotations()) && nodeEquals(n10.getComment(), unionType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VoidType n10, final Visitable arg) {
        VoidType voidType = (VoidType) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) voidType.getAnnotations()) && nodeEquals(n10.getComment(), voidType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final WildcardType n10, final Visitable arg) {
        WildcardType wildcardType = (WildcardType) arg;
        if (nodeEquals(n10.getExtendedType(), wildcardType.getExtendedType()) && nodeEquals(n10.getSuperType(), wildcardType.getSuperType()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) wildcardType.getAnnotations()) && nodeEquals(n10.getComment(), wildcardType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnknownType n10, final Visitable arg) {
        UnknownType unknownType = (UnknownType) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) unknownType.getAnnotations()) && nodeEquals(n10.getComment(), unknownType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayAccessExpr n10, final Visitable arg) {
        ArrayAccessExpr arrayAccessExpr = (ArrayAccessExpr) arg;
        if (nodeEquals(n10.getIndex(), arrayAccessExpr.getIndex()) && nodeEquals(n10.getName(), arrayAccessExpr.getName()) && nodeEquals(n10.getComment(), arrayAccessExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayCreationExpr n10, final Visitable arg) {
        ArrayCreationExpr arrayCreationExpr = (ArrayCreationExpr) arg;
        if (nodeEquals(n10.getElementType(), arrayCreationExpr.getElementType()) && nodeEquals(n10.getInitializer(), arrayCreationExpr.getInitializer()) && nodesEquals((NodeList) n10.getLevels(), (NodeList) arrayCreationExpr.getLevels()) && nodeEquals(n10.getComment(), arrayCreationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayInitializerExpr n10, final Visitable arg) {
        ArrayInitializerExpr arrayInitializerExpr = (ArrayInitializerExpr) arg;
        if (nodesEquals((NodeList) n10.getValues(), (NodeList) arrayInitializerExpr.getValues()) && nodeEquals(n10.getComment(), arrayInitializerExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AssignExpr n10, final Visitable arg) {
        AssignExpr assignExpr = (AssignExpr) arg;
        if (objEquals(n10.getOperator(), assignExpr.getOperator()) && nodeEquals(n10.getTarget(), assignExpr.getTarget()) && nodeEquals(n10.getValue(), assignExpr.getValue()) && nodeEquals(n10.getComment(), assignExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BinaryExpr n10, final Visitable arg) {
        BinaryExpr binaryExpr = (BinaryExpr) arg;
        if (nodeEquals(n10.getLeft(), binaryExpr.getLeft()) && objEquals(n10.getOperator(), binaryExpr.getOperator()) && nodeEquals(n10.getRight(), binaryExpr.getRight()) && nodeEquals(n10.getComment(), binaryExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CastExpr n10, final Visitable arg) {
        CastExpr castExpr = (CastExpr) arg;
        if (nodeEquals(n10.getExpression(), castExpr.getExpression()) && nodeEquals(n10.getType2(), castExpr.getType2()) && nodeEquals(n10.getComment(), castExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ClassExpr n10, final Visitable arg) {
        ClassExpr classExpr = (ClassExpr) arg;
        if (nodeEquals(n10.getType2(), classExpr.getType2()) && nodeEquals(n10.getComment(), classExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ConditionalExpr n10, final Visitable arg) {
        ConditionalExpr conditionalExpr = (ConditionalExpr) arg;
        if (nodeEquals(n10.getCondition(), conditionalExpr.getCondition()) && nodeEquals(n10.getElseExpr(), conditionalExpr.getElseExpr()) && nodeEquals(n10.getThenExpr(), conditionalExpr.getThenExpr()) && nodeEquals(n10.getComment(), conditionalExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnclosedExpr n10, final Visitable arg) {
        EnclosedExpr enclosedExpr = (EnclosedExpr) arg;
        if (nodeEquals(n10.getInner(), enclosedExpr.getInner()) && nodeEquals(n10.getComment(), enclosedExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final FieldAccessExpr n10, final Visitable arg) {
        FieldAccessExpr fieldAccessExpr = (FieldAccessExpr) arg;
        if (nodeEquals(n10.getName(), fieldAccessExpr.getName()) && nodeEquals(n10.getScope(), fieldAccessExpr.getScope()) && nodesEquals(n10.getTypeArguments(), fieldAccessExpr.getTypeArguments()) && nodeEquals(n10.getComment(), fieldAccessExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final InstanceOfExpr n10, final Visitable arg) {
        InstanceOfExpr instanceOfExpr = (InstanceOfExpr) arg;
        if (nodeEquals(n10.getExpression(), instanceOfExpr.getExpression()) && nodeEquals(n10.getPattern(), instanceOfExpr.getPattern()) && nodeEquals(n10.getType2(), instanceOfExpr.getType2()) && nodeEquals(n10.getComment(), instanceOfExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final StringLiteralExpr n10, final Visitable arg) {
        StringLiteralExpr stringLiteralExpr = (StringLiteralExpr) arg;
        if (objEquals(n10.getValue(), stringLiteralExpr.getValue()) && nodeEquals(n10.getComment(), stringLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final IntegerLiteralExpr n10, final Visitable arg) {
        IntegerLiteralExpr integerLiteralExpr = (IntegerLiteralExpr) arg;
        if (objEquals(n10.getValue(), integerLiteralExpr.getValue()) && nodeEquals(n10.getComment(), integerLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LongLiteralExpr n10, final Visitable arg) {
        LongLiteralExpr longLiteralExpr = (LongLiteralExpr) arg;
        if (objEquals(n10.getValue(), longLiteralExpr.getValue()) && nodeEquals(n10.getComment(), longLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CharLiteralExpr n10, final Visitable arg) {
        CharLiteralExpr charLiteralExpr = (CharLiteralExpr) arg;
        if (objEquals(n10.getValue(), charLiteralExpr.getValue()) && nodeEquals(n10.getComment(), charLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final DoubleLiteralExpr n10, final Visitable arg) {
        DoubleLiteralExpr doubleLiteralExpr = (DoubleLiteralExpr) arg;
        if (objEquals(n10.getValue(), doubleLiteralExpr.getValue()) && nodeEquals(n10.getComment(), doubleLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BooleanLiteralExpr n10, final Visitable arg) {
        BooleanLiteralExpr booleanLiteralExpr = (BooleanLiteralExpr) arg;
        if (objEquals(Boolean.valueOf(n10.isValue()), Boolean.valueOf(booleanLiteralExpr.isValue())) && nodeEquals(n10.getComment(), booleanLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final NullLiteralExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getComment(), ((NullLiteralExpr) arg).getComment()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final MethodCallExpr n10, final Visitable arg) {
        MethodCallExpr methodCallExpr = (MethodCallExpr) arg;
        if (nodesEquals((NodeList) n10.getArguments(), (NodeList) methodCallExpr.getArguments()) && nodeEquals(n10.getName(), methodCallExpr.getName()) && nodeEquals(n10.getScope(), methodCallExpr.getScope()) && nodesEquals(n10.getTypeArguments(), methodCallExpr.getTypeArguments()) && nodeEquals(n10.getComment(), methodCallExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final NameExpr n10, final Visitable arg) {
        NameExpr nameExpr = (NameExpr) arg;
        if (nodeEquals(n10.getName(), nameExpr.getName()) && nodeEquals(n10.getComment(), nameExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ObjectCreationExpr n10, final Visitable arg) {
        ObjectCreationExpr objectCreationExpr = (ObjectCreationExpr) arg;
        if (nodesEquals(n10.getAnonymousClassBody(), objectCreationExpr.getAnonymousClassBody()) && nodesEquals((NodeList) n10.getArguments(), (NodeList) objectCreationExpr.getArguments()) && nodeEquals(n10.getScope(), objectCreationExpr.getScope()) && nodeEquals(n10.getType2(), objectCreationExpr.getType2()) && nodesEquals(n10.getTypeArguments(), objectCreationExpr.getTypeArguments()) && nodeEquals(n10.getComment(), objectCreationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final Name n10, final Visitable arg) {
        Name name = (Name) arg;
        if (objEquals(n10.getIdentifier(), name.getIdentifier()) && nodeEquals(n10.getQualifier(), name.getQualifier()) && nodeEquals(n10.getComment(), name.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SimpleName n10, final Visitable arg) {
        SimpleName simpleName = (SimpleName) arg;
        if (objEquals(n10.getIdentifier(), simpleName.getIdentifier()) && nodeEquals(n10.getComment(), simpleName.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ThisExpr n10, final Visitable arg) {
        ThisExpr thisExpr = (ThisExpr) arg;
        if (nodeEquals(n10.getTypeName(), thisExpr.getTypeName()) && nodeEquals(n10.getComment(), thisExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SuperExpr n10, final Visitable arg) {
        SuperExpr superExpr = (SuperExpr) arg;
        if (nodeEquals(n10.getTypeName(), superExpr.getTypeName()) && nodeEquals(n10.getComment(), superExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnaryExpr n10, final Visitable arg) {
        UnaryExpr unaryExpr = (UnaryExpr) arg;
        if (nodeEquals(n10.getExpression(), unaryExpr.getExpression()) && objEquals(n10.getOperator(), unaryExpr.getOperator()) && nodeEquals(n10.getComment(), unaryExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VariableDeclarationExpr n10, final Visitable arg) {
        VariableDeclarationExpr variableDeclarationExpr = (VariableDeclarationExpr) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) variableDeclarationExpr.getAnnotations()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) variableDeclarationExpr.getModifiers()) && nodesEquals((NodeList) n10.getVariables(), (NodeList) variableDeclarationExpr.getVariables()) && nodeEquals(n10.getComment(), variableDeclarationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MarkerAnnotationExpr n10, final Visitable arg) {
        MarkerAnnotationExpr markerAnnotationExpr = (MarkerAnnotationExpr) arg;
        if (nodeEquals(n10.getName(), markerAnnotationExpr.getName()) && nodeEquals(n10.getComment(), markerAnnotationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SingleMemberAnnotationExpr n10, final Visitable arg) {
        SingleMemberAnnotationExpr singleMemberAnnotationExpr = (SingleMemberAnnotationExpr) arg;
        if (nodeEquals(n10.getMemberValue(), singleMemberAnnotationExpr.getMemberValue()) && nodeEquals(n10.getName(), singleMemberAnnotationExpr.getName()) && nodeEquals(n10.getComment(), singleMemberAnnotationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final NormalAnnotationExpr n10, final Visitable arg) {
        NormalAnnotationExpr normalAnnotationExpr = (NormalAnnotationExpr) arg;
        if (nodesEquals((NodeList) n10.getPairs(), (NodeList) normalAnnotationExpr.getPairs()) && nodeEquals(n10.getName(), normalAnnotationExpr.getName()) && nodeEquals(n10.getComment(), normalAnnotationExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MemberValuePair n10, final Visitable arg) {
        MemberValuePair memberValuePair = (MemberValuePair) arg;
        if (nodeEquals(n10.getName(), memberValuePair.getName()) && nodeEquals(n10.getValue(), memberValuePair.getValue()) && nodeEquals(n10.getComment(), memberValuePair.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ExplicitConstructorInvocationStmt n10, final Visitable arg) {
        ExplicitConstructorInvocationStmt explicitConstructorInvocationStmt = (ExplicitConstructorInvocationStmt) arg;
        if (nodesEquals((NodeList) n10.getArguments(), (NodeList) explicitConstructorInvocationStmt.getArguments()) && nodeEquals(n10.getExpression(), explicitConstructorInvocationStmt.getExpression()) && objEquals(Boolean.valueOf(n10.isThis()), Boolean.valueOf(explicitConstructorInvocationStmt.isThis())) && nodesEquals(n10.getTypeArguments(), explicitConstructorInvocationStmt.getTypeArguments()) && nodeEquals(n10.getComment(), explicitConstructorInvocationStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LocalClassDeclarationStmt n10, final Visitable arg) {
        LocalClassDeclarationStmt localClassDeclarationStmt = (LocalClassDeclarationStmt) arg;
        if (nodeEquals(n10.getClassDeclaration(), localClassDeclarationStmt.getClassDeclaration()) && nodeEquals(n10.getComment(), localClassDeclarationStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LocalRecordDeclarationStmt n10, final Visitable arg) {
        LocalRecordDeclarationStmt localRecordDeclarationStmt = (LocalRecordDeclarationStmt) arg;
        if (nodeEquals(n10.getRecordDeclaration(), localRecordDeclarationStmt.getRecordDeclaration()) && nodeEquals(n10.getComment(), localRecordDeclarationStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AssertStmt n10, final Visitable arg) {
        AssertStmt assertStmt = (AssertStmt) arg;
        if (nodeEquals(n10.getCheck(), assertStmt.getCheck()) && nodeEquals(n10.getMessage(), assertStmt.getMessage()) && nodeEquals(n10.getComment(), assertStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BlockStmt n10, final Visitable arg) {
        BlockStmt blockStmt = (BlockStmt) arg;
        if (nodesEquals((NodeList) n10.getStatements(), (NodeList) blockStmt.getStatements()) && nodeEquals(n10.getComment(), blockStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LabeledStmt n10, final Visitable arg) {
        LabeledStmt labeledStmt = (LabeledStmt) arg;
        if (nodeEquals(n10.getLabel(), labeledStmt.getLabel()) && nodeEquals(n10.getStatement(), labeledStmt.getStatement()) && nodeEquals(n10.getComment(), labeledStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EmptyStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getComment(), ((EmptyStmt) arg).getComment()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ExpressionStmt n10, final Visitable arg) {
        ExpressionStmt expressionStmt = (ExpressionStmt) arg;
        if (nodeEquals(n10.getExpression(), expressionStmt.getExpression()) && nodeEquals(n10.getComment(), expressionStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SwitchStmt n10, final Visitable arg) {
        SwitchStmt switchStmt = (SwitchStmt) arg;
        if (nodesEquals((NodeList) n10.getEntries(), (NodeList) switchStmt.getEntries()) && nodeEquals(n10.getSelector(), switchStmt.getSelector()) && nodeEquals(n10.getComment(), switchStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SwitchEntry n10, final Visitable arg) {
        SwitchEntry switchEntry = (SwitchEntry) arg;
        if (nodeEquals(n10.getGuard(), switchEntry.getGuard()) && objEquals(Boolean.valueOf(n10.isDefault()), Boolean.valueOf(switchEntry.isDefault())) && nodesEquals((NodeList) n10.getLabels(), (NodeList) switchEntry.getLabels()) && nodesEquals((NodeList) n10.getStatements(), (NodeList) switchEntry.getStatements()) && objEquals(n10.getType(), switchEntry.getType()) && nodeEquals(n10.getComment(), switchEntry.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BreakStmt n10, final Visitable arg) {
        BreakStmt breakStmt = (BreakStmt) arg;
        if (nodeEquals(n10.getLabel(), breakStmt.getLabel()) && nodeEquals(n10.getComment(), breakStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ReturnStmt n10, final Visitable arg) {
        ReturnStmt returnStmt = (ReturnStmt) arg;
        if (nodeEquals(n10.getExpression(), returnStmt.getExpression()) && nodeEquals(n10.getComment(), returnStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final IfStmt n10, final Visitable arg) {
        IfStmt ifStmt = (IfStmt) arg;
        if (nodeEquals(n10.getCondition(), ifStmt.getCondition()) && nodeEquals(n10.getElseStmt(), ifStmt.getElseStmt()) && nodeEquals(n10.getThenStmt(), ifStmt.getThenStmt()) && nodeEquals(n10.getComment(), ifStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final WhileStmt n10, final Visitable arg) {
        WhileStmt whileStmt = (WhileStmt) arg;
        if (nodeEquals(n10.getBody(), whileStmt.getBody()) && nodeEquals(n10.getCondition(), whileStmt.getCondition()) && nodeEquals(n10.getComment(), whileStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ContinueStmt n10, final Visitable arg) {
        ContinueStmt continueStmt = (ContinueStmt) arg;
        if (nodeEquals(n10.getLabel(), continueStmt.getLabel()) && nodeEquals(n10.getComment(), continueStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final DoStmt n10, final Visitable arg) {
        DoStmt doStmt = (DoStmt) arg;
        if (nodeEquals(n10.getBody(), doStmt.getBody()) && nodeEquals(n10.getCondition(), doStmt.getCondition()) && nodeEquals(n10.getComment(), doStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ForEachStmt n10, final Visitable arg) {
        ForEachStmt forEachStmt = (ForEachStmt) arg;
        if (nodeEquals(n10.getBody(), forEachStmt.getBody()) && nodeEquals(n10.getIterable(), forEachStmt.getIterable()) && nodeEquals(n10.getVariable(), forEachStmt.getVariable()) && nodeEquals(n10.getComment(), forEachStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ForStmt n10, final Visitable arg) {
        ForStmt forStmt = (ForStmt) arg;
        if (nodeEquals(n10.getBody(), forStmt.getBody()) && nodeEquals(n10.getCompare(), forStmt.getCompare()) && nodesEquals((NodeList) n10.getInitialization(), (NodeList) forStmt.getInitialization()) && nodesEquals((NodeList) n10.getUpdate(), (NodeList) forStmt.getUpdate()) && nodeEquals(n10.getComment(), forStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ThrowStmt n10, final Visitable arg) {
        ThrowStmt throwStmt = (ThrowStmt) arg;
        if (nodeEquals(n10.getExpression(), throwStmt.getExpression()) && nodeEquals(n10.getComment(), throwStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SynchronizedStmt n10, final Visitable arg) {
        SynchronizedStmt synchronizedStmt = (SynchronizedStmt) arg;
        if (nodeEquals(n10.getBody(), synchronizedStmt.getBody()) && nodeEquals(n10.getExpression(), synchronizedStmt.getExpression()) && nodeEquals(n10.getComment(), synchronizedStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TryStmt n10, final Visitable arg) {
        TryStmt tryStmt = (TryStmt) arg;
        if (nodesEquals((NodeList) n10.getCatchClauses(), (NodeList) tryStmt.getCatchClauses()) && nodeEquals(n10.getFinallyBlock(), tryStmt.getFinallyBlock()) && nodesEquals((NodeList) n10.getResources(), (NodeList) tryStmt.getResources()) && nodeEquals(n10.getTryBlock(), tryStmt.getTryBlock()) && nodeEquals(n10.getComment(), tryStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CatchClause n10, final Visitable arg) {
        CatchClause catchClause = (CatchClause) arg;
        if (nodeEquals(n10.getBody(), catchClause.getBody()) && nodeEquals(n10.getParameter(), catchClause.getParameter()) && nodeEquals(n10.getComment(), catchClause.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LambdaExpr n10, final Visitable arg) {
        LambdaExpr lambdaExpr = (LambdaExpr) arg;
        if (nodeEquals(n10.getBody(), lambdaExpr.getBody()) && objEquals(Boolean.valueOf(n10.isEnclosingParameters()), Boolean.valueOf(lambdaExpr.isEnclosingParameters())) && nodesEquals((NodeList) n10.getParameters(), (NodeList) lambdaExpr.getParameters()) && nodeEquals(n10.getComment(), lambdaExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MethodReferenceExpr n10, final Visitable arg) {
        MethodReferenceExpr methodReferenceExpr = (MethodReferenceExpr) arg;
        if (objEquals(n10.getIdentifier(), methodReferenceExpr.getIdentifier()) && nodeEquals(n10.getScope(), methodReferenceExpr.getScope()) && nodesEquals(n10.getTypeArguments(), methodReferenceExpr.getTypeArguments()) && nodeEquals(n10.getComment(), methodReferenceExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TypeExpr n10, final Visitable arg) {
        TypeExpr typeExpr = (TypeExpr) arg;
        if (nodeEquals(n10.getType2(), typeExpr.getType2()) && nodeEquals(n10.getComment(), typeExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit2(final ImportDeclaration n10, final Visitable arg) {
        ImportDeclaration importDeclaration = (ImportDeclaration) arg;
        if (objEquals(Boolean.valueOf(n10.isAsterisk()), Boolean.valueOf(importDeclaration.isAsterisk())) && objEquals(Boolean.valueOf(n10.isStatic()), Boolean.valueOf(importDeclaration.isStatic())) && nodeEquals(n10.getName(), importDeclaration.getName()) && nodeEquals(n10.getComment(), importDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(NodeList n10, Visitable arg) {
        return Boolean.valueOf(nodesEquals(n10, (NodeList) arg));
    }

    @Override
    public Boolean visit(final ModuleDeclaration n10, final Visitable arg) {
        ModuleDeclaration moduleDeclaration = (ModuleDeclaration) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) moduleDeclaration.getAnnotations()) && nodesEquals((NodeList) n10.getDirectives(), (NodeList) moduleDeclaration.getDirectives()) && objEquals(Boolean.valueOf(n10.isOpen()), Boolean.valueOf(moduleDeclaration.isOpen())) && nodeEquals(n10.getName(), moduleDeclaration.getName()) && nodeEquals(n10.getComment(), moduleDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleRequiresDirective n10, final Visitable arg) {
        ModuleRequiresDirective moduleRequiresDirective = (ModuleRequiresDirective) arg;
        if (nodesEquals((NodeList) n10.getModifiers(), (NodeList) moduleRequiresDirective.getModifiers()) && nodeEquals(n10.getName(), moduleRequiresDirective.getName()) && nodeEquals(n10.getComment(), moduleRequiresDirective.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleExportsDirective n10, final Visitable arg) {
        ModuleExportsDirective moduleExportsDirective = (ModuleExportsDirective) arg;
        if (nodesEquals((NodeList) n10.getModuleNames(), (NodeList) moduleExportsDirective.getModuleNames()) && nodeEquals(n10.getName(), moduleExportsDirective.getName()) && nodeEquals(n10.getComment(), moduleExportsDirective.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleProvidesDirective n10, final Visitable arg) {
        ModuleProvidesDirective moduleProvidesDirective = (ModuleProvidesDirective) arg;
        if (nodeEquals(n10.getName(), moduleProvidesDirective.getName()) && nodesEquals((NodeList) n10.getWith(), (NodeList) moduleProvidesDirective.getWith()) && nodeEquals(n10.getComment(), moduleProvidesDirective.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleUsesDirective n10, final Visitable arg) {
        ModuleUsesDirective moduleUsesDirective = (ModuleUsesDirective) arg;
        if (nodeEquals(n10.getName(), moduleUsesDirective.getName()) && nodeEquals(n10.getComment(), moduleUsesDirective.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleOpensDirective n10, final Visitable arg) {
        ModuleOpensDirective moduleOpensDirective = (ModuleOpensDirective) arg;
        if (nodesEquals((NodeList) n10.getModuleNames(), (NodeList) moduleOpensDirective.getModuleNames()) && nodeEquals(n10.getName(), moduleOpensDirective.getName()) && nodeEquals(n10.getComment(), moduleOpensDirective.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnparsableStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getComment(), ((UnparsableStmt) arg).getComment()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ReceiverParameter n10, final Visitable arg) {
        ReceiverParameter receiverParameter = (ReceiverParameter) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) receiverParameter.getAnnotations()) && nodeEquals(n10.getName(), receiverParameter.getName()) && nodeEquals(n10.getType2(), receiverParameter.getType2()) && nodeEquals(n10.getComment(), receiverParameter.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VarType n10, final Visitable arg) {
        VarType varType = (VarType) arg;
        if (nodesEquals((NodeList) n10.getAnnotations(), (NodeList) varType.getAnnotations()) && nodeEquals(n10.getComment(), varType.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final Modifier n10, final Visitable arg) {
        Modifier modifier = (Modifier) arg;
        if (objEquals(n10.getKeyword(), modifier.getKeyword()) && nodeEquals(n10.getComment(), modifier.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SwitchExpr n10, final Visitable arg) {
        SwitchExpr switchExpr = (SwitchExpr) arg;
        if (nodesEquals((NodeList) n10.getEntries(), (NodeList) switchExpr.getEntries()) && nodeEquals(n10.getSelector(), switchExpr.getSelector()) && nodeEquals(n10.getComment(), switchExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final YieldStmt n10, final Visitable arg) {
        YieldStmt yieldStmt = (YieldStmt) arg;
        if (nodeEquals(n10.getExpression(), yieldStmt.getExpression()) && nodeEquals(n10.getComment(), yieldStmt.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TextBlockLiteralExpr n10, final Visitable arg) {
        TextBlockLiteralExpr textBlockLiteralExpr = (TextBlockLiteralExpr) arg;
        if (objEquals(n10.getValue(), textBlockLiteralExpr.getValue()) && nodeEquals(n10.getComment(), textBlockLiteralExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TypePatternExpr n10, final Visitable arg) {
        TypePatternExpr typePatternExpr = (TypePatternExpr) arg;
        if (nodesEquals((NodeList) n10.getModifiers(), (NodeList) typePatternExpr.getModifiers()) && nodeEquals(n10.getName(), typePatternExpr.getName()) && nodeEquals(n10.getType2(), typePatternExpr.getType2()) && nodeEquals(n10.getComment(), typePatternExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final RecordDeclaration n10, final Visitable arg) {
        RecordDeclaration recordDeclaration = (RecordDeclaration) arg;
        if (nodesEquals((NodeList) n10.getImplementedTypes(), (NodeList) recordDeclaration.getImplementedTypes()) && nodesEquals((NodeList) n10.getParameters(), (NodeList) recordDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), recordDeclaration.getReceiverParameter()) && nodesEquals((NodeList) n10.getTypeParameters(), (NodeList) recordDeclaration.getTypeParameters()) && nodesEquals((NodeList) n10.getMembers(), (NodeList) recordDeclaration.getMembers()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) recordDeclaration.getModifiers()) && nodeEquals(n10.getName(), recordDeclaration.getName()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) recordDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), recordDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CompactConstructorDeclaration n10, final Visitable arg) {
        CompactConstructorDeclaration compactConstructorDeclaration = (CompactConstructorDeclaration) arg;
        if (nodeEquals(n10.getBody(), compactConstructorDeclaration.getBody()) && nodesEquals((NodeList) n10.getModifiers(), (NodeList) compactConstructorDeclaration.getModifiers()) && nodeEquals(n10.getName(), compactConstructorDeclaration.getName()) && nodesEquals((NodeList) n10.getThrownExceptions(), (NodeList) compactConstructorDeclaration.getThrownExceptions()) && nodesEquals((NodeList) n10.getTypeParameters(), (NodeList) compactConstructorDeclaration.getTypeParameters()) && nodesEquals((NodeList) n10.getAnnotations(), (NodeList) compactConstructorDeclaration.getAnnotations()) && nodeEquals(n10.getComment(), compactConstructorDeclaration.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final RecordPatternExpr n10, final Visitable arg) {
        RecordPatternExpr recordPatternExpr = (RecordPatternExpr) arg;
        if (nodesEquals((NodeList) n10.getModifiers(), (NodeList) recordPatternExpr.getModifiers()) && nodesEquals((NodeList) n10.getPatternList(), (NodeList) recordPatternExpr.getPatternList()) && nodeEquals(n10.getType2(), recordPatternExpr.getType2()) && nodeEquals(n10.getComment(), recordPatternExpr.getComment())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
