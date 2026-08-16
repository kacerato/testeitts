package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.javadoc.Javadoc;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;

public interface NodeWithJavadoc<N extends Node> {
    static boolean lambda$getJavadocComment$0(Comment comment) {
        return comment instanceof JavadocComment;
    }

    static JavadocComment lambda$getJavadocComment$1(Comment comment) {
        return (JavadocComment) comment;
    }

    Optional<Comment> getComment();

    default Optional<Javadoc> getJavadoc() {
        return getJavadocComment().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((JavadocComment) obj).parse();
            }
        });
    }

    default Optional<JavadocComment> getJavadocComment() {
        return getComment().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getJavadocComment$0;
                lambda$getJavadocComment$0 = NodeWithJavadoc.lambda$getJavadocComment$0((Comment) obj);
                return lambda$getJavadocComment$0;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                JavadocComment lambda$getJavadocComment$1;
                lambda$getJavadocComment$1 = NodeWithJavadoc.lambda$getJavadocComment$1((Comment) obj);
                return lambda$getJavadocComment$1;
            }
        });
    }

    default boolean hasJavaDocComment() {
        return getComment().isPresent() && (getComment().get() instanceof JavadocComment);
    }

    default boolean removeJavaDocComment() {
        return hasJavaDocComment() && getComment().get().remove();
    }

    Node setComment(Comment comment);

    default N setJavadocComment(String comment) {
        return setJavadocComment(new JavadocComment(comment));
    }

    default N setJavadocComment(JavadocComment comment) {
        setComment(comment);
        return (N) this;
    }

    default N setJavadocComment(String indentation, Javadoc javadoc) {
        return setJavadocComment(javadoc.toComment(indentation));
    }

    default N setJavadocComment(Javadoc javadoc) {
        return setJavadocComment(javadoc.toComment());
    }
}
