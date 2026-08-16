package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.RecordPatternExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class RecordPatternExpr extends PatternExpr implements NodeWithFinalModifier<RecordPatternExpr> {
    private NodeList<Modifier> modifiers;
    private NodeList<PatternExpr> patternList;

    public RecordPatternExpr() {
        this(new NodeList(), new ClassOrInterfaceType(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (RecordPatternExpr) arg);
    }

    @Override
    public RecordPatternExpr asRecordPatternExpr() {
        return this;
    }

    @Override
    public NodeList<Modifier> getModifiers() {
        return this.modifiers;
    }

    public NodeList<PatternExpr> getPatternList() {
        return this.patternList;
    }

    @Override
    public void ifRecordPatternExpr(Consumer<RecordPatternExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isRecordPatternExpr() {
        return true;
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
        for (int i11 = 0; i11 < this.patternList.size(); i11++) {
            if (this.patternList.get(i11) == node) {
                this.patternList.remove(i11);
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
        for (int i11 = 0; i11 < this.patternList.size(); i11++) {
            if (this.patternList.get(i11) == node) {
                this.patternList.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    public RecordPatternExpr setPatternList(final NodeList<PatternExpr> patternList) {
        Utils.assertNotNull(patternList);
        NodeList<PatternExpr> nodeList = this.patternList;
        if (patternList == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PATTERN_LIST, nodeList, patternList);
        NodeList<PatternExpr> nodeList2 = this.patternList;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.patternList = patternList;
        setAsParentNodeOf(patternList);
        return this;
    }

    @Override
    public Optional<RecordPatternExpr> toRecordPatternExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public RecordPatternExpr(final NodeList<Modifier> modifiers, final Type type, final NodeList<PatternExpr> patternList) {
        this(null, modifiers, type, patternList);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (RecordPatternExpr) arg);
    }

    @Override
    public Type getType2() {
        return super.getType2().asReferenceType();
    }

    @Override
    public RecordPatternExpr setModifiers(final NodeList<Modifier> modifiers) {
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

    public RecordPatternExpr(TokenRange tokenRange, NodeList<Modifier> modifiers, Type type, NodeList<PatternExpr> patternList) {
        super(tokenRange, type);
        setModifiers(modifiers);
        setPatternList(patternList);
        customInitialization();
    }

    @Override
    public RecordPatternExprMetaModel getMetaModel() {
        return JavaParserMetaModel.recordPatternExprMetaModel;
    }

    @Override
    public RecordPatternExpr mo1220clone() {
        return (RecordPatternExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
