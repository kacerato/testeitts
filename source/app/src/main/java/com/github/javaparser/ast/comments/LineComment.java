package com.github.javaparser.ast.comments;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LineCommentMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class LineComment extends Comment {
    public LineComment() {
        this(null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LineComment) arg);
    }

    @Override
    public LineComment asLineComment() {
        return this;
    }

    @Override
    public String getFooter() {
        return "";
    }

    @Override
    public String getHeader() {
        return "//";
    }

    @Override
    public void ifLineComment(Consumer<LineComment> action) {
        action.accept(this);
    }

    @Override
    public boolean isLineComment() {
        return true;
    }

    @Override
    public Optional<LineComment> toLineComment() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public LineComment(String content) {
        this(null, content);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LineComment) arg);
    }

    public LineComment(TokenRange tokenRange, String content) {
        super(tokenRange, content);
        customInitialization();
    }

    @Override
    public LineCommentMetaModel getMetaModel() {
        return JavaParserMetaModel.lineCommentMetaModel;
    }

    @Override
    public LineComment mo1220clone() {
        return (LineComment) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
