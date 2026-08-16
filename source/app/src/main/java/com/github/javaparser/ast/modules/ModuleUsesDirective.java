package com.github.javaparser.ast.modules;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModuleUsesDirectiveMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ModuleUsesDirective extends ModuleDirective implements NodeWithName<ModuleUsesDirective> {
    private Name name;

    public ModuleUsesDirective() {
        this(null, new Name());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleUsesDirective) arg);
    }

    @Override
    public ModuleUsesDirective asModuleUsesDirective() {
        return this;
    }

    @Override
    public ModuleUsesDirective asModuleUsesStmt() {
        return this;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    @Override
    public void ifModuleUsesDirective(Consumer<ModuleUsesDirective> action) {
        action.accept(this);
    }

    @Override
    public void ifModuleUsesStmt(Consumer<ModuleUsesDirective> action) {
        action.accept(this);
    }

    @Override
    public boolean isModuleUsesDirective() {
        return true;
    }

    @Override
    public boolean isModuleUsesStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Name) replacementNode);
        return true;
    }

    public ModuleUsesDirective setType(final Name name) {
        Utils.assertNotNull(name);
        Name name2 = this.name;
        if (name == name2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, name2, name);
        Name name3 = this.name;
        if (name3 != null) {
            name3.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @Override
    public Optional<ModuleUsesDirective> toModuleUsesDirective() {
        return Optional.of(this);
    }

    @Override
    public Optional<ModuleUsesDirective> toModuleUsesStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ModuleUsesDirective(Name name) {
        this(null, name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleUsesDirective) arg);
    }

    @Override
    public ModuleUsesDirective setName(final Name name) {
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

    public ModuleUsesDirective(TokenRange tokenRange, Name name) {
        super(tokenRange);
        setName(name);
        customInitialization();
    }

    @Override
    public ModuleUsesDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleUsesDirectiveMetaModel;
    }

    @Override
    public ModuleUsesDirective mo1220clone() {
        return (ModuleUsesDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
