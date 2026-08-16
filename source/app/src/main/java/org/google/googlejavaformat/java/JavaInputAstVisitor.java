package org.google.googlejavaformat.java;

import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D1;
import com.google.common.collect.E1;
import com.google.common.collect.InterfaceC12522g2;
import com.google.common.collect.V1;
import com.google.common.collect.X0;
import com.google.common.collect.e3;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.google.googlejavaformat.CloseOp;
import org.google.googlejavaformat.Doc;
import org.google.googlejavaformat.FormattingError;
import org.google.googlejavaformat.Indent;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.Op;
import org.google.googlejavaformat.OpenOp;
import org.google.googlejavaformat.OpsBuilder;
import org.google.googlejavaformat.Output;
import org.google.googlejavaformat.java.DimensionHelpers;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.source.tree.AnnotatedTypeTree;
import org.openjdk.source.tree.AnnotationTree;
import org.openjdk.source.tree.ArrayAccessTree;
import org.openjdk.source.tree.ArrayTypeTree;
import org.openjdk.source.tree.AssertTree;
import org.openjdk.source.tree.AssignmentTree;
import org.openjdk.source.tree.BinaryTree;
import org.openjdk.source.tree.BlockTree;
import org.openjdk.source.tree.BreakTree;
import org.openjdk.source.tree.CaseTree;
import org.openjdk.source.tree.CatchTree;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.CompoundAssignmentTree;
import org.openjdk.source.tree.ConditionalExpressionTree;
import org.openjdk.source.tree.ContinueTree;
import org.openjdk.source.tree.DirectiveTree;
import org.openjdk.source.tree.DoWhileLoopTree;
import org.openjdk.source.tree.EmptyStatementTree;
import org.openjdk.source.tree.EnhancedForLoopTree;
import org.openjdk.source.tree.ExportsTree;
import org.openjdk.source.tree.ExpressionStatementTree;
import org.openjdk.source.tree.ExpressionTree;
import org.openjdk.source.tree.ForLoopTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.IfTree;
import org.openjdk.source.tree.ImportTree;
import org.openjdk.source.tree.InstanceOfTree;
import org.openjdk.source.tree.IntersectionTypeTree;
import org.openjdk.source.tree.LabeledStatementTree;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.LiteralTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.MemberSelectTree;
import org.openjdk.source.tree.MethodInvocationTree;
import org.openjdk.source.tree.MethodTree;
import org.openjdk.source.tree.ModifiersTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.source.tree.NewArrayTree;
import org.openjdk.source.tree.NewClassTree;
import org.openjdk.source.tree.OpensTree;
import org.openjdk.source.tree.ParameterizedTypeTree;
import org.openjdk.source.tree.ParenthesizedTree;
import org.openjdk.source.tree.PrimitiveTypeTree;
import org.openjdk.source.tree.ProvidesTree;
import org.openjdk.source.tree.RequiresTree;
import org.openjdk.source.tree.ReturnTree;
import org.openjdk.source.tree.StatementTree;
import org.openjdk.source.tree.SwitchTree;
import org.openjdk.source.tree.SynchronizedTree;
import org.openjdk.source.tree.ThrowTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.tree.TryTree;
import org.openjdk.source.tree.TypeCastTree;
import org.openjdk.source.tree.TypeParameterTree;
import org.openjdk.source.tree.UnaryTree;
import org.openjdk.source.tree.UnionTypeTree;
import org.openjdk.source.tree.UsesTree;
import org.openjdk.source.tree.VariableTree;
import org.openjdk.source.tree.WhileLoopTree;
import org.openjdk.source.tree.WildcardTree;
import org.openjdk.source.util.TreePath;
import org.openjdk.source.util.TreePathScanner;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeScanner;
import w2.C;
import w2.I;
import w2.InterfaceC15902t;
import w2.T;
import w2.W;
import w2.z;

public final class JavaInputAstVisitor extends TreePathScanner<Void, Void> {
    private static final int MAX_ITEM_LENGTH_FOR_FILLING = 10;
    private final OpsBuilder builder;
    private final Deque<Boolean> inExpression = new ArrayDeque(AbstractC12521g1.y(Boolean.FALSE));
    private final int indentMultiplier;
    private final Indent.Const minusFour;
    private final Indent.Const minusTwo;
    private final Indent.Const plusFour;
    private final Indent.Const plusTwo;
    private static final Indent.Const ZERO = Indent.Const.ZERO;
    private static final AbstractC12521g1<Op> EMPTY_LIST = AbstractC12521g1.x();
    static final AbstractC12564r1<String> LOG_METHODS = AbstractC12564r1.F("at", "atConfig", "atFine", "atFiner", "atFinest", "atInfo", "atMostEvery", "atSevere", "atWarning", "every", "log", "logVarargs", "perUnique", "withCause", "withStackTrace");
    private static final Pattern FORMAT_SPECIFIER = Pattern.compile("%|\\{[0-9]\\}");

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind;
        static final int[] $SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode;
        static final int[] $SwitchMap$org$openjdk$source$tree$Tree$Kind;

        static {
            int[] iArr = new int[TypeKind.values().length];
            $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind = iArr;
            try {
                iArr[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[MemberReferenceTree.ReferenceMode.values().length];
            $SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode = iArr2;
            try {
                iArr2[MemberReferenceTree.ReferenceMode.INVOKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode[MemberReferenceTree.ReferenceMode.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[Tree.Kind.values().length];
            $SwitchMap$org$openjdk$source$tree$Tree$Kind = iArr3;
            try {
                iArr3[Tree.Kind.ANNOTATION_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.INTERFACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.UNARY_MINUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.UNARY_PLUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.BLOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.MEMBER_SELECT.ordinal()] = 8;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.METHOD_INVOCATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.IDENTIFIER.ordinal()] = 10;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.STRING_LITERAL.ordinal()] = 11;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$org$openjdk$source$tree$Tree$Kind[Tree.Kind.PLUS.ordinal()] = 12;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public enum AllowLeadingBlankLine {
        YES,
        NO;

        public static AllowLeadingBlankLine valueOf(boolean b10) {
            return b10 ? YES : NO;
        }
    }

    public enum AllowTrailingBlankLine {
        YES,
        NO;

        public static AllowTrailingBlankLine valueOf(boolean b10) {
            return b10 ? YES : NO;
        }
    }

    public enum BracesOrNot {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }
    }

    public enum BreakOrNot {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }
    }

    public enum CollapseEmptyOrNot {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }

        public static CollapseEmptyOrNot valueOf(boolean b10) {
            return b10 ? YES : NO;
        }
    }

    public enum DeclarationKind {
        NONE,
        FIELD,
        PARAMETER
    }

    public enum DimensionsOrNot {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }
    }

    public enum Direction {
        VERTICAL,
        HORIZONTAL;

        public boolean isVertical() {
            return this == VERTICAL;
        }
    }

    public enum FirstDeclarationsOrNot {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }
    }

    public enum ReceiverParameter {
        YES,
        NO;

        public boolean isYes() {
            return this == YES;
        }
    }

    public enum VarArgsOrNot {
        YES,
        NO;

        public static VarArgsOrNot fromVariable(VariableTree node) {
            return valueOf((((JCTree.JCVariableDecl) node).mods.flags & 17179869184L) == 17179869184L);
        }

        public boolean isYes() {
            return this == YES;
        }

        public static VarArgsOrNot valueOf(boolean b10) {
            return b10 ? YES : NO;
        }
    }

    public JavaInputAstVisitor(OpsBuilder builder, int indentMultiplier) {
        this.builder = builder;
        this.indentMultiplier = indentMultiplier;
        this.minusTwo = Indent.Const.make(-2, indentMultiplier);
        this.minusFour = Indent.Const.make(-4, indentMultiplier);
        this.plusTwo = Indent.Const.make(2, indentMultiplier);
        this.plusFour = Indent.Const.make(4, indentMultiplier);
    }

    private Integer actualColumn(ExpressionTree expression) {
        return this.builder.getInput().getPositionToColumnMap().get(this.builder.actualStartColumn(Trees.getStartPosition(expression)));
    }

    private boolean ambiguousUnaryOperator(UnaryTree node, String operatorName) {
        int i10 = AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[node.getKind().ordinal()];
        return (i10 == 5 || i10 == 6) && (node.getExpression() instanceof UnaryTree) && !((JCTree) node.getExpression()).getTag().isPostUnaryOp() && Trees.operatorName(node).startsWith(operatorName);
    }

    private void argList(List<? extends ExpressionTree> arguments) {
        this.builder.open(ZERO);
        Doc.FillMode fillMode = hasOnlyShortItems(arguments) ? Doc.FillMode.INDEPENDENT : Doc.FillMode.UNIFIED;
        boolean z10 = true;
        for (ExpressionTree expressionTree : arguments) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.breakOp(fillMode, " ", ZERO);
            }
            scan((Tree) expressionTree, (Void) null);
            z10 = false;
        }
        this.builder.close();
    }

    private int argumentsAreTabular(List<? extends ExpressionTree> arguments) {
        if (arguments.isEmpty()) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        InterfaceC12522g2 T10 = E1.T(arguments.iterator());
        int intValue = actualColumn((ExpressionTree) T10.peek()).intValue();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add((ExpressionTree) T10.next());
        while (T10.hasNext() && actualColumn((ExpressionTree) T10.peek()).intValue() > intValue) {
            arrayList2.add((ExpressionTree) T10.next());
        }
        if (!T10.hasNext() || rowLength(arrayList2) <= 1) {
            return -1;
        }
        arrayList.add(arrayList2);
        while (T10.hasNext()) {
            ArrayList arrayList3 = new ArrayList();
            if (actualColumn((ExpressionTree) T10.peek()).intValue() != intValue) {
                return -1;
            }
            arrayList3.add((ExpressionTree) T10.next());
            while (T10.hasNext() && actualColumn((ExpressionTree) T10.peek()).intValue() > intValue) {
                arrayList3.add((ExpressionTree) T10.next());
            }
            arrayList.add(arrayList3);
        }
        int size = ((List) arrayList.get(0)).size();
        if (!expressionsAreParallel(arrayList, 0, arrayList.size())) {
            return -1;
        }
        for (int i10 = 1; i10 < size; i10++) {
            if (!expressionsAreParallel(arrayList, i10, (arrayList.size() / 2) + 1)) {
                return -1;
            }
        }
        if (arrayList.size() == 2) {
            if (size == ((List) arrayList.get(1)).size()) {
                return size;
            }
            return -1;
        }
        for (int i11 = 1; i11 < arrayList.size() - 1; i11++) {
            if (size != ((List) arrayList.get(i11)).size()) {
                return -1;
            }
        }
        if (size < ((List) D1.w(arrayList)).size()) {
            return -1;
        }
        return size;
    }

    private static final AbstractC12521g1<Op> breakFillList(C<Output.BreakTag> breakTag) {
        Indent.Const r02 = ZERO;
        return AbstractC12521g1.A(OpenOp.make(r02), Doc.Break.make(Doc.FillMode.INDEPENDENT, " ", r02, breakTag), CloseOp.make());
    }

    private static final AbstractC12521g1<Op> breakList(C<Output.BreakTag> breakTag) {
        return AbstractC12521g1.y(Doc.Break.make(Doc.FillMode.UNIFIED, " ", ZERO, breakTag));
    }

    private Direction canLocalHaveHorizontalAnnotations(ModifiersTree modifiers) {
        Iterator<? extends AnnotationTree> it = modifiers.getAnnotations().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getArguments().isEmpty()) {
                i10++;
            }
        }
        return (i10 > 1 || i10 != modifiers.getAnnotations().size()) ? Direction.VERTICAL : Direction.HORIZONTAL;
    }

    private void declareMany(List<VariableTree> fragments, Direction annotationDirection) {
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r12 = ZERO;
        opsBuilder.open(r12);
        ModifiersTree modifiers = fragments.get(0).getModifiers();
        Tree type = fragments.get(0).getType();
        visitAndBreakModifiers(modifiers, annotationDirection, C.a());
        this.builder.open(this.plusFour);
        this.builder.open(r12);
        DimensionHelpers.TypeWithDims extractDims = DimensionHelpers.extractDims(type, DimensionHelpers.SortedDims.YES);
        ArrayDeque arrayDeque = new ArrayDeque(extractDims.dims);
        scan(extractDims.node, (Void) null);
        int size = arrayDeque.size();
        maybeAddDims(arrayDeque);
        int size2 = size - arrayDeque.size();
        boolean z10 = true;
        for (VariableTree variableTree : fragments) {
            if (!z10) {
                token(DocLint.SEPARATOR);
            }
            ArrayDeque arrayDeque2 = new ArrayDeque(variableFragmentDims(z10, size2, variableTree.getType()).dims);
            this.builder.breakOp(" ");
            this.builder.open(ZERO);
            maybeAddDims(arrayDeque2);
            visit(variableTree.getName());
            maybeAddDims(arrayDeque2);
            ExpressionTree initializer = variableTree.getInitializer();
            if (initializer != null) {
                this.builder.space();
                token("=");
                this.builder.open(this.plusFour);
                this.builder.breakOp(" ");
                scan((Tree) initializer, (Void) null);
                this.builder.close();
            }
            this.builder.close();
            if (z10) {
                this.builder.close();
            }
            z10 = false;
        }
        this.builder.close();
        token(";");
        this.builder.close();
    }

    private void dotExpressionArgsAndParen(ExpressionTree expression, Indent tyargIndent, Indent indent) {
        Deque<ExpressionTree> arrayIndices = getArrayIndices(expression);
        ExpressionTree arrayBase = getArrayBase(expression);
        if (AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[arrayBase.getKind().ordinal()] == 9) {
            this.builder.open(tyargIndent);
            addArguments(((MethodInvocationTree) arrayBase).getArguments(), indent);
            this.builder.close();
        }
        formatArrayIndices(arrayIndices);
    }

    private void dotExpressionUpToArgs(ExpressionTree expression, C<Output.BreakTag> tyargTag) {
        ExpressionTree arrayBase = getArrayBase(expression);
        switch (AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[arrayBase.getKind().ordinal()]) {
            case 8:
                visit(((MemberSelectTree) arrayBase).getIdentifier());
                return;
            case 9:
                MethodInvocationTree methodInvocationTree = (MethodInvocationTree) arrayBase;
                if (!methodInvocationTree.getTypeArguments().isEmpty()) {
                    this.builder.open(this.plusFour);
                    List<? extends Tree> typeArguments = methodInvocationTree.getTypeArguments();
                    Indent.Const r12 = ZERO;
                    addTypeArguments(typeArguments, r12);
                    this.builder.breakOp(Doc.FillMode.UNIFIED, "", r12, tyargTag);
                    this.builder.close();
                }
                visit(Trees.getMethodName(methodInvocationTree));
                return;
            case 10:
                visit(((IdentifierTree) arrayBase).getName());
                return;
            default:
                scan((Tree) arrayBase, (Void) null);
                return;
        }
    }

    private void dropEmptyDeclarations() {
        if (this.builder.peekToken().equals(C.f(";"))) {
            while (this.builder.peekToken().equals(C.f(";"))) {
                markForPartialFormat();
                token(";");
            }
        }
    }

    private static boolean expressionsAreParallel(List<List<ExpressionTree>> rows, int column, int atLeastM) {
        X0 m10 = X0.m();
        for (List<ExpressionTree> list : rows) {
            if (column < list.size()) {
                m10.add(list.get(column).getKind());
            }
        }
        Iterator it = m10.entrySet().iterator();
        while (it.hasNext()) {
            if (((V1.a) it.next()).getCount() >= atLeastM) {
                return true;
            }
        }
        return false;
    }

    private Direction fieldAnnotationDirection(ModifiersTree modifiers) {
        Iterator<? extends AnnotationTree> it = modifiers.getAnnotations().iterator();
        while (it.hasNext()) {
            if (!it.next().getArguments().isEmpty()) {
                return Direction.VERTICAL;
            }
        }
        return Direction.HORIZONTAL;
    }

    private boolean fillFirstArgument(ExpressionTree e10, List<ExpressionTree> items, Indent indent) {
        if (items.size() < 2 || e10.getKind() != Tree.Kind.METHOD_INVOCATION) {
            return false;
        }
        MethodInvocationTree methodInvocationTree = (MethodInvocationTree) e10;
        Name methodName = Trees.getMethodName(methodInvocationTree);
        if (!(methodInvocationTree.getMethodSelect() instanceof IdentifierTree) || methodName.length() > 4 || !methodInvocationTree.getTypeArguments().isEmpty() || methodInvocationTree.getArguments().size() != 1) {
            return false;
        }
        this.builder.open(ZERO);
        this.builder.open(indent);
        visit(methodName);
        token("(");
        scan((Tree) D1.z(methodInvocationTree.getArguments()), (Void) null);
        this.builder.close();
        token(")");
        this.builder.close();
        return true;
    }

    private static final AbstractC12521g1<Op> forceBreakList(C<Output.BreakTag> breakTag) {
        return AbstractC12521g1.y(Doc.Break.make(Doc.FillMode.FORCED, "", Indent.Const.ZERO, breakTag));
    }

    private void formatArrayIndices(Deque<ExpressionTree> indices) {
        if (indices.isEmpty()) {
            return;
        }
        this.builder.open(ZERO);
        do {
            token("[");
            this.builder.breakToFill();
            scan((Tree) indices.removeLast(), (Void) null);
            token("]");
        } while (!indices.isEmpty());
        this.builder.close();
    }

    private ExpressionTree getArrayBase(ExpressionTree node) {
        while (node instanceof ArrayAccessTree) {
            node = ((ArrayAccessTree) node).getExpression();
        }
        return node;
    }

    private Deque<ExpressionTree> getArrayIndices(ExpressionTree expression) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (expression instanceof ArrayAccessTree) {
            ArrayAccessTree arrayAccessTree = (ArrayAccessTree) expression;
            arrayDeque.addLast(arrayAccessTree.getIndex());
            expression = arrayAccessTree.getExpression();
        }
        return arrayDeque;
    }

    private ExpressionTree getMethodReceiver(MethodInvocationTree methodInvocation) {
        ExpressionTree methodSelect = methodInvocation.getMethodSelect();
        if (methodSelect instanceof MemberSelectTree) {
            return ((MemberSelectTree) methodSelect).getExpression();
        }
        return null;
    }

    private static C<? extends Input.Token> getNextToken(Input input, int position) {
        return C.c(input.getPositionTokenMap().j(Integer.valueOf(position)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [org.openjdk.source.tree.ExpressionTree] */
    private boolean handleLogStatement(MethodInvocationTree methodInvocationTree) {
        if (!Trees.getMethodName(methodInvocationTree).contentEquals("log")) {
            return false;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        MethodInvocationTree methodInvocationTree2 = methodInvocationTree;
        while (methodInvocationTree2 instanceof MethodInvocationTree) {
            MethodInvocationTree methodInvocationTree3 = methodInvocationTree2;
            arrayDeque.addFirst(methodInvocationTree3);
            if (!LOG_METHODS.contains(Trees.getMethodName(methodInvocationTree3).toString())) {
                return false;
            }
            methodInvocationTree2 = Trees.getMethodReceiver(methodInvocationTree3);
        }
        if (!(methodInvocationTree2 instanceof IdentifierTree)) {
            return false;
        }
        arrayDeque.addFirst(methodInvocationTree2);
        visitDotWithPrefix(AbstractC12521g1.r(arrayDeque), false, arrayDeque.size() - 1);
        return true;
    }

    private boolean hasJavaDoc(Tree bodyDeclaration) {
        Input.Token j10 = this.builder.getInput().getPositionTokenMap().j(Integer.valueOf(((JCTree) bodyDeclaration).getStartPosition()));
        if (j10 == null) {
            return false;
        }
        e3<? extends Input.Tok> it = j10.getToksBefore().iterator();
        while (it.hasNext()) {
            if (it.next().getText().startsWith("/**")) {
                return true;
            }
        }
        return false;
    }

    private boolean hasOnlyShortItems(List<? extends ExpressionTree> expressions) {
        for (ExpressionTree expressionTree : expressions) {
            int startPosition = Trees.getStartPosition(expressionTree);
            if (this.builder.actualSize(startPosition, Trees.getEndPosition(expressionTree, getCurrentPath()) - startPosition) >= 10) {
                return false;
            }
        }
        return true;
    }

    private boolean hasTrailingToken(Input input, List<? extends Tree> nodes, String token) {
        if (nodes.isEmpty()) {
            return false;
        }
        C<? extends Input.Token> nextToken = getNextToken(input, Trees.getEndPosition((Tree) D1.w(nodes), getCurrentPath()));
        return nextToken.e() && nextToken.d().getTok().getText().equals(token);
    }

    private boolean inExpression() {
        return this.inExpression.peekLast().booleanValue();
    }

    public static boolean isArrayValue(ExpressionTree argument) {
        if (!(argument instanceof AssignmentTree)) {
            return false;
        }
        ExpressionTree expression = ((AssignmentTree) argument).getExpression();
        return (expression instanceof NewArrayTree) && ((NewArrayTree) expression).getType() == null;
    }

    private boolean isFormatMethod(List<? extends ExpressionTree> arguments) {
        if (arguments.size() < 2) {
            return false;
        }
        return isStringConcat(arguments.get(0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isStringConcat(ExpressionTree first) {
        final boolean[] zArr = {true};
        final boolean[] zArr2 = {false};
        new TreeScanner() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void scan(JCTree tree) {
                if (tree == 0) {
                    return;
                }
                int i10 = AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[tree.getKind().ordinal()];
                if (i10 != 11) {
                    if (i10 != 12) {
                        zArr[0] = false;
                    } else {
                        super.scan(tree);
                    }
                }
                if (tree.getKind() == Tree.Kind.STRING_LITERAL) {
                    Object value = ((LiteralTree) tree).getValue();
                    if ((value instanceof String) && JavaInputAstVisitor.FORMAT_SPECIFIER.matcher(value.toString()).find()) {
                        zArr2[0] = true;
                    }
                }
            }
        }.scan((JCTree) first);
        return zArr[0] && zArr2[0];
    }

    public static Boolean lambda$visitModule$0(DirectiveTree directiveTree, Tree.Kind kind) {
        return Boolean.valueOf(!kind.equals(directiveTree.getKind()));
    }

    private void markForPartialFormat() {
        if (inExpression()) {
            return;
        }
        this.builder.markForPartialFormat();
    }

    private void maybeAddDims(Deque<List<AnnotationTree>> annotations) {
        maybeAddDims(new ArrayDeque(), annotations);
    }

    private void methodBody(MethodTree node) {
        if (node.getBody().getStatements().isEmpty()) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
        } else {
            this.builder.open(this.plusTwo);
            this.builder.forcedBreak();
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
            visitStatements(node.getBody().getStatements());
            this.builder.close();
            this.builder.forcedBreak();
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            markForPartialFormat();
        }
        token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
    }

    public static int rowLength(List<? extends ExpressionTree> row) {
        int i10 = 0;
        for (ExpressionTree expressionTree : row) {
            if (expressionTree.getKind() == Tree.Kind.NEW_ARRAY) {
                NewArrayTree newArrayTree = (NewArrayTree) expressionTree;
                if (newArrayTree.getInitializers() != null) {
                    i10 += rowLength(newArrayTree.getInitializers());
                }
            }
            i10++;
        }
        return i10;
    }

    private List<String> simpleNames(Deque<ExpressionTree> stack) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        Iterator<ExpressionTree> it = stack.iterator();
        while (true) {
            if (it.hasNext()) {
                ExpressionTree next = it.next();
                boolean z10 = next.getKind() == Tree.Kind.ARRAY_ACCESS;
                ExpressionTree arrayBase = getArrayBase(next);
                switch (AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[arrayBase.getKind().ordinal()]) {
                    case 8:
                        m10.a(((MemberSelectTree) arrayBase).getIdentifier().toString());
                        break;
                    case 9:
                        m10.a(Trees.getMethodName((MethodInvocationTree) arrayBase).toString());
                        break;
                    case 10:
                        m10.a(((IdentifierTree) arrayBase).getName().toString());
                        break;
                }
                if (z10) {
                }
            }
        }
        return m10.e();
    }

    private void splitToken(String operatorName) {
        for (int i10 = 0; i10 < operatorName.length(); i10++) {
            token(String.valueOf(operatorName.charAt(i10)));
        }
    }

    private void typeParametersRest(List<? extends TypeParameterTree> typeParameters, Indent plusIndent) {
        this.builder.open(plusIndent);
        this.builder.breakOp();
        this.builder.open(ZERO);
        boolean z10 = true;
        for (TypeParameterTree typeParameterTree : typeParameters) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.breakOp(" ");
            }
            scan((Tree) typeParameterTree, (Void) null);
            z10 = false;
        }
        token(">");
        this.builder.close();
        this.builder.close();
    }

    private DimensionHelpers.TypeWithDims variableFragmentDims(boolean first, int leadingDims, Tree type) {
        if (type == null) {
            return null;
        }
        if (first) {
            return DimensionHelpers.extractDims(type, DimensionHelpers.SortedDims.YES);
        }
        AbstractC12521g1<List<AnnotationTree>> abstractC12521g1 = DimensionHelpers.extractDims(type, DimensionHelpers.SortedDims.NO).dims;
        if (leadingDims > 0) {
            abstractC12521g1 = abstractC12521g1.subList(0, abstractC12521g1.size() - leadingDims);
        }
        return new DimensionHelpers.TypeWithDims(null, abstractC12521g1);
    }

    private List<VariableTree> variableFragments(InterfaceC12522g2<? extends Tree> it, Tree first) {
        ArrayList arrayList = new ArrayList();
        if (first.getKind() == Tree.Kind.VARIABLE) {
            int startPosition = Trees.getStartPosition(first);
            arrayList.add((VariableTree) first);
            while (it.hasNext() && it.peek().getKind() == Tree.Kind.VARIABLE && Trees.getStartPosition(it.peek()) == startPosition) {
                arrayList.add((VariableTree) it.next());
            }
        }
        return arrayList;
    }

    private void visitAnnotatedArrayType(Tree node) {
        DimensionHelpers.TypeWithDims extractDims = DimensionHelpers.extractDims(node, DimensionHelpers.SortedDims.YES);
        this.builder.open(this.plusFour);
        scan(extractDims.node, (Void) null);
        ArrayDeque arrayDeque = new ArrayDeque(extractDims.dims);
        maybeAddDims(arrayDeque);
        W.a(arrayDeque.isEmpty());
        this.builder.close();
    }

    private void visitCatchClause(CatchTree node, AllowTrailingBlankLine allowTrailingBlankLine) {
        sync(node);
        this.builder.space();
        token("catch");
        this.builder.space();
        token("(");
        this.builder.open(this.plusFour);
        VariableTree parameter = node.getParameter();
        if (parameter.getType().getKind() == Tree.Kind.UNION_TYPE) {
            this.builder.open(ZERO);
            visitUnionType(parameter);
            this.builder.close();
        } else {
            this.builder.breakToFill();
            this.builder.open(ZERO);
            scan((Tree) parameter, (Void) null);
            this.builder.close();
        }
        this.builder.close();
        token(")");
        this.builder.space();
        visitBlock(node.getBlock(), CollapseEmptyOrNot.NO, AllowLeadingBlankLine.YES, allowTrailingBlankLine);
    }

    private void visitDirective(String name, String separator, ExpressionTree nameExpression, @Nullable List<? extends ExpressionTree> items) {
        token(name);
        this.builder.space();
        scan((Tree) nameExpression, (Void) null);
        if (items == null) {
            token(";");
            return;
        }
        this.builder.open(this.plusFour);
        this.builder.space();
        token(separator);
        this.builder.forcedBreak();
        boolean z10 = true;
        for (ExpressionTree expressionTree : items) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.forcedBreak();
            }
            scan((Tree) expressionTree, (Void) null);
            z10 = false;
        }
        token(";");
        this.builder.close();
    }

    private void visitDotWithPrefix(List<ExpressionTree> items, boolean needDot, int prefixIndex) {
        int i10 = 0;
        boolean z10 = prefixIndex >= 0 && prefixIndex < items.size() - 1;
        this.builder.open(this.plusFour);
        this.builder.open(ZERO);
        Output.BreakTag genSym = genSym();
        while (i10 < items.size()) {
            ExpressionTree expressionTree = items.get(i10);
            if (needDot) {
                this.builder.breakOp((prefixIndex < 0 || i10 > prefixIndex) ? Doc.FillMode.UNIFIED : Doc.FillMode.INDEPENDENT, "", ZERO, C.f(genSym));
                token(".");
            }
            Output.BreakTag genSym2 = genSym();
            dotExpressionUpToArgs(expressionTree, C.f(genSym2));
            if (prefixIndex >= 0 && i10 == prefixIndex) {
                this.builder.close();
            }
            Indent.Const r52 = this.plusFour;
            Indent.Const r62 = ZERO;
            Indent.If make = Indent.If.make(genSym2, r52, r62);
            Indent.Const r53 = this.plusFour;
            if (z10) {
                r62 = r53;
            }
            dotExpressionArgsAndParen(expressionTree, make, Indent.If.make(genSym, r53, r62));
            i10++;
            needDot = true;
        }
        this.builder.close();
    }

    private void visitEnumConstantDeclaration(VariableTree enumConstant) {
        Iterator<? extends AnnotationTree> it = enumConstant.getModifiers().getAnnotations().iterator();
        while (it.hasNext()) {
            scan((Tree) it.next(), (Void) null);
            this.builder.forcedBreak();
        }
        visit(enumConstant.getName());
        NewClassTree newClassTree = (NewClassTree) enumConstant.getInitializer();
        if (newClassTree.getArguments().isEmpty()) {
            this.builder.guessToken("(");
            this.builder.guessToken(")");
        } else {
            addArguments(newClassTree.getArguments(), this.plusFour);
        }
        if (newClassTree.getClassBody() != null) {
            addBodyDeclarations(newClassTree.getClassBody().getMembers(), BracesOrNot.YES, FirstDeclarationsOrNot.YES);
        }
    }

    private void visitFormals(C<VariableTree> receiver, List<? extends VariableTree> parameters) {
        boolean z10;
        if (receiver.e() || !parameters.isEmpty()) {
            this.builder.open(ZERO);
            if (receiver.e()) {
                declareOne(DeclarationKind.PARAMETER, Direction.HORIZONTAL, C.f(receiver.d().getModifiers()), receiver.d().getType(), receiver.d().getName(), "", "", C.a(), !parameters.isEmpty() ? C.f(DocLint.SEPARATOR) : C.a(), C.f(receiver.d().getNameExpression()), C.a());
                z10 = false;
            } else {
                z10 = true;
            }
            int i10 = 0;
            while (i10 < parameters.size()) {
                VariableTree variableTree = parameters.get(i10);
                if (!z10) {
                    this.builder.breakOp(" ");
                }
                visitToDeclare(DeclarationKind.PARAMETER, Direction.HORIZONTAL, variableTree, C.a(), "=", i10 < parameters.size() - 1 ? C.f(DocLint.SEPARATOR) : C.a());
                i10++;
                z10 = false;
            }
            this.builder.close();
        }
    }

    private void visitName(Tree node) {
        ArrayDeque<Name> arrayDeque = new ArrayDeque();
        while (node instanceof MemberSelectTree) {
            MemberSelectTree memberSelectTree = (MemberSelectTree) node;
            arrayDeque.addFirst(memberSelectTree.getIdentifier());
            node = memberSelectTree.getExpression();
        }
        arrayDeque.addFirst(((IdentifierTree) node).getName());
        boolean z10 = true;
        for (Name name : arrayDeque) {
            if (!z10) {
                token(".");
            }
            token(name.toString());
            z10 = false;
        }
    }

    private void visitPackage(ExpressionTree packageName, List<? extends AnnotationTree> packageAnnotations) {
        if (!packageAnnotations.isEmpty()) {
            for (AnnotationTree annotationTree : packageAnnotations) {
                this.builder.forcedBreak();
                scan((Tree) annotationTree, (Void) null);
            }
            this.builder.forcedBreak();
        }
        this.builder.open(this.plusFour);
        token(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME);
        this.builder.space();
        visitName(packageName);
        this.builder.close();
        token(";");
    }

    private void visitRegularDot(List<ExpressionTree> items, boolean needDot) {
        boolean z10 = items.size() > 1;
        if (!needDot) {
            this.builder.open(this.plusFour);
        }
        int i10 = this.indentMultiplier * 4;
        int i11 = needDot ? i10 : 0;
        boolean z11 = needDot;
        for (ExpressionTree expressionTree : items) {
            if (z11) {
                if (i11 > i10) {
                    this.builder.breakOp(Doc.FillMode.UNIFIED, "", ZERO);
                }
                token(".");
                i11++;
            }
            if (!fillFirstArgument(expressionTree, items, z10 ? ZERO : this.minusFour)) {
                Output.BreakTag genSym = genSym();
                dotExpressionUpToArgs(expressionTree, C.f(genSym));
                Indent.Const r82 = this.plusFour;
                Indent.Const r92 = ZERO;
                Indent.If make = Indent.If.make(genSym, r82, r92);
                if (z10 || z11) {
                    r92 = this.plusFour;
                }
                dotExpressionArgsAndParen(expressionTree, make, r92);
            }
            i11 += Trees.getLength(expressionTree, getCurrentPath());
            z11 = true;
        }
        if (needDot) {
            return;
        }
        this.builder.close();
    }

    private void visitStatement(StatementTree node, CollapseEmptyOrNot collapseEmptyOrNot, AllowLeadingBlankLine allowLeadingBlank, AllowTrailingBlankLine allowTrailingBlank) {
        sync(node);
        if (AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[node.getKind().ordinal()] == 7) {
            this.builder.space();
            visitBlock((BlockTree) node, collapseEmptyOrNot, allowLeadingBlank, allowTrailingBlank);
        } else {
            this.builder.open(this.plusTwo);
            this.builder.breakOp(" ");
            scan((Tree) node, (Void) null);
            this.builder.close();
        }
    }

    private void visitStatements(List<? extends StatementTree> statements) {
        InterfaceC12522g2<? extends Tree> T10 = E1.T(statements.iterator());
        dropEmptyDeclarations();
        boolean z10 = true;
        while (T10.hasNext()) {
            StatementTree statementTree = (StatementTree) T10.next();
            this.builder.forcedBreak();
            if (!z10) {
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
            }
            markForPartialFormat();
            List<VariableTree> variableFragments = variableFragments(T10, statementTree);
            if (variableFragments.isEmpty()) {
                scan((Tree) statementTree, (Void) null);
            } else {
                visitVariables(variableFragments, DeclarationKind.NONE, canLocalHaveHorizontalAnnotations(variableFragments.get(0).getModifiers()));
            }
            z10 = false;
        }
    }

    private void visitThrowsClause(List<? extends ExpressionTree> thrownExceptionTypes) {
        token("throws");
        this.builder.breakToFill(" ");
        boolean z10 = true;
        for (ExpressionTree expressionTree : thrownExceptionTypes) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.breakToFill(" ");
            }
            scan((Tree) expressionTree, (Void) null);
            z10 = false;
        }
    }

    private void visitToDeclare(DeclarationKind kind, Direction annotationsDirection, VariableTree node, C<ExpressionTree> initializer, String equals, C<String> trailing) {
        sync(node);
        declareOne(kind, annotationsDirection, C.f(node.getModifiers()), node.getType(), node.getName(), "", equals, initializer, trailing, C.a(), C.a());
    }

    private static void walkInfix(int precedence, ExpressionTree expression, List<ExpressionTree> operands, List<String> operators) {
        if (!(expression instanceof BinaryTree)) {
            operands.add(expression);
            return;
        }
        BinaryTree binaryTree = (BinaryTree) expression;
        if (Trees.precedence(binaryTree) != precedence) {
            operands.add(expression);
            return;
        }
        walkInfix(precedence, binaryTree.getLeftOperand(), operands, operators);
        operators.add(Trees.operatorName(expression));
        walkInfix(precedence, binaryTree.getRightOperand(), operands, operators);
    }

    public void addArguments(List<? extends ExpressionTree> arguments, Indent plusIndent) {
        this.builder.open(plusIndent);
        token("(");
        if (!arguments.isEmpty()) {
            if (arguments.size() % 2 == 0 && argumentsAreTabular(arguments) == 2) {
                this.builder.forcedBreak();
                this.builder.open(ZERO);
                int i10 = 0;
                boolean z10 = true;
                while (i10 < arguments.size() - 1) {
                    ExpressionTree expressionTree = arguments.get(i10);
                    ExpressionTree expressionTree2 = arguments.get(i10 + 1);
                    if (!z10) {
                        token(DocLint.SEPARATOR);
                        this.builder.forcedBreak();
                    }
                    this.builder.open(this.plusFour);
                    scan((Tree) expressionTree, (Void) null);
                    token(DocLint.SEPARATOR);
                    this.builder.breakOp(" ");
                    scan((Tree) expressionTree2, (Void) null);
                    this.builder.close();
                    i10 += 2;
                    z10 = false;
                }
                this.builder.close();
            } else if (isFormatMethod(arguments)) {
                this.builder.breakOp();
                OpsBuilder opsBuilder = this.builder;
                Indent.Const r02 = ZERO;
                opsBuilder.open(r02);
                scan((Tree) arguments.get(0), (Void) null);
                token(DocLint.SEPARATOR);
                this.builder.breakOp(" ");
                this.builder.open(r02);
                argList(arguments.subList(1, arguments.size()));
                this.builder.close();
                this.builder.close();
            } else {
                this.builder.breakOp();
                argList(arguments);
            }
        }
        token(")");
        this.builder.close();
    }

    public void addBodyDeclarations(List<? extends Tree> bodyDeclarations, BracesOrNot braces, FirstDeclarationsOrNot first0) {
        if (bodyDeclarations.isEmpty()) {
            if (braces.isYes()) {
                this.builder.space();
                tokenBreakTrailingComment("{", this.plusTwo);
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
                this.builder.open(ZERO);
                token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
                this.builder.close();
                return;
            }
            return;
        }
        if (braces.isYes()) {
            this.builder.space();
            tokenBreakTrailingComment("{", this.plusTwo);
            this.builder.open(ZERO);
        }
        this.builder.open(this.plusTwo);
        boolean isYes = first0.isYes();
        InterfaceC12522g2<? extends Tree> T10 = E1.T(bodyDeclarations.iterator());
        boolean z10 = false;
        while (T10.hasNext()) {
            Tree next = T10.next();
            dropEmptyDeclarations();
            this.builder.forcedBreak();
            Tree.Kind kind = next.getKind();
            Tree.Kind kind2 = Tree.Kind.VARIABLE;
            boolean z11 = kind != kind2 || hasJavaDoc(next);
            if (isYes) {
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
            } else if (!isYes && (z11 || z10)) {
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.YES);
            }
            markForPartialFormat();
            if (next.getKind() == kind2) {
                visitVariables(variableFragments(T10, next), DeclarationKind.FIELD, fieldAnnotationDirection(((VariableTree) next).getModifiers()));
            } else {
                scan(next, (Void) null);
            }
            isYes = false;
            z10 = z11;
        }
        dropEmptyDeclarations();
        this.builder.forcedBreak();
        this.builder.close();
        this.builder.forcedBreak();
        markForPartialFormat();
        if (braces.isYes()) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            this.builder.close();
        }
    }

    public void addTypeArguments(List<? extends Tree> typeArguments, Indent plusIndent) {
        if (typeArguments == null || typeArguments.isEmpty()) {
            return;
        }
        token("<");
        this.builder.open(plusIndent);
        boolean z10 = true;
        for (Tree tree : typeArguments) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.breakToFill(" ");
            }
            scan(tree, (Void) null);
            z10 = false;
        }
        this.builder.close();
        token(">");
    }

    public int declareOne(DeclarationKind kind, Direction annotationsDirection, C<ModifiersTree> modifiers, Tree type, Name name, String op, String equals, C<ExpressionTree> initializer, C<String> trailing, C<ExpressionTree> receiverExpression, C<DimensionHelpers.TypeWithDims> typeWithDims) {
        Output.BreakTag genSym = genSym();
        Output.BreakTag genSym2 = genSym();
        int i10 = 0;
        boolean z10 = kind == DeclarationKind.FIELD;
        if (z10) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.conditional(genSym2));
        }
        ArrayDeque arrayDeque = new ArrayDeque(typeWithDims.e() ? typeWithDims.d().dims : Collections.emptyList());
        this.builder.open((kind == DeclarationKind.PARAMETER && modifiers.e() && !modifiers.d().getAnnotations().isEmpty()) ? this.plusFour : ZERO);
        if (modifiers.e()) {
            visitAndBreakModifiers(modifiers.d(), annotationsDirection, C.f(genSym2));
        }
        this.builder.open(type != null ? this.plusFour : ZERO);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r82 = ZERO;
        opsBuilder.open(r82);
        this.builder.open(r82);
        if (!typeWithDims.e() || typeWithDims.d().node == null) {
            scan(type, (Void) null);
        } else {
            scan(typeWithDims.d().node, (Void) null);
            int size = arrayDeque.size();
            this.builder.open(this.plusFour);
            maybeAddDims(arrayDeque);
            this.builder.close();
            i10 = size - arrayDeque.size();
        }
        this.builder.close();
        if (type != null) {
            this.builder.breakOp(Doc.FillMode.INDEPENDENT, " ", r82, C.f(genSym));
        }
        this.builder.open(Indent.If.make(genSym, this.plusFour, r82));
        if (receiverExpression.e()) {
            scan((Tree) receiverExpression.d(), (Void) null);
        } else {
            visit(name);
        }
        this.builder.op(op);
        maybeAddDims(arrayDeque);
        this.builder.close();
        this.builder.close();
        if (initializer.e()) {
            this.builder.space();
            token(equals);
            if (initializer.d().getKind() == Tree.Kind.NEW_ARRAY && ((NewArrayTree) initializer.d()).getType() == null) {
                this.builder.open(this.minusFour);
                this.builder.space();
                initializer.d().accept(this, null);
                this.builder.close();
            } else {
                this.builder.open(Indent.If.make(genSym, this.plusFour, r82));
                this.builder.breakToFill(" ");
                scan((Tree) initializer.d(), (Void) null);
                this.builder.close();
            }
        }
        if (trailing.e() && this.builder.peekToken().equals(trailing)) {
            this.builder.guessToken(trailing.d());
        }
        this.builder.close();
        this.builder.close();
        if (z10) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.conditional(genSym2));
        }
        return i10;
    }

    public final Output.BreakTag genSym() {
        return new Output.BreakTag();
    }

    public boolean nextIsModifier() {
        String d10 = this.builder.peekToken().d();
        d10.hashCode();
        char c10 = '\uffff';
        switch (d10.hashCode()) {
            case -1888027236:
                if (d10.equals("volatile")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1466596076:
                if (d10.equals("synchronized")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1052618729:
                if (d10.equals("native")) {
                    c10 = 2;
                    break;
                }
                break;
            case -977423767:
                if (d10.equals("public")) {
                    c10 = 3;
                    break;
                }
                break;
            case -892481938:
                if (d10.equals("static")) {
                    c10 = 4;
                    break;
                }
                break;
            case -608539730:
                if (d10.equals("protected")) {
                    c10 = 5;
                    break;
                }
                break;
            case -314497661:
                if (d10.equals("private")) {
                    c10 = 6;
                    break;
                }
                break;
            case 97436022:
                if (d10.equals("final")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1052746378:
                if (d10.equals("transient")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1544803905:
                if (d10.equals("default")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1732898850:
                if (d10.equals("abstract")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1794694483:
                if (d10.equals("strictfp")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
                return true;
            default:
                return false;
        }
    }

    public final void sync(Tree node) {
        this.builder.sync(((JCTree) node).getStartPosition());
    }

    public final String toString() {
        return z.c(this).f("builder", this.builder).toString();
    }

    public final void token(String token) {
        this.builder.token(token, Doc.Token.RealOrImaginary.REAL, ZERO, C.a());
    }

    public final void tokenBreakTrailingComment(String token, Indent breakAndIndentTrailingComment) {
        this.builder.token(token, Doc.Token.RealOrImaginary.REAL, ZERO, C.f(breakAndIndentTrailingComment));
    }

    public boolean visit(Name name) {
        token(name.toString());
        return false;
    }

    public void visitAndBreakModifiers(ModifiersTree modifiers, Direction annotationDirection, C<Output.BreakTag> declarationAnnotationBreak) {
        this.builder.addAll(visitModifiers(modifiers, annotationDirection, declarationAnnotationBreak));
    }

    public void visitAnnotationArgument(AssignmentTree node) {
        boolean z10 = node.getExpression().getKind() == Tree.Kind.NEW_ARRAY;
        sync(node);
        this.builder.open(z10 ? ZERO : this.plusFour);
        scan((Tree) node.getVariable(), (Void) null);
        this.builder.space();
        token("=");
        if (z10) {
            this.builder.space();
        } else {
            this.builder.breakOp(" ");
        }
        scan((Tree) node.getExpression(), (Void) null);
        this.builder.close();
    }

    public void visitAnnotationType(ClassTree node) {
        sync(node);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r12 = ZERO;
        opsBuilder.open(r12);
        visitAndBreakModifiers(node.getModifiers(), Direction.VERTICAL, C.a());
        this.builder.open(r12);
        token("@");
        token("interface");
        this.builder.breakOp(" ");
        visit(node.getSimpleName());
        this.builder.close();
        this.builder.close();
        if (node.getMembers() == null) {
            this.builder.open(this.plusFour);
            token(";");
            this.builder.close();
        } else {
            addBodyDeclarations(node.getMembers(), BracesOrNot.YES, FirstDeclarationsOrNot.YES);
        }
        this.builder.guessToken(";");
    }

    public void visitAnnotations(List<? extends AnnotationTree> annotations, BreakOrNot breakBefore, BreakOrNot breakAfter) {
        if (annotations.isEmpty()) {
            return;
        }
        if (breakBefore.isYes()) {
            this.builder.breakToFill(" ");
        }
        boolean z10 = true;
        for (AnnotationTree annotationTree : annotations) {
            if (!z10) {
                this.builder.breakToFill(" ");
            }
            scan((Tree) annotationTree, (Void) null);
            z10 = false;
        }
        if (breakAfter.isYes()) {
            this.builder.breakToFill(" ");
        }
    }

    public boolean visitArrayInitializer(List<? extends ExpressionTree> expressions) {
        boolean z10;
        if (expressions.isEmpty()) {
            tokenBreakTrailingComment("{", this.plusTwo);
            if (this.builder.peekToken().equals(C.f(DocLint.SEPARATOR))) {
                token(DocLint.SEPARATOR);
            }
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
        } else {
            int argumentsAreTabular = argumentsAreTabular(expressions);
            boolean z11 = true;
            if (argumentsAreTabular != -1) {
                this.builder.open(this.plusTwo);
                token("{");
                this.builder.forcedBreak();
                boolean z12 = true;
                for (Iterable<ExpressionTree> iterable : D1.G(expressions, argumentsAreTabular)) {
                    if (!z12) {
                        this.builder.forcedBreak();
                    }
                    this.builder.open((((ExpressionTree) iterable.iterator().next()).getKind() == Tree.Kind.NEW_ARRAY || argumentsAreTabular == 1) ? ZERO : this.plusFour);
                    boolean z13 = true;
                    for (ExpressionTree expressionTree : iterable) {
                        if (!z13) {
                            token(DocLint.SEPARATOR);
                            this.builder.breakToFill(" ");
                        }
                        scan((Tree) expressionTree, (Void) null);
                        z13 = false;
                    }
                    this.builder.guessToken(DocLint.SEPARATOR);
                    this.builder.close();
                    z12 = false;
                }
                this.builder.breakOp(this.minusTwo);
                this.builder.close();
                token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            } else {
                TreePath currentPath = getCurrentPath();
                for (int i10 = 0; i10 < 2 && currentPath != null; i10++) {
                    if (currentPath.getLeaf().getKind() == Tree.Kind.ANNOTATION) {
                        z10 = true;
                        break;
                    }
                    currentPath = currentPath.getParentPath();
                }
                z10 = false;
                boolean hasOnlyShortItems = hasOnlyShortItems(expressions);
                boolean z14 = hasOnlyShortItems || !z10;
                this.builder.open(this.plusTwo);
                tokenBreakTrailingComment("{", this.plusTwo);
                boolean hasTrailingToken = hasTrailingToken(this.builder.getInput(), expressions, DocLint.SEPARATOR);
                OpsBuilder opsBuilder = this.builder;
                Doc.FillMode fillMode = hasTrailingToken ? Doc.FillMode.FORCED : Doc.FillMode.UNIFIED;
                Indent.Const r10 = ZERO;
                opsBuilder.breakOp(fillMode, "", r10);
                if (z14) {
                    this.builder.open(r10);
                }
                Doc.FillMode fillMode2 = hasOnlyShortItems ? Doc.FillMode.INDEPENDENT : Doc.FillMode.UNIFIED;
                for (ExpressionTree expressionTree2 : expressions) {
                    if (!z11) {
                        token(DocLint.SEPARATOR);
                        this.builder.breakOp(fillMode2, " ", ZERO);
                    }
                    scan((Tree) expressionTree2, (Void) null);
                    z11 = false;
                }
                this.builder.guessToken(DocLint.SEPARATOR);
                if (z14) {
                    this.builder.close();
                }
                this.builder.breakOp(this.minusTwo);
                this.builder.close();
                token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            }
        }
        return false;
    }

    public void visitClassDeclaration(ClassTree node) {
        sync(node);
        List<Op> visitModifiers = visitModifiers(node.getModifiers(), Direction.VERTICAL, C.a());
        boolean z10 = true;
        boolean z11 = node.getExtendsClause() != null;
        boolean isEmpty = node.getImplementsClause().isEmpty();
        this.builder.addAll(visitModifiers);
        Tree.Kind kind = node.getKind();
        Tree.Kind kind2 = Tree.Kind.INTERFACE;
        token(kind == kind2 ? "interface" : "class");
        this.builder.space();
        visit(node.getSimpleName());
        if (!node.getTypeParameters().isEmpty()) {
            token("<");
        }
        this.builder.open(this.plusFour);
        if (!node.getTypeParameters().isEmpty()) {
            typeParametersRest(node.getTypeParameters(), (z11 || !isEmpty) ? this.plusFour : ZERO);
        }
        if (z11) {
            this.builder.breakToFill(" ");
            token("extends");
            this.builder.space();
            scan(node.getExtendsClause(), (Void) null);
        }
        if (!isEmpty) {
            this.builder.breakToFill(" ");
            this.builder.open(node.getImplementsClause().size() > 1 ? this.plusFour : ZERO);
            token(node.getKind() != kind2 ? "implements" : "extends");
            this.builder.space();
            for (Tree tree : node.getImplementsClause()) {
                if (!z10) {
                    token(DocLint.SEPARATOR);
                    this.builder.breakOp(" ");
                }
                scan(tree, (Void) null);
                z10 = false;
            }
            this.builder.close();
        }
        this.builder.close();
        if (node.getMembers() == null) {
            token(";");
        } else {
            addBodyDeclarations(node.getMembers(), BracesOrNot.YES, FirstDeclarationsOrNot.YES);
        }
        dropEmptyDeclarations();
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e9, code lost:
    
        if (r4.equals("super") == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitDot(ExpressionTree node0) {
        boolean z10;
        int i10 = 1;
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            arrayDeque.addFirst(node0);
            if (node0.getKind() == Tree.Kind.ARRAY_ACCESS) {
                node0 = getArrayBase(node0);
            }
            switch (AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[node0.getKind().ordinal()]) {
                case 8:
                    node0 = ((MemberSelectTree) node0).getExpression();
                    break;
                case 9:
                    node0 = getMethodReceiver((MethodInvocationTree) node0);
                    break;
                case 10:
                    node0 = null;
                    break;
                default:
                    node0 = arrayDeque.removeFirst();
                    break;
            }
            if (node0 == null) {
            }
        }
        ArrayList arrayList = new ArrayList(arrayDeque);
        if (node0 != null) {
            if (node0.getKind() != Tree.Kind.NEW_CLASS || ((NewClassTree) node0).getClassBody() == null) {
                this.builder.open(this.plusFour);
                scan((Tree) getArrayBase(node0), (Void) null);
                this.builder.breakOp();
                z10 = true;
            } else {
                this.builder.open(ZERO);
                scan((Tree) getArrayBase(node0), (Void) null);
                token(".");
                z10 = false;
            }
            formatArrayIndices(getArrayIndices(node0));
            if (arrayDeque.isEmpty()) {
                this.builder.close();
                return;
            }
        } else {
            z10 = false;
        }
        int typePrefixLength = TypeNameClassifier.typePrefixLength(simpleNames(arrayDeque));
        int i11 = 0;
        int i12 = -1;
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            if (arrayList.get(i13).getKind() == Tree.Kind.METHOD_INVOCATION) {
                if (i13 > 0 || node0 != null) {
                    i11++;
                }
                if (i12 < 0) {
                    i12 = i13;
                }
            }
        }
        if (i11 == 1) {
            typePrefixLength = i12;
        }
        if (typePrefixLength == -1 && (arrayList.get(0) instanceof IdentifierTree)) {
            String obj = ((IdentifierTree) arrayList.get(0)).getName().toString();
            obj.hashCode();
            if (!obj.equals("this")) {
            }
            if (i10 <= 0) {
                visitDotWithPrefix(arrayList, z10, i10);
            } else {
                visitRegularDot(arrayList, z10);
            }
            if (node0 == null) {
                this.builder.close();
                return;
            }
            return;
        }
        i10 = typePrefixLength;
        if (i10 <= 0) {
        }
        if (node0 == null) {
        }
    }

    public boolean visitEnumDeclaration(ClassTree node) {
        sync(node);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r12 = ZERO;
        opsBuilder.open(r12);
        visitAndBreakModifiers(node.getModifiers(), Direction.VERTICAL, C.a());
        this.builder.open(this.plusFour);
        token("enum");
        this.builder.breakOp(" ");
        visit(node.getSimpleName());
        this.builder.close();
        this.builder.close();
        boolean z10 = true;
        if (!node.getImplementsClause().isEmpty()) {
            this.builder.open(this.plusFour);
            this.builder.breakOp(" ");
            this.builder.open(this.plusFour);
            token("implements");
            this.builder.breakOp(" ");
            this.builder.open(r12);
            boolean z11 = true;
            for (Tree tree : node.getImplementsClause()) {
                if (!z11) {
                    token(DocLint.SEPARATOR);
                    this.builder.breakToFill(" ");
                }
                scan(tree, (Void) null);
                z11 = false;
            }
            this.builder.close();
            this.builder.close();
            this.builder.close();
        }
        this.builder.space();
        tokenBreakTrailingComment("{", this.plusTwo);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Tree tree2 : node.getMembers()) {
            if (tree2 instanceof JCTree.JCVariableDecl) {
                JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) tree2;
                if ((jCVariableDecl.mods.flags & 16384) == 16384) {
                    arrayList.add(jCVariableDecl);
                }
            }
            arrayList2.add(tree2);
        }
        if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
            this.builder.open(this.plusTwo);
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            this.builder.forcedBreak();
            this.builder.open(ZERO);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                VariableTree variableTree = (VariableTree) it.next();
                if (!z10) {
                    token(DocLint.SEPARATOR);
                    this.builder.forcedBreak();
                    this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
                }
                markForPartialFormat();
                visitEnumConstantDeclaration(variableTree);
                z10 = false;
            }
            if (this.builder.peekToken().g("").equals(DocLint.SEPARATOR)) {
                token(DocLint.SEPARATOR);
                this.builder.forcedBreak();
            }
            this.builder.close();
            this.builder.close();
            if (this.builder.peekToken().equals(C.f(";"))) {
                this.builder.open(this.plusTwo);
                token(";");
                this.builder.forcedBreak();
                dropEmptyDeclarations();
                this.builder.close();
            }
            this.builder.open(ZERO);
            addBodyDeclarations(arrayList2, BracesOrNot.NO, FirstDeclarationsOrNot.NO);
            this.builder.forcedBreak();
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            this.builder.close();
        } else if (this.builder.peekToken().equals(C.f(";"))) {
            this.builder.open(this.plusTwo);
            this.builder.forcedBreak();
            token(";");
            this.builder.forcedBreak();
            dropEmptyDeclarations();
            this.builder.close();
            this.builder.open(ZERO);
            this.builder.forcedBreak();
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            this.builder.close();
        } else {
            this.builder.open(ZERO);
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX);
            this.builder.close();
        }
        this.builder.guessToken(";");
        return false;
    }

    public boolean visitSingleMemberAnnotation(AnnotationTree node) {
        if (node.getArguments().size() != 1) {
            return false;
        }
        ExpressionTree expressionTree = (ExpressionTree) D1.z(node.getArguments());
        if (expressionTree.getKind() == Tree.Kind.ASSIGNMENT) {
            return false;
        }
        boolean z10 = expressionTree.getKind() == Tree.Kind.NEW_ARRAY;
        this.builder.open(z10 ? ZERO : this.plusFour);
        token("@");
        scan(node.getAnnotationType(), (Void) null);
        token("(");
        if (!z10) {
            this.builder.breakOp();
        }
        scan((Tree) expressionTree, (Void) null);
        this.builder.close();
        token(")");
        return true;
    }

    public void visitVariables(List<VariableTree> fragments, DeclarationKind declarationKind, Direction annotationDirection) {
        if (fragments.size() != 1) {
            declareMany(fragments, annotationDirection);
        } else {
            VariableTree variableTree = fragments.get(0);
            declareOne(declarationKind, annotationDirection, C.f(variableTree.getModifiers()), variableTree.getType(), variableTree.getName(), "", "=", C.c(variableTree.getInitializer()), C.f(";"), C.a(), C.c(variableFragmentDims(true, 0, variableTree.getType())));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0049. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0029. Please report as an issue. */
    private void maybeAddDims(Deque<ExpressionTree> dimExpressions, Deque<List<AnnotationTree>> annotations) {
        while (true) {
            boolean z10 = false;
            while (this.builder.peekToken().e()) {
                String d10 = this.builder.peekToken().d();
                d10.hashCode();
                char c10 = '\uffff';
                switch (d10.hashCode()) {
                    case 46:
                        if (d10.equals(".")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 64:
                        if (d10.equals("@")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 91:
                        if (d10.equals("[")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        if (!this.builder.peekToken().d().equals(".") || !this.builder.peekToken(1).d().equals(".")) {
                            return;
                        }
                        if (z10) {
                            this.builder.breakToFill(" ");
                        } else {
                            this.builder.breakToFill();
                        }
                        this.builder.op("...");
                        break;
                    case 1:
                        if (annotations.isEmpty()) {
                            return;
                        }
                        List<AnnotationTree> removeFirst = annotations.removeFirst();
                        if (!removeFirst.isEmpty()) {
                            this.builder.breakToFill(" ");
                            BreakOrNot breakOrNot = BreakOrNot.NO;
                            visitAnnotations(removeFirst, breakOrNot, breakOrNot);
                            z10 = true;
                        }
                    case 2:
                        if (z10) {
                            this.builder.breakToFill(" ");
                        } else {
                            this.builder.breakToFill();
                        }
                        token("[");
                        if (!this.builder.peekToken().d().equals("]")) {
                            scan((Tree) dimExpressions.removeFirst(), (Void) null);
                        }
                        token("]");
                    default:
                        return;
                }
            }
            return;
        }
    }

    @Override
    public Void scan(Tree tree, Void unused) {
        Deque<Boolean> deque = this.inExpression;
        deque.addLast(Boolean.valueOf((tree instanceof ExpressionTree) || deque.peekLast().booleanValue()));
        int depth = this.builder.depth();
        try {
            try {
                super.scan(tree, (Tree) null);
                this.inExpression.removeLast();
                this.builder.checkClosed(depth);
                return null;
            } catch (Throwable th2) {
                this.inExpression.removeLast();
                throw th2;
            }
        } catch (FormattingError e10) {
            throw e10;
        } catch (Throwable th3) {
            throw new FormattingError(this.builder.diagnostic(T.l(th3)));
        }
    }

    @Override
    public Void visitAnnotatedType(AnnotatedTypeTree node, Void unused) {
        sync(node);
        ExpressionTree underlyingType = node.getUnderlyingType();
        if (underlyingType instanceof MemberSelectTree) {
            MemberSelectTree memberSelectTree = (MemberSelectTree) underlyingType;
            scan((Tree) memberSelectTree.getExpression(), (Void) null);
            token(".");
            List<? extends AnnotationTree> annotations = node.getAnnotations();
            BreakOrNot breakOrNot = BreakOrNot.NO;
            visitAnnotations(annotations, breakOrNot, breakOrNot);
            this.builder.breakToFill(" ");
            visit(memberSelectTree.getIdentifier());
        } else if (underlyingType instanceof ArrayTypeTree) {
            visitAnnotatedArrayType(node);
        } else {
            List<? extends AnnotationTree> annotations2 = node.getAnnotations();
            BreakOrNot breakOrNot2 = BreakOrNot.NO;
            visitAnnotations(annotations2, breakOrNot2, breakOrNot2);
            this.builder.breakToFill(" ");
            scan((Tree) underlyingType, (Void) null);
        }
        return null;
    }

    @Override
    public Void visitAnnotation(AnnotationTree node, Void unused) {
        sync(node);
        if (visitSingleMemberAnnotation(node)) {
            return null;
        }
        this.builder.open(ZERO);
        token("@");
        scan(node.getAnnotationType(), (Void) null);
        if (!node.getArguments().isEmpty()) {
            this.builder.open(this.plusFour);
            token("(");
            this.builder.breakOp();
            boolean c10 = D1.c(node.getArguments(), new I() {
                @Override
                public final boolean apply(Object obj) {
                    boolean isArrayValue;
                    isArrayValue = JavaInputAstVisitor.isArrayValue((ExpressionTree) obj);
                    return isArrayValue;
                }
            });
            boolean z10 = true;
            for (ExpressionTree expressionTree : node.getArguments()) {
                if (!z10) {
                    token(DocLint.SEPARATOR);
                    if (c10) {
                        this.builder.forcedBreak();
                    } else {
                        this.builder.breakOp(" ");
                    }
                }
                if (expressionTree instanceof AssignmentTree) {
                    visitAnnotationArgument((AssignmentTree) expressionTree);
                } else {
                    scan((Tree) expressionTree, (Void) null);
                }
                z10 = false;
            }
            token(")");
            this.builder.close();
            this.builder.close();
            return null;
        }
        if (this.builder.peekToken().equals(C.f("("))) {
            token("(");
            token(")");
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitArrayAccess(ArrayAccessTree node, Void unused) {
        sync(node);
        visitDot(node);
        return null;
    }

    @Override
    public Void visitArrayType(ArrayTypeTree node, Void unused) {
        sync(node);
        visitAnnotatedArrayType(node);
        return null;
    }

    @Override
    public Void visitAssert(AssertTree node, Void unused) {
        sync(node);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r02 = ZERO;
        opsBuilder.open(r02);
        token("assert");
        this.builder.space();
        OpsBuilder opsBuilder2 = this.builder;
        if (node.getDetail() != null) {
            r02 = this.plusFour;
        }
        opsBuilder2.open(r02);
        scan((Tree) node.getCondition(), (Void) null);
        if (node.getDetail() != null) {
            this.builder.breakOp(" ");
            token(s.f32937c);
            this.builder.space();
            scan((Tree) node.getDetail(), (Void) null);
        }
        this.builder.close();
        this.builder.close();
        token(";");
        return null;
    }

    @Override
    public Void visitAssignment(AssignmentTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        scan((Tree) node.getVariable(), (Void) null);
        this.builder.space();
        splitToken(Trees.operatorName(node));
        this.builder.breakOp(" ");
        scan((Tree) node.getExpression(), (Void) null);
        this.builder.close();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Void visitBinary(BinaryTree node, Void unused) {
        sync(node);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        walkInfix(Trees.precedence(node), node, arrayList, arrayList2);
        Doc.FillMode fillMode = hasOnlyShortItems(arrayList) ? Doc.FillMode.INDEPENDENT : Doc.FillMode.UNIFIED;
        this.builder.open(this.plusFour);
        int i10 = 0;
        scan(arrayList.get(0), (Void) null);
        int size = arrayList2.size();
        while (i10 < size) {
            this.builder.breakOp(fillMode, " ", ZERO);
            this.builder.op((String) arrayList2.get(i10));
            this.builder.space();
            i10++;
            scan(arrayList.get(i10), (Void) null);
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitBlock(BlockTree node, Void unused) {
        visitBlock(node, CollapseEmptyOrNot.NO, AllowLeadingBlankLine.NO, AllowTrailingBlankLine.NO);
        return null;
    }

    @Override
    public Void visitBreak(BreakTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        token("break");
        if (node.getLabel() != null) {
            this.builder.breakOp(" ");
            visit(node.getLabel());
        }
        this.builder.close();
        token(";");
        return null;
    }

    @Override
    public Void visitCase(CaseTree node, Void unused) {
        sync(node);
        markForPartialFormat();
        this.builder.forcedBreak();
        if (node.getExpression() == null) {
            token("default", this.plusTwo);
            token(s.f32937c);
        } else {
            token("case", this.plusTwo);
            this.builder.space();
            scan((Tree) node.getExpression(), (Void) null);
            token(s.f32937c);
        }
        this.builder.open(this.plusTwo);
        visitStatements(node.getStatements());
        this.builder.close();
        return null;
    }

    @Override
    public Void visitCatch(CatchTree node, Void unused) {
        throw new IllegalStateException("expected manual descent into catch trees");
    }

    @Override
    public Void visitClass(ClassTree tree, Void unused) {
        int i10 = AnonymousClass2.$SwitchMap$org$openjdk$source$tree$Tree$Kind[tree.getKind().ordinal()];
        if (i10 == 1) {
            visitAnnotationType(tree);
            return null;
        }
        if (i10 == 2 || i10 == 3) {
            visitClassDeclaration(tree);
            return null;
        }
        if (i10 == 4) {
            visitEnumDeclaration(tree);
            return null;
        }
        throw new AssertionError(tree.getKind());
    }

    @Override
    public Void visitCompilationUnit(CompilationUnitTree node, Void unused) {
        boolean z10;
        if (node.getPackageName() != null) {
            markForPartialFormat();
            visitPackage(node.getPackageName(), node.getPackageAnnotations());
            this.builder.forcedBreak();
            z10 = false;
        } else {
            z10 = true;
        }
        if (!node.getImports().isEmpty()) {
            if (!z10) {
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.YES);
            }
            for (ImportTree importTree : node.getImports()) {
                markForPartialFormat();
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
                scan((Tree) importTree, (Void) null);
                this.builder.forcedBreak();
            }
            z10 = false;
        }
        dropEmptyDeclarations();
        for (Tree tree : node.getTypeDecls()) {
            if (tree.getKind() != Tree.Kind.IMPORT) {
                if (!z10) {
                    this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.YES);
                }
                markForPartialFormat();
                scan(tree, (Void) null);
                this.builder.forcedBreak();
                dropEmptyDeclarations();
                z10 = false;
            }
        }
        markForPartialFormat();
        return null;
    }

    @Override
    public Void visitCompoundAssignment(CompoundAssignmentTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        scan((Tree) node.getVariable(), (Void) null);
        this.builder.space();
        splitToken(Trees.operatorName(node));
        this.builder.breakOp(" ");
        scan((Tree) node.getExpression(), (Void) null);
        this.builder.close();
        return null;
    }

    @Override
    public Void visitConditionalExpression(ConditionalExpressionTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        scan((Tree) node.getCondition(), (Void) null);
        this.builder.breakOp(" ");
        token("?");
        this.builder.space();
        scan((Tree) node.getTrueExpression(), (Void) null);
        this.builder.breakOp(" ");
        token(s.f32937c);
        this.builder.space();
        scan((Tree) node.getFalseExpression(), (Void) null);
        this.builder.close();
        return null;
    }

    @Override
    public Void visitContinue(ContinueTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        token("continue");
        if (node.getLabel() != null) {
            this.builder.breakOp(" ");
            visit(node.getLabel());
        }
        token(";");
        this.builder.close();
        return null;
    }

    @Override
    public Void visitDoWhileLoop(DoWhileLoopTree node, Void unused) {
        sync(node);
        token("do");
        visitStatement(node.getStatement(), CollapseEmptyOrNot.YES, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.YES);
        if (node.getStatement().getKind() == Tree.Kind.BLOCK) {
            this.builder.space();
        } else {
            this.builder.breakOp(" ");
        }
        token("while");
        this.builder.space();
        token("(");
        scan((Tree) Trees.skipParen(node.getCondition()), (Void) null);
        token(")");
        token(";");
        return null;
    }

    @Override
    public Void visitEmptyStatement(EmptyStatementTree node, Void unused) {
        sync(node);
        dropEmptyDeclarations();
        return null;
    }

    @Override
    public Void visitEnhancedForLoop(EnhancedForLoopTree node, Void unused) {
        sync(node);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r02 = ZERO;
        opsBuilder.open(r02);
        token("for");
        this.builder.space();
        token("(");
        this.builder.open(r02);
        visitToDeclare(DeclarationKind.NONE, Direction.HORIZONTAL, node.getVariable(), C.f(node.getExpression()), s.f32937c, C.a());
        this.builder.close();
        token(")");
        this.builder.close();
        visitStatement(node.getStatement(), CollapseEmptyOrNot.YES, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.NO);
        return null;
    }

    @Override
    public Void visitExports(ExportsTree node, Void unused) {
        visitDirective("exports", TypedValues.TransitionType.S_TO, node.getPackageName(), node.getModuleNames());
        return null;
    }

    @Override
    public Void visitExpressionStatement(ExpressionStatementTree node, Void unused) {
        sync(node);
        scan((Tree) node.getExpression(), (Void) null);
        token(";");
        return null;
    }

    @Override
    public Void visitForLoop(ForLoopTree node, Void unused) {
        Indent.Const r02;
        sync(node);
        token("for");
        this.builder.space();
        token("(");
        this.builder.open(this.plusFour);
        OpsBuilder opsBuilder = this.builder;
        boolean z10 = true;
        if (node.getInitializer().size() > 1 && node.getInitializer().get(0).getKind() == Tree.Kind.EXPRESSION_STATEMENT) {
            r02 = this.plusFour;
        } else {
            r02 = ZERO;
        }
        opsBuilder.open(r02);
        if (!node.getInitializer().isEmpty()) {
            if (node.getInitializer().get(0).getKind() == Tree.Kind.VARIABLE) {
                InterfaceC12522g2<? extends Tree> T10 = E1.T(node.getInitializer().iterator());
                visitVariables(variableFragments(T10, T10.next()), DeclarationKind.NONE, Direction.HORIZONTAL);
            } else {
                this.builder.open(ZERO);
                boolean z11 = true;
                for (StatementTree statementTree : node.getInitializer()) {
                    if (!z11) {
                        token(DocLint.SEPARATOR);
                        this.builder.breakOp(" ");
                    }
                    scan((Tree) ((ExpressionStatementTree) statementTree).getExpression(), (Void) null);
                    z11 = false;
                }
                token(";");
                this.builder.close();
            }
        } else {
            token(";");
        }
        this.builder.close();
        this.builder.breakOp(" ");
        if (node.getCondition() != null) {
            scan((Tree) node.getCondition(), (Void) null);
        }
        token(";");
        if (!node.getUpdate().isEmpty()) {
            this.builder.breakOp(" ");
            this.builder.open(node.getUpdate().size() <= 1 ? ZERO : this.plusFour);
            for (ExpressionStatementTree expressionStatementTree : node.getUpdate()) {
                if (!z10) {
                    token(DocLint.SEPARATOR);
                    this.builder.breakToFill(" ");
                }
                scan((Tree) expressionStatementTree.getExpression(), (Void) null);
                z10 = false;
            }
            this.builder.guessToken(";");
            this.builder.close();
        } else {
            this.builder.space();
        }
        this.builder.close();
        token(")");
        visitStatement(node.getStatement(), CollapseEmptyOrNot.YES, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.NO);
        return null;
    }

    @Override
    public Void visitIdentifier(IdentifierTree node, Void unused) {
        sync(node);
        token(node.getName().toString());
        return null;
    }

    @Override
    public Void visitIf(IfTree node, Void unused) {
        sync(node);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            arrayList.add(node.getCondition());
            arrayList2.add(node.getThenStatement());
            if (node.getElseStatement() == null || node.getElseStatement().getKind() != Tree.Kind.IF) {
                break;
            }
            node = (IfTree) node.getElseStatement();
        }
        this.builder.open(ZERO);
        int size = arrayList.size();
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = true;
        while (i10 < size) {
            if (!z11) {
                if (z10) {
                    this.builder.space();
                } else {
                    this.builder.forcedBreak();
                }
                token("else");
                this.builder.space();
            }
            token("if");
            this.builder.space();
            token("(");
            scan((Tree) Trees.skipParen((ExpressionTree) arrayList.get(i10)), (Void) null);
            token(")");
            visitStatement((StatementTree) arrayList2.get(i10), CollapseEmptyOrNot.valueOf(size == 1 && node.getElseStatement() == null), AllowLeadingBlankLine.YES, AllowTrailingBlankLine.valueOf(i10 < size + (-1) || node.getElseStatement() != null));
            z10 = ((StatementTree) arrayList2.get(i10)).getKind() == Tree.Kind.BLOCK;
            i10++;
            z11 = false;
        }
        if (node.getElseStatement() != null) {
            if (z10) {
                this.builder.space();
            } else {
                this.builder.forcedBreak();
            }
            token("else");
            visitStatement(node.getElseStatement(), CollapseEmptyOrNot.NO, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.NO);
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitImport(ImportTree node, Void unused) {
        sync(node);
        token("import");
        this.builder.space();
        if (node.isStatic()) {
            token("static");
            this.builder.space();
        }
        visitName(node.getQualifiedIdentifier());
        token(";");
        dropEmptyDeclarations();
        return null;
    }

    @Override
    public Void visitInstanceOf(InstanceOfTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        scan((Tree) node.getExpression(), (Void) null);
        this.builder.breakOp(" ");
        this.builder.open(ZERO);
        token("instanceof");
        this.builder.breakOp(" ");
        scan(node.getType(), (Void) null);
        this.builder.close();
        this.builder.close();
        return null;
    }

    @Override
    public Void visitIntersectionType(IntersectionTypeTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        boolean z10 = true;
        for (Tree tree : node.getBounds()) {
            if (!z10) {
                this.builder.breakToFill(" ");
                token("&");
                this.builder.space();
            }
            scan(tree, (Void) null);
            z10 = false;
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitLabeledStatement(LabeledStatementTree node, Void unused) {
        sync(node);
        this.builder.open(ZERO);
        visit(node.getLabel());
        token(s.f32937c);
        this.builder.forcedBreak();
        this.builder.close();
        scan((Tree) node.getStatement(), (Void) null);
        return null;
    }

    @Override
    public Void visitLambdaExpression2(LambdaExpressionTree node, Void unused) {
        sync(node);
        boolean z10 = true;
        boolean z11 = node.getBodyKind() == LambdaExpressionTree.BodyKind.STATEMENT;
        boolean equals = this.builder.peekToken().equals(C.f("("));
        this.builder.open(equals ? this.plusFour : ZERO);
        if (equals) {
            token("(");
        }
        for (VariableTree variableTree : node.getParameters()) {
            if (!z10) {
                token(DocLint.SEPARATOR);
                this.builder.breakOp(" ");
            }
            scan((Tree) variableTree, (Void) null);
            z10 = false;
        }
        if (equals) {
            token(")");
        }
        this.builder.close();
        this.builder.space();
        this.builder.op("->");
        this.builder.open(z11 ? ZERO : this.plusFour);
        if (z11) {
            this.builder.space();
        } else {
            this.builder.breakOp(" ");
        }
        if (node.getBody().getKind() == Tree.Kind.BLOCK) {
            visitBlock((BlockTree) node.getBody(), CollapseEmptyOrNot.YES, AllowLeadingBlankLine.NO, AllowTrailingBlankLine.NO);
        } else {
            scan(node.getBody(), (Void) null);
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitLiteral(LiteralTree node, Void unused) {
        sync(node);
        String sourceForNode = Trees.getSourceForNode(node, getCurrentPath());
        if (sourceForNode.startsWith("-")) {
            token("-");
            sourceForNode = sourceForNode.substring(1).trim();
        }
        token(sourceForNode);
        return null;
    }

    @Override
    public Void visitMemberReference2(MemberReferenceTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        scan((Tree) node.getQualifierExpression(), (Void) null);
        this.builder.breakOp();
        this.builder.op("::");
        addTypeArguments(node.getTypeArguments(), this.plusFour);
        int i10 = AnonymousClass2.$SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode[node.getMode().ordinal()];
        if (i10 == 1) {
            visit(node.getName());
        } else if (i10 == 2) {
            token(CallLog.Calls.NEW);
        } else {
            throw new AssertionError(node.getMode());
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitMemberSelect(MemberSelectTree node, Void unused) {
        sync(node);
        visitDot(node);
        return null;
    }

    @Override
    public Void visitMethod(MethodTree node, Void unused) {
        Tree tree;
        ArrayDeque arrayDeque;
        boolean z10;
        sync(node);
        List<? extends AnnotationTree> annotations = node.getModifiers().getAnnotations();
        List<? extends AnnotationTree> x10 = AbstractC12521g1.x();
        boolean z11 = false;
        if (!node.getTypeParameters().isEmpty() && !annotations.isEmpty()) {
            int startPosition = Trees.getStartPosition(node.getTypeParameters().get(0));
            int i10 = 0;
            while (true) {
                if (i10 >= annotations.size()) {
                    break;
                }
                if (Trees.getStartPosition(annotations.get(i10)) > startPosition) {
                    x10 = annotations.subList(i10, annotations.size());
                    annotations = annotations.subList(0, i10);
                    break;
                }
                i10++;
            }
        }
        this.builder.addAll(visitModifiers(annotations, Direction.VERTICAL, C.a()));
        if (node.getReturnType() != null) {
            DimensionHelpers.TypeWithDims extractDims = DimensionHelpers.extractDims(node.getReturnType(), DimensionHelpers.SortedDims.YES);
            tree = extractDims.node;
            arrayDeque = new ArrayDeque(extractDims.dims);
        } else {
            tree = null;
            arrayDeque = null;
        }
        this.builder.open(this.plusFour);
        Output.BreakTag genSym = genSym();
        Output.BreakTag genSym2 = genSym();
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r72 = ZERO;
        opsBuilder.open(r72);
        if (node.getTypeParameters().isEmpty()) {
            z10 = true;
        } else {
            token("<");
            typeParametersRest(node.getTypeParameters(), this.plusFour);
            if (!x10.isEmpty()) {
                this.builder.breakToFill(" ");
                BreakOrNot breakOrNot = BreakOrNot.NO;
                visitAnnotations(x10, breakOrNot, breakOrNot);
            }
            z10 = false;
        }
        if (tree != null) {
            if (!z10) {
                this.builder.breakOp(Doc.FillMode.INDEPENDENT, " ", r72, C.f(genSym2));
                z11 = z10;
            }
            this.builder.open(Indent.If.make(genSym2, this.plusFour, r72));
            scan(tree, (Void) null);
            maybeAddDims(arrayDeque);
            z10 = z11;
            z11 = true;
        }
        if (!z10) {
            this.builder.breakOp(Doc.FillMode.INDEPENDENT, " ", r72, C.f(genSym));
        }
        if (!z11) {
            this.builder.open(r72);
        }
        String obj = node.getName().toString();
        if (obj.equals(ConstantDescs.INIT_NAME)) {
            obj = this.builder.peekToken().d();
        }
        token(obj);
        token("(");
        this.builder.close();
        this.builder.close();
        this.builder.open(Indent.If.make(genSym, this.plusFour, r72));
        this.builder.open(Indent.If.make(genSym2, this.plusFour, r72));
        this.builder.open(r72);
        if (!node.getParameters().isEmpty() || node.getReceiverParameter() != null) {
            this.builder.breakToFill("");
            visitFormals(C.c(node.getReceiverParameter()), node.getParameters());
        }
        token(")");
        if (arrayDeque != null) {
            maybeAddDims(arrayDeque);
        }
        if (!node.getThrows().isEmpty()) {
            this.builder.breakToFill(" ");
            this.builder.open(this.plusFour);
            visitThrowsClause(node.getThrows());
            this.builder.close();
        }
        if (node.getDefaultValue() != null) {
            this.builder.space();
            token("default");
            if (node.getDefaultValue().getKind() == Tree.Kind.NEW_ARRAY) {
                this.builder.open(this.minusFour);
                this.builder.space();
                scan(node.getDefaultValue(), (Void) null);
                this.builder.close();
            } else {
                this.builder.open(r72);
                this.builder.breakToFill(" ");
                scan(node.getDefaultValue(), (Void) null);
                this.builder.close();
            }
        }
        this.builder.close();
        this.builder.close();
        this.builder.close();
        if (node.getBody() == null) {
            token(";");
        } else {
            this.builder.space();
            OpsBuilder opsBuilder2 = this.builder;
            Doc.Token.RealOrImaginary realOrImaginary = Doc.Token.RealOrImaginary.REAL;
            Indent.Const r22 = this.plusTwo;
            opsBuilder2.token("{", realOrImaginary, r22, C.f(r22));
        }
        this.builder.close();
        if (node.getBody() != null) {
            methodBody(node);
        }
        return null;
    }

    @Override
    public Void visitMethodInvocation(MethodInvocationTree node, Void unused) {
        sync(node);
        if (handleLogStatement(node)) {
            return null;
        }
        visitDot(node);
        return null;
    }

    @Override
    public Void visitModifiers(ModifiersTree node, Void unused) {
        throw new IllegalStateException("expected manual descent into modifiers");
    }

    @Override
    public Void visitModule(ModuleTree node, Void unused) {
        OpsBuilder.BlankLineWanted blankLineWanted;
        Iterator<? extends AnnotationTree> it = node.getAnnotations().iterator();
        while (it.hasNext()) {
            scan((Tree) it.next(), (Void) null);
            this.builder.forcedBreak();
        }
        if (node.getModuleType() == ModuleTree.ModuleKind.OPEN) {
            token(AbstractCircuitBreaker.PROPERTY_NAME);
            this.builder.space();
        }
        token(IClasspathAttribute.MODULE);
        this.builder.space();
        scan(node.getName(), (Void) null);
        this.builder.space();
        if (node.getDirectives().isEmpty()) {
            tokenBreakTrailingComment("{", this.plusTwo);
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
        } else {
            this.builder.open(this.plusTwo);
            token("{");
            this.builder.forcedBreak();
            C a10 = C.a();
            for (final DirectiveTree directiveTree : node.getDirectives()) {
                markForPartialFormat();
                OpsBuilder opsBuilder = this.builder;
                if (((Boolean) a10.l(new InterfaceC15902t() {
                    @Override
                    public final Object apply(Object obj) {
                        Boolean lambda$visitModule$0;
                        lambda$visitModule$0 = JavaInputAstVisitor.lambda$visitModule$0(DirectiveTree.this, (Tree.Kind) obj);
                        return lambda$visitModule$0;
                    }
                }).g(Boolean.FALSE)).booleanValue()) {
                    blankLineWanted = OpsBuilder.BlankLineWanted.YES;
                } else {
                    blankLineWanted = OpsBuilder.BlankLineWanted.NO;
                }
                opsBuilder.blankLineWanted(blankLineWanted);
                this.builder.forcedBreak();
                scan((Tree) directiveTree, (Void) null);
                a10 = C.f(directiveTree.getKind());
            }
            this.builder.close();
            this.builder.forcedBreak();
            token(VectorFormat.DEFAULT_SUFFIX);
        }
        return null;
    }

    @Override
    public Void visitNewArray(NewArrayTree node, Void unused) {
        if (node.getType() != null) {
            this.builder.open(this.plusFour);
            token(CallLog.Calls.NEW);
            this.builder.space();
            DimensionHelpers.TypeWithDims extractDims = DimensionHelpers.extractDims(node.getType(), DimensionHelpers.SortedDims.YES);
            Tree tree = extractDims.node;
            ArrayDeque arrayDeque = new ArrayDeque(node.getDimensions());
            ArrayDeque arrayDeque2 = new ArrayDeque();
            arrayDeque2.add(AbstractC12521g1.r(node.getAnnotations()));
            arrayDeque2.addAll(node.getDimAnnotations());
            arrayDeque2.addAll(extractDims.dims);
            scan(tree, (Void) null);
            this.builder.open(ZERO);
            maybeAddDims(arrayDeque, arrayDeque2);
            this.builder.close();
            this.builder.close();
        }
        if (node.getInitializers() != null) {
            if (node.getType() != null) {
                this.builder.space();
            }
            visitArrayInitializer(node.getInitializers());
        }
        return null;
    }

    @Override
    public Void visitNewClass2(NewClassTree node, Void unused) {
        sync(node);
        this.builder.open(ZERO);
        if (node.getEnclosingExpression() != null) {
            scan((Tree) node.getEnclosingExpression(), (Void) null);
            this.builder.breakOp();
            token(".");
        }
        token(CallLog.Calls.NEW);
        this.builder.space();
        addTypeArguments(node.getTypeArguments(), this.plusFour);
        if (node.getClassBody() != null) {
            this.builder.addAll(visitModifiers(node.getClassBody().getModifiers(), Direction.HORIZONTAL, C.a()));
        }
        scan((Tree) node.getIdentifier(), (Void) null);
        addArguments(node.getArguments(), this.plusFour);
        this.builder.close();
        if (node.getClassBody() != null) {
            addBodyDeclarations(node.getClassBody().getMembers(), BracesOrNot.YES, FirstDeclarationsOrNot.YES);
        }
        return null;
    }

    @Override
    public Void visitOpens(OpensTree node, Void unused) {
        visitDirective("opens", TypedValues.TransitionType.S_TO, node.getPackageName(), node.getModuleNames());
        return null;
    }

    @Override
    public Void visitParameterizedType(ParameterizedTypeTree node, Void unused) {
        sync(node);
        if (node.getTypeArguments().isEmpty()) {
            scan(node.getType(), (Void) null);
            token("<");
            token(">");
        } else {
            this.builder.open(this.plusFour);
            scan(node.getType(), (Void) null);
            token("<");
            this.builder.breakOp();
            this.builder.open(ZERO);
            boolean z10 = true;
            for (Tree tree : node.getTypeArguments()) {
                if (!z10) {
                    token(DocLint.SEPARATOR);
                    this.builder.breakOp(" ");
                }
                scan(tree, (Void) null);
                z10 = false;
            }
            this.builder.close();
            this.builder.close();
            token(">");
        }
        return null;
    }

    @Override
    public Void visitParenthesized(ParenthesizedTree node, Void unused) {
        token("(");
        scan((Tree) node.getExpression(), (Void) null);
        token(")");
        return null;
    }

    @Override
    public Void visitPrimitiveType(PrimitiveTypeTree node, Void unused) {
        sync(node);
        switch (AnonymousClass2.$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind[node.getPrimitiveTypeKind().ordinal()]) {
            case 1:
                token(TypedValues.Custom.S_BOOLEAN);
                return null;
            case 2:
                token("byte");
                return null;
            case 3:
                token("short");
                return null;
            case 4:
                token("int");
                return null;
            case 5:
                token("long");
                return null;
            case 6:
                token("char");
                return null;
            case 7:
                token(TypedValues.Custom.S_FLOAT);
                return null;
            case 8:
                token("double");
                return null;
            case 9:
                token("void");
                return null;
            default:
                throw new AssertionError(node.getPrimitiveTypeKind());
        }
    }

    @Override
    public Void visitProvides(ProvidesTree node, Void unused) {
        visitDirective("provides", "with", node.getServiceName(), node.getImplementationNames());
        return null;
    }

    @Override
    public Void visitRequires(RequiresTree node, Void unused) {
        token("requires");
        this.builder.space();
        while (true) {
            if (this.builder.peekToken().equals(C.f("static"))) {
                token("static");
                this.builder.space();
            } else if (this.builder.peekToken().equals(C.f("transitive"))) {
                token("transitive");
                this.builder.space();
            } else {
                scan((Tree) node.getModuleName(), (Void) null);
                token(";");
                return null;
            }
        }
    }

    @Override
    public Void visitReturn(ReturnTree node, Void unused) {
        sync(node);
        token("return");
        if (node.getExpression() != null) {
            this.builder.space();
            scan((Tree) node.getExpression(), (Void) null);
        }
        token(";");
        return null;
    }

    @Override
    public Void visitSwitch(SwitchTree node, Void unused) {
        sync(node);
        token("switch");
        this.builder.space();
        token("(");
        scan((Tree) Trees.skipParen(node.getExpression()), (Void) null);
        token(")");
        this.builder.space();
        tokenBreakTrailingComment("{", this.plusTwo);
        this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
        this.builder.open(this.plusTwo);
        boolean z10 = true;
        for (CaseTree caseTree : node.getCases()) {
            if (!z10) {
                this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
            }
            scan((Tree) caseTree, (Void) null);
            z10 = false;
        }
        this.builder.close();
        this.builder.forcedBreak();
        this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
        token(VectorFormat.DEFAULT_SUFFIX, this.plusFour);
        return null;
    }

    @Override
    public Void visitSynchronized(SynchronizedTree node, Void unused) {
        sync(node);
        token("synchronized");
        this.builder.space();
        token("(");
        this.builder.open(this.plusFour);
        this.builder.breakOp();
        scan((Tree) Trees.skipParen(node.getExpression()), (Void) null);
        this.builder.close();
        token(")");
        this.builder.space();
        scan((Tree) node.getBlock(), (Void) null);
        return null;
    }

    @Override
    public Void visitThrow(ThrowTree node, Void unused) {
        sync(node);
        token("throw");
        this.builder.space();
        scan((Tree) node.getExpression(), (Void) null);
        token(";");
        return null;
    }

    @Override
    public Void visitTry(TryTree node, Void unused) {
        String str;
        sync(node);
        OpsBuilder opsBuilder = this.builder;
        Indent.Const r12 = ZERO;
        opsBuilder.open(r12);
        token("try");
        this.builder.space();
        if (!node.getResources().isEmpty()) {
            token("(");
            OpsBuilder opsBuilder2 = this.builder;
            if (node.getResources().size() > 1) {
                r12 = this.plusFour;
            }
            opsBuilder2.open(r12);
            boolean z10 = true;
            for (Tree tree : node.getResources()) {
                if (!z10) {
                    this.builder.forcedBreak();
                }
                if (tree instanceof VariableTree) {
                    VariableTree variableTree = (VariableTree) tree;
                    str = ";";
                    declareOne(DeclarationKind.PARAMETER, fieldAnnotationDirection(variableTree.getModifiers()), C.f(variableTree.getModifiers()), variableTree.getType(), variableTree.getName(), "", "=", C.c(variableTree.getInitializer()), C.a(), C.a(), C.a());
                } else {
                    str = ";";
                    scan(tree, (Void) null);
                }
                if (this.builder.peekToken().equals(C.f(str))) {
                    token(str);
                    this.builder.space();
                }
                z10 = false;
            }
            if (this.builder.peekToken().equals(C.f(";"))) {
                token(";");
                this.builder.space();
            }
            token(")");
            this.builder.close();
            this.builder.space();
        }
        boolean z11 = (node.getCatches().isEmpty() && node.getFinallyBlock() == null) ? false : true;
        visitBlock(node.getBlock(), CollapseEmptyOrNot.valueOf(!z11), AllowLeadingBlankLine.YES, AllowTrailingBlankLine.valueOf(z11));
        int i10 = 0;
        while (i10 < node.getCatches().size()) {
            visitCatchClause(node.getCatches().get(i10), AllowTrailingBlankLine.valueOf(i10 < node.getCatches().size() - 1 || node.getFinallyBlock() != null));
            i10++;
        }
        if (node.getFinallyBlock() != null) {
            this.builder.space();
            token("finally");
            this.builder.space();
            visitBlock(node.getFinallyBlock(), CollapseEmptyOrNot.NO, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.NO);
        }
        this.builder.close();
        return null;
    }

    @Override
    public Void visitTypeCast(TypeCastTree node, Void unused) {
        sync(node);
        this.builder.open(this.plusFour);
        token("(");
        scan(node.getType(), (Void) null);
        token(")");
        this.builder.breakOp(" ");
        scan((Tree) node.getExpression(), (Void) null);
        this.builder.close();
        return null;
    }

    @Override
    public Void visitTypeParameter(TypeParameterTree node, Void unused) {
        sync(node);
        this.builder.open(ZERO);
        visitAnnotations(node.getAnnotations(), BreakOrNot.NO, BreakOrNot.YES);
        visit(node.getName());
        if (!node.getBounds().isEmpty()) {
            this.builder.space();
            token("extends");
            this.builder.open(this.plusFour);
            this.builder.breakOp(" ");
            this.builder.open(this.plusFour);
            boolean z10 = true;
            for (Tree tree : node.getBounds()) {
                if (!z10) {
                    this.builder.breakToFill(" ");
                    token("&");
                    this.builder.space();
                }
                scan(tree, (Void) null);
                z10 = false;
            }
            this.builder.close();
            this.builder.close();
        }
        this.builder.close();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Void visitUnary(UnaryTree node, Void unused) {
        sync(node);
        String operatorName = Trees.operatorName(node);
        if (((JCTree) node).getTag().isPostUnaryOp()) {
            scan((Tree) node.getExpression(), (Void) null);
            splitToken(operatorName);
        } else {
            splitToken(operatorName);
            if (ambiguousUnaryOperator(node, operatorName)) {
                this.builder.space();
            }
            scan((Tree) node.getExpression(), (Void) null);
        }
        return null;
    }

    @Override
    public Void visitUnionType(UnionTypeTree node, Void unused) {
        throw new IllegalStateException("expected manual descent into union types");
    }

    @Override
    public Void visitUses(UsesTree node, Void unused) {
        token("uses");
        this.builder.space();
        scan((Tree) node.getServiceName(), (Void) null);
        token(";");
        return null;
    }

    @Override
    public Void visitVariable(VariableTree node, Void unused) {
        sync(node);
        visitVariables(AbstractC12521g1.y(node), DeclarationKind.NONE, fieldAnnotationDirection(node.getModifiers()));
        return null;
    }

    @Override
    public Void visitWhileLoop(WhileLoopTree node, Void unused) {
        sync(node);
        token("while");
        this.builder.space();
        token("(");
        scan((Tree) Trees.skipParen(node.getCondition()), (Void) null);
        token(")");
        visitStatement(node.getStatement(), CollapseEmptyOrNot.YES, AllowLeadingBlankLine.YES, AllowTrailingBlankLine.NO);
        return null;
    }

    @Override
    public Void visitWildcard(WildcardTree node, Void unused) {
        sync(node);
        this.builder.open(ZERO);
        token("?");
        if (node.getBound() != null) {
            this.builder.open(this.plusFour);
            this.builder.space();
            token(node.getKind() == Tree.Kind.EXTENDS_WILDCARD ? "extends" : "super");
            this.builder.breakOp(" ");
            scan(node.getBound(), (Void) null);
            this.builder.close();
        }
        this.builder.close();
        return null;
    }

    private void visitBlock(BlockTree node, CollapseEmptyOrNot collapseEmptyOrNot, AllowLeadingBlankLine allowLeadingBlankLine, AllowTrailingBlankLine allowTrailingBlankLine) {
        sync(node);
        if (node.isStatic()) {
            token("static");
            this.builder.space();
        }
        if (collapseEmptyOrNot.isYes() && node.getStatements().isEmpty()) {
            if (this.builder.peekToken().equals(C.f(";"))) {
                token(";");
                return;
            }
            tokenBreakTrailingComment("{", this.plusTwo);
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
            token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
            return;
        }
        this.builder.open(ZERO);
        this.builder.open(this.plusTwo);
        tokenBreakTrailingComment("{", this.plusTwo);
        if (allowLeadingBlankLine == AllowLeadingBlankLine.NO) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
        } else {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
        }
        visitStatements(node.getStatements());
        this.builder.close();
        this.builder.forcedBreak();
        this.builder.close();
        if (allowTrailingBlankLine == AllowTrailingBlankLine.NO) {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.NO);
        } else {
            this.builder.blankLineWanted(OpsBuilder.BlankLineWanted.PRESERVE);
        }
        markForPartialFormat();
        token(VectorFormat.DEFAULT_SUFFIX, this.plusTwo);
    }

    private List<Op> visitModifiers(ModifiersTree modifiersTree, Direction annotationsDirection, C<Output.BreakTag> declarationAnnotationBreak) {
        return visitModifiers(modifiersTree.getAnnotations(), annotationsDirection, declarationAnnotationBreak);
    }

    private void visitUnionType(VariableTree declaration) {
        UnionTypeTree unionTypeTree = (UnionTypeTree) declaration.getType();
        this.builder.open(ZERO);
        sync(declaration);
        visitAndBreakModifiers(declaration.getModifiers(), Direction.HORIZONTAL, C.a());
        List<? extends Tree> typeAlternatives = unionTypeTree.getTypeAlternatives();
        boolean z10 = true;
        for (int i10 = 0; i10 < typeAlternatives.size() - 1; i10++) {
            if (z10) {
                z10 = false;
            } else {
                this.builder.breakOp(" ");
                token("|");
                this.builder.space();
            }
            scan(typeAlternatives.get(i10), (Void) null);
        }
        this.builder.breakOp(" ");
        token("|");
        this.builder.space();
        declareOne(DeclarationKind.NONE, Direction.HORIZONTAL, C.a(), typeAlternatives.get(typeAlternatives.size() - 1), declaration.getName(), "", "=", C.c(declaration.getInitializer()), C.a(), C.a(), C.a());
        this.builder.close();
    }

    public final void token(String token, Indent plusIndentCommentsBefore) {
        this.builder.token(token, Doc.Token.RealOrImaginary.REAL, plusIndentCommentsBefore, C.a());
    }

    private List<Op> visitModifiers(List<? extends AnnotationTree> annotationTrees, Direction annotationsDirection, C<Output.BreakTag> declarationAnnotationBreak) {
        AbstractC12521g1<Op> breakList;
        AbstractC12521g1<Op> breakList2;
        if (annotationTrees.isEmpty() && !nextIsModifier()) {
            return EMPTY_LIST;
        }
        ArrayDeque arrayDeque = new ArrayDeque(annotationTrees);
        this.builder.open(ZERO);
        boolean z10 = true;
        boolean z11 = false;
        boolean z12 = true;
        while (!arrayDeque.isEmpty() && !nextIsModifier()) {
            if (!z12) {
                OpsBuilder opsBuilder = this.builder;
                if (annotationsDirection.isVertical()) {
                    breakList2 = forceBreakList(declarationAnnotationBreak);
                } else {
                    breakList2 = breakList(declarationAnnotationBreak);
                }
                opsBuilder.addAll(breakList2);
            }
            scan((Tree) arrayDeque.removeFirst(), (Void) null);
            z12 = false;
            z11 = true;
        }
        this.builder.close();
        if (annotationsDirection.isVertical()) {
            breakList = forceBreakList(declarationAnnotationBreak);
        } else {
            breakList = breakList(declarationAnnotationBreak);
        }
        if (arrayDeque.isEmpty() && !nextIsModifier()) {
            return breakList;
        }
        if (z11) {
            this.builder.addAll(breakList);
        }
        this.builder.open(ZERO);
        while (true) {
            if (!nextIsModifier() && arrayDeque.isEmpty()) {
                this.builder.close();
                return breakFillList(C.a());
            }
            if (!z10) {
                this.builder.addAll(breakFillList(C.a()));
            }
            if (nextIsModifier()) {
                token(this.builder.peekToken().d());
            } else {
                scan((Tree) arrayDeque.removeFirst(), (Void) null);
            }
            z10 = false;
        }
    }
}
