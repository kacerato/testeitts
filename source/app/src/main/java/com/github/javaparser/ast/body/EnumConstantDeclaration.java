package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.EnumConstantDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedEnumConstantDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class EnumConstantDeclaration extends BodyDeclaration<EnumConstantDeclaration> implements NodeWithJavadoc<EnumConstantDeclaration>, NodeWithSimpleName<EnumConstantDeclaration>, NodeWithArguments<EnumConstantDeclaration>, Resolvable<ResolvedEnumConstantDeclaration> {
    private NodeList<Expression> arguments;
    private NodeList<BodyDeclaration<?>> classBody;
    private SimpleName name;

    public EnumConstantDeclaration() {
        this(null, new NodeList(), new SimpleName(), new NodeList(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (EnumConstantDeclaration) arg);
    }

    @Override
    public EnumConstantDeclaration asEnumConstantDeclaration() {
        return this;
    }

    @Override
    public NodeList<Expression> getArguments() {
        return this.arguments;
    }

    public NodeList<BodyDeclaration<?>> getClassBody() {
        return this.classBody;
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public void ifEnumConstantDeclaration(Consumer<EnumConstantDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isEnumConstantDeclaration() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.arguments.size(); i10++) {
            if (this.arguments.get(i10) == node) {
                this.arguments.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.classBody.size(); i11++) {
            if (this.classBody.get(i11) == node) {
                this.classBody.remove(i11);
                return true;
            }
        }
        return super.remove(node);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.arguments.size(); i10++) {
            if (this.arguments.get(i10) == node) {
                this.arguments.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.classBody.size(); i11++) {
            if (this.classBody.get(i11) == node) {
                this.classBody.set(i11, (int) replacementNode);
                return true;
            }
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((SimpleName) replacementNode);
        return true;
    }

    @Override
    public EnumConstantDeclaration setArguments(final NodeList arguments) {
        return setArguments2((NodeList<Expression>) arguments);
    }

    public EnumConstantDeclaration setClassBody(final NodeList<BodyDeclaration<?>> classBody) {
        Utils.assertNotNull(classBody);
        NodeList<BodyDeclaration<?>> nodeList = this.classBody;
        if (classBody == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CLASS_BODY, nodeList, classBody);
        NodeList<BodyDeclaration<?>> nodeList2 = this.classBody;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.classBody = classBody;
        setAsParentNodeOf(classBody);
        return this;
    }

    @Override
    public Optional<EnumConstantDeclaration> toEnumConstantDeclaration() {
        return Optional.of(this);
    }

    public EnumConstantDeclaration(String name) {
        this(null, new NodeList(), new SimpleName(name), new NodeList(), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (EnumConstantDeclaration) arg);
    }

    @Override
    public ResolvedEnumConstantDeclaration resolve() {
        return (ResolvedEnumConstantDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedEnumConstantDeclaration.class);
    }

    @Override
    public EnumConstantDeclaration setArguments2(final NodeList<Expression> arguments) {
        Utils.assertNotNull(arguments);
        NodeList<Expression> nodeList = this.arguments;
        if (arguments == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ARGUMENTS, nodeList, arguments);
        NodeList<Expression> nodeList2 = this.arguments;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.arguments = arguments;
        setAsParentNodeOf(arguments);
        return this;
    }

    @Override
    public EnumConstantDeclaration setName(final SimpleName name) {
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

    @AllFieldsConstructor
    public EnumConstantDeclaration(NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<Expression> arguments, NodeList<BodyDeclaration<?>> classBody) {
        this(null, annotations, name, arguments, classBody);
    }

    @Override
    public EnumConstantDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.enumConstantDeclarationMetaModel;
    }

    public EnumConstantDeclaration(TokenRange tokenRange, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<Expression> arguments, NodeList<BodyDeclaration<?>> classBody) {
        super(tokenRange, annotations);
        setName(name);
        setArguments2(arguments);
        setClassBody(classBody);
        customInitialization();
    }

    @Override
    public EnumConstantDeclaration mo1220clone() {
        return (EnumConstantDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
