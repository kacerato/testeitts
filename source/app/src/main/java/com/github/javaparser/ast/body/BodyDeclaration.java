package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.BodyDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.CodeGenerationUtils;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class BodyDeclaration<T extends BodyDeclaration<?>> extends Node implements NodeWithAnnotations<T> {
    private NodeList<AnnotationExpr> annotations;

    public BodyDeclaration() {
        this(null, new NodeList());
    }

    public AnnotationDeclaration asAnnotationDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not AnnotationDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public AnnotationMemberDeclaration asAnnotationMemberDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not AnnotationMemberDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public CallableDeclaration asCallableDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not CallableDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public ClassOrInterfaceDeclaration asClassOrInterfaceDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ClassOrInterfaceDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public CompactConstructorDeclaration asCompactConstructorDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not CompactConstructorDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public ConstructorDeclaration asConstructorDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ConstructorDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public EnumConstantDeclaration asEnumConstantDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not EnumConstantDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public EnumDeclaration asEnumDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not EnumDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public FieldDeclaration asFieldDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not FieldDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public InitializerDeclaration asInitializerDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not InitializerDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public MethodDeclaration asMethodDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not MethodDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public RecordDeclaration asRecordDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not RecordDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    public TypeDeclaration asTypeDeclaration() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not TypeDeclaration, it is %s", this, getClass().getSimpleName()));
    }

    @Override
    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    public void ifAnnotationDeclaration(Consumer<AnnotationDeclaration> action) {
    }

    public void ifAnnotationMemberDeclaration(Consumer<AnnotationMemberDeclaration> action) {
    }

    public void ifCallableDeclaration(Consumer<CallableDeclaration> action) {
    }

    public void ifClassOrInterfaceDeclaration(Consumer<ClassOrInterfaceDeclaration> action) {
    }

    public void ifCompactConstructorDeclaration(Consumer<CompactConstructorDeclaration> action) {
    }

    public void ifConstructorDeclaration(Consumer<ConstructorDeclaration> action) {
    }

    public void ifEnumConstantDeclaration(Consumer<EnumConstantDeclaration> action) {
    }

    public void ifEnumDeclaration(Consumer<EnumDeclaration> action) {
    }

    public void ifFieldDeclaration(Consumer<FieldDeclaration> action) {
    }

    public void ifInitializerDeclaration(Consumer<InitializerDeclaration> action) {
    }

    public void ifMethodDeclaration(Consumer<MethodDeclaration> action) {
    }

    public void ifRecordDeclaration(Consumer<RecordDeclaration> action) {
    }

    public void ifTypeDeclaration(Consumer<TypeDeclaration> action) {
    }

    public boolean isAnnotationDeclaration() {
        return false;
    }

    public boolean isAnnotationMemberDeclaration() {
        return false;
    }

    public boolean isCallableDeclaration() {
        return false;
    }

    public boolean isClassOrInterfaceDeclaration() {
        return false;
    }

    public boolean isCompactConstructorDeclaration() {
        return false;
    }

    public boolean isConstructorDeclaration() {
        return false;
    }

    public boolean isEnumConstantDeclaration() {
        return false;
    }

    public boolean isEnumDeclaration() {
        return false;
    }

    public boolean isFieldDeclaration() {
        return false;
    }

    public boolean isInitializerDeclaration() {
        return false;
    }

    public boolean isMethodDeclaration() {
        return false;
    }

    public boolean isRecordDeclaration() {
        return false;
    }

    public boolean isTypeDeclaration() {
        return false;
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
        return super.replace(node, replacementNode);
    }

    @Override
    public Node setAnnotations(final NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    public Optional<AnnotationDeclaration> toAnnotationDeclaration() {
        return Optional.empty();
    }

    public Optional<AnnotationMemberDeclaration> toAnnotationMemberDeclaration() {
        return Optional.empty();
    }

    public Optional<CallableDeclaration> toCallableDeclaration() {
        return Optional.empty();
    }

    public Optional<ClassOrInterfaceDeclaration> toClassOrInterfaceDeclaration() {
        return Optional.empty();
    }

    public Optional<CompactConstructorDeclaration> toCompactConstructorDeclaration() {
        return Optional.empty();
    }

    public Optional<ConstructorDeclaration> toConstructorDeclaration() {
        return Optional.empty();
    }

    public Optional<EnumConstantDeclaration> toEnumConstantDeclaration() {
        return Optional.empty();
    }

    public Optional<EnumDeclaration> toEnumDeclaration() {
        return Optional.empty();
    }

    public Optional<FieldDeclaration> toFieldDeclaration() {
        return Optional.empty();
    }

    public Optional<InitializerDeclaration> toInitializerDeclaration() {
        return Optional.empty();
    }

    public Optional<MethodDeclaration> toMethodDeclaration() {
        return Optional.empty();
    }

    public Optional<RecordDeclaration> toRecordDeclaration() {
        return Optional.empty();
    }

    public Optional<TypeDeclaration> toTypeDeclaration() {
        return Optional.empty();
    }

    @AllFieldsConstructor
    public BodyDeclaration(NodeList<AnnotationExpr> annotations) {
        this(null, annotations);
    }

    @Override
    public BodyDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.bodyDeclarationMetaModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setAnnotations(final NodeList<AnnotationExpr> annotations) {
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

    public BodyDeclaration(TokenRange tokenRange, NodeList<AnnotationExpr> annotations) {
        super(tokenRange);
        setAnnotations(annotations);
        customInitialization();
    }

    @Override
    public BodyDeclaration<?> mo1220clone() {
        return (BodyDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public BodyDeclaration(TokenRange range) {
        this(range, new NodeList());
    }
}
