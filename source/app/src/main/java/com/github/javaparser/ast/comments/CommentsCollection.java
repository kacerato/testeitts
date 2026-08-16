package com.github.javaparser.ast.comments;

import com.github.javaparser.Position;
import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.CommentsCollection;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class CommentsCollection {
    private final TreeSet<Comment> comments;

    public CommentsCollection() {
        this.comments = new TreeSet<>(Node.NODE_BY_BEGIN_POSITION);
    }

    public static boolean lambda$getBlockComments$3(Comment comment) {
        return comment instanceof BlockComment;
    }

    public static BlockComment lambda$getBlockComments$4(Comment comment) {
        return (BlockComment) comment;
    }

    public static TreeSet lambda$getBlockComments$5() {
        return new TreeSet(Node.NODE_BY_BEGIN_POSITION);
    }

    public static boolean lambda$getJavadocComments$6(Comment comment) {
        return comment instanceof JavadocComment;
    }

    public static JavadocComment lambda$getJavadocComments$7(Comment comment) {
        return (JavadocComment) comment;
    }

    public static TreeSet lambda$getJavadocComments$8() {
        return new TreeSet(Node.NODE_BY_BEGIN_POSITION);
    }

    public static boolean lambda$getLineComments$0(Comment comment) {
        return comment instanceof LineComment;
    }

    public static LineComment lambda$getLineComments$1(Comment comment) {
        return (LineComment) comment;
    }

    public static TreeSet lambda$getLineComments$2() {
        return new TreeSet(Node.NODE_BY_BEGIN_POSITION);
    }

    public static boolean lambda$minus$9(final CommentsCollection other, Comment comment) {
        return !other.contains(comment);
    }

    public void addComment(Comment comment) {
        this.comments.add(comment);
    }

    public boolean contains(Comment comment) {
        if (!comment.hasRange()) {
            return false;
        }
        Range range = comment.getRange().get();
        Iterator<Comment> it = getComments().iterator();
        while (it.hasNext()) {
            Comment next = it.next();
            if (!next.hasRange()) {
                return false;
            }
            Range range2 = next.getRange().get();
            if (range2.begin.equals(range.begin)) {
                Position position = range2.end;
                int i10 = position.line;
                Position position2 = range.end;
                if (i10 == position2.line && Math.abs(position.column - position2.column) < 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public CommentsCollection copy() {
        return new CommentsCollection(this.comments);
    }

    public Set<BlockComment> getBlockComments() {
        return (Set) this.comments.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getBlockComments$3;
                lambda$getBlockComments$3 = CommentsCollection.lambda$getBlockComments$3((Comment) obj);
                return lambda$getBlockComments$3;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                BlockComment lambda$getBlockComments$4;
                lambda$getBlockComments$4 = CommentsCollection.lambda$getBlockComments$4((Comment) obj);
                return lambda$getBlockComments$4;
            }
        }).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                TreeSet lambda$getBlockComments$5;
                lambda$getBlockComments$5 = CommentsCollection.lambda$getBlockComments$5();
                return lambda$getBlockComments$5;
            }
        }));
    }

    public TreeSet<Comment> getComments() {
        return this.comments;
    }

    public Set<JavadocComment> getJavadocComments() {
        return (Set) this.comments.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getJavadocComments$6;
                lambda$getJavadocComments$6 = CommentsCollection.lambda$getJavadocComments$6((Comment) obj);
                return lambda$getJavadocComments$6;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                JavadocComment lambda$getJavadocComments$7;
                lambda$getJavadocComments$7 = CommentsCollection.lambda$getJavadocComments$7((Comment) obj);
                return lambda$getJavadocComments$7;
            }
        }).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                TreeSet lambda$getJavadocComments$8;
                lambda$getJavadocComments$8 = CommentsCollection.lambda$getJavadocComments$8();
                return lambda$getJavadocComments$8;
            }
        }));
    }

    public Set<LineComment> getLineComments() {
        return (Set) this.comments.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getLineComments$0;
                lambda$getLineComments$0 = CommentsCollection.lambda$getLineComments$0((Comment) obj);
                return lambda$getLineComments$0;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                LineComment lambda$getLineComments$1;
                lambda$getLineComments$1 = CommentsCollection.lambda$getLineComments$1((Comment) obj);
                return lambda$getLineComments$1;
            }
        }).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                TreeSet lambda$getLineComments$2;
                lambda$getLineComments$2 = CommentsCollection.lambda$getLineComments$2();
                return lambda$getLineComments$2;
            }
        }));
    }

    public CommentsCollection minus(final CommentsCollection other) {
        CommentsCollection commentsCollection = new CommentsCollection();
        commentsCollection.comments.addAll((Collection) this.comments.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$minus$9;
                lambda$minus$9 = CommentsCollection.lambda$minus$9(CommentsCollection.this, (Comment) obj);
                return lambda$minus$9;
            }
        }).collect(Collectors.toList()));
        return commentsCollection;
    }

    public int size() {
        return this.comments.size();
    }

    public CommentsCollection(Collection<Comment> commentsToCopy) {
        TreeSet<Comment> treeSet = new TreeSet<>(Node.NODE_BY_BEGIN_POSITION);
        this.comments = treeSet;
        treeSet.addAll(commentsToCopy);
    }
}
