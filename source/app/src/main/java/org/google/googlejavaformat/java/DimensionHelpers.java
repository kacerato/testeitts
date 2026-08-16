package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.List;
import org.openjdk.source.tree.AnnotatedTypeTree;
import org.openjdk.source.tree.AnnotationTree;
import org.openjdk.source.tree.ArrayTypeTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.tools.javac.tree.JCTree;

public class DimensionHelpers {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$openjdk$source$tree$Tree$Kind;

        static {
            int[] iArr = new int[Tree.Kind.values().length];
            $SwitchMap$org$openjdk$source$tree$Tree$Kind = iArr;
            try {
                iArr[Tree.Kind.ARRAY_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.ANNOTATED_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum SortedDims {
        YES,
        NO
    }

    public static class TypeWithDims {
        final AbstractC12521g1<List<AnnotationTree>> dims;
        final Tree node;

        public TypeWithDims(Tree node, AbstractC12521g1<List<AnnotationTree>> dims) {
            this.node = node;
            this.dims = dims;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TypeWithDims extractDims(Tree tree, SortedDims sortedDims) {
        ArrayDeque arrayDeque = new ArrayDeque();
        Tree extractDims = extractDims(arrayDeque, tree);
        Iterable iterable = arrayDeque;
        if (sortedDims == SortedDims.YES) {
            iterable = reorderBySourcePosition(arrayDeque);
        }
        return new TypeWithDims(extractDims, AbstractC12521g1.p(iterable));
    }

    private static Iterable<List<AnnotationTree>> reorderBySourcePosition(Deque<List<AnnotationTree>> dims) {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        for (List<AnnotationTree> list : dims) {
            if (!list.isEmpty()) {
                int startPosition = ((JCTree) list.get(0)).getStartPosition();
                if (startPosition < i10) {
                    ArrayList arrayList = new ArrayList(dims);
                    Collections.rotate(arrayList, -(i11 + 1));
                    return arrayList;
                }
                i11 = i12;
                i10 = startPosition;
            }
            i12++;
        }
        return dims;
    }

    private static Tree extractDims(Deque<List<AnnotationTree>> dims, Tree node) {
        int i10 = AnonymousClass1.$SwitchMap$org$openjdk$source$tree$Tree$Kind[node.getKind().ordinal()];
        if (i10 == 1) {
            return extractDims(dims, ((ArrayTypeTree) node).getType());
        }
        if (i10 != 2) {
            return node;
        }
        AnnotatedTypeTree annotatedTypeTree = (AnnotatedTypeTree) node;
        if (annotatedTypeTree.getUnderlyingType().getKind() != Tree.Kind.ARRAY_TYPE) {
            return node;
        }
        Tree extractDims = extractDims(dims, annotatedTypeTree.getUnderlyingType());
        dims.addFirst(AbstractC12521g1.r(annotatedTypeTree.getAnnotations()));
        return extractDims;
    }
}
