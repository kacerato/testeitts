package org.google.googlejavaformat.java;

import java.io.IOError;
import java.io.IOException;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompoundAssignmentTree;
import org.openjdk.source.tree.ExpressionTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.MemberSelectTree;
import org.openjdk.source.tree.MethodInvocationTree;
import org.openjdk.source.tree.ParenthesizedTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.TreePath;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.Pretty;
import org.openjdk.tools.javac.tree.TreeInfo;

public class Trees {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$openjdk$source$tree$Tree$Kind;

        static {
            int[] iArr = new int[Tree.Kind.values().length];
            $SwitchMap$org$openjdk$source$tree$Tree$Kind = iArr;
            try {
                iArr[Tree.Kind.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.INTERFACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.ANNOTATED_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static ClassTree getEnclosingTypeDeclaration(TreePath path) {
        while (path != null) {
            int i10 = AnonymousClass1.$SwitchMap$org$openjdk$source$tree$Tree$Kind[path.getLeaf().getKind().ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
                return (ClassTree) path.getLeaf();
            }
            path = path.getParentPath();
        }
        throw new AssertionError();
    }

    public static int getEndPosition(Tree expression, TreePath path) {
        return ((JCTree) expression).getEndPosition(((JCTree.JCCompilationUnit) path.getCompilationUnit()).endPositions);
    }

    public static int getLength(Tree tree, TreePath path) {
        return getEndPosition(tree, path) - getStartPosition(tree);
    }

    public static Name getMethodName(MethodInvocationTree methodInvocation) {
        ExpressionTree methodSelect = methodInvocation.getMethodSelect();
        return methodSelect instanceof MemberSelectTree ? ((MemberSelectTree) methodSelect).getIdentifier() : ((IdentifierTree) methodSelect).getName();
    }

    public static ExpressionTree getMethodReceiver(MethodInvocationTree methodInvocation) {
        ExpressionTree methodSelect = methodInvocation.getMethodSelect();
        if (methodSelect instanceof MemberSelectTree) {
            return ((MemberSelectTree) methodSelect).getExpression();
        }
        return null;
    }

    public static String getSourceForNode(Tree node, TreePath path) {
        try {
            return path.getCompilationUnit().getSourceFile().getCharContent(false).subSequence(getStartPosition(node), getEndPosition(node, path)).toString();
        } catch (IOException e10) {
            throw new IOError(e10);
        }
    }

    public static int getStartPosition(Tree expression) {
        return ((JCTree) expression).getStartPosition();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String operatorName(ExpressionTree expression) {
        JCTree.Tag tag = ((JCTree) expression).getTag();
        if (tag == JCTree.Tag.ASSIGN) {
            return "=";
        }
        boolean z10 = expression instanceof CompoundAssignmentTree;
        if (z10) {
            tag = tag.noAssignOp();
        }
        String operatorName = new Pretty(null, true).operatorName(tag);
        if (!z10) {
            return operatorName;
        }
        return operatorName + "=";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int precedence(ExpressionTree expression) {
        return TreeInfo.opPrec(((JCTree) expression).getTag());
    }

    public static ExpressionTree skipParen(ExpressionTree node) {
        return ((ParenthesizedTree) node).getExpression();
    }
}
