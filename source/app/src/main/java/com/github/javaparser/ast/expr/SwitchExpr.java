package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.SwitchNode;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.SwitchExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class SwitchExpr extends Expression implements SwitchNode {
    private NodeList<SwitchEntry> entries;
    private Expression selector;

    public SwitchExpr() {
        this(null, new NameExpr(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SwitchExpr) arg);
    }

    @Override
    public SwitchExpr asSwitchExpr() {
        return this;
    }

    @Override
    public NodeList<SwitchEntry> getEntries() {
        return this.entries;
    }

    @Override
    public SwitchEntry getEntry(int i10) {
        return getEntries().get(i10);
    }

    @Override
    public Expression getSelector() {
        return this.selector;
    }

    @Override
    public void ifSwitchExpr(Consumer<SwitchExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isSwitchExpr() {
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
        if (node != this.selector) {
            return super.replace(node, replacementNode);
        }
        setSelector((Expression) replacementNode);
        return true;
    }

    @Override
    public SwitchNode setEntries(final NodeList entries) {
        return setEntries((NodeList<SwitchEntry>) entries);
    }

    @Override
    public Optional<SwitchExpr> toSwitchExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public SwitchExpr(final Expression selector, final NodeList<SwitchEntry> entries) {
        this(null, selector, entries);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SwitchExpr) arg);
    }

    @Override
    public SwitchExpr setEntries(final NodeList<SwitchEntry> entries) {
        Utils.assertNotNull(entries);
        NodeList<SwitchEntry> nodeList = this.entries;
        if (entries == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ENTRIES, nodeList, entries);
        NodeList<SwitchEntry> nodeList2 = this.entries;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.entries = entries;
        setAsParentNodeOf(entries);
        return this;
    }

    @Override
    public SwitchExpr setSelector(final Expression selector) {
        Utils.assertNotNull(selector);
        Expression expression = this.selector;
        if (selector == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.SELECTOR, expression, selector);
        Expression expression2 = this.selector;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.selector = selector;
        setAsParentNodeOf(selector);
        return this;
    }

    public SwitchExpr(TokenRange tokenRange, Expression selector, NodeList<SwitchEntry> entries) {
        super(tokenRange);
        setSelector(selector);
        setEntries(entries);
        customInitialization();
    }

    @Override
    public SwitchExprMetaModel getMetaModel() {
        return JavaParserMetaModel.switchExprMetaModel;
    }

    @Override
    public SwitchExpr mo1220clone() {
        return (SwitchExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
