package com.github.javaparser.ast.comments;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.BlockCommentMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class BlockComment extends Comment {
    public BlockComment() {
        this(null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (BlockComment) arg);
    }

    @Override
    public BlockComment asBlockComment() {
        return this;
    }

    @Override
    public String getFooter() {
        return "*/";
    }

    @Override
    public String getHeader() {
        return "/*";
    }

    @Override
    public void ifBlockComment(Consumer<BlockComment> action) {
        action.accept(this);
    }

    @Override
    public boolean isBlockComment() {
        return true;
    }

    @Override
    public Optional<BlockComment> toBlockComment() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public BlockComment(String content) {
        this(null, content);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (BlockComment) arg);
    }

    public BlockComment(TokenRange tokenRange, String content) {
        super(tokenRange, content);
        customInitialization();
    }

    @Override
    public BlockCommentMetaModel getMetaModel() {
        return JavaParserMetaModel.blockCommentMetaModel;
    }

    @Override
    public BlockComment mo1220clone() {
        return (BlockComment) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
