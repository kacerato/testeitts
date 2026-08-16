package com.github.javaparser.utils;

import com.github.javaparser.Position;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public final class PositionUtils {
    private PositionUtils() {
    }

    public static boolean areInOrder(Node a10, Node b10) {
        return areInOrder(a10, b10, false);
    }

    private static int beginColumnWithoutConsideringAnnotation(Node node) {
        return firstNonAnnotationNode(node).getRange().get().begin.column;
    }

    private static int beginLineWithoutConsideringAnnotation(Node node) {
        return firstNonAnnotationNode(node).getRange().get().begin.line;
    }

    private static int compare(Node a10, Node b10, boolean ignoringAnnotations) {
        if (a10.hasRange() && !b10.hasRange()) {
            return -1;
        }
        if (!a10.hasRange() && b10.hasRange()) {
            return 1;
        }
        if (!a10.hasRange() && !b10.hasRange()) {
            return 0;
        }
        if (ignoringAnnotations) {
            int signum = Integer.signum(beginLineWithoutConsideringAnnotation(a10) - beginLineWithoutConsideringAnnotation(b10));
            return signum == 0 ? Integer.signum(beginColumnWithoutConsideringAnnotation(a10) - beginColumnWithoutConsideringAnnotation(b10)) : signum;
        }
        Position position = a10.getBegin().get();
        Position position2 = b10.getBegin().get();
        int signum2 = Integer.signum(position.line - position2.line);
        return signum2 == 0 ? Integer.signum(position.column - position2.column) : signum2;
    }

    private static Node firstNonAnnotationNode(Node node) {
        if (node instanceof ClassOrInterfaceDeclaration) {
            ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) node;
            Modifier modifier = (Modifier) classOrInterfaceDeclaration.getModifiers().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean hasRange;
                    hasRange = ((Modifier) obj).hasRange();
                    return hasRange;
                }
            }).min(Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Position lambda$firstNonAnnotationNode$2;
                    lambda$firstNonAnnotationNode$2 = PositionUtils.lambda$firstNonAnnotationNode$2((Modifier) obj);
                    return lambda$firstNonAnnotationNode$2;
                }
            })).orElse(null);
            return modifier == null ? classOrInterfaceDeclaration.getName() : modifier;
        }
        if (node instanceof MethodDeclaration) {
            MethodDeclaration methodDeclaration = (MethodDeclaration) node;
            Modifier modifier2 = (Modifier) methodDeclaration.getModifiers().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean hasRange;
                    hasRange = ((Modifier) obj).hasRange();
                    return hasRange;
                }
            }).min(Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Position lambda$firstNonAnnotationNode$4;
                    lambda$firstNonAnnotationNode$4 = PositionUtils.lambda$firstNonAnnotationNode$4((Modifier) obj);
                    return lambda$firstNonAnnotationNode$4;
                }
            })).orElse(null);
            return modifier2 == null ? methodDeclaration.getType2() : modifier2;
        }
        if (!(node instanceof FieldDeclaration)) {
            return node;
        }
        FieldDeclaration fieldDeclaration = (FieldDeclaration) node;
        Modifier modifier3 = (Modifier) fieldDeclaration.getModifiers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean hasRange;
                hasRange = ((Modifier) obj).hasRange();
                return hasRange;
            }
        }).min(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position lambda$firstNonAnnotationNode$6;
                lambda$firstNonAnnotationNode$6 = PositionUtils.lambda$firstNonAnnotationNode$6((Modifier) obj);
                return lambda$firstNonAnnotationNode$6;
            }
        })).orElse(null);
        return modifier3 == null ? fieldDeclaration.getVariable(0).getType2() : modifier3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AnnotationExpr getLastAnnotation(Node node) {
        if (!(node instanceof NodeWithAnnotations)) {
            return null;
        }
        NodeList nodeList = NodeList.nodeList((NodeList) ((NodeWithAnnotations) node).getAnnotations());
        if (nodeList.isEmpty()) {
            return null;
        }
        sortByBeginPosition(nodeList);
        return (AnnotationExpr) nodeList.get(nodeList.size() - 1);
    }

    public static Position lambda$firstNonAnnotationNode$2(Modifier o10) {
        return o10.getRange().get().begin;
    }

    public static Position lambda$firstNonAnnotationNode$4(Modifier o10) {
        return o10.getRange().get().begin;
    }

    public static Position lambda$firstNonAnnotationNode$6(Modifier o10) {
        return o10.getRange().get().begin;
    }

    public static int lambda$sortByBeginPosition$0(final boolean ignoringAnnotations, Node o12, Node o22) {
        return compare(o12, o22, ignoringAnnotations);
    }

    public static boolean nodeContains(Node container, Node other, boolean ignoringAnnotations) {
        if (!container.hasRange()) {
            throw new IllegalArgumentException("Cannot compare the positions of nodes if container node does not have a range.");
        }
        if (!other.hasRange()) {
            throw new IllegalArgumentException("Cannot compare the positions of nodes if contained node does not have a range.");
        }
        boolean z10 = container instanceof NodeWithAnnotations;
        if (!ignoringAnnotations || getLastAnnotation(container) == null) {
            return container.containsWithinRange(other);
        }
        if (!container.containsWithinRange(other)) {
            return false;
        }
        if (!z10) {
            return true;
        }
        return container.getRange().get().withBegin(firstNonAnnotationNode(container).getBegin().get()).strictlyContains(other.getRange().get());
    }

    public static <T extends Node> void sortByBeginPosition(List<T> nodes) {
        sortByBeginPosition(nodes, false);
    }

    public static boolean areInOrder(Node a10, Node b10, boolean ignoringAnnotations) {
        return compare(a10, b10, ignoringAnnotations) <= 0;
    }

    public static <T extends Node> void sortByBeginPosition(NodeList<T> nodes) {
        sortByBeginPosition(nodes, false);
    }

    public static <T extends Node> void sortByBeginPosition(List<T> nodes, final boolean ignoringAnnotations) {
        nodes.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int lambda$sortByBeginPosition$0;
                lambda$sortByBeginPosition$0 = PositionUtils.lambda$sortByBeginPosition$0(ignoringAnnotations, (Node) obj, (Node) obj2);
                return lambda$sortByBeginPosition$0;
            }
        });
    }
}
