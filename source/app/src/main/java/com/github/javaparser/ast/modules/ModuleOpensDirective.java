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
import com.github.javaparser.metamodel.ModuleOpensDirectiveMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ModuleOpensDirective extends ModuleDirective implements NodeWithName<ModuleOpensDirective> {
    private NodeList<Name> moduleNames;
    private Name name;

    public ModuleOpensDirective() {
        this(null, new Name(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleOpensDirective) arg);
    }

    @Override
    public ModuleOpensDirective asModuleOpensDirective() {
        return this;
    }

    @Override
    public ModuleOpensDirective asModuleOpensStmt() {
        return this;
    }

    public NodeList<Name> getModuleNames() {
        return this.moduleNames;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    @Override
    public void ifModuleOpensDirective(Consumer<ModuleOpensDirective> action) {
        action.accept(this);
    }

    @Override
    public void ifModuleOpensStmt(Consumer<ModuleOpensDirective> action) {
        action.accept(this);
    }

    @Override
    public boolean isModuleOpensDirective() {
        return true;
    }

    @Override
    public boolean isModuleOpensStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.moduleNames.size(); i10++) {
            if (this.moduleNames.get(i10) == node) {
                this.moduleNames.remove(i10);
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
        for (int i10 = 0; i10 < this.moduleNames.size(); i10++) {
            if (this.moduleNames.get(i10) == node) {
                this.moduleNames.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Name) replacementNode);
        return true;
    }

    public ModuleOpensDirective setModuleNames(final NodeList<Name> moduleNames) {
        Utils.assertNotNull(moduleNames);
        NodeList<Name> nodeList = this.moduleNames;
        if (moduleNames == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MODULE_NAMES, nodeList, moduleNames);
        NodeList<Name> nodeList2 = this.moduleNames;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.moduleNames = moduleNames;
        setAsParentNodeOf(moduleNames);
        return this;
    }

    @Override
    public Optional<ModuleOpensDirective> toModuleOpensDirective() {
        return Optional.of(this);
    }

    @Override
    public Optional<ModuleOpensDirective> toModuleOpensStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ModuleOpensDirective(Name name, NodeList<Name> moduleNames) {
        this(null, name, moduleNames);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleOpensDirective) arg);
    }

    @Override
    public ModuleOpensDirective setName(final Name name) {
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

    public ModuleOpensDirective(TokenRange tokenRange, Name name, NodeList<Name> moduleNames) {
        super(tokenRange);
        setName(name);
        setModuleNames(moduleNames);
        customInitialization();
    }

    @Override
    public ModuleOpensDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleOpensDirectiveMetaModel;
    }

    @Override
    public ModuleOpensDirective mo1220clone() {
        return (ModuleOpensDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
