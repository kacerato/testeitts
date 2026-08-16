package com.github.javaparser.ast.modules;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStaticModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModuleRequiresDirectiveMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ModuleRequiresDirective extends ModuleDirective implements NodeWithStaticModifier<ModuleRequiresDirective>, NodeWithName<ModuleRequiresDirective> {
    private NodeList<Modifier> modifiers;
    private Name name;

    public ModuleRequiresDirective() {
        this(null, new NodeList(), new Name());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleRequiresDirective) arg);
    }

    @Override
    public ModuleRequiresDirective asModuleRequiresDirective() {
        return this;
    }

    @Override
    public ModuleRequiresDirective asModuleRequiresStmt() {
        return this;
    }

    @Override
    public NodeList<Modifier> getModifiers() {
        return this.modifiers;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    @Override
    public void ifModuleRequiresDirective(Consumer<ModuleRequiresDirective> action) {
        action.accept(this);
    }

    @Override
    public void ifModuleRequiresStmt(Consumer<ModuleRequiresDirective> action) {
        action.accept(this);
    }

    @Override
    public boolean isModuleRequiresDirective() {
        return true;
    }

    @Override
    public boolean isModuleRequiresStmt() {
        return true;
    }

    @Override
    public boolean isStatic() {
        return hasModifier(Modifier.Keyword.STATIC);
    }

    public boolean isTransitive() {
        return hasModifier(Modifier.Keyword.TRANSITIVE);
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.remove(i10);
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
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Name) replacementNode);
        return true;
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ModuleRequiresDirective setTransitive(boolean set) {
        return (ModuleRequiresDirective) setModifier(Modifier.Keyword.TRANSITIVE, set);
    }

    @Override
    public Optional<ModuleRequiresDirective> toModuleRequiresDirective() {
        return Optional.of(this);
    }

    @Override
    public Optional<ModuleRequiresDirective> toModuleRequiresStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ModuleRequiresDirective(NodeList<Modifier> modifiers, Name name) {
        this(null, modifiers, name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleRequiresDirective) arg);
    }

    @Override
    public ModuleRequiresDirective setModifiers(final NodeList<Modifier> modifiers) {
        Utils.assertNotNull(modifiers);
        NodeList<Modifier> nodeList = this.modifiers;
        if (modifiers == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MODIFIERS, nodeList, modifiers);
        NodeList<Modifier> nodeList2 = this.modifiers;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.modifiers = modifiers;
        setAsParentNodeOf(modifiers);
        return this;
    }

    @Override
    public ModuleRequiresDirective setName(final Name name) {
        Utils.assertNotNull(name);
        Name name2 = this.name;
        if (name == name2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, name2, name);
        Name name3 = this.name;
        if (name3 != null) {
            name3.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    public ModuleRequiresDirective(TokenRange tokenRange, NodeList<Modifier> modifiers, Name name) {
        super(tokenRange);
        setModifiers(modifiers);
        setName(name);
        customInitialization();
    }

    @Override
    public ModuleRequiresDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleRequiresDirectiveMetaModel;
    }

    @Override
    public ModuleRequiresDirective mo1220clone() {
        return (ModuleRequiresDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
