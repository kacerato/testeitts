package com.github.javaparser.ast;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ImportDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;

public class ImportDeclaration extends Node implements NodeWithName<ImportDeclaration> {
    private boolean isAsterisk;
    private boolean isStatic;
    private Name name;

    private ImportDeclaration() {
        this(null, new Name(), false, false);
    }

    private static Name getNameFromString(String name) {
        if (!isQualified(name)) {
            return new Name(name);
        }
        if (hasAsterisk(name)) {
            name = name.substring(0, name.length() - 2);
        }
        int lastIndexOf = name.lastIndexOf(".");
        return new Name(getNameFromString(name.substring(0, lastIndexOf)), name.substring(lastIndexOf + 1));
    }

    private static boolean hasAsterisk(String name) {
        return name.endsWith("*") & (name != null);
    }

    private static boolean isQualified(String name) {
        return (name != null) & (name.indexOf(".") >= 0);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit2(this, (ImportDeclaration) arg);
    }

    @Override
    public Name getName() {
        return this.name;
    }

    public boolean isAsterisk() {
        return this.isAsterisk;
    }

    public boolean isStatic() {
        return this.isStatic;
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

    public ImportDeclaration setAsterisk(final boolean isAsterisk) {
        boolean z10 = this.isAsterisk;
        if (isAsterisk == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ASTERISK, Boolean.valueOf(z10), Boolean.valueOf(isAsterisk));
        this.isAsterisk = isAsterisk;
        return this;
    }

    public ImportDeclaration setStatic(final boolean isStatic) {
        boolean z10 = this.isStatic;
        if (isStatic == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.STATIC, Boolean.valueOf(z10), Boolean.valueOf(isStatic));
        this.isStatic = isStatic;
        return this;
    }

    public ImportDeclaration(String name, boolean isStatic, boolean isAsterisk) {
        this(null, getNameFromString(name), isStatic, isAsterisk ? isAsterisk : hasAsterisk(name));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ImportDeclaration) arg);
    }

    @Override
    public ImportDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.importDeclarationMetaModel;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ImportDeclaration setName(final Name name) {
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
    public ImportDeclaration(Name name, boolean isStatic, boolean isAsterisk) {
        this(null, name, isStatic, isAsterisk);
    }

    @Override
    public ImportDeclaration mo1220clone() {
        return (ImportDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ImportDeclaration(TokenRange tokenRange, Name name, boolean isStatic, boolean isAsterisk) {
        super(tokenRange);
        setName(name);
        setStatic(isStatic);
        setAsterisk(isAsterisk);
        customInitialization();
    }
}
