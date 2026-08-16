package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LocalClassDeclarationStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class LocalClassDeclarationStmt extends Statement {
    private ClassOrInterfaceDeclaration classDeclaration;

    public LocalClassDeclarationStmt() {
        this(null, new ClassOrInterfaceDeclaration());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LocalClassDeclarationStmt) arg);
    }

    @Override
    public LocalClassDeclarationStmt asLocalClassDeclarationStmt() {
        return this;
    }

    public ClassOrInterfaceDeclaration getClassDeclaration() {
        return this.classDeclaration;
    }

    @Override
    public void ifLocalClassDeclarationStmt(Consumer<LocalClassDeclarationStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isLocalClassDeclarationStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.classDeclaration) {
            return super.replace(node, replacementNode);
        }
        setClassDeclaration((ClassOrInterfaceDeclaration) replacementNode);
        return true;
    }

    public LocalClassDeclarationStmt setClassDeclaration(final ClassOrInterfaceDeclaration classDeclaration) {
        Utils.assertNotNull(classDeclaration);
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = this.classDeclaration;
        if (classDeclaration == classOrInterfaceDeclaration) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CLASS_DECLARATION, classOrInterfaceDeclaration, classDeclaration);
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration2 = this.classDeclaration;
        if (classOrInterfaceDeclaration2 != null) {
            classOrInterfaceDeclaration2.setParentNode((Node) null);
        }
        this.classDeclaration = classDeclaration;
        setAsParentNodeOf(classDeclaration);
        return this;
    }

    @Override
    public Optional<LocalClassDeclarationStmt> toLocalClassDeclarationStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public LocalClassDeclarationStmt(final ClassOrInterfaceDeclaration classDeclaration) {
        this(null, classDeclaration);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LocalClassDeclarationStmt) arg);
    }

    public LocalClassDeclarationStmt(TokenRange tokenRange, ClassOrInterfaceDeclaration classDeclaration) {
        super(tokenRange);
        setClassDeclaration(classDeclaration);
        customInitialization();
    }

    @Override
    public LocalClassDeclarationStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.localClassDeclarationStmtMetaModel;
    }

    @Override
    public LocalClassDeclarationStmt mo1220clone() {
        return (LocalClassDeclarationStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
