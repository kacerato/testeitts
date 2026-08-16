package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithImplements;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.EnumDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedEnumDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class EnumDeclaration extends TypeDeclaration<EnumDeclaration> implements NodeWithImplements<EnumDeclaration>, Resolvable<ResolvedEnumDeclaration> {
    private NodeList<EnumConstantDeclaration> entries;
    private NodeList<ClassOrInterfaceType> implementedTypes;

    public EnumDeclaration() {
        this(null, new NodeList(), new NodeList(), new SimpleName(), new NodeList(), new NodeList(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (EnumDeclaration) arg);
    }

    public EnumDeclaration addEntry(EnumConstantDeclaration element) {
        getEntries().add((NodeList<EnumConstantDeclaration>) element);
        return this;
    }

    public EnumConstantDeclaration addEnumConstant(String name) {
        Utils.assertNonEmpty(name);
        EnumConstantDeclaration enumConstantDeclaration = new EnumConstantDeclaration(name);
        getEntries().add((NodeList<EnumConstantDeclaration>) enumConstantDeclaration);
        return enumConstantDeclaration;
    }

    @Override
    public EnumDeclaration asEnumDeclaration() {
        return this;
    }

    public NodeList<EnumConstantDeclaration> getEntries() {
        return this.entries;
    }

    public EnumConstantDeclaration getEntry(int i10) {
        return getEntries().get(i10);
    }

    @Override
    public NodeList<ClassOrInterfaceType> getImplementedTypes() {
        return this.implementedTypes;
    }

    @Override
    public void ifEnumDeclaration(Consumer<EnumDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isEnumDeclaration() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.entries.size(); i10++) {
            if (this.entries.get(i10) == node) {
                this.entries.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.implementedTypes.size(); i11++) {
            if (this.implementedTypes.get(i11) == node) {
                this.implementedTypes.remove(i11);
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
        for (int i10 = 0; i10 < this.entries.size(); i10++) {
            if (this.entries.get(i10) == node) {
                this.entries.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.implementedTypes.size(); i11++) {
            if (this.implementedTypes.get(i11) == node) {
                this.implementedTypes.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public EnumDeclaration setEntries(final NodeList<EnumConstantDeclaration> entries) {
        Utils.assertNotNull(entries);
        NodeList<EnumConstantDeclaration> nodeList = this.entries;
        if (entries == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ENTRIES, nodeList, entries);
        NodeList<EnumConstantDeclaration> nodeList2 = this.entries;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.entries = entries;
        setAsParentNodeOf(entries);
        return this;
    }

    public EnumDeclaration setEntry(int i10, EnumConstantDeclaration element) {
        getEntries().set(i10, (int) element);
        return this;
    }

    @Override
    public EnumDeclaration setImplementedTypes(final NodeList implementedTypes) {
        return setImplementedTypes2((NodeList<ClassOrInterfaceType>) implementedTypes);
    }

    @Override
    public Optional<EnumDeclaration> toEnumDeclaration() {
        return Optional.of(this);
    }

    public EnumDeclaration(NodeList<Modifier> modifiers, String name) {
        this(null, modifiers, new NodeList(), new SimpleName(name), new NodeList(), new NodeList(), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (EnumDeclaration) arg);
    }

    @Override
    public EnumDeclaration setImplementedTypes2(final NodeList<ClassOrInterfaceType> implementedTypes) {
        Utils.assertNotNull(implementedTypes);
        NodeList<ClassOrInterfaceType> nodeList = this.implementedTypes;
        if (implementedTypes == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IMPLEMENTED_TYPES, nodeList, implementedTypes);
        NodeList<ClassOrInterfaceType> nodeList2 = this.implementedTypes;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.implementedTypes = implementedTypes;
        setAsParentNodeOf(implementedTypes);
        return this;
    }

    @AllFieldsConstructor
    public EnumDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<ClassOrInterfaceType> implementedTypes, NodeList<EnumConstantDeclaration> entries, NodeList<BodyDeclaration<?>> members) {
        this(null, modifiers, annotations, name, implementedTypes, entries, members);
    }

    @Override
    public ResolvedEnumDeclaration resolve() {
        return (ResolvedEnumDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedEnumDeclaration.class);
    }

    public EnumDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<ClassOrInterfaceType> implementedTypes, NodeList<EnumConstantDeclaration> entries, NodeList<BodyDeclaration<?>> members) {
        super(tokenRange, modifiers, annotations, name, members);
        setImplementedTypes2(implementedTypes);
        setEntries(entries);
        customInitialization();
    }

    @Override
    public EnumDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.enumDeclarationMetaModel;
    }

    @Override
    public EnumDeclaration mo1220clone() {
        return (EnumDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
