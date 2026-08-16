package com.github.javaparser;

import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.utils.PositionUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class CommentsInserter {
    private final ParserConfiguration configuration;

    public CommentsInserter(ParserConfiguration configuration) {
        this.configuration = configuration;
    }

    private boolean attributeLineCommentToNodeOrChild(Node node, LineComment lineComment) {
        if (node.hasRange() && lineComment.hasRange()) {
            if (node.getBegin().get().line == lineComment.getBegin().get().line && !node.getComment().isPresent()) {
                if (!(node instanceof Comment)) {
                    node.setComment(lineComment);
                }
                return true;
            }
            LinkedList linkedList = new LinkedList();
            linkedList.addAll(node.getChildNodes());
            PositionUtils.sortByBeginPosition(linkedList);
            Collections.reverse(linkedList);
            Iterator<E> it = linkedList.iterator();
            while (it.hasNext()) {
                if (attributeLineCommentToNodeOrChild((Node) it.next(), lineComment)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void attributeLineCommentsOnSameLine(TreeSet<Comment> commentsToAttribute, final List<Node> children) {
        final LinkedList linkedList = new LinkedList();
        commentsToAttribute.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean hasRange;
                hasRange = ((Comment) obj).hasRange();
                return hasRange;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Comment) obj).isLineComment();
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CommentsInserter.this.lambda$attributeLineCommentsOnSameLine$6(children, linkedList, (Comment) obj);
            }
        });
        commentsToAttribute.removeAll(linkedList);
    }

    private boolean commentIsOnNextLine(Node a10, Comment c10) {
        return c10.hasRange() && a10.hasRange() && c10.getRange().get().end.line + 1 == a10.getRange().get().begin.line;
    }

    private void insertComments(CompilationUnit cu, TreeSet<Comment> comments) {
        if (comments.isEmpty()) {
            return;
        }
        List<Node> childNodes = cu.getChildNodes();
        Comment next = comments.iterator().next();
        if (cu.getPackageDeclaration().isPresent()) {
            if (childNodes.isEmpty() || PositionUtils.areInOrder(next, cu.getPackageDeclaration().get())) {
                cu.setComment(next);
                comments.remove(next);
            }
        }
    }

    public void lambda$attributeLineCommentsOnSameLine$6(final List children, final List attributedComments, final Comment comment) {
        children.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean hasRange;
                hasRange = ((Node) obj).hasRange();
                return hasRange;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CommentsInserter.this.lambda$null$5(comment, attributedComments, (Node) obj);
            }
        });
    }

    public static boolean lambda$insertComments$0(Node n10) {
        return !(n10 instanceof Modifier);
    }

    public static boolean lambda$insertComments$2(final Node child, final boolean attributeToAnnotation, Comment comment) {
        return PositionUtils.nodeContains(child, comment, !attributeToAnnotation);
    }

    public void lambda$null$5(final Comment comment, final List attributedComments, Node child) {
        if (child.getRange().get().end.line == comment.getRange().get().begin.line && attributeLineCommentToNodeOrChild(child, comment.asLineComment())) {
            attributedComments.add(comment);
        }
    }

    private boolean thereAreLinesBetween(Node a10, Node b10) {
        if (!a10.hasRange() || !b10.hasRange()) {
            return true;
        }
        if (PositionUtils.areInOrder(a10, b10)) {
            return b10.getBegin().get().line > a10.getEnd().get().line + 1;
        }
        return thereAreLinesBetween(b10, a10);
    }

    public void insertComments(Node node, TreeSet<Comment> commentsToAttribute) {
        if (commentsToAttribute.isEmpty()) {
            return;
        }
        if (node instanceof CompilationUnit) {
            insertComments((CompilationUnit) node, commentsToAttribute);
        }
        List<Node> list = (List) node.getChildNodes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$insertComments$0;
                lambda$insertComments$0 = CommentsInserter.lambda$insertComments$0((Node) obj);
                return lambda$insertComments$0;
            }
        }).collect(Collectors.toList());
        final boolean z10 = !this.configuration.isIgnoreAnnotationsWhenAttributingComments();
        for (final Node node2 : list) {
            TreeSet<Comment> treeSet = new TreeSet<>(Node.NODE_BY_BEGIN_POSITION);
            treeSet.addAll((Collection) commentsToAttribute.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean hasRange;
                    hasRange = ((Comment) obj).hasRange();
                    return hasRange;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$insertComments$2;
                    lambda$insertComments$2 = CommentsInserter.lambda$insertComments$2(Node.this, z10, (Comment) obj);
                    return lambda$insertComments$2;
                }
            }).collect(Collectors.toList()));
            commentsToAttribute.removeAll(treeSet);
            insertComments(node2, treeSet);
        }
        attributeLineCommentsOnSameLine(commentsToAttribute, list);
        if (!commentsToAttribute.isEmpty() && commentIsOnNextLine(node, commentsToAttribute.first())) {
            node.setComment(commentsToAttribute.first());
            commentsToAttribute.remove(commentsToAttribute.first());
        }
        Collection<?> linkedList = new LinkedList<>();
        LinkedList<Node> linkedList2 = new LinkedList();
        linkedList2.addAll(list);
        commentsToAttribute.removeAll(linkedList);
        linkedList2.addAll(commentsToAttribute);
        PositionUtils.sortByBeginPosition(linkedList2, this.configuration.isIgnoreAnnotationsWhenAttributingComments());
        loop1: while (true) {
            Comment comment = null;
            for (Node node3 : linkedList2) {
                if (node3 instanceof Comment) {
                    comment = (Comment) node3;
                    if (!comment.isOrphan()) {
                        break;
                    }
                } else if (comment != null && !node3.getComment().isPresent() && (!this.configuration.isDoNotAssignCommentsPrecedingEmptyLines() || !thereAreLinesBetween(comment, node3))) {
                    node3.setComment(comment);
                    linkedList.add(comment);
                }
            }
            break loop1;
        }
        commentsToAttribute.removeAll(linkedList);
        Iterator<Comment> it = commentsToAttribute.iterator();
        while (it.hasNext()) {
            Comment next = it.next();
            if (next.isOrphan()) {
                node.addOrphanComment(next);
            }
        }
    }
}
