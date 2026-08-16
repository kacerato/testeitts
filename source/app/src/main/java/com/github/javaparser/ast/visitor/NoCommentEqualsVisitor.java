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
import java.util.Optional;

public class NoCommentEqualsVisitor implements GenericVisitor<Boolean, Visitable> {
    private static final NoCommentEqualsVisitor SINGLETON = new NoCommentEqualsVisitor();

    public static boolean equals(final Node n10, final Node n22) {
        return SINGLETON.nodeEquals(n10, n22);
    }

    private <T extends Node> boolean nodeEquals(final T n10, final T n22) {
        if (n10 == n22) {
            return true;
        }
        if (n10 == null || n22 == null || n10.getClass() != n22.getClass()) {
            return false;
        }
        return ((Boolean) n10.accept(this, n22)).booleanValue();
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

    private <T extends Node> boolean nodesEquals(final Optional<NodeList<T>> n10, final Optional<NodeList<T>> n22) {
        return nodesEquals(n10.orElse(null), n22.orElse(null));
    }

    @Override
    public Boolean visit(final CompilationUnit n10, final Visitable arg) {
        CompilationUnit compilationUnit = (CompilationUnit) arg;
        if (nodesEquals(n10.getImports(), compilationUnit.getImports()) && nodeEquals(n10.getModule(), compilationUnit.getModule()) && nodeEquals(n10.getPackageDeclaration(), compilationUnit.getPackageDeclaration()) && nodesEquals(n10.getTypes(), compilationUnit.getTypes())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final PackageDeclaration n10, final Visitable arg) {
        PackageDeclaration packageDeclaration = (PackageDeclaration) arg;
        if (nodesEquals(n10.getAnnotations(), packageDeclaration.getAnnotations()) && nodeEquals(n10.getName(), packageDeclaration.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TypeParameter n10, final Visitable arg) {
        TypeParameter typeParameter = (TypeParameter) arg;
        if (nodeEquals(n10.getName(), typeParameter.getName()) && nodesEquals(n10.getTypeBound(), typeParameter.getTypeBound()) && nodesEquals(n10.getAnnotations(), typeParameter.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LineComment n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final BlockComment n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ClassOrInterfaceDeclaration n10, final Visitable arg) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) arg;
        if (nodesEquals(n10.getExtendedTypes(), classOrInterfaceDeclaration.getExtendedTypes()) && nodesEquals(n10.getImplementedTypes(), classOrInterfaceDeclaration.getImplementedTypes()) && objEquals(Boolean.valueOf(n10.isInterface()), Boolean.valueOf(classOrInterfaceDeclaration.isInterface())) && nodesEquals(n10.getPermittedTypes(), classOrInterfaceDeclaration.getPermittedTypes()) && nodesEquals(n10.getTypeParameters(), classOrInterfaceDeclaration.getTypeParameters()) && nodesEquals(n10.getMembers(), classOrInterfaceDeclaration.getMembers()) && nodesEquals(n10.getModifiers(), classOrInterfaceDeclaration.getModifiers()) && nodeEquals(n10.getName(), classOrInterfaceDeclaration.getName()) && nodesEquals(n10.getAnnotations(), classOrInterfaceDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnumDeclaration n10, final Visitable arg) {
        EnumDeclaration enumDeclaration = (EnumDeclaration) arg;
        if (nodesEquals(n10.getEntries(), enumDeclaration.getEntries()) && nodesEquals(n10.getImplementedTypes(), enumDeclaration.getImplementedTypes()) && nodesEquals(n10.getMembers(), enumDeclaration.getMembers()) && nodesEquals(n10.getModifiers(), enumDeclaration.getModifiers()) && nodeEquals(n10.getName(), enumDeclaration.getName()) && nodesEquals(n10.getAnnotations(), enumDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnumConstantDeclaration n10, final Visitable arg) {
        EnumConstantDeclaration enumConstantDeclaration = (EnumConstantDeclaration) arg;
        if (nodesEquals(n10.getArguments(), enumConstantDeclaration.getArguments()) && nodesEquals(n10.getClassBody(), enumConstantDeclaration.getClassBody()) && nodeEquals(n10.getName(), enumConstantDeclaration.getName()) && nodesEquals(n10.getAnnotations(), enumConstantDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AnnotationDeclaration n10, final Visitable arg) {
        AnnotationDeclaration annotationDeclaration = (AnnotationDeclaration) arg;
        if (nodesEquals(n10.getMembers(), annotationDeclaration.getMembers()) && nodesEquals(n10.getModifiers(), annotationDeclaration.getModifiers()) && nodeEquals(n10.getName(), annotationDeclaration.getName()) && nodesEquals(n10.getAnnotations(), annotationDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final AnnotationMemberDeclaration n10, final Visitable arg) {
        AnnotationMemberDeclaration annotationMemberDeclaration = (AnnotationMemberDeclaration) arg;
        if (nodeEquals(n10.getDefaultValue(), annotationMemberDeclaration.getDefaultValue()) && nodesEquals(n10.getModifiers(), annotationMemberDeclaration.getModifiers()) && nodeEquals(n10.getName(), annotationMemberDeclaration.getName()) && nodeEquals(n10.getType2(), annotationMemberDeclaration.getType2()) && nodesEquals(n10.getAnnotations(), annotationMemberDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final FieldDeclaration n10, final Visitable arg) {
        FieldDeclaration fieldDeclaration = (FieldDeclaration) arg;
        if (nodesEquals(n10.getModifiers(), fieldDeclaration.getModifiers()) && nodesEquals(n10.getVariables(), fieldDeclaration.getVariables()) && nodesEquals(n10.getAnnotations(), fieldDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VariableDeclarator n10, final Visitable arg) {
        VariableDeclarator variableDeclarator = (VariableDeclarator) arg;
        if (nodeEquals(n10.getInitializer(), variableDeclarator.getInitializer()) && nodeEquals(n10.getName(), variableDeclarator.getName()) && nodeEquals(n10.getType2(), variableDeclarator.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ConstructorDeclaration n10, final Visitable arg) {
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) arg;
        if (nodeEquals(n10.getBody(), constructorDeclaration.getBody()) && nodesEquals(n10.getModifiers(), constructorDeclaration.getModifiers()) && nodeEquals(n10.getName(), constructorDeclaration.getName()) && nodesEquals(n10.getParameters(), constructorDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), constructorDeclaration.getReceiverParameter()) && nodesEquals(n10.getThrownExceptions(), constructorDeclaration.getThrownExceptions()) && nodesEquals(n10.getTypeParameters(), constructorDeclaration.getTypeParameters()) && nodesEquals(n10.getAnnotations(), constructorDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MethodDeclaration n10, final Visitable arg) {
        MethodDeclaration methodDeclaration = (MethodDeclaration) arg;
        if (nodeEquals(n10.getBody(), methodDeclaration.getBody()) && nodeEquals(n10.getType2(), methodDeclaration.getType2()) && nodesEquals(n10.getModifiers(), methodDeclaration.getModifiers()) && nodeEquals(n10.getName(), methodDeclaration.getName()) && nodesEquals(n10.getParameters(), methodDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), methodDeclaration.getReceiverParameter()) && nodesEquals(n10.getThrownExceptions(), methodDeclaration.getThrownExceptions()) && nodesEquals(n10.getTypeParameters(), methodDeclaration.getTypeParameters()) && nodesEquals(n10.getAnnotations(), methodDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final Parameter n10, final Visitable arg) {
        Parameter parameter = (Parameter) arg;
        if (nodesEquals(n10.getAnnotations(), parameter.getAnnotations()) && objEquals(Boolean.valueOf(n10.isVarArgs()), Boolean.valueOf(parameter.isVarArgs())) && nodesEquals(n10.getModifiers(), parameter.getModifiers()) && nodeEquals(n10.getName(), parameter.getName()) && nodeEquals(n10.getType2(), parameter.getType2()) && nodesEquals(n10.getVarArgsAnnotations(), parameter.getVarArgsAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final InitializerDeclaration n10, final Visitable arg) {
        InitializerDeclaration initializerDeclaration = (InitializerDeclaration) arg;
        if (nodeEquals(n10.getBody(), initializerDeclaration.getBody()) && objEquals(Boolean.valueOf(n10.isStatic()), Boolean.valueOf(initializerDeclaration.isStatic())) && nodesEquals(n10.getAnnotations(), initializerDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final JavadocComment n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ClassOrInterfaceType n10, final Visitable arg) {
        ClassOrInterfaceType classOrInterfaceType = (ClassOrInterfaceType) arg;
        if (nodeEquals(n10.getName(), classOrInterfaceType.getName()) && nodeEquals(n10.getScope(), classOrInterfaceType.getScope()) && nodesEquals(n10.getTypeArguments(), classOrInterfaceType.getTypeArguments()) && nodesEquals(n10.getAnnotations(), classOrInterfaceType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final PrimitiveType n10, final Visitable arg) {
        PrimitiveType primitiveType = (PrimitiveType) arg;
        if (objEquals(n10.getType(), primitiveType.getType()) && nodesEquals(n10.getAnnotations(), primitiveType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayType n10, final Visitable arg) {
        ArrayType arrayType = (ArrayType) arg;
        if (nodeEquals(n10.getComponentType(), arrayType.getComponentType()) && objEquals(n10.getOrigin(), arrayType.getOrigin()) && nodesEquals(n10.getAnnotations(), arrayType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayCreationLevel n10, final Visitable arg) {
        ArrayCreationLevel arrayCreationLevel = (ArrayCreationLevel) arg;
        if (nodesEquals(n10.getAnnotations(), arrayCreationLevel.getAnnotations()) && nodeEquals(n10.getDimension(), arrayCreationLevel.getDimension())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final IntersectionType n10, final Visitable arg) {
        IntersectionType intersectionType = (IntersectionType) arg;
        if (nodesEquals(n10.getElements(), intersectionType.getElements()) && nodesEquals(n10.getAnnotations(), intersectionType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnionType n10, final Visitable arg) {
        UnionType unionType = (UnionType) arg;
        if (nodesEquals(n10.getElements(), unionType.getElements()) && nodesEquals(n10.getAnnotations(), unionType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VoidType n10, final Visitable arg) {
        return !nodesEquals(n10.getAnnotations(), ((VoidType) arg).getAnnotations()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final WildcardType n10, final Visitable arg) {
        WildcardType wildcardType = (WildcardType) arg;
        if (nodeEquals(n10.getExtendedType(), wildcardType.getExtendedType()) && nodeEquals(n10.getSuperType(), wildcardType.getSuperType()) && nodesEquals(n10.getAnnotations(), wildcardType.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnknownType n10, final Visitable arg) {
        return !nodesEquals(n10.getAnnotations(), ((UnknownType) arg).getAnnotations()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ArrayAccessExpr n10, final Visitable arg) {
        ArrayAccessExpr arrayAccessExpr = (ArrayAccessExpr) arg;
        if (nodeEquals(n10.getIndex(), arrayAccessExpr.getIndex()) && nodeEquals(n10.getName(), arrayAccessExpr.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayCreationExpr n10, final Visitable arg) {
        ArrayCreationExpr arrayCreationExpr = (ArrayCreationExpr) arg;
        if (nodeEquals(n10.getElementType(), arrayCreationExpr.getElementType()) && nodeEquals(n10.getInitializer(), arrayCreationExpr.getInitializer()) && nodesEquals(n10.getLevels(), arrayCreationExpr.getLevels())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ArrayInitializerExpr n10, final Visitable arg) {
        return !nodesEquals(n10.getValues(), ((ArrayInitializerExpr) arg).getValues()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final AssignExpr n10, final Visitable arg) {
        AssignExpr assignExpr = (AssignExpr) arg;
        if (objEquals(n10.getOperator(), assignExpr.getOperator()) && nodeEquals(n10.getTarget(), assignExpr.getTarget()) && nodeEquals(n10.getValue(), assignExpr.getValue())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BinaryExpr n10, final Visitable arg) {
        BinaryExpr binaryExpr = (BinaryExpr) arg;
        if (nodeEquals(n10.getLeft(), binaryExpr.getLeft()) && objEquals(n10.getOperator(), binaryExpr.getOperator()) && nodeEquals(n10.getRight(), binaryExpr.getRight())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CastExpr n10, final Visitable arg) {
        CastExpr castExpr = (CastExpr) arg;
        if (nodeEquals(n10.getExpression(), castExpr.getExpression()) && nodeEquals(n10.getType2(), castExpr.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ClassExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getType2(), ((ClassExpr) arg).getType2()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ConditionalExpr n10, final Visitable arg) {
        ConditionalExpr conditionalExpr = (ConditionalExpr) arg;
        if (nodeEquals(n10.getCondition(), conditionalExpr.getCondition()) && nodeEquals(n10.getElseExpr(), conditionalExpr.getElseExpr()) && nodeEquals(n10.getThenExpr(), conditionalExpr.getThenExpr())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EnclosedExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getInner(), ((EnclosedExpr) arg).getInner()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final FieldAccessExpr n10, final Visitable arg) {
        FieldAccessExpr fieldAccessExpr = (FieldAccessExpr) arg;
        if (nodeEquals(n10.getName(), fieldAccessExpr.getName()) && nodeEquals(n10.getScope(), fieldAccessExpr.getScope()) && nodesEquals(n10.getTypeArguments(), fieldAccessExpr.getTypeArguments())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final InstanceOfExpr n10, final Visitable arg) {
        InstanceOfExpr instanceOfExpr = (InstanceOfExpr) arg;
        if (nodeEquals(n10.getExpression(), instanceOfExpr.getExpression()) && nodeEquals(n10.getPattern(), instanceOfExpr.getPattern()) && nodeEquals(n10.getType2(), instanceOfExpr.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final StringLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((StringLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final IntegerLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((IntegerLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final LongLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((LongLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final CharLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((CharLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final DoubleLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((DoubleLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final BooleanLiteralExpr n10, final Visitable arg) {
        return !objEquals(Boolean.valueOf(n10.isValue()), Boolean.valueOf(((BooleanLiteralExpr) arg).isValue())) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final NullLiteralExpr n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final MethodCallExpr n10, final Visitable arg) {
        MethodCallExpr methodCallExpr = (MethodCallExpr) arg;
        if (nodesEquals(n10.getArguments(), methodCallExpr.getArguments()) && nodeEquals(n10.getName(), methodCallExpr.getName()) && nodeEquals(n10.getScope(), methodCallExpr.getScope()) && nodesEquals(n10.getTypeArguments(), methodCallExpr.getTypeArguments())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final NameExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getName(), ((NameExpr) arg).getName()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ObjectCreationExpr n10, final Visitable arg) {
        ObjectCreationExpr objectCreationExpr = (ObjectCreationExpr) arg;
        if (nodesEquals(n10.getAnonymousClassBody(), objectCreationExpr.getAnonymousClassBody()) && nodesEquals(n10.getArguments(), objectCreationExpr.getArguments()) && nodeEquals(n10.getScope(), objectCreationExpr.getScope()) && nodeEquals(n10.getType2(), objectCreationExpr.getType2()) && nodesEquals(n10.getTypeArguments(), objectCreationExpr.getTypeArguments())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final Name n10, final Visitable arg) {
        Name name = (Name) arg;
        if (objEquals(n10.getIdentifier(), name.getIdentifier()) && nodeEquals(n10.getQualifier(), name.getQualifier())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SimpleName n10, final Visitable arg) {
        return !objEquals(n10.getIdentifier(), ((SimpleName) arg).getIdentifier()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ThisExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getTypeName(), ((ThisExpr) arg).getTypeName()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final SuperExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getTypeName(), ((SuperExpr) arg).getTypeName()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final UnaryExpr n10, final Visitable arg) {
        UnaryExpr unaryExpr = (UnaryExpr) arg;
        if (nodeEquals(n10.getExpression(), unaryExpr.getExpression()) && objEquals(n10.getOperator(), unaryExpr.getOperator())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VariableDeclarationExpr n10, final Visitable arg) {
        VariableDeclarationExpr variableDeclarationExpr = (VariableDeclarationExpr) arg;
        if (nodesEquals(n10.getAnnotations(), variableDeclarationExpr.getAnnotations()) && nodesEquals(n10.getModifiers(), variableDeclarationExpr.getModifiers()) && nodesEquals(n10.getVariables(), variableDeclarationExpr.getVariables())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MarkerAnnotationExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getName(), ((MarkerAnnotationExpr) arg).getName()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final SingleMemberAnnotationExpr n10, final Visitable arg) {
        SingleMemberAnnotationExpr singleMemberAnnotationExpr = (SingleMemberAnnotationExpr) arg;
        if (nodeEquals(n10.getMemberValue(), singleMemberAnnotationExpr.getMemberValue()) && nodeEquals(n10.getName(), singleMemberAnnotationExpr.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final NormalAnnotationExpr n10, final Visitable arg) {
        NormalAnnotationExpr normalAnnotationExpr = (NormalAnnotationExpr) arg;
        if (nodesEquals(n10.getPairs(), normalAnnotationExpr.getPairs()) && nodeEquals(n10.getName(), normalAnnotationExpr.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MemberValuePair n10, final Visitable arg) {
        MemberValuePair memberValuePair = (MemberValuePair) arg;
        if (nodeEquals(n10.getName(), memberValuePair.getName()) && nodeEquals(n10.getValue(), memberValuePair.getValue())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ExplicitConstructorInvocationStmt n10, final Visitable arg) {
        ExplicitConstructorInvocationStmt explicitConstructorInvocationStmt = (ExplicitConstructorInvocationStmt) arg;
        if (nodesEquals(n10.getArguments(), explicitConstructorInvocationStmt.getArguments()) && nodeEquals(n10.getExpression(), explicitConstructorInvocationStmt.getExpression()) && objEquals(Boolean.valueOf(n10.isThis()), Boolean.valueOf(explicitConstructorInvocationStmt.isThis())) && nodesEquals(n10.getTypeArguments(), explicitConstructorInvocationStmt.getTypeArguments())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LocalClassDeclarationStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getClassDeclaration(), ((LocalClassDeclarationStmt) arg).getClassDeclaration()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final LocalRecordDeclarationStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getRecordDeclaration(), ((LocalRecordDeclarationStmt) arg).getRecordDeclaration()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final AssertStmt n10, final Visitable arg) {
        AssertStmt assertStmt = (AssertStmt) arg;
        if (nodeEquals(n10.getCheck(), assertStmt.getCheck()) && nodeEquals(n10.getMessage(), assertStmt.getMessage())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BlockStmt n10, final Visitable arg) {
        return !nodesEquals(n10.getStatements(), ((BlockStmt) arg).getStatements()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final LabeledStmt n10, final Visitable arg) {
        LabeledStmt labeledStmt = (LabeledStmt) arg;
        if (nodeEquals(n10.getLabel(), labeledStmt.getLabel()) && nodeEquals(n10.getStatement(), labeledStmt.getStatement())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final EmptyStmt n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ExpressionStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getExpression(), ((ExpressionStmt) arg).getExpression()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final SwitchStmt n10, final Visitable arg) {
        SwitchStmt switchStmt = (SwitchStmt) arg;
        if (nodesEquals(n10.getEntries(), switchStmt.getEntries()) && nodeEquals(n10.getSelector(), switchStmt.getSelector())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final SwitchEntry n10, final Visitable arg) {
        SwitchEntry switchEntry = (SwitchEntry) arg;
        if (nodeEquals(n10.getGuard(), switchEntry.getGuard()) && objEquals(Boolean.valueOf(n10.isDefault()), Boolean.valueOf(switchEntry.isDefault())) && nodesEquals(n10.getLabels(), switchEntry.getLabels()) && nodesEquals(n10.getStatements(), switchEntry.getStatements()) && objEquals(n10.getType(), switchEntry.getType())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final BreakStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getLabel(), ((BreakStmt) arg).getLabel()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ReturnStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getExpression(), ((ReturnStmt) arg).getExpression()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final IfStmt n10, final Visitable arg) {
        IfStmt ifStmt = (IfStmt) arg;
        if (nodeEquals(n10.getCondition(), ifStmt.getCondition()) && nodeEquals(n10.getElseStmt(), ifStmt.getElseStmt()) && nodeEquals(n10.getThenStmt(), ifStmt.getThenStmt())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final WhileStmt n10, final Visitable arg) {
        WhileStmt whileStmt = (WhileStmt) arg;
        if (nodeEquals(n10.getBody(), whileStmt.getBody()) && nodeEquals(n10.getCondition(), whileStmt.getCondition())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ContinueStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getLabel(), ((ContinueStmt) arg).getLabel()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final DoStmt n10, final Visitable arg) {
        DoStmt doStmt = (DoStmt) arg;
        if (nodeEquals(n10.getBody(), doStmt.getBody()) && nodeEquals(n10.getCondition(), doStmt.getCondition())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ForEachStmt n10, final Visitable arg) {
        ForEachStmt forEachStmt = (ForEachStmt) arg;
        if (nodeEquals(n10.getBody(), forEachStmt.getBody()) && nodeEquals(n10.getIterable(), forEachStmt.getIterable()) && nodeEquals(n10.getVariable(), forEachStmt.getVariable())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ForStmt n10, final Visitable arg) {
        ForStmt forStmt = (ForStmt) arg;
        if (nodeEquals(n10.getBody(), forStmt.getBody()) && nodeEquals(n10.getCompare(), forStmt.getCompare()) && nodesEquals(n10.getInitialization(), forStmt.getInitialization()) && nodesEquals(n10.getUpdate(), forStmt.getUpdate())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ThrowStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getExpression(), ((ThrowStmt) arg).getExpression()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final SynchronizedStmt n10, final Visitable arg) {
        SynchronizedStmt synchronizedStmt = (SynchronizedStmt) arg;
        if (nodeEquals(n10.getBody(), synchronizedStmt.getBody()) && nodeEquals(n10.getExpression(), synchronizedStmt.getExpression())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TryStmt n10, final Visitable arg) {
        TryStmt tryStmt = (TryStmt) arg;
        if (nodesEquals(n10.getCatchClauses(), tryStmt.getCatchClauses()) && nodeEquals(n10.getFinallyBlock(), tryStmt.getFinallyBlock()) && nodesEquals(n10.getResources(), tryStmt.getResources()) && nodeEquals(n10.getTryBlock(), tryStmt.getTryBlock())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CatchClause n10, final Visitable arg) {
        CatchClause catchClause = (CatchClause) arg;
        if (nodeEquals(n10.getBody(), catchClause.getBody()) && nodeEquals(n10.getParameter(), catchClause.getParameter())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final LambdaExpr n10, final Visitable arg) {
        LambdaExpr lambdaExpr = (LambdaExpr) arg;
        if (nodeEquals(n10.getBody(), lambdaExpr.getBody()) && objEquals(Boolean.valueOf(n10.isEnclosingParameters()), Boolean.valueOf(lambdaExpr.isEnclosingParameters())) && nodesEquals(n10.getParameters(), lambdaExpr.getParameters())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final MethodReferenceExpr n10, final Visitable arg) {
        MethodReferenceExpr methodReferenceExpr = (MethodReferenceExpr) arg;
        if (objEquals(n10.getIdentifier(), methodReferenceExpr.getIdentifier()) && nodeEquals(n10.getScope(), methodReferenceExpr.getScope()) && nodesEquals(n10.getTypeArguments(), methodReferenceExpr.getTypeArguments())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final TypeExpr n10, final Visitable arg) {
        return !nodeEquals(n10.getType2(), ((TypeExpr) arg).getType2()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit2(final ImportDeclaration n10, final Visitable arg) {
        ImportDeclaration importDeclaration = (ImportDeclaration) arg;
        if (objEquals(Boolean.valueOf(n10.isAsterisk()), Boolean.valueOf(importDeclaration.isAsterisk())) && objEquals(Boolean.valueOf(n10.isStatic()), Boolean.valueOf(importDeclaration.isStatic())) && nodeEquals(n10.getName(), importDeclaration.getName())) {
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
        if (nodesEquals(n10.getAnnotations(), moduleDeclaration.getAnnotations()) && nodesEquals(n10.getDirectives(), moduleDeclaration.getDirectives()) && objEquals(Boolean.valueOf(n10.isOpen()), Boolean.valueOf(moduleDeclaration.isOpen())) && nodeEquals(n10.getName(), moduleDeclaration.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleRequiresDirective n10, final Visitable arg) {
        ModuleRequiresDirective moduleRequiresDirective = (ModuleRequiresDirective) arg;
        if (nodesEquals(n10.getModifiers(), moduleRequiresDirective.getModifiers()) && nodeEquals(n10.getName(), moduleRequiresDirective.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleExportsDirective n10, final Visitable arg) {
        ModuleExportsDirective moduleExportsDirective = (ModuleExportsDirective) arg;
        if (nodesEquals(n10.getModuleNames(), moduleExportsDirective.getModuleNames()) && nodeEquals(n10.getName(), moduleExportsDirective.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleProvidesDirective n10, final Visitable arg) {
        ModuleProvidesDirective moduleProvidesDirective = (ModuleProvidesDirective) arg;
        if (nodeEquals(n10.getName(), moduleProvidesDirective.getName()) && nodesEquals(n10.getWith(), moduleProvidesDirective.getWith())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final ModuleUsesDirective n10, final Visitable arg) {
        return !nodeEquals(n10.getName(), ((ModuleUsesDirective) arg).getName()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ModuleOpensDirective n10, final Visitable arg) {
        ModuleOpensDirective moduleOpensDirective = (ModuleOpensDirective) arg;
        if (nodesEquals(n10.getModuleNames(), moduleOpensDirective.getModuleNames()) && nodeEquals(n10.getName(), moduleOpensDirective.getName())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final UnparsableStmt n10, final Visitable arg) {
        return Boolean.TRUE;
    }

    @Override
    public Boolean visit(final ReceiverParameter n10, final Visitable arg) {
        ReceiverParameter receiverParameter = (ReceiverParameter) arg;
        if (nodesEquals(n10.getAnnotations(), receiverParameter.getAnnotations()) && nodeEquals(n10.getName(), receiverParameter.getName()) && nodeEquals(n10.getType2(), receiverParameter.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final VarType n10, final Visitable arg) {
        return !nodesEquals(n10.getAnnotations(), ((VarType) arg).getAnnotations()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final Modifier n10, final Visitable arg) {
        return !objEquals(n10.getKeyword(), ((Modifier) arg).getKeyword()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final SwitchExpr n10, final Visitable arg) {
        SwitchExpr switchExpr = (SwitchExpr) arg;
        if (nodesEquals(n10.getEntries(), switchExpr.getEntries()) && nodeEquals(n10.getSelector(), switchExpr.getSelector())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final YieldStmt n10, final Visitable arg) {
        return !nodeEquals(n10.getExpression(), ((YieldStmt) arg).getExpression()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final TextBlockLiteralExpr n10, final Visitable arg) {
        return !objEquals(n10.getValue(), ((TextBlockLiteralExpr) arg).getValue()) ? Boolean.FALSE : Boolean.TRUE;
    }

    @Override
    public Boolean visit(final TypePatternExpr n10, final Visitable arg) {
        TypePatternExpr typePatternExpr = (TypePatternExpr) arg;
        if (nodesEquals(n10.getModifiers(), typePatternExpr.getModifiers()) && nodeEquals(n10.getName(), typePatternExpr.getName()) && nodeEquals(n10.getType2(), typePatternExpr.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final RecordDeclaration n10, final Visitable arg) {
        RecordDeclaration recordDeclaration = (RecordDeclaration) arg;
        if (nodesEquals(n10.getImplementedTypes(), recordDeclaration.getImplementedTypes()) && nodesEquals(n10.getParameters(), recordDeclaration.getParameters()) && nodeEquals(n10.getReceiverParameter(), recordDeclaration.getReceiverParameter()) && nodesEquals(n10.getTypeParameters(), recordDeclaration.getTypeParameters()) && nodesEquals(n10.getMembers(), recordDeclaration.getMembers()) && nodesEquals(n10.getModifiers(), recordDeclaration.getModifiers()) && nodeEquals(n10.getName(), recordDeclaration.getName()) && nodesEquals(n10.getAnnotations(), recordDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final CompactConstructorDeclaration n10, final Visitable arg) {
        CompactConstructorDeclaration compactConstructorDeclaration = (CompactConstructorDeclaration) arg;
        if (nodeEquals(n10.getBody(), compactConstructorDeclaration.getBody()) && nodesEquals(n10.getModifiers(), compactConstructorDeclaration.getModifiers()) && nodeEquals(n10.getName(), compactConstructorDeclaration.getName()) && nodesEquals(n10.getThrownExceptions(), compactConstructorDeclaration.getThrownExceptions()) && nodesEquals(n10.getTypeParameters(), compactConstructorDeclaration.getTypeParameters()) && nodesEquals(n10.getAnnotations(), compactConstructorDeclaration.getAnnotations())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public Boolean visit(final RecordPatternExpr n10, final Visitable arg) {
        RecordPatternExpr recordPatternExpr = (RecordPatternExpr) arg;
        if (nodesEquals(n10.getModifiers(), recordPatternExpr.getModifiers()) && nodesEquals(n10.getPatternList(), recordPatternExpr.getPatternList()) && nodeEquals(n10.getType2(), recordPatternExpr.getType2())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
