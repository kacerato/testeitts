package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import java.util.Optional;

public class CommentMetaModel extends NodeMetaModel {
    public PropertyMetaModel contentPropertyMetaModel;

    public CommentMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, Comment.class, "Comment", "com.github.javaparser.ast.comments", true, false);
    }

    public CommentMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
