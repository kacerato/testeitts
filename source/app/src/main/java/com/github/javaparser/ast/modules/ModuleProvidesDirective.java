package com.github.javaparser.ast.modules;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModuleProvidesDirectiveMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ModuleProvidesDirective extends ModuleDirective implements NodeWithName<ModuleProvidesDirective> {
    private Name name;
    private NodeList<Name> with;

    public ModuleProvidesDirective() {
        this(null, new Name(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleProvidesDirective) arg);
    }

    @Override
    public ModuleProvidesDirective asModuleProvidesDirective() {
        return this;
    }

    @Override
    public ModuleProvidesDirective asModuleProvidesStmt() {
        return this;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    public NodeList<Name> getWith() {
        return this.with;
    }

    @Override
    public void ifModuleProvidesDirective(Consumer<ModuleProvidesDirective> action) {
        action.accept(this);
    }

    @Override
    public void ifModuleProvidesStmt(Consumer<ModuleProvidesDirective> action) {
        action.accept(this);
    }

    @Override
    public boolean isModuleProvidesDirective() {
        return true;
    }

    @Override
    public boolean isModuleProvidesStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.with.size(); i10++) {
            if (this.with.get(i10) == node) {
                this.with.remove(i10);
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
        if (node == this.name) {
            setName((Name) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.with.size(); i10++) {
            if (this.with.get(i10) == node) {
                this.with.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public ModuleProvidesDirective setWith(final NodeList<Name> with) {
        Utils.assertNotNull(with);
        NodeList<Name> nodeList = this.with;
        if (with == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.WITH, nodeList, with);
        NodeList<Name> nodeList2 = this.with;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.with = with;
        setAsParentNodeOf(with);
        return this;
    }

    @Override
    public Optional<ModuleProvidesDirective> toModuleProvidesDirective() {
        return Optional.of(this);
    }

    @Override
    public Optional<ModuleProvidesDirective> toModuleProvidesStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ModuleProvidesDirective(Name name, NodeList<Name> with) {
        this(null, name, with);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleProvidesDirective) arg);
    }

    @Override
    public ModuleProvidesDirective setName(final Name name) {
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

    public ModuleProvidesDirective(TokenRange tokenRange, Name name, NodeList<Name> with) {
        super(tokenRange);
        setName(name);
        setWith(with);
        customInitialization();
    }

    @Override
    public ModuleProvidesDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleProvidesDirectiveMetaModel;
    }

    @Override
    public ModuleProvidesDirective mo1220clone() {
        return (ModuleProvidesDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
