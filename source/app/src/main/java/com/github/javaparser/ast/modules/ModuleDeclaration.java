package com.github.javaparser.ast.modules;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModuleDeclarationMetaModel;
import com.github.javaparser.utils.Utils;

public class ModuleDeclaration extends Node implements NodeWithName<ModuleDeclaration>, NodeWithAnnotations<ModuleDeclaration> {
    private NodeList<AnnotationExpr> annotations;
    private NodeList<ModuleDirective> directives;
    private boolean isOpen;
    private Name name;

    public ModuleDeclaration() {
        this(null, new NodeList(), new Name(), false, new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ModuleDeclaration) arg);
    }

    public ModuleDeclaration addDirective(String directive) {
        return addDirective(StaticJavaParser.parseModuleDirective(directive));
    }

    @Override
    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    public NodeList<ModuleDirective> getDirectives() {
        return this.directives;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.directives.size(); i11++) {
            if (this.directives.get(i11) == node) {
                this.directives.remove(i11);
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
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.directives.size(); i11++) {
            if (this.directives.get(i11) == node) {
                this.directives.set(i11, (int) replacementNode);
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
    public ModuleDeclaration setAnnotations(final NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public ModuleDeclaration setDirectives(final NodeList<ModuleDirective> directives) {
        Utils.assertNotNull(directives);
        NodeList<ModuleDirective> nodeList = this.directives;
        if (directives == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.DIRECTIVES, nodeList, directives);
        NodeList<ModuleDirective> nodeList2 = this.directives;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.directives = directives;
        setAsParentNodeOf(directives);
        return this;
    }

    public ModuleDeclaration setOpen(final boolean isOpen) {
        boolean z10 = this.isOpen;
        if (isOpen == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.OPEN, Boolean.valueOf(z10), Boolean.valueOf(isOpen));
        this.isOpen = isOpen;
        return this;
    }

    public ModuleDeclaration(Name name, boolean isOpen) {
        this(null, new NodeList(), name, isOpen, new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ModuleDeclaration) arg);
    }

    public ModuleDeclaration addDirective(ModuleDirective directive) {
        getDirectives().add((NodeList<ModuleDirective>) directive);
        return this;
    }

    @Override
    public ModuleDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleDeclarationMetaModel;
    }

    @Override
    public ModuleDeclaration setAnnotations2(final NodeList<AnnotationExpr> annotations) {
        Utils.assertNotNull(annotations);
        NodeList<AnnotationExpr> nodeList = this.annotations;
        if (annotations == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ANNOTATIONS, nodeList, annotations);
        NodeList<AnnotationExpr> nodeList2 = this.annotations;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.annotations = annotations;
        setAsParentNodeOf(annotations);
        return this;
    }

    @Override
    public ModuleDeclaration setName(final Name name) {
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

    @AllFieldsConstructor
    public ModuleDeclaration(NodeList<AnnotationExpr> annotations, Name name, boolean isOpen, NodeList<ModuleDirective> directives) {
        this(null, annotations, name, isOpen, directives);
    }

    @Override
    public ModuleDeclaration mo1220clone() {
        return (ModuleDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ModuleDeclaration(TokenRange tokenRange, NodeList<AnnotationExpr> annotations, Name name, boolean isOpen, NodeList<ModuleDirective> directives) {
        super(tokenRange);
        setAnnotations2(annotations);
        setName(name);
        setOpen(isOpen);
        setDirectives(directives);
        customInitialization();
    }
}
