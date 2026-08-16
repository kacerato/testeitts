package com.github.javaparser.metamodel;

import com.github.javaparser.ast.comments.LineComment;
import java.util.Optional;

public class LineCommentMetaModel extends CommentMetaModel {
    public LineCommentMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, LineComment.class, "LineComment", "com.github.javaparser.ast.comments", false, false);
    }
}
