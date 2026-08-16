package com.github.javaparser.ast.comments;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.CommentMetaModel;
import com.github.javaparser.metamodel.InternalProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.CodeGenerationUtils;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class Comment extends Node {

    @InternalProperty
    private Node commentedNode;
    private String content;

    @AllFieldsConstructor
    public Comment(String content) {
        this(null, content);
    }

    public BlockComment asBlockComment() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not BlockComment, it is %s", this, getClass().getSimpleName()));
    }

    public JavadocComment asJavadocComment() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not JavadocComment, it is %s", this, getClass().getSimpleName()));
    }

    public LineComment asLineComment() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not LineComment, it is %s", this, getClass().getSimpleName()));
    }

    public String asString() {
        return getHeader() + getContent() + getFooter();
    }

    @Override
    public Node findRootNode() {
        Node orElse = getCommentedNode().orElse(this);
        while (true) {
            Node node = orElse;
            if (!node.getParentNode().isPresent()) {
                return node;
            }
            orElse = node.getParentNode().get();
        }
    }

    public Optional<Node> getCommentedNode() {
        return Optional.ofNullable(this.commentedNode);
    }

    public String getContent() {
        return this.content;
    }

    public abstract String getFooter();

    public abstract String getHeader();

    public void ifBlockComment(Consumer<BlockComment> action) {
    }

    public void ifJavadocComment(Consumer<JavadocComment> action) {
    }

    public void ifLineComment(Consumer<LineComment> action) {
    }

    public boolean isBlockComment() {
        return false;
    }

    public boolean isJavadocComment() {
        return false;
    }

    public boolean isLineComment() {
        return false;
    }

    public boolean isOrphan() {
        return this.commentedNode == null;
    }

    @Override
    public boolean remove() {
        Node node = this.commentedNode;
        if (node != null) {
            node.setComment(null);
            return true;
        }
        if (getParentNode().isPresent()) {
            return getParentNode().get().removeOrphanComment(this);
        }
        return false;
    }

    @Override
    public Node setComment(final Comment comment) {
        if (comment == null) {
            return super.setComment(comment);
        }
        throw new IllegalArgumentException("A comment cannot be commented.");
    }

    public Comment setCommentedNode(Node commentedNode) {
        notifyPropertyChange(ObservableProperty.COMMENTED_NODE, this.commentedNode, commentedNode);
        if (commentedNode == null) {
            this.commentedNode = null;
            return this;
        }
        if (commentedNode == this) {
            throw new IllegalArgumentException();
        }
        if (commentedNode instanceof Comment) {
            throw new IllegalArgumentException();
        }
        this.commentedNode = commentedNode;
        return this;
    }

    public Comment setContent(final String content) {
        Utils.assertNotNull(content);
        String str = this.content;
        if (content == str) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CONTENT, str, content);
        this.content = content;
        return this;
    }

    public Optional<BlockComment> toBlockComment() {
        return Optional.empty();
    }

    public Optional<JavadocComment> toJavadocComment() {
        return Optional.empty();
    }

    public Optional<LineComment> toLineComment() {
        return Optional.empty();
    }

    public Comment(TokenRange tokenRange, String content) {
        super(tokenRange);
        setContent(content);
        customInitialization();
    }

    @Override
    public CommentMetaModel getMetaModel() {
        return JavaParserMetaModel.commentMetaModel;
    }

    @Override
    public Comment mo1220clone() {
        return (Comment) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
