package com.github.javaparser.ast.expr;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ArrayCreationExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ArrayCreationExpr extends Expression {
    private Type elementType;

    @OptionalProperty
    private ArrayInitializerExpr initializer;

    @NonEmptyProperty
    private NodeList<ArrayCreationLevel> levels;

    public ArrayCreationExpr() {
        this(null, new ClassOrInterfaceType(), new NodeList(new ArrayCreationLevel()), new ArrayInitializerExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ArrayCreationExpr) arg);
    }

    @Override
    public ArrayCreationExpr asArrayCreationExpr() {
        return this;
    }

    public Type createdType() {
        Type type = this.elementType;
        int i10 = 0;
        while (i10 < this.levels.size()) {
            i10++;
            type = new ArrayType(type, ArrayType.Origin.TYPE, new NodeList());
        }
        return type;
    }

    public Type getElementType() {
        return this.elementType;
    }

    public Optional<ArrayInitializerExpr> getInitializer() {
        return Optional.ofNullable(this.initializer);
    }

    public NodeList<ArrayCreationLevel> getLevels() {
        return this.levels;
    }

    @Override
    public void ifArrayCreationExpr(Consumer<ArrayCreationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isArrayCreationExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        ArrayInitializerExpr arrayInitializerExpr = this.initializer;
        if (arrayInitializerExpr != null && node == arrayInitializerExpr) {
            removeInitializer();
            return true;
        }
        for (int i10 = 0; i10 < this.levels.size(); i10++) {
            if (this.levels.get(i10) == node) {
                this.levels.remove(i10);
                return true;
            }
        }
        return super.remove(node);
    }

    public ArrayCreationExpr removeInitializer() {
        return setInitializer(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.elementType) {
            setElementType((Type) replacementNode);
            return true;
        }
        ArrayInitializerExpr arrayInitializerExpr = this.initializer;
        if (arrayInitializerExpr != null && node == arrayInitializerExpr) {
            setInitializer((ArrayInitializerExpr) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.levels.size(); i10++) {
            if (this.levels.get(i10) == node) {
                this.levels.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public ArrayCreationExpr setElementType(final Type elementType) {
        Utils.assertNotNull(elementType);
        Type type = this.elementType;
        if (elementType == type) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ELEMENT_TYPE, type, elementType);
        Type type2 = this.elementType;
        if (type2 != null) {
            type2.setParentNode((Node) null);
        }
        this.elementType = elementType;
        setAsParentNodeOf(elementType);
        return this;
    }

    public ArrayCreationExpr setInitializer(final ArrayInitializerExpr initializer) {
        ArrayInitializerExpr arrayInitializerExpr = this.initializer;
        if (initializer == arrayInitializerExpr) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INITIALIZER, arrayInitializerExpr, initializer);
        ArrayInitializerExpr arrayInitializerExpr2 = this.initializer;
        if (arrayInitializerExpr2 != null) {
            arrayInitializerExpr2.setParentNode((Node) null);
        }
        this.initializer = initializer;
        setAsParentNodeOf(initializer);
        return this;
    }

    public ArrayCreationExpr setLevels(final NodeList<ArrayCreationLevel> levels) {
        Utils.assertNotNull(levels);
        NodeList<ArrayCreationLevel> nodeList = this.levels;
        if (levels == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.LEVELS, nodeList, levels);
        NodeList<ArrayCreationLevel> nodeList2 = this.levels;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.levels = levels;
        setAsParentNodeOf(levels);
        return this;
    }

    @Override
    public Optional<ArrayCreationExpr> toArrayCreationExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ArrayCreationExpr(Type elementType, NodeList<ArrayCreationLevel> levels, ArrayInitializerExpr initializer) {
        this(null, elementType, levels, initializer);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ArrayCreationExpr) arg);
    }

    public ArrayCreationExpr(Type elementType) {
        this(null, elementType, new NodeList(new ArrayCreationLevel()), new ArrayInitializerExpr());
    }

    @Override
    public ArrayCreationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.arrayCreationExprMetaModel;
    }

    public ArrayCreationExpr(TokenRange tokenRange, Type elementType, NodeList<ArrayCreationLevel> levels, ArrayInitializerExpr initializer) {
        super(tokenRange);
        setElementType(elementType);
        setLevels(levels);
        setInitializer(initializer);
        customInitialization();
    }

    @Override
    public ArrayCreationExpr mo1220clone() {
        return (ArrayCreationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ArrayCreationExpr setElementType(Class<?> typeClass) {
        tryAddImportToParentCompilationUnit(typeClass);
        return setElementType(StaticJavaParser.parseType(typeClass.getSimpleName()));
    }

    public ArrayCreationExpr setElementType(final String type) {
        return setElementType(StaticJavaParser.parseType(type));
    }
}
