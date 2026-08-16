package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.observer.AstObserverAdapter;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.VariableDeclaratorMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.LinkedList;
import java.util.Optional;

public class VariableDeclarator extends Node implements NodeWithType<VariableDeclarator, Type>, NodeWithSimpleName<VariableDeclarator>, Resolvable<ResolvedValueDeclaration> {

    @NonEmptyProperty
    @OptionalProperty
    private Expression initializer;
    private SimpleName name;
    private Type type;

    public VariableDeclarator() {
        this(null, new ClassOrInterfaceType(), new SimpleName(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (VariableDeclarator) arg);
    }

    @Override
    public void customInitialization() {
        register(new AstObserverAdapter() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void propertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
                if (property == ObservableProperty.TYPE) {
                    VariableDeclarator variableDeclarator = VariableDeclarator.this;
                    if (variableDeclarator.getParentNode().isPresent() && (variableDeclarator.getParentNode().get() instanceof NodeWithVariables)) {
                        NodeWithVariables nodeWithVariables = (NodeWithVariables) variableDeclarator.getParentNode().get();
                        Optional<Type> maximumCommonType = nodeWithVariables.getMaximumCommonType();
                        LinkedList linkedList = new LinkedList();
                        int indexOf = nodeWithVariables.getVariables().indexOf(variableDeclarator);
                        for (int i10 = 0; i10 < nodeWithVariables.getVariables().size(); i10++) {
                            if (i10 == indexOf) {
                                linkedList.add((Type) newValue);
                            } else {
                                linkedList.add(nodeWithVariables.getVariable(i10).getType2());
                            }
                        }
                        ((Node) nodeWithVariables).notifyPropertyChange(ObservableProperty.MAXIMUM_COMMON_TYPE, maximumCommonType.orElse(null), NodeWithVariables.calculateMaximumCommonType(linkedList).orElse(null));
                    }
                }
            }
        });
    }

    public Optional<Expression> getInitializer() {
        return Optional.ofNullable(this.initializer);
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.initializer;
        if (expression == null || node != expression) {
            return super.remove(node);
        }
        removeInitializer();
        return true;
    }

    public VariableDeclarator removeInitializer() {
        return setInitializer((Expression) null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Expression expression = this.initializer;
        if (expression != null && node == expression) {
            setInitializer((Expression) replacementNode);
            return true;
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    public VariableDeclarator setInitializer(final Expression initializer) {
        Expression expression = this.initializer;
        if (initializer == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INITIALIZER, expression, initializer);
        Expression expression2 = this.initializer;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.initializer = initializer;
        setAsParentNodeOf(initializer);
        return this;
    }

    public VariableDeclarator(Type type, String variableName) {
        this(null, type, new SimpleName(variableName), null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (VariableDeclarator) arg);
    }

    @Override
    public VariableDeclaratorMetaModel getMetaModel() {
        return JavaParserMetaModel.variableDeclaratorMetaModel;
    }

    @Override
    public ResolvedValueDeclaration resolve() {
        return (ResolvedValueDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedValueDeclaration.class);
    }

    @Override
    public VariableDeclarator setName(final SimpleName name) {
        Utils.assertNotNull(name);
        SimpleName simpleName = this.name;
        if (name == simpleName) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, simpleName, name);
        SimpleName simpleName2 = this.name;
        if (simpleName2 != null) {
            simpleName2.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @Override
    public VariableDeclarator setType(final Type type) {
        Utils.assertNotNull(type);
        Type type2 = this.type;
        if (type == type2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, type2, type);
        Type type3 = this.type;
        if (type3 != null) {
            type3.setParentNode((Node) null);
        }
        this.type = type;
        setAsParentNodeOf(type);
        return this;
    }

    public VariableDeclarator(Type type, SimpleName name) {
        this(null, type, name, null);
    }

    @Override
    public VariableDeclarator mo1220clone() {
        return (VariableDeclarator) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public VariableDeclarator(Type type, String variableName, Expression initializer) {
        this(null, type, new SimpleName(variableName), initializer);
    }

    @AllFieldsConstructor
    public VariableDeclarator(Type type, SimpleName name, Expression initializer) {
        this(null, type, name, initializer);
    }

    public VariableDeclarator(TokenRange tokenRange, Type type, SimpleName name, Expression initializer) {
        super(tokenRange);
        setType(type);
        setName(name);
        setInitializer(initializer);
        customInitialization();
    }

    public VariableDeclarator setInitializer(String init) {
        return setInitializer(new NameExpr(Utils.assertNonEmpty(init)));
    }
}
