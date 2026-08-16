package com.github.javaparser.ast.comments;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.javadoc.Javadoc;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.JavadocCommentMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class JavadocComment extends Comment {
    public JavadocComment() {
        this(null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (JavadocComment) arg);
    }

    @Override
    public JavadocComment asJavadocComment() {
        return this;
    }

    @Override
    public String getFooter() {
        return "*/";
    }

    @Override
    public String getHeader() {
        return "/**";
    }

    @Override
    public void ifJavadocComment(Consumer<JavadocComment> action) {
        action.accept(this);
    }

    @Override
    public boolean isJavadocComment() {
        return true;
    }

    public Javadoc parse() {
        return StaticJavaParser.parseJavadoc(getContent());
    }

    @Override
    public Optional<JavadocComment> toJavadocComment() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public JavadocComment(String content) {
        this(null, content);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (JavadocComment) arg);
    }

    public JavadocComment(TokenRange tokenRange, String content) {
        super(tokenRange, content);
        customInitialization();
    }

    @Override
    public JavadocCommentMetaModel getMetaModel() {
        return JavaParserMetaModel.javadocCommentMetaModel;
    }

    @Override
    public JavadocComment mo1220clone() {
        return (JavadocComment) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
