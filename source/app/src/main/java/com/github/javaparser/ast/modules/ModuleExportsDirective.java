package com.github.javaparser.ast.modules;

import com.github.javaparser.StaticJavaParser;
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
import com.github.javaparser.metamodel.ModuleExportsDirectiveMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ModuleExportsDirective extends ModuleDirective implements NodeWithName<ModuleExportsDirective> {
    private NodeList<Name> moduleNames;
    private Name name;

    public ModuleExportsDirective() {
        this(null, new Name(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleExportsDirective) arg);
    }

    public ModuleExportsDirective addModuleName(String name) {
        this.moduleNames.add((NodeList<Name>) StaticJavaParser.parseName(name));
        return this;
    }

    @Override
    public ModuleExportsDirective asModuleExportsDirective() {
        return this;
    }

    @Override
    public ModuleExportsDirective asModuleExportsStmt() {
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
    public void ifModuleExportsDirective(Consumer<ModuleExportsDirective> action) {
        action.accept(this);
    }

    @Override
    public void ifModuleExportsStmt(Consumer<ModuleExportsDirective> action) {
        action.accept(this);
    }

    @Override
    public boolean isModuleExportsDirective() {
        return true;
    }

    @Override
    public boolean isModuleExportsStmt() {
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

    public ModuleExportsDirective setModuleNames(final NodeList<Name> moduleNames) {
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
    public Optional<ModuleExportsDirective> toModuleExportsDirective() {
        return Optional.of(this);
    }

    @Override
    public Optional<ModuleExportsDirective> toModuleExportsStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ModuleExportsDirective(Name name, NodeList<Name> moduleNames) {
        this(null, name, moduleNames);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleExportsDirective) arg);
    }

    @Override
    public ModuleExportsDirective setName(final Name name) {
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

    public ModuleExportsDirective(TokenRange tokenRange, Name name, NodeList<Name> moduleNames) {
        super(tokenRange);
        setName(name);
        setModuleNames(moduleNames);
        customInitialization();
    }

    @Override
    public ModuleExportsDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleExportsDirectiveMetaModel;
    }

    @Override
    public ModuleExportsDirective mo1220clone() {
        return (ModuleExportsDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
